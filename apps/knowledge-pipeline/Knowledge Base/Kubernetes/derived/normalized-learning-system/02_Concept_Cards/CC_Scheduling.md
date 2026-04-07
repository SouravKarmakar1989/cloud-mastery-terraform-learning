# Concept Card: Scheduling

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

### Evidence 1: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/007_Cluster Architecture.extraction.md::E30
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 007_Cluster Architecture.txt
- Line Context: Lines 1-1 from transcript
- Content: It identifies the right ship based on its size, its capacity, the number of containers already on the ship, and any other conditions such as the destination of the ship, the type of containers it is allowed to carry, etc. so those are schedulers.
- Multi-concept tags: Scheduling, Architecture

### Evidence 2: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/007_Cluster Architecture.extraction.md::E31
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 007_Cluster Architecture.txt
- Line Context: Lines 1-1 from transcript
- Content: In a Kubernetes cluster, a scheduler identifies the right node to place a container on based on the containers resource requirements, the worker nodes capacity, or any other policies or constraints such as taints and tolerations or node affinity rules that are on them.
- Multi-concept tags: Scheduling, Architecture

### Evidence 3: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/007_Cluster Architecture.extraction.md::E77
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 007_Cluster Architecture.txt
- Line Context: Lines 1-1 from transcript
- Content: We have the kube scheduler that is responsible for scheduling applications or containers on nodes.
- Multi-concept tags: Scheduling, Architecture

### Evidence 4: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/013_Kube-API Server.extraction.md::E13
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 013_Kube-API Server.txt
- Line Context: Lines 1-1 from transcript
- Content: The scheduler continuously monitors the API server and realizes that there is a new pod with no node assigned.
- Multi-concept tags: Pods, Scheduling, Architecture, Observability

### Evidence 5: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/013_Kube-API Server.extraction.md::E14
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 013_Kube-API Server.txt
- Line Context: Lines 1-1 from transcript
- Content: The scheduler identifies the right node to place the new pod part on and communicates that back to the cube API server.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 6: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/013_Kube-API Server.extraction.md::E23
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 013_Kube-API Server.txt
- Line Context: Lines 1-1 from transcript
- Content: The other components, such as the scheduler, kube, controller, manager, and Kubelet uses the API server to perform updates in the cluster in their respective areas.
- Multi-concept tags: Scheduling, Architecture

### Evidence 7: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E1
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: In this lecture we will talk about kube scheduler.
- Multi-concept tags: Scheduling

### Evidence 8: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E2
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: Earlier we discussed that the Kubernetes Scheduler is responsible for scheduling pods and nodes.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 9: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E3
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: Now don't let the graphic mislead you.
- Multi-concept tags: Scheduling

### Evidence 10: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E4
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: Remember the scheduler is only responsible for deciding which pod goes on which node.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 11: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: It doesn't actually place the pod on the nodes.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 12: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E6
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: That's the job of the kubelet.
- Multi-concept tags: Scheduling, Architecture

### Evidence 13: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E7
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: The Kubelet or the captain on the ship is who creates the pod on the ships.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 14: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E8
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: The scheduler only decides which pod goes where.
- Multi-concept tags: Pods, Scheduling

### Evidence 15: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E9
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's look at how the scheduler does that in a bit more detail.
- Multi-concept tags: Scheduling

### Evidence 16: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E10
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: First of all, why do you need scheduler when there are many ships and many containers?
- Multi-concept tags: Scheduling

### Evidence 17: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: You want to make sure that the right container ends up on the right ship.
- Multi-concept tags: Scheduling

### Evidence 18: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E12
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, there could be different sizes of ships and containers.
- Multi-concept tags: Scheduling, CKA-CKAD

### Evidence 19: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: You want to make sure the ship has sufficient capacity to accommodate those containers.
- Multi-concept tags: Scheduling

### Evidence 20: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: Different ships may be going to different destinations.
- Multi-concept tags: Scheduling

### Evidence 21: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: You want to make sure your containers are placed on the right ships, so they end up in the right destination.
- Multi-concept tags: Scheduling

### Evidence 22: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E16
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: In Kubernetes, the scheduler decides which nodes the pods are placed on.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 23: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: Depending on certain criteria, you may have pods with different resource requirements.
- Multi-concept tags: Pods, Scheduling, Troubleshooting, On-Prem

### Evidence 24: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: You can have nodes in the cluster dedicated to certain applications.
- Multi-concept tags: Scheduling, Architecture

### Evidence 25: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E19
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: So how does the scheduler assign these pods?
- Multi-concept tags: Pods, Scheduling

### Evidence 26: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E20
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: The scheduler looks at each pod and tries to find the best node for it.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 27: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E21
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, let's take one of these pods, the big blue one.
- Multi-concept tags: Pods, Scheduling, CKA-CKAD

### Evidence 28: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: It has a set of CPU and memory requirements.
- Multi-concept tags: Scheduling

### Evidence 29: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E23
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: The scheduler goes through two phases to identify the best node for the pod.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 30: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E24
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: In the first phase, the scheduler tries to filter out the nodes that do not fit the profile for this pod.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 31: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E25
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, the nodes that do not have sufficient CPU and memory resources requested by the pod.
- Multi-concept tags: Pods, Scheduling, Architecture, CKA-CKAD

### Evidence 32: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E26
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: So the first two nodes are filtered out.
- Multi-concept tags: Scheduling, Architecture

### Evidence 33: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: So we are now left with the two nodes on which the pod can be placed.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 34: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E28
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: Now how does the scheduler pick one from the two?
- Multi-concept tags: Scheduling

### Evidence 35: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E29
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: The scheduler ranks the nodes to identify the best fit for the pod.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 36: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: It uses a priority function to assign a score to the nodes on a scale of 0 to 10.
- Multi-concept tags: Scheduling, Architecture

### Evidence 37: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E31
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, the scheduler calculates the amount of resources that would be free on the nodes after placing the pod on them.
- Multi-concept tags: Pods, Scheduling, Architecture, CKA-CKAD

### Evidence 38: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: In this case, the one on the right would have six CPUs free if the pod was placed on it, which is four more than the other one.
- Multi-concept tags: Pods, Scheduling

### Evidence 39: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E33
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: So it gets a better rank.
- Multi-concept tags: Scheduling

### Evidence 40: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: And so it wins.
- Multi-concept tags: Scheduling

### Evidence 41: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E35
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: So that's how a scheduler works at a high level.
- Multi-concept tags: Scheduling

### Evidence 42: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E36
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: And of course these can be customized and you can write your own scheduler as well.
- Multi-concept tags: Scheduling

### Evidence 43: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E37
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: There are many more topics to look at such as resource requirements, limits taints and tolerations.
- Multi-concept tags: Scheduling

### Evidence 44: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E38
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: Node selectors, affinity rules, etc. which is why we have an entire section dedicated to scheduling coming up in this course, where we will discuss each of these in much more detail.
- Multi-concept tags: Scheduling, Architecture

### Evidence 45: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E39
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: For now, we will continue to focus on the scheduler as a process at a high level.
- Multi-concept tags: Scheduling

### Evidence 46: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E40
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: So how do you install the scheduler?
- Multi-concept tags: Scheduling

### Evidence 47: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E41
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: Download the kube scheduler binary from the Kubernetes release page, extract it and run it as a service.
- Multi-concept tags: Services, Scheduling

### Evidence 48: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E42
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: When you run it as a service, you specify the scheduler configuration file.
- Multi-concept tags: Services, Scheduling

### Evidence 49: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E43
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: So how do you view the kube scheduler server options?
- Multi-concept tags: Scheduling

### Evidence 50: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E44
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: Again, if you set it up with the kube adm tool, the kube adm tool deploys the kube scheduler as a pod in the kube system namespace on the master node.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 51: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E45
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: You can see the options within the pod definition file located at Kubernetes manifest folder.
- Multi-concept tags: Pods, Scheduling, Configuration

### Evidence 52: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E46
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: You can also see the running process and the effective options by listing the process on the master node and searching for kube scheduler.
- Multi-concept tags: Scheduling, Architecture

### Evidence 53: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E47
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: Well, that's it for this lecture.
- Multi-concept tags: Scheduling

### Evidence 54: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E48
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: I will see you in the next.
- Multi-concept tags: Scheduling

### Evidence 55: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/016_Kubelet.extraction.md::E6
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 016_Kubelet.txt
- Line Context: Lines 1-1 from transcript
- Content: They load or unload containers on the ship as instructed by the scheduler on the master.
- Multi-concept tags: Scheduling, Architecture

### Evidence 56: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/026_Recap - ReplicaSets.extraction.md::E79
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 026_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: Replica set requires a selector definition.
- Multi-concept tags: Deployments, Scheduling

### Evidence 57: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/026_Recap - ReplicaSets.extraction.md::E80
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 026_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: The selector section helps the replica set identify what pods fall under it, but why would you have to specify what pods fall under it if you have provided the contents of the pod definition file itself in the template.
- Multi-concept tags: Pods, Deployments, Scheduling

### Evidence 58: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/026_Recap - ReplicaSets.extraction.md::E82
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 026_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: Say for example, there were pods created before the creation of the replica set that matched labels specified in the selector.
- Multi-concept tags: Pods, Deployments, Scheduling, CKA-CKAD

### Evidence 59: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/026_Recap - ReplicaSets.extraction.md::E84
- Type: Comparison
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 026_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: I will elaborate this in the next slide, but before we get into that, I would like to mention that the selector is one of the major differences between replication controller and replica set.
- Multi-concept tags: Deployments, Scheduling, Platform Engineering

### Evidence 60: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/026_Recap - ReplicaSets.extraction.md::E85
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 026_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: The selector is not a required field in case of a replication controller, but it is still available when you skip it, as we did in the previous slide.
- Multi-concept tags: Deployments, Scheduling, Platform Engineering

### Evidence 61: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/026_Recap - ReplicaSets.extraction.md::E88
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 026_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: The match labels selector simply matches the labels specified under it to the labels on the pods.
- Multi-concept tags: Pods, Deployments, Scheduling

### Evidence 62: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/026_Recap - ReplicaSets.extraction.md::E89
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 026_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: The replica set selector also provides many other options for matching labels that were not available in a replication controller.
- Multi-concept tags: Deployments, Scheduling

### Evidence 63: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/026_Recap - ReplicaSets.extraction.md::E93
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 026_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: So what is the deal with labels and selectors?
- Multi-concept tags: Deployments, Scheduling

### Evidence 64: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/026_Recap - ReplicaSets.extraction.md::E106
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 026_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: We could now provide these labels as a filter for replica set under the selector section, we use the Match Labels filter and provide the same label that we used while creating the pods.
- Multi-concept tags: Pods, Deployments, Scheduling

### Evidence 65: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/026_Recap - ReplicaSets.extraction.md::E108
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 026_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: The same concept of labels and selectors is used in many other places throughout Kubernetes.
- Multi-concept tags: Deployments, Scheduling

### Evidence 66: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/026_Recap - ReplicaSets.extraction.md::E110
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 026_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: In the replica set specification section, we learned that there are three sections template, replicas, and selector.
- Multi-concept tags: Deployments, Scheduling

### Evidence 67: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/026_Recap - ReplicaSets.extraction.md::E111
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 026_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: We need three replicas and we have updated our selector based on our discussion in the previous slide.
- Multi-concept tags: Deployments, Scheduling, Platform Engineering

### Evidence 68: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/028_Lab Solution - ReplicaSets (optional).extraction.md::E59
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 028_Lab Solution - ReplicaSets (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so it says there's an invalid value selector does not match template labels.
- Multi-concept tags: Deployments, Scheduling

### Evidence 69: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/028_Lab Solution - ReplicaSets (optional).extraction.md::E63
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 028_Lab Solution - ReplicaSets (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So you have replicas, you have selector.
- Multi-concept tags: Deployments, Scheduling

### Evidence 70: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/028_Lab Solution - ReplicaSets (optional).extraction.md::E66
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 028_Lab Solution - ReplicaSets (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So here it says, invalid value selector does not match the template labels.
- Multi-concept tags: Deployments, Scheduling

### Evidence 71: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/029_Deployments.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 029_Deployments.txt
- Line Context: Lines 1-1 from transcript
- Content: If we walk through the contents of the file, it has an API version which is apps forward slash v1 metadata, which has name and labels, and a spec that has template replicas and selector.
- Multi-concept tags: Deployments, Scheduling

### Evidence 72: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/033_Services.extraction.md::E84
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 033_Services.txt
- Line Context: Lines 1-1 from transcript
- Content: We will use labels and selectors to link these together.
- Multi-concept tags: Services, Scheduling

### Evidence 73: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/033_Services.extraction.md::E87
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 033_Services.txt
- Line Context: Lines 1-1 from transcript
- Content: So we have a new property in the specs section and that is called selector.
- Multi-concept tags: Services, Scheduling

### Evidence 74: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/033_Services.extraction.md::E88
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 033_Services.txt
- Line Context: Lines 1-1 from transcript
- Content: Just like in a replica set and deployment definition, files under the selector provide a list of labels to identify the pod.
- Multi-concept tags: Pods, Deployments, Services, Scheduling

### Evidence 75: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/033_Services.extraction.md::E90
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 033_Services.txt
- Line Context: Lines 1-1 from transcript
- Content: Pull the labels from the pod definition file and place it under the selector section.
- Multi-concept tags: Pods, Services, Scheduling

### Evidence 76: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/033_Services.extraction.md::E105
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 033_Services.txt
- Line Context: Lines 1-1 from transcript
- Content: The same label is used as a selector during the creation of the service.
- Multi-concept tags: Services, Scheduling

### Evidence 77: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/034_Services Cluster IP.extraction.md::E31
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 034_Services Cluster IP.txt
- Line Context: Lines 1-1 from transcript
- Content: To link the service to a set of ports, we use selector.
- Multi-concept tags: Services, Scheduling, Architecture

### Evidence 78: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/034_Services Cluster IP.extraction.md::E32
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 034_Services Cluster IP.txt
- Line Context: Lines 1-1 from transcript
- Content: We will refer to the pod definition file and copy the labels from it and move it under selector, and that should be it.
- Multi-concept tags: Pods, Services, Scheduling, Architecture

### Evidence 79: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/037_Lab Solution - Services (optional).extraction.md::E41
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 037_Lab Solution - Services (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And the way that we create a service in order to direct traffic to these pods is we, uh, provide the same labels as selectors to the service.
- Multi-concept tags: Pods, Services, Scheduling

### Evidence 80: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/037_Lab Solution - Services (optional).extraction.md::E45
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 037_Lab Solution - Services (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: The pods that the service has identified that is going to direct traffic to based on the selector specified on the service and the labels on the pods.
- Multi-concept tags: Pods, Services, Scheduling

### Evidence 81: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/037_Lab Solution - Services (optional).extraction.md::E46
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 037_Lab Solution - Services (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now, when we create a service for a set of pods that we might think that depending on the label and the selector, we specified the service is going to direct traffic to those pods but it might be possible that we have another pod which we accidentally created with the same kind of label.
- Multi-concept tags: Pods, Services, Scheduling, Troubleshooting

### Evidence 82: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/037_Lab Solution - Services (optional).extraction.md::E53
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 037_Lab Solution - Services (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's say we create, we have a single pod and we create a service, we set a label to FE, but we accidentally set the selector to say FR something that's different.
- Multi-concept tags: Pods, Services, Scheduling

### Evidence 83: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/037_Lab Solution - Services (optional).extraction.md::E57
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 037_Lab Solution - Services (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, and then, then that's when we can look at the labels and selectors in, in in more detail to identify the root cause.
- Multi-concept tags: Services, Scheduling

### Evidence 84: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/037_Lab Solution - Services (optional).extraction.md::E59
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 037_Lab Solution - Services (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: It's, it's nothing, but it's a specification of all the pods that that particular service has identified based on the selectors and the labels set on those pods. -: Okay?
- Multi-concept tags: Pods, Services, Scheduling

### Evidence 85: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/037_Lab Solution - Services (optional).extraction.md::E80
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 037_Lab Solution - Services (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna set it, give it a name so the node port and all the different ports, also specify the selector.
- Multi-concept tags: Services, Scheduling, Architecture

### Evidence 86: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/037_Lab Solution - Services (optional).extraction.md::E88
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 037_Lab Solution - Services (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: North port is 30080, and the selector name is Simple Web App. (typing) Okay, let's create (typing) that service.
- Multi-concept tags: Services, Scheduling

### Evidence 87: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/045_Lab Solution - Imperative Commands (optional).extraction.md::E35
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 045_Lab Solution - Imperative Commands (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So with this command, there's no way to specify a selector.
- Multi-concept tags: Scheduling, Configuration

### Evidence 88: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/045_Lab Solution - Imperative Commands (optional).extraction.md::E39
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 045_Lab Solution - Imperative Commands (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we could do a KUBECTL CREATE SERVICE command but then you cannot really specify the selectors, right?
- Multi-concept tags: Services, Scheduling, Configuration

### Evidence 89: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/045_Lab Solution - Imperative Commands (optional).extraction.md::E41
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 045_Lab Solution - Imperative Commands (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So ideally for most, for most use cases you could use the KUBECTL EXPOSE command and because it will automatically detect the labels and then use that as selectors for the service, right?
- Multi-concept tags: Services, Scheduling, Configuration

### Evidence 90: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/045_Lab Solution - Imperative Commands (optional).extraction.md::E48
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 045_Lab Solution - Imperative Commands (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Or if you go the other approach, then there's you cannot specify the selector.
- Multi-concept tags: Scheduling, Configuration

### Evidence 91: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/045_Lab Solution - Imperative Commands (optional).extraction.md::E73
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 045_Lab Solution - Imperative Commands (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's see if it's got the right labels and selectors, and also the endpoint.
- Multi-concept tags: Scheduling, Configuration

### Evidence 92: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/045_Lab Solution - Imperative Commands (optional).extraction.md::E129
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 045_Lab Solution - Imperative Commands (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we have the ACTPD pod, we have the ACTPD service and if we look at this service in more detail we see that it is got, the selector is run equal ACTPD and then it also has the end point discovered.
- Multi-concept tags: Pods, Services, Scheduling, Configuration

### Evidence 93: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/050_Scheduling - Section Introduction.extraction.md::E3
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 050_Scheduling - Section Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: We saw how to install and configure a scheduler briefly in the previous section.
- Multi-concept tags: Scheduling

### Evidence 94: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/050_Scheduling - Section Introduction.extraction.md::E4
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 050_Scheduling - Section Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: Here we take a closer look at the various options available for customizing and configuring the way the scheduler behaves through a set of fun and challenging practice exercises.
- Multi-concept tags: Scheduling

### Evidence 95: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/050_Scheduling - Section Introduction.extraction.md::E6
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 050_Scheduling - Section Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: We will start with manual scheduling and see how you can schedule a pod manually we then look at demon sets, labels and selectors, and how resource requests and limits play a role in scheduling.
- Multi-concept tags: Pods, Scheduling, Security-RBAC

### Evidence 96: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/050_Scheduling - Section Introduction.extraction.md::E7
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 050_Scheduling - Section Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: We also see how to configure multiple schedulers and how to view the scheduler events.
- Multi-concept tags: Scheduling, Observability

### Evidence 97: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/051_Manual Scheduling.extraction.md::E2
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 051_Manual Scheduling.txt
- Line Context: Lines 1-1 from transcript
- Content: What do you do when you do not have a scheduler in your cluster?
- Multi-concept tags: Scheduling, Architecture

### Evidence 98: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/051_Manual Scheduling.extraction.md::E3
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 051_Manual Scheduling.txt
- Line Context: Lines 1-1 from transcript
- Content: You probably do not want to rely on the built in scheduler and instead want to schedule the pods yourself.
- Multi-concept tags: Pods, Scheduling

### Evidence 99: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/051_Manual Scheduling.extraction.md::E4
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 051_Manual Scheduling.txt
- Line Context: Lines 1-1 from transcript
- Content: So how exactly does a scheduler work in the backend?
- Multi-concept tags: Scheduling

### Evidence 100: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/051_Manual Scheduling.extraction.md::E9
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 051_Manual Scheduling.txt
- Line Context: Lines 1-1 from transcript
- Content: The scheduler goes through all the pods and looks for those that do not have this property set.
- Multi-concept tags: Pods, Scheduling

### Evidence 101: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/051_Manual Scheduling.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 051_Manual Scheduling.txt
- Line Context: Lines 1-1 from transcript
- Content: Once identified, it schedules the pod on the node by setting the node name property to the name of the node by creating a binding object.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 102: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/051_Manual Scheduling.extraction.md::E13
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 051_Manual Scheduling.txt
- Line Context: Lines 1-1 from transcript
- Content: So if there is no scheduler to monitor and schedule pods onto nodes, what happens?
- Multi-concept tags: Pods, Scheduling, Architecture, Observability

### Evidence 103: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/051_Manual Scheduling.extraction.md::E17
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 051_Manual Scheduling.txt
- Line Context: Lines 1-1 from transcript
- Content: Well, without a scheduler, the easiest way to schedule a pod is to simply set the node name field to the name of the node in your pod specification file while creating the pod.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 104: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/051_Manual Scheduling.extraction.md::E22
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 051_Manual Scheduling.txt
- Line Context: Lines 1-1 from transcript
- Content: So another way to assign a node to an existing pod is to create a binding object and send a Post request to the pods binding API, thus mimicking what the actual scheduler does in the binding object.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 105: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/053_Lab Solution - Manual Scheduling (optional).extraction.md::E16
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 053_Lab Solution - Manual Scheduling (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So one thing that we have learned is that's the scheduler that schedules the pod.
- Multi-concept tags: Pods, Scheduling

### Evidence 106: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/053_Lab Solution - Manual Scheduling (optional).extraction.md::E19
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 053_Lab Solution - Manual Scheduling (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that basically means the scheduler has not done its job of scheduling the pod on a node.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 107: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/053_Lab Solution - Manual Scheduling (optional).extraction.md::E21
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 053_Lab Solution - Manual Scheduling (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's look at the scheduler.
- Multi-concept tags: Scheduling

### Evidence 108: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/053_Lab Solution - Manual Scheduling (optional).extraction.md::E22
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 053_Lab Solution - Manual Scheduling (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the scheduler runs as a pod in the cube system name space.
- Multi-concept tags: Pods, Scheduling

### Evidence 109: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/053_Lab Solution - Manual Scheduling (optional).extraction.md::E23
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 053_Lab Solution - Manual Scheduling (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that you have the API server, the controller manager, the proxy, the ETCD control plane, but there is no scheduler running.
- Multi-concept tags: Scheduling, Architecture

### Evidence 110: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/053_Lab Solution - Manual Scheduling (optional).extraction.md::E25
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 053_Lab Solution - Manual Scheduling (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna say that there's no scheduler present.
- Multi-concept tags: Scheduling

### Evidence 111: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/053_Lab Solution - Manual Scheduling (optional).extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 053_Lab Solution - Manual Scheduling (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so now we have to manually schedule the pod on node zero one.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 112: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/053_Lab Solution - Manual Scheduling (optional).extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 053_Lab Solution - Manual Scheduling (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And one thing that we've learned in the previous lecture is that we can manually schedule the pod.
- Multi-concept tags: Pods, Scheduling

### Evidence 113: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/053_Lab Solution - Manual Scheduling (optional).extraction.md::E44
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 053_Lab Solution - Manual Scheduling (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, now schedule the same pod on the control plane node.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 114: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/053_Lab Solution - Manual Scheduling (optional).extraction.md::E67
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 053_Lab Solution - Manual Scheduling (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: See it's running, if you do a wide option then we'll get to see on which node it is scheduled so we can see that it's on the control plane node.
- Multi-concept tags: Scheduling, Architecture

### Evidence 115: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: What do we know about labels and selectors already?
- Multi-concept tags: Scheduling

### Evidence 116: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E2
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: Labels and selectors are a standard method to group things together.
- Multi-concept tags: Scheduling

### Evidence 117: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: Say you have a set of different species.
- Multi-concept tags: Scheduling

### Evidence 118: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E4
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: A user wants to be able to filter them based on different criteria, such as based on their class or kind, if they are domestic or wild, or say by their color and not just group, you want to be able to filter them based on a criteria such as all green animals or with multiple criteria such as everything green that is also a bird.
- Multi-concept tags: Scheduling, On-Prem

### Evidence 119: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: Whatever that classification may be, you need the ability to group things together and filter them based on your needs.
- Multi-concept tags: Scheduling

### Evidence 120: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: And the best way to do that is with labels.
- Multi-concept tags: Scheduling

### Evidence 121: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: Labels are properties attached to each item, so you add properties to each item for their class.
- Multi-concept tags: Scheduling

### Evidence 122: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: Kind and color selectors help you filter these items.
- Multi-concept tags: Scheduling

### Evidence 123: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E9
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, when you say class equals mammal, we get a list of mammals.
- Multi-concept tags: Scheduling, CKA-CKAD

### Evidence 124: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: And when you say color equals green, we get the green mammals.
- Multi-concept tags: Scheduling

### Evidence 125: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: We see labels and selectors used everywhere, such as the keywords you tag to YouTube videos or blogs that help users filter and find the right content.
- Multi-concept tags: Scheduling

### Evidence 126: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: We see labels added to items in an online store that help you add different kinds of filters to view your products.
- Multi-concept tags: Scheduling

### Evidence 127: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: So how are labels and selectors used in Kubernetes?
- Multi-concept tags: Scheduling

### Evidence 128: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E14
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: We have created a lot of different types of objects in Kubernetes pods, services, replica sets, deployments, etc. for Kubernetes.
- Multi-concept tags: Pods, Deployments, Services, Scheduling

### Evidence 129: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: All of these are different objects.
- Multi-concept tags: Scheduling

### Evidence 130: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: Over time, you may end up having hundreds or thousands of these objects in your cluster.
- Multi-concept tags: Scheduling, Architecture

### Evidence 131: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E17
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: Then you will need a way to filter and view different objects by different categories, such as to group objects by their type or view objects by application or by their functionality, whatever it may be.
- Multi-concept tags: Scheduling

### Evidence 132: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: You can group and select objects using labels and selectors for each object.
- Multi-concept tags: Scheduling

### Evidence 133: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: Attach labels as per your needs like app, function, etc..
- Multi-concept tags: Scheduling

### Evidence 134: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E20
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: Then, while selecting specify a condition to filter specific objects.
- Multi-concept tags: Scheduling

### Evidence 135: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E21
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, app equals app one.
- Multi-concept tags: Scheduling, CKA-CKAD

### Evidence 136: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: So how exactly do you specify labels in Kubernetes?
- Multi-concept tags: Scheduling

### Evidence 137: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E23
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: In a Pod definition file under metadata, create a section called labels.
- Multi-concept tags: Pods, Scheduling

### Evidence 138: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: Under that, add the labels in a key value format like this.
- Multi-concept tags: Scheduling

### Evidence 139: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: You can add as many labels as you like.
- Multi-concept tags: Scheduling

### Evidence 140: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E26
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: Once the pod is created to select the pod with labels, use the Kube control get pods command along with the selector option and specify the condition like app equals app one.
- Multi-concept tags: Pods, Scheduling, Configuration

### Evidence 141: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: Now this is one use case of labels and selectors.
- Multi-concept tags: Scheduling

### Evidence 142: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E28
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: Kubernetes objects use labels and selectors internally to connect different objects together.
- Multi-concept tags: Scheduling

### Evidence 143: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E29
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, to create a replica set consisting of three different parts, we first label the part definition and use selector in a replica set to group the parts in a replica set definition file.
- Multi-concept tags: Scheduling, CKA-CKAD

### Evidence 144: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: You will see labels defined in two places.
- Multi-concept tags: Scheduling

### Evidence 145: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E31
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: Note that this is an area where beginners tend to make a mistake.
- Multi-concept tags: Scheduling

### Evidence 146: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E32
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: The labels defined under the templates section are the labels configured on the pods.
- Multi-concept tags: Pods, Scheduling

### Evidence 147: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E33
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: The labels you see at the top are the labels of the replica set itself.
- Multi-concept tags: Scheduling

### Evidence 148: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: We're not really concerned about the labels of the replica set for now, because we are trying to get the replica set to discover the pods.
- Multi-concept tags: Pods, Scheduling

### Evidence 149: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E35
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: The labels on the replica set will be used.
- Multi-concept tags: Scheduling

### Evidence 150: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E36
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: If you were to configure some other object to discover the replica set.
- Multi-concept tags: Scheduling

### Evidence 151: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E37
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: In order to connect the replica set to the pods, we configure the selector field under the Replica set specification to match the labels defined on the pod.
- Multi-concept tags: Pods, Scheduling

### Evidence 152: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E38
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: A single label will do if it matches correctly.
- Multi-concept tags: Scheduling

### Evidence 153: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E39
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: However, if you feel there could be other pods parts with the same label, but with a different function.
- Multi-concept tags: Pods, Scheduling

### Evidence 154: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E40
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: Then you could specify both the labels to ensure that the right parts are discovered by the replica set on creation.
- Multi-concept tags: Scheduling

### Evidence 155: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E41
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: If the labels match, the replica set is created successfully.
- Multi-concept tags: Scheduling

### Evidence 156: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E42
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: It works the same for other objects like a service.
- Multi-concept tags: Services, Scheduling

### Evidence 157: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E43
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: When a service is created, it uses the selector defined in the service definition file to match the labels set on the pods in the replica set definition file.
- Multi-concept tags: Pods, Services, Scheduling

### Evidence 158: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E44
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: Finally, let's look at annotations.
- Multi-concept tags: Scheduling

### Evidence 159: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E45
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: While labels and selectors are used to group and select objects, annotations are used to record other details for informatory purpose.
- Multi-concept tags: Scheduling

### Evidence 160: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E46
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, tool details like name version, build information, etc. or contact details, phone numbers, email IDs, etc. that may be used for some kind of integration purpose.
- Multi-concept tags: Scheduling, CKA-CKAD

### Evidence 161: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E47
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: Well, that's it for this lecture on labels and selectors and annotations, head over to the Coding Exercises section and practice working with labels and selectors.
- Multi-concept tags: Scheduling

### Evidence 162: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: -: Hey, in this video, we're gonna walk through the practice test for labels and selectors.
- Multi-concept tags: Scheduling, CKA-CKAD

### Evidence 163: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E2
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, the question is, we have deployed a number of pods, they are labeled with a tier, ENV and BU And how many pods exist in the dev environment?
- Multi-concept tags: Pods, Scheduling, Configuration

### Evidence 164: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we have to use selectors.
- Multi-concept tags: Scheduling

### Evidence 165: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E4
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So first let's do a get pods.
- Multi-concept tags: Pods, Scheduling

### Evidence 166: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that there are a number of pods.
- Multi-concept tags: Pods, Scheduling

### Evidence 167: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now we've got to filter it and identify the pods that are in the dev environment.
- Multi-concept tags: Pods, Scheduling, Configuration

### Evidence 168: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So I'm assuming ENV is for environment.
- Multi-concept tags: Scheduling, Configuration

### Evidence 169: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that's the label.
- Multi-concept tags: Scheduling

### Evidence 170: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And the, so this is the key and this is the value.
- Multi-concept tags: Scheduling

### Evidence 171: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E10
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So if we have to find pods using the selector and then we'll say ENV equals dev.
- Multi-concept tags: Pods, Scheduling, Configuration

### Evidence 172: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that these are the pods in the dev environment.
- Multi-concept tags: Pods, Scheduling, Configuration

### Evidence 173: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that's 1, 2, 3, 4, 5, 6, 7, 7 of them.
- Multi-concept tags: Scheduling

### Evidence 174: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: If you want to find, so now let's say since there are just seven, it's easy to for us to just count.
- Multi-concept tags: Scheduling

### Evidence 175: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: But let's say there are a lot of them there that now where it becomes difficult to count manually one thing you could do is just do a word count, right?
- Multi-concept tags: Scheduling

### Evidence 176: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So you could do a word count dash L.
- Multi-concept tags: Scheduling

### Evidence 177: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now the problem with this is this also counts this top line which is the header.
- Multi-concept tags: Scheduling

### Evidence 178: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So there's a way to print this without the headers and that's using the no header's option.
- Multi-concept tags: Scheduling

### Evidence 179: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And when you run that you just get the output without the header.
- Multi-concept tags: Scheduling

### Evidence 180: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E19
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And then we can do a word count on that.
- Multi-concept tags: Scheduling

### Evidence 181: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And that's seven, so seven is the answer here.
- Multi-concept tags: Scheduling

### Evidence 182: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E21
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so the next question is how many pods are in the finance business unit?
- Multi-concept tags: Pods, Scheduling

### Evidence 183: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, we saw that the that label key is the, UA so, for business unit.
- Multi-concept tags: Scheduling

### Evidence 184: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And the business unit we are looking at IT finance.
- Multi-concept tags: Scheduling

### Evidence 185: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we'll just use same command for this.
- Multi-concept tags: Scheduling, Configuration

### Evidence 186: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And this time is six.
- Multi-concept tags: Scheduling

### Evidence 187: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, and how many objects are in the prod environment including pause, replica sets, and any other objects?
- Multi-concept tags: Scheduling, Configuration

### Evidence 188: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's use the same command and change the labels.
- Multi-concept tags: Scheduling, Configuration

### Evidence 189: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the environment is broad and now we are only listing the pods.
- Multi-concept tags: Pods, Scheduling, Configuration

### Evidence 190: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So to list all objects what you could do is give all instead of pods.
- Multi-concept tags: Pods, Scheduling

### Evidence 191: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So all lists, all the objects in that name space.
- Multi-concept tags: Scheduling

### Evidence 192: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E31
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So here we have pods, we have surveys and we have replica sets, right?
- Multi-concept tags: Pods, Scheduling

### Evidence 193: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So if you count this, that's, let's do a word count.
- Multi-concept tags: Scheduling

### Evidence 194: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E33
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And so that's number seven.
- Multi-concept tags: Scheduling

### Evidence 195: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So there are seven objects.
- Multi-concept tags: Scheduling

### Evidence 196: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E35
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And then the next question is to identify the pod which is part of the prod environment, the finance BU and the the front end tier.
- Multi-concept tags: Pods, Scheduling, Configuration

### Evidence 197: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E36
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So one that has all of it.
- Multi-concept tags: Scheduling

### Evidence 198: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E37
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the environment is prod.
- Multi-concept tags: Scheduling, Configuration

### Evidence 199: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E38
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Then we can just add additional labels separated by a coma will BU equals finance and tier is front end.
- Multi-concept tags: Scheduling

### Evidence 200: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E39
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so that happens to be this particular pod, which is which starts with ZZXDF is this one right here.
- Multi-concept tags: Pods, Scheduling

### Evidence 201: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E40
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, the final question is about, again labels.
- Multi-concept tags: Scheduling

### Evidence 202: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E41
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So there's a file called replica set definition file and the request is to create the replica set and but there's an issue with it, so we've got to fix it.
- Multi-concept tags: Scheduling, Troubleshooting

### Evidence 203: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E42
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's try creating it.
- Multi-concept tags: Scheduling

### Evidence 204: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E43
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, and it says the replica set is invalid.
- Multi-concept tags: Scheduling

### Evidence 205: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E44
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Invalid value selector does not match template labels.
- Multi-concept tags: Scheduling

### Evidence 206: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E45
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So selector is this and template labels.
- Multi-concept tags: Scheduling

### Evidence 207: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E46
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So this template and template labels is this.
- Multi-concept tags: Scheduling

### Evidence 208: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E47
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the error message is that this does not match this.
- Multi-concept tags: Scheduling, Troubleshooting

### Evidence 209: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E48
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now we know that for replica set to manage the pod so this is basically the pod definition.
- Multi-concept tags: Pods, Scheduling

### Evidence 210: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E49
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: The replica set needs to have these two match otherwise it won't be able to manage the pod.
- Multi-concept tags: Pods, Scheduling

### Evidence 211: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E50
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that's the validation error here.
- Multi-concept tags: Scheduling, Troubleshooting

### Evidence 212: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E51
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna fix this by changing this to the value below.
- Multi-concept tags: Scheduling, Troubleshooting

### Evidence 213: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E52
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Save that and let's create pod, sorry, the replica set.
- Multi-concept tags: Pods, Scheduling

### Evidence 214: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E53
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And it's created, let's verify creation.
- Multi-concept tags: Scheduling

### Evidence 215: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E54
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Yep, that's working.
- Multi-concept tags: Scheduling

### Evidence 216: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E55
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so that's the end of this lab.
- Multi-concept tags: Scheduling

### Evidence 217: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: In this lecture, we will discuss about the pod to node relationship and how you can restrict what pods are placed on what nodes.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 218: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E2
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: The concept of taints and tolerations can be a bit confusing for beginners, so we will try to understand what they are using an analogy of a bug approaching a person.
- Multi-concept tags: Scheduling

### Evidence 219: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Now my apologies in advance, but this is the best I could come up with to prevent the bug from landing on the person.
- Multi-concept tags: Scheduling, Observability

### Evidence 220: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: We spray the person with repellent spray or a taint as we will call it in this lecture.
- Multi-concept tags: Scheduling

### Evidence 221: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: The bug is intolerant to the smell, so on approaching the person, the taint applied on the person throws the bug off.
- Multi-concept tags: Scheduling

### Evidence 222: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: However, there could be other bugs that are tolerant to this smell, and so the taint doesn't really affect them and so they end up landing on the person.
- Multi-concept tags: Scheduling

### Evidence 223: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E7
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: So there are two things that decide if a bug can land on a person. first, the taint on the person, and second the bugs toleration level to that particular taint.
- Multi-concept tags: Scheduling

### Evidence 224: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Getting back to Kubernetes, the person is a node and the bugs are pods.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 225: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Now taints and tolerations have nothing to do with security or intrusion on the cluster.
- Multi-concept tags: Scheduling, Security-RBAC, Architecture

### Evidence 226: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Taints and tolerations are used to set restrictions on what pods can be scheduled on a node.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 227: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Let us start with a simple cluster with three worker nodes.
- Multi-concept tags: Scheduling, Architecture

### Evidence 228: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: The nodes are named one, two, and three.
- Multi-concept tags: Scheduling, Architecture

### Evidence 229: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E13
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: We also have a set of pods that are to be deployed on these nodes.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 230: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's call them A, B, C, and D.
- Multi-concept tags: Scheduling

### Evidence 231: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E15
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: When the pods are created, Kubernetes Scheduler tries to place these pods on the worker nodes.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 232: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E16
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: As of now, there are no restrictions or limitations, and as such, the scheduler places the pods across all the nodes to balance them out equally.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 233: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Now let us assume that we have dedicated resources on node one for a particular use case or application.
- Multi-concept tags: Scheduling, Architecture

### Evidence 234: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: So we would like only those parts that belong to this application to be placed on node one.
- Multi-concept tags: Scheduling, Architecture

### Evidence 235: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E19
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: First, we prevent all pods from being placed on the node by placing a taint on the node.
- Multi-concept tags: Pods, Scheduling, Architecture, Observability

### Evidence 236: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's call it blue.
- Multi-concept tags: Scheduling

### Evidence 237: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E21
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: By default, pods have no tolerations, which means unless specified otherwise, none of the pods can tolerate any taint.
- Multi-concept tags: Pods, Scheduling

### Evidence 238: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: So in this case, none of the pods can be placed on node one, as none of them can tolerate the taint blue.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 239: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: This solves half of our requirement.
- Multi-concept tags: Scheduling

### Evidence 240: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: No unwanted pods are going to be placed on this node.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 241: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: The other half is to enable certain parts to be placed on this node.
- Multi-concept tags: Scheduling, Architecture

### Evidence 242: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: For this we must specify which pods are tolerant to this particular taint.
- Multi-concept tags: Pods, Scheduling

### Evidence 243: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: In our case, we would like to allow only pod D to be placed on this node.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 244: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: So we add a toleration to pod D.
- Multi-concept tags: Pods, Scheduling

### Evidence 245: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Pod D is now tolerant to blue.
- Multi-concept tags: Pods, Scheduling

### Evidence 246: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E30
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: So when the scheduler tries to place this pod on node one, it goes through node one can now only accept pods that can tolerate the taint blue.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 247: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E31
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: So with all the chains and tolerations in place, this is how the pods would be scheduled.
- Multi-concept tags: Pods, Scheduling

### Evidence 248: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E32
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: The scheduler tries to place pod A on node one, but due to the time it is thrown off and it goes to node two, the scheduler then tries to place pod B on node one, but again due to the taint, it is thrown off and is placed on node three, which happens to be the next node.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 249: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E33
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: The scheduler then tries to place pod C to the node one.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 250: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: It is thrown off again and ends up on node two.
- Multi-concept tags: Scheduling, Architecture

### Evidence 251: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E35
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: And finally the scheduler tries to place pod D on node one.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 252: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E36
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Since the pod is tolerant to node one, it goes through.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 253: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E37
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: So remember things are set on nodes and tolerations are set on pods.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 254: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E38
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: So how do you do this?
- Multi-concept tags: Scheduling

### Evidence 255: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E39
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Use the kube control taint nodes command to taint a node.
- Multi-concept tags: Scheduling, Configuration, Architecture

### Evidence 256: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E40
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Specify the name of the node to taint followed by the taint itself, which is a key value pair.
- Multi-concept tags: Scheduling, Architecture

### Evidence 257: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E41
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, if you would like to dedicate the node to pods in application blue, then the key value pair would be app blue.
- Multi-concept tags: Pods, Scheduling, Architecture, CKA-CKAD

### Evidence 258: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E42
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: The taint effect defines what would happen to the pods if they do not tolerate the taint.
- Multi-concept tags: Pods, Scheduling

### Evidence 259: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E43
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: There are three taint effects no schedule, which means the pods will not be scheduled on the node, which is what we have been discussing.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 260: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E44
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Prefer no schedule, which means the system will try to avoid placing a pod on the node, but that is not guaranteed.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 261: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E45
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: And third is no execute, which means that new pods will not be scheduled on the node and existing pods on the node, if any will be evicted if they do not tolerate the taint.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 262: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E46
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: These parts may have been scheduled on the node before the taint was applied to the node.
- Multi-concept tags: Scheduling, Architecture

### Evidence 263: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E47
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: An example command would be to taint node node one with the key value pair app equals blue and an effect of no schedule tolerations are added to pods to add a toleration to a pod.
- Multi-concept tags: Pods, Scheduling, Configuration, Architecture, CKA-CKAD

### Evidence 264: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E48
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: First, pull up the pod definition file in the spec section of the pod definition file.
- Multi-concept tags: Pods, Scheduling

### Evidence 265: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E49
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Add a section called Tolerations.
- Multi-concept tags: Scheduling

### Evidence 266: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E50
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Move the same values used while creating the taint under this section.
- Multi-concept tags: Scheduling

### Evidence 267: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E51
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: The key is app operator is equal, value is blue and the effect is no schedule.
- Multi-concept tags: Scheduling

### Evidence 268: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E52
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: And remember all of these values need to be encoded in double quotes.
- Multi-concept tags: Scheduling

### Evidence 269: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E53
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: When the pods are now created or updated with the new tolerations, they are either not scheduled on nodes or evicted from the existing nodes depending on the effect set.
- Multi-concept tags: Pods, Scheduling, Architecture, Troubleshooting

### Evidence 270: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E54
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Let us try to understand the no execute change effect in a bit more depth.
- Multi-concept tags: Scheduling

### Evidence 271: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E55
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: In this example we have three nodes running some workload.
- Multi-concept tags: Scheduling, Architecture, CKA-CKAD

### Evidence 272: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E56
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: We do not have any chains or tolerations at this point, so they are scheduled this way.
- Multi-concept tags: Scheduling

### Evidence 273: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E57
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: We then decided to dedicate node one for a special application, and as such, we taint the node with the application name and add a toleration to the pod that belongs to the application, which happens to be pod D in this case.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 274: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E58
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: While tending the node, we set the taint effect to no execute, and as such, once the taint on the node takes effect, it evicts pod C from the node, which simply means that the pod is killed.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 275: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E59
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: The pod D continues to run on the node as it has a toleration to the tank blew.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 276: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E60
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Now, going back to our original scenario where we have taints and tolerations configured, remember taints and tolerations are only meant to restrict nodes from accepting certain paths.
- Multi-concept tags: Scheduling, Architecture

### Evidence 277: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E61
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: In this case, node one can only accept pod D, but it does not guarantee that pod D will always be placed on node one, since there are no chains or restrictions applied on the other two nodes.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 278: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E62
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Pod D may very well be placed on any of the other two nodes, so remember taints and Tolerations does not tell the pod to go to a particular node.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 279: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E63
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Instead, it tells the node to only accept pods with certain tolerations.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 280: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E64
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: If your requirement is to restrict a pod to certain nodes, it is achieved through another concept called as node affinity, which we will discuss in the next lecture.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 281: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E65
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Finally, while we are on this topic, let us also take a look at an interesting fact.
- Multi-concept tags: Scheduling

### Evidence 282: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E66
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: So far we have only been referring to the worker nodes, but we also have master nodes in the cluster, which is technically just another node that has all the capabilities of hosting a pod.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 283: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E67
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Plus it runs all the management software.
- Multi-concept tags: Scheduling

### Evidence 284: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E68
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Now, I'm not sure if you noticed the scheduler does not schedule any pods on the master node.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 285: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E69
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Why is that?
- Multi-concept tags: Scheduling

### Evidence 286: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E70
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: When the Kubernetes cluster is first set up, a tent is set on the master node automatically.
- Multi-concept tags: Scheduling, Architecture

### Evidence 287: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E71
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: That prevents any pods from being scheduled on this node.
- Multi-concept tags: Pods, Scheduling, Architecture, Observability

### Evidence 288: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E72
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: You can see this as well as modify this behavior if required.
- Multi-concept tags: Scheduling

### Evidence 289: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E73
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: However, a best practice is to not deploy application workloads on a master server.
- Multi-concept tags: Scheduling

### Evidence 290: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E74
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: To see this taint, run a cube control, describe node command with cube master as the node name and look for the taint section.
- Multi-concept tags: Scheduling, Configuration, Architecture, On-Prem

### Evidence 291: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E75
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: You will see a taint set to not schedule any pods on the master node.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 292: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E76
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Well, that's it for this lecture.
- Multi-concept tags: Scheduling

### Evidence 293: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E77
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Head over to the Coding Exercises section and practice working with Taints and Tolerations.
- Multi-concept tags: Scheduling

### Evidence 294: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Instructor: Okay, so let's go over the lab for practicing taints and tolerations.
- Multi-concept tags: Scheduling

### Evidence 295: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E2
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's start with the first question.
- Multi-concept tags: Scheduling

### Evidence 296: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: How many nodes exist on the system?
- Multi-concept tags: Scheduling, Architecture

### Evidence 297: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Including the control plane?
- Multi-concept tags: Scheduling, Architecture

### Evidence 298: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's look at the number of nodes and we see that there are two nodes, control plane and node zero one.
- Multi-concept tags: Scheduling, Architecture

### Evidence 299: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the answer is two.
- Multi-concept tags: Scheduling

### Evidence 300: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E7
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so the next question is, do any taints exist on node zero one node?
- Multi-concept tags: Scheduling, Architecture

### Evidence 301: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So for that we're gonna have to take a closer look at node zero one.
- Multi-concept tags: Scheduling, Architecture

### Evidence 302: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we do a kubectl, describe node, node zero one and we see taints right here.
- Multi-concept tags: Scheduling, Architecture, On-Prem

### Evidence 303: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that there are none.
- Multi-concept tags: Scheduling

### Evidence 304: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So there are no taints on this particular node.
- Multi-concept tags: Scheduling, Architecture

### Evidence 305: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So I'm gonna select, no.
- Multi-concept tags: Scheduling

### Evidence 306: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: It's going to clear my screen.
- Multi-concept tags: Scheduling

### Evidence 307: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E14
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so the next question is to create a taint on node zero one with key of spray value of martin and effect of NoSchedule.
- Multi-concept tags: Scheduling, Architecture

### Evidence 308: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E15
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna continue with the, the silly example that we used in the lecture of the spray and martin, and mosquito and B.
- Multi-concept tags: Scheduling, CKA-CKAD

### Evidence 309: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E16
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So here the task is to create a taint.
- Multi-concept tags: Scheduling

### Evidence 310: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna do kubectl taint and let's quickly look at the help.
- Multi-concept tags: Scheduling

### Evidence 311: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E18
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the command is kubectl taint, and then nodes then the name of the node, and then followed by these values, which are the key has to be spray, and then the value is martin.
- Multi-concept tags: Scheduling, Configuration, Architecture

### Evidence 312: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E19
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And then the effect is NoSchedule.
- Multi-concept tags: Scheduling

### Evidence 313: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's do that.
- Multi-concept tags: Scheduling

### Evidence 314: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E21
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So it's kubectl paint, node, and it's node zero one, and then the key is spray and the value is obtain, and the effect is NoSchedule.
- Multi-concept tags: Scheduling, Architecture

### Evidence 315: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay?
- Multi-concept tags: Scheduling

### Evidence 316: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, let's confirm that.
- Multi-concept tags: Scheduling

### Evidence 317: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we have the spray equals martin and the NoSchedule effect, right?
- Multi-concept tags: Scheduling

### Evidence 318: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that's, that's done.
- Multi-concept tags: Scheduling

### Evidence 319: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we now have attained on node zero one.
- Multi-concept tags: Scheduling, Architecture

### Evidence 320: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E27
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now the goal is to create a new pod with the engine X image, and the pod name as mosquito, right?
- Multi-concept tags: Pods, Scheduling

### Evidence 321: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E28
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna do a kubectl run, and then, that's the pod name.
- Multi-concept tags: Pods, Scheduling

### Evidence 322: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Image equals engine X.
- Multi-concept tags: Scheduling

### Evidence 323: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's do...
- Multi-concept tags: Scheduling

### Evidence 324: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E31
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Get pods.
- Multi-concept tags: Pods, Scheduling

### Evidence 325: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E32
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that, it's created.
- Multi-concept tags: Scheduling

### Evidence 326: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E33
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Ignore the, the, the status for now.
- Multi-concept tags: Scheduling

### Evidence 327: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so what is the state of the pod?
- Multi-concept tags: Pods, Scheduling

### Evidence 328: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E35
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So it seems to be in a pending state.
- Multi-concept tags: Scheduling, Troubleshooting

### Evidence 329: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E36
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So select pending.
- Multi-concept tags: Scheduling, Troubleshooting

### Evidence 330: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E37
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now why do you think the pod is in a pending state?
- Multi-concept tags: Pods, Scheduling, Troubleshooting

### Evidence 331: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E38
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Is it because image is not available?
- Multi-concept tags: Scheduling

### Evidence 332: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E39
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Is there an error?
- Multi-concept tags: Scheduling, Troubleshooting

### Evidence 333: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E40
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's see, let's do describe pod in the pod name.
- Multi-concept tags: Pods, Scheduling, On-Prem

### Evidence 334: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And here you'll see the, the reason why it's in a pending state.
- Multi-concept tags: Scheduling, Troubleshooting

### Evidence 335: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E42
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: It says that the pod didn't tolerate one node that had taint and spraying martin that the pod didn't tolerate.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 336: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E43
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So basically the pod mosquito cannot tolerate the taint. martin, that's, that's the problem here.
- Multi-concept tags: Pods, Scheduling

### Evidence 337: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E44
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna select that.
- Multi-concept tags: Scheduling

### Evidence 338: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E45
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so now we have to create another pod named B with the engine X image.
- Multi-concept tags: Pods, Scheduling

### Evidence 339: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E46
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Which has a toleration set to the taint martin.
- Multi-concept tags: Scheduling

### Evidence 340: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E47
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna do a kubectl, run command, to create a pod.
- Multi-concept tags: Pods, Scheduling, Configuration

### Evidence 341: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E48
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: The name is going to be B, and the image is going to be engine X.
- Multi-concept tags: Scheduling

### Evidence 342: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E49
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And basically, now we have to add toleration to it, but you cannot specify toleration in the command lane.
- Multi-concept tags: Scheduling, Configuration

### Evidence 343: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E50
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So what we're gonna do is we're gonna do a, a dry run, equals client, to generate AMO file for this pod.
- Multi-concept tags: Pods, Scheduling

### Evidence 344: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E51
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that's the AMO file and we're gonna redirect that to B.AMO.
- Multi-concept tags: Scheduling

### Evidence 345: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E52
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we have this in, in B.AMO, we're going to edit B.AMO file, and we're going to add in tolerations.
- Multi-concept tags: Scheduling

### Evidence 346: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E53
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So add a section called tolerations.
- Multi-concept tags: Scheduling

### Evidence 347: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E54
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now if you're not sure of the, the format check out the Kubernetes documentation pages, and search for chains tolerations.
- Multi-concept tags: Scheduling

### Evidence 348: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E55
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And that's the first result.
- Multi-concept tags: Scheduling

### Evidence 349: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E56
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And these are, this is the command for taint, and this is, this is the format for tolerations.
- Multi-concept tags: Scheduling, Configuration

### Evidence 350: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E57
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So dash key operator value and effect.
- Multi-concept tags: Scheduling

### Evidence 351: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E58
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that's key.
- Multi-concept tags: Scheduling

### Evidence 352: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E59
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So key is going to be spray, operator, value, and effect.
- Multi-concept tags: Scheduling

### Evidence 353: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E60
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the value is going to be seen, effect is going to be audio, finally we have operator just to be equal, operator set to equal.
- Multi-concept tags: Scheduling

### Evidence 354: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E61
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: You save that...
- Multi-concept tags: Scheduling

### Evidence 355: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E62
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And let's create image.
- Multi-concept tags: Scheduling

### Evidence 356: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E63
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so it's now in a container creating state.
- Multi-concept tags: Scheduling

### Evidence 357: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E64
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's watch the creation process and we can see that it's now in a running state.
- Multi-concept tags: Scheduling

### Evidence 358: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E65
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So this part is now running.
- Multi-concept tags: Scheduling

### Evidence 359: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E66
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so that's, that's correct.
- Multi-concept tags: Scheduling

### Evidence 360: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E67
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now noticed the B pod was scheduled on node zero one.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 361: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E68
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's see where it was scheduled.
- Multi-concept tags: Scheduling

### Evidence 362: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E69
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see the B pod is on node zero one.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 363: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E70
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So basically, now this B was able to tolerate the taint set on node zero one.
- Multi-concept tags: Scheduling, Architecture

### Evidence 364: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E71
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now do you see any taints on control plane node?
- Multi-concept tags: Scheduling, Architecture

### Evidence 365: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E72
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's look at the control plane node and let's look at taints.
- Multi-concept tags: Scheduling, Architecture

### Evidence 366: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E73
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that yes, there is a taint set on the control plane node and it's set to NoSchedule.
- Multi-concept tags: Scheduling, Architecture

### Evidence 367: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E74
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: That's the effect.
- Multi-concept tags: Scheduling

### Evidence 368: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E75
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So yes, it's set, it's set to NoSchedule.
- Multi-concept tags: Scheduling

### Evidence 369: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E76
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, now remove the taint on control plane, which currently has the taint effect of NoSchedule.
- Multi-concept tags: Scheduling, Architecture

### Evidence 370: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E77
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we've got to remove that.
- Multi-concept tags: Scheduling

### Evidence 371: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E78
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So first let's get that.
- Multi-concept tags: Scheduling

### Evidence 372: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E79
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So this is the taint, so let's copy that.
- Multi-concept tags: Scheduling

### Evidence 373: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E80
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And the command to remove it is the same kubecolor taint.
- Multi-concept tags: Scheduling, Configuration

### Evidence 374: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E81
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And you just specify the node, that's control point node.
- Multi-concept tags: Scheduling, Architecture

### Evidence 375: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E82
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Specify the 10 that we wanna remove and at the end you've got to put a dash or a minus for it to remove that 10.
- Multi-concept tags: Scheduling

### Evidence 376: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E83
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So it says it's untainted.
- Multi-concept tags: Scheduling

### Evidence 377: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E84
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's confirm that.
- Multi-concept tags: Scheduling

### Evidence 378: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E85
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Go back to taints and see it's, nothing is set.
- Multi-concept tags: Scheduling

### Evidence 379: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E86
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Just click on check.
- Multi-concept tags: Scheduling

### Evidence 380: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E87
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so that's, that's done, and now we've got to check the status of the pods again.
- Multi-concept tags: Pods, Scheduling

### Evidence 381: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E88
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that the, the pod mosquito, which earlier was in a pending state, is now in a running state.
- Multi-concept tags: Pods, Scheduling, Troubleshooting

### Evidence 382: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E89
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that's the state of, of the pod mosquito.
- Multi-concept tags: Pods, Scheduling

### Evidence 383: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E90
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And then we have to...
- Multi-concept tags: Scheduling

### Evidence 384: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E91
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's check at what, on what node is it placed.
- Multi-concept tags: Scheduling, Architecture

### Evidence 385: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E92
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So as you can see it's now placed on the control plane node.
- Multi-concept tags: Scheduling, Architecture

### Evidence 386: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E93
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So earlier at, in the beginning, the control plane node has a taint set, set on it, and then we set a taint on node zero one, and then we created the mosquito pod.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 387: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E94
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And so it was not placed on any of the nodes because both of them had a taint then.
- Multi-concept tags: Scheduling, Architecture

### Evidence 388: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E95
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Then we created the B pod with the toleration on node zero one.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 389: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E96
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the B pod was able to be placed on node zero one and then we removed the taint on control plane.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 390: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E97
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And without doing anything the not, the, the pod mosquito was automatically placed on control plane because it no longer has any kind of taint on it.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 391: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E98
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So it's, the answer to this is control plane.
- Multi-concept tags: Scheduling, Architecture

### Evidence 392: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E99
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, So that's the end of this lab.
- Multi-concept tags: Scheduling

### Evidence 393: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/060_Node Selectors.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 060_Node Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: In this lecture we will talk about node selectors in Kubernetes.
- Multi-concept tags: Scheduling, Architecture

### Evidence 394: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/060_Node Selectors.extraction.md::E2
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 060_Node Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: Let us start with a simple example.
- Multi-concept tags: Scheduling, Architecture, CKA-CKAD

### Evidence 395: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/060_Node Selectors.extraction.md::E3
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 060_Node Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: You have a three node cluster of which two are smaller nodes with lower hardware resources, and one of them is a larger node configured with higher resources.
- Multi-concept tags: Scheduling, Architecture

### Evidence 396: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/060_Node Selectors.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 060_Node Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: You have different kinds of workloads running in your cluster.
- Multi-concept tags: Scheduling, Architecture

### Evidence 397: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/060_Node Selectors.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 060_Node Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: You would like to dedicate the data processing workloads that require higher horsepower to the larger node, as that is the only node that will not run out of resources in case the job demands extra resources.
- Multi-concept tags: Scheduling, Architecture

### Evidence 398: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/060_Node Selectors.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 060_Node Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: However, in the current default setup, any pods can go to any nodes.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 399: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/060_Node Selectors.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 060_Node Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: So pod see in this case may very well end up on nodes 2 or 3, which is not desired.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 400: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/060_Node Selectors.extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 060_Node Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: To solve this, we can set a limitation on the pods so that they only run on particular nodes.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 401: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/060_Node Selectors.extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 060_Node Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: There are two ways to do this.
- Multi-concept tags: Scheduling, Architecture

### Evidence 402: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/060_Node Selectors.extraction.md::E10
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 060_Node Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: The first is using node selectors, which is the simple and easier method for this.
- Multi-concept tags: Scheduling, Architecture

### Evidence 403: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/060_Node Selectors.extraction.md::E11
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 060_Node Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: We look at the pod definition file we created earlier.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 404: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/060_Node Selectors.extraction.md::E12
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 060_Node Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: This file has a simple definition to create a pod with a data processing image.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 405: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/060_Node Selectors.extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 060_Node Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: To limit this pod to run on the larger node, we add a new property called node selector to the spec section and specify the size as large.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 406: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/060_Node Selectors.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 060_Node Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: But wait a minute, where did the size large come from?
- Multi-concept tags: Scheduling, Architecture

### Evidence 407: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/060_Node Selectors.extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 060_Node Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: And how does Kubernetes know which is the large node?
- Multi-concept tags: Scheduling, Architecture

### Evidence 408: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/060_Node Selectors.extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 060_Node Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: The key value pair of size and large are in fact labels assigned to the nodes.
- Multi-concept tags: Scheduling, Architecture

### Evidence 409: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/060_Node Selectors.extraction.md::E17
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 060_Node Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: The scheduler uses these labels to match and identify the right node to place the pods on.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 410: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/060_Node Selectors.extraction.md::E18
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 060_Node Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: Labels and selectors are a topic we have seen many times throughout this Kubernetes course, such as with services, replica sets, and deployments.
- Multi-concept tags: Deployments, Services, Scheduling, Architecture

### Evidence 411: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/060_Node Selectors.extraction.md::E19
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 060_Node Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: To use labels in a node selector like this, you must have first labeled your nodes prior to creating this pod.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 412: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/060_Node Selectors.extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 060_Node Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: So let us go back and see how we can label the nodes.
- Multi-concept tags: Scheduling, Architecture

### Evidence 413: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/060_Node Selectors.extraction.md::E21
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 060_Node Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: To label a node, use the command Kube cube control label nodes, followed by the name of the node and the label in a key value pair format.
- Multi-concept tags: Scheduling, Configuration, Architecture

### Evidence 414: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/060_Node Selectors.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 060_Node Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: In this case it would be cube control label nodes node one, followed by the label in a key value format such as size equals large.
- Multi-concept tags: Scheduling, Architecture

### Evidence 415: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/060_Node Selectors.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 060_Node Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: Now that we have labeled the node, we can get back to creating the pod, this time with the node selector set to a size of large.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 416: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/060_Node Selectors.extraction.md::E24
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 060_Node Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: When the pod is now created, it is placed on node one as desired.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 417: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/060_Node Selectors.extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 060_Node Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: Node selector served our purpose, but it has limitations.
- Multi-concept tags: Scheduling, Architecture

### Evidence 418: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/060_Node Selectors.extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 060_Node Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: We used a single label and selector to achieve our goal here.
- Multi-concept tags: Scheduling, Architecture

### Evidence 419: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/060_Node Selectors.extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 060_Node Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: But what if our requirement is much more complex?
- Multi-concept tags: Scheduling, Architecture

### Evidence 420: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/060_Node Selectors.extraction.md::E28
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 060_Node Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, we would like to say something like place the pod on a large or medium node or something like place the pod on any nodes that are not small.
- Multi-concept tags: Pods, Scheduling, Architecture, CKA-CKAD

### Evidence 421: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/060_Node Selectors.extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 060_Node Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: You cannot achieve this using node selectors.
- Multi-concept tags: Scheduling, Architecture

### Evidence 422: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/060_Node Selectors.extraction.md::E30
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 060_Node Selectors.txt
- Line Context: Lines 1-1 from transcript
- Content: For this node affinity and anti-affinity features were introduced and we will look at that next.
- Multi-concept tags: Scheduling, Architecture

### Evidence 423: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: In this lecture we will talk about node affinity feature in Kubernetes.
- Multi-concept tags: Scheduling, Architecture

### Evidence 424: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E2
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: The primary purpose of node affinity feature is to ensure that pods are hosted on particular nodes.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 425: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: In this case, to ensure the large data processing pod ends up on node one.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 426: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: In the previous lecture, we did this easily using node selectors.
- Multi-concept tags: Scheduling, Architecture

### Evidence 427: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: We discussed that you cannot provide advanced expressions like or or not with node selectors.
- Multi-concept tags: Scheduling, Architecture

### Evidence 428: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: The node affinity feature provides us with advanced capabilities to limit pod placement on specific nodes.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 429: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: With great power comes great complexity.
- Multi-concept tags: Scheduling, Architecture

### Evidence 430: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: So the simple node selector specification will now look like this with node affinity.
- Multi-concept tags: Scheduling, Architecture

### Evidence 431: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: Although both does exactly the same thing, place the pod on the large node.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 432: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: Let us look at it a bit closer.
- Multi-concept tags: Scheduling, Architecture

### Evidence 433: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E11
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: Under spec you have affinity and then node affinity under that.
- Multi-concept tags: Scheduling, Architecture

### Evidence 434: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E12
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: And then you have a property that looks like a sentence called required during scheduling.
- Multi-concept tags: Scheduling, Architecture

### Evidence 435: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: Ignored during execution.
- Multi-concept tags: Scheduling, Architecture

### Evidence 436: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: No description needed for that.
- Multi-concept tags: Scheduling, Architecture, On-Prem

### Evidence 437: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E15
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: And then you have the node selector terms.
- Multi-concept tags: Scheduling, Architecture

### Evidence 438: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: That is an array.
- Multi-concept tags: Scheduling, Architecture

### Evidence 439: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: And that is where you will specify the key and value pairs.
- Multi-concept tags: Scheduling, Architecture

### Evidence 440: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: The key value pairs are in the form, key operator, and value where the operator is in the in operator ensures that the pod will be placed on a node whose label size has any value in the list of values specified here.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 441: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: In this case, it is just one called large.
- Multi-concept tags: Scheduling, Architecture

### Evidence 442: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: If you think your pod could be placed on a large or a medium node, you could simply add the value to the list of values like this.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 443: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E21
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: You could use the not in operator to say something like size, not n small, where node affinity will match the nodes with a size not set to small.
- Multi-concept tags: Scheduling, Architecture

### Evidence 444: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: We know that we have only set the label size to large and medium nodes, Notes.
- Multi-concept tags: Scheduling, Architecture

### Evidence 445: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E23
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: The smaller notes don't even have the label set, so we don't really have to even check the value of the label, as long as we are sure we don't set a label size to the smaller notes.
- Multi-concept tags: Scheduling, Architecture

### Evidence 446: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: Using the exists operator will give us the same result.
- Multi-concept tags: Scheduling, Architecture

### Evidence 447: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E25
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: The operator will simply check if the label size exists on the notes, and you don't need the values section for that, as it does not compare the values.
- Multi-concept tags: Scheduling, Architecture

### Evidence 448: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: There are a number of other operators as well.
- Multi-concept tags: Scheduling, Architecture

### Evidence 449: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: Check the documentation for specific details.
- Multi-concept tags: Scheduling, Architecture

### Evidence 450: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: Now we understand all of this and we're comfortable with creating a pod with specific affinity rules.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 451: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E29
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: When the pods are created, these rules are considered and the pods are placed onto the right nodes.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 452: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: But what if node affinity could not match a node with a given expression?
- Multi-concept tags: Scheduling, Architecture

### Evidence 453: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E31
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: In this case, what if there are no nodes with the label called size?
- Multi-concept tags: Scheduling, Architecture

### Evidence 454: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: Say we had the labels and the pods are scheduled.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 455: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E33
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: What if someone changes the label on the node at a future point in time.
- Multi-concept tags: Scheduling, Architecture

### Evidence 456: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: Will the pod continue to stay on the node?
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 457: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E35
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: All of this is answered by the long sentence like property under node affinity, which happens to be the type of node affinity.
- Multi-concept tags: Scheduling, Architecture

### Evidence 458: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E36
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: The type of node affinity defines the behavior of the scheduler with respect to node affinity, and the stages in the lifecycle of the pod.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 459: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E37
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: There are currently two types of node affinity available required during scheduling, ignored during execution, and preferred during scheduling.
- Multi-concept tags: Scheduling, Architecture

### Evidence 460: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E38
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: Ignored during execution, and there are additional types of node affinity planned as of this recording.
- Multi-concept tags: Scheduling, Architecture

### Evidence 461: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E39
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: Required during scheduling.
- Multi-concept tags: Scheduling, Architecture

### Evidence 462: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E40
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: Required during execution.
- Multi-concept tags: Scheduling, Architecture

### Evidence 463: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: We will now break this down to understand further.
- Multi-concept tags: Scheduling, Architecture

### Evidence 464: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E42
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: We will start by looking at the two available affinity types.
- Multi-concept tags: Scheduling, Architecture

### Evidence 465: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E43
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: There are two states in the lifecycle of a pod when considering node affinity during scheduling and during execution.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 466: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E44
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: During scheduling is the state where a pod does not exist and is created for the first time.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 467: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E45
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: We have no doubt that when a pod is first created, the affinity rules specified are considered to place the pods on the right nodes.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 468: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E46
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: Now, what if the nodes with matching labels are not available?
- Multi-concept tags: Scheduling, Architecture

### Evidence 469: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E47
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, we forgot to label the node as large.
- Multi-concept tags: Scheduling, Architecture, CKA-CKAD

### Evidence 470: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E48
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: That is where the type of node affinity used comes into play.
- Multi-concept tags: Scheduling, Architecture

### Evidence 471: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E49
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: If you select the required type, which is the first one, the scheduler will mandate that the pod be placed on a node with the given affinity rules.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 472: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E50
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: If it cannot find one, the pod will not be scheduled.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 473: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E51
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: This type will be used in cases where the placement of the pod is crucial.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 474: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E52
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: If a matching node does not exist, the pod will not be scheduled.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 475: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E53
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: But let's say the pod placement is less important than running the workload itself.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 476: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E54
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: In that case, you could set it to preferred.
- Multi-concept tags: Scheduling, Architecture

### Evidence 477: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E55
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: And in cases where a matching node is not found, the scheduler will simply ignore node affinity rules and place the pod on any available node.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 478: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E56
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: This is a way of telling the scheduler, hey, try your best to place the pod on matching node, but if you really cannot find one, just place it anywhere.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 479: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E57
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: The second part of the property or the other state is during execution.
- Multi-concept tags: Scheduling, Architecture

### Evidence 480: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E58
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: During execution is the state where a pod has been running, and a change is made in the environment that affects node affinity, such as a change in the label of a node.
- Multi-concept tags: Pods, Scheduling, Configuration, Architecture

### Evidence 481: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E59
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, say an administrator removed the label we set earlier called size equals large from the node.
- Multi-concept tags: Scheduling, Architecture, CKA-CKAD

### Evidence 482: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E60
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: Now, what would happen to the pods that are running on the node?
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 483: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E61
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: As you can see, the two types of node affinity available today has this value set to ignored, which means pods will continue to run and any changes in node affinity will not impact them once they are scheduled.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 484: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E62
- Type: Comparison
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: In the next lecture, we will compare taints and Tolerations and node affinity.
- Multi-concept tags: Scheduling, Architecture

### Evidence 485: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: -: Okay in this video, we will go over the practice test for node affinity.
- Multi-concept tags: Scheduling, Architecture, CKA-CKAD

### Evidence 486: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E2
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the first question is to identify the labels on node, node 01, so to count the number of labels on node 01.
- Multi-concept tags: Scheduling, Architecture

### Evidence 487: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's do kubectl, describe node, node 01 and let's look at the labels.
- Multi-concept tags: Scheduling, Architecture, On-Prem

### Evidence 488: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we have 1, 2, 3, 4, 5, 5 labels.
- Multi-concept tags: Scheduling, Architecture

### Evidence 489: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna select five.
- Multi-concept tags: Scheduling, Architecture

### Evidence 490: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E6
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And then the next question is, what is the value set to the label at beta.kubernetes.io/arc?
- Multi-concept tags: Scheduling, Architecture

### Evidence 491: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So on node 01, so we are already on node 01 and it is AMD 64.
- Multi-concept tags: Scheduling, Architecture

### Evidence 492: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: That's this one.
- Multi-concept tags: Scheduling, Architecture

### Evidence 493: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay.
- Multi-concept tags: Scheduling, Architecture

### Evidence 494: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E10
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the next question is to apply a label called color equals blue to node 01.
- Multi-concept tags: Scheduling, Architecture

### Evidence 495: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So for that we're going to use the kubectl label command.
- Multi-concept tags: Scheduling, Configuration, Architecture

### Evidence 496: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's take a look at the help.
- Multi-concept tags: Scheduling, Architecture

### Evidence 497: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E13
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And here we have some examples.
- Multi-concept tags: Scheduling, Architecture, CKA-CKAD

### Evidence 498: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So you have kubectl label, the pods or node, whatever.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 499: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E15
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: What is the object that we wanna apply the label to?
- Multi-concept tags: Scheduling, Architecture

### Evidence 500: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E16
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And then the node name, and then just the label.
- Multi-concept tags: Scheduling, Architecture

### Evidence 501: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So it's pretty straightforward.
- Multi-concept tags: Scheduling, Architecture

### Evidence 502: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E18
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna do kubectl, label, node, node 01 and then color equals blue.
- Multi-concept tags: Scheduling, Architecture

### Evidence 503: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's verify that it's set correctly.
- Multi-concept tags: Scheduling, Architecture

### Evidence 504: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: We're gonna go back, cause the labels and we see the color equals blue.
- Multi-concept tags: Scheduling, Architecture

### Evidence 505: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E21
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay.
- Multi-concept tags: Scheduling, Architecture

### Evidence 506: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E22
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now the next one is to create a new deployment named blue with the nginx image and three replicas.
- Multi-concept tags: Deployments, Scheduling, Architecture

### Evidence 507: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E23
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So lets create a deployment.
- Multi-concept tags: Deployments, Scheduling, Architecture

### Evidence 508: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: The name is blue, image is nginx, and replicas is three.
- Multi-concept tags: Scheduling, Architecture

### Evidence 509: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E25
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so the next one is, which nodes can the pods for the blue deployment be placed on?
- Multi-concept tags: Pods, Deployments, Scheduling, Architecture

### Evidence 510: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we, we've gotta check the tense on, on both the nodes.
- Multi-concept tags: Scheduling, Architecture

### Evidence 511: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's do that.
- Multi-concept tags: Scheduling, Architecture

### Evidence 512: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's check the tense on each one.
- Multi-concept tags: Scheduling, Architecture

### Evidence 513: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna do a, we've gotta describe node Let's check node 01.
- Multi-concept tags: Scheduling, Architecture, On-Prem

### Evidence 514: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And let's check for tense.
- Multi-concept tags: Scheduling, Architecture

### Evidence 515: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E31
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So there are no tense set on, node 01 and the other node which I believe is the control plane node.
- Multi-concept tags: Scheduling, Architecture

### Evidence 516: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's check that too.
- Multi-concept tags: Scheduling, Architecture

### Evidence 517: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E33
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So...
- Multi-concept tags: Scheduling, Architecture

### Evidence 518: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the node plane.
- Multi-concept tags: Scheduling, Architecture

### Evidence 519: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E35
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So there are no, no tense on either of these nodes but for now the pods can be scheduled on either of the nodes because there are no tense on any of these nodes.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 520: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E36
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so in this question, the task is to set node affinity to the deployment to place the part on node 01 only.
- Multi-concept tags: Deployments, Scheduling, Architecture

### Evidence 521: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E37
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're going to edit the deployment.
- Multi-concept tags: Deployments, Scheduling, Architecture

### Evidence 522: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E38
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that's kubectl edit deployment blue.
- Multi-concept tags: Deployments, Scheduling, Architecture

### Evidence 523: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E39
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're here and what we need to do is on the pod specification now we've got to set the node affinity for these, right?
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 524: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E40
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we, we have to use the required during scheduling, ignore during execution then use the color and the values to close.
- Multi-concept tags: Scheduling, Architecture

### Evidence 525: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So for this, let's go to the Kubernetes documentation page and search for affinity.
- Multi-concept tags: Scheduling, Architecture

### Evidence 526: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E42
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And let's get this.
- Multi-concept tags: Scheduling, Architecture

### Evidence 527: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E43
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And here, let's look for the affinity spec.
- Multi-concept tags: Scheduling, Architecture

### Evidence 528: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E44
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we going to copy this and paste it here.
- Multi-concept tags: Scheduling, Architecture

### Evidence 529: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E45
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So here, basically this one is an example for a pod.
- Multi-concept tags: Pods, Scheduling, Architecture, CKA-CKAD

### Evidence 530: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E46
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And so all of these are kind of aligned bit more to the left.
- Multi-concept tags: Scheduling, Architecture

### Evidence 531: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E47
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: But here, this is under the pod which is under the template section of deployment.
- Multi-concept tags: Pods, Deployments, Scheduling, Architecture

### Evidence 532: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E48
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we have to move it all a little bit to the right.
- Multi-concept tags: Scheduling, Architecture

### Evidence 533: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E49
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So for this, what I'm gonna do here is the first one is, okay, first line is okay but all these remaining lines we need to move it one step inside.
- Multi-concept tags: Scheduling, Architecture

### Evidence 534: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E50
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So press capital V and then select all the lines.
- Multi-concept tags: Scheduling, Architecture

### Evidence 535: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E51
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Then I'm gonna do a greater than symbol.
- Multi-concept tags: Scheduling, Architecture

### Evidence 536: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E52
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that's shift dot on the keyboard that I'm using.
- Multi-concept tags: Scheduling, Architecture

### Evidence 537: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E53
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: It moves everything to the, to the right.
- Multi-concept tags: Scheduling, Architecture

### Evidence 538: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E54
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So it's not, not very pretty but I think that will do the job for now.
- Multi-concept tags: Scheduling, Architecture

### Evidence 539: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E55
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And I'm just going to set the key to color and the value to low.
- Multi-concept tags: Scheduling, Architecture

### Evidence 540: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E56
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So there, there are ways that we can set the VIM settings so that this always, it gets intended with spaces as opposed to multiple spaces at a time that you can see here.
- Multi-concept tags: Scheduling, Architecture

### Evidence 541: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E57
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, we're gonna save that and let's give this a shot.
- Multi-concept tags: Scheduling, Architecture

### Evidence 542: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E58
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so that's done.
- Multi-concept tags: Scheduling, Architecture

### Evidence 543: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E59
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now the question is to find out which nodes the ports are placed on.
- Multi-concept tags: Scheduling, Architecture

### Evidence 544: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E60
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's run a kubectl get pods -o wide that kind of shows us that all the pods are all node 01.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 545: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E61
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So they're all on node 01.
- Multi-concept tags: Scheduling, Architecture

### Evidence 546: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E62
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the next task is to create a new deployment named red with nginx image and two replicas and ensure it gets placed on the control plane node only.
- Multi-concept tags: Deployments, Scheduling, Architecture

### Evidence 547: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E63
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And the recommendation is to use the label node kubernetes .io/master which is already set on the control plane node.
- Multi-concept tags: Scheduling, Architecture

### Evidence 548: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E64
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So if you look at the control plane node we see that there is this label, right?
- Multi-concept tags: Scheduling, Architecture

### Evidence 549: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E65
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: It doesn't have a value set, right?
- Multi-concept tags: Scheduling, Architecture

### Evidence 550: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E66
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So all we need to do is to set a node affinity rule that says the pods that are part of the deployment red should be placed on a node that has this label set.
- Multi-concept tags: Pods, Deployments, Scheduling, Architecture

### Evidence 551: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E67
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And the label does not have a value.
- Multi-concept tags: Scheduling, Architecture

### Evidence 552: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E68
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: But if this label exists then that's where it should be placed on.
- Multi-concept tags: Scheduling, Architecture

### Evidence 553: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E69
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's try and do that.
- Multi-concept tags: Scheduling, Architecture

### Evidence 554: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E70
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we'll use the kubectl create deployment command and then the name is Redis.
- Multi-concept tags: Deployments, Scheduling, Configuration, Architecture

### Evidence 555: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E71
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Sorry, red.
- Multi-concept tags: Scheduling, Architecture

### Evidence 556: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E72
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Image is nginx and replicas =2.
- Multi-concept tags: Scheduling, Architecture

### Evidence 557: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E73
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay?
- Multi-concept tags: Scheduling, Architecture

### Evidence 558: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E74
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: But we're not gonna create it.
- Multi-concept tags: Scheduling, Architecture

### Evidence 559: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E75
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna do a dry run because we need to get the yaml file to input the node affinity rules.
- Multi-concept tags: Scheduling, Configuration, Architecture

### Evidence 560: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E76
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna do a dry run=client and then -o yaml that's gonna give us the yaml output.
- Multi-concept tags: Scheduling, Configuration, Architecture

### Evidence 561: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E77
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Then we're going to put it to a file named red.yaml.
- Multi-concept tags: Scheduling, Configuration, Architecture

### Evidence 562: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E78
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now we're going to edit that file.
- Multi-concept tags: Scheduling, Architecture

### Evidence 563: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E79
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And within the spec section we're gonna do the same as we did before.
- Multi-concept tags: Scheduling, Architecture

### Evidence 564: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E80
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna copy this node affinity rule and paste it.
- Multi-concept tags: Scheduling, Architecture

### Evidence 565: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E81
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now we've got to select all of these lines.
- Multi-concept tags: Scheduling, Architecture

### Evidence 566: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E82
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: I'm gonna do a shift dot shift dot on my keyboard which is gonna, and that's basically the, the greater than symbol and it's gonna move to the right.
- Multi-concept tags: Scheduling, Architecture

### Evidence 567: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E83
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now we're gonna change this to the key is the label which is this.
- Multi-concept tags: Scheduling, Architecture

### Evidence 568: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E84
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: I'm gonna copy and paste.
- Multi-concept tags: Scheduling, Architecture

### Evidence 569: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E85
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And as we realize that this label does not have value so there's no point in checking the value here.
- Multi-concept tags: Scheduling, Architecture

### Evidence 570: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E86
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna get rid of this and all, all we are gonna do is say if the label exists so the operator would be Exists with the capital E, lets save that.
- Multi-concept tags: Scheduling, Architecture

### Evidence 571: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E87
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And now we're going to create a deployment.
- Multi-concept tags: Deployments, Scheduling, Architecture

### Evidence 572: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E88
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: There seems to be some error.
- Multi-concept tags: Scheduling, Architecture, Troubleshooting

### Evidence 573: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E89
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's go back, see what the error is.
- Multi-concept tags: Scheduling, Architecture, Troubleshooting

### Evidence 574: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E90
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: It's on line 26 Do not find expected key.
- Multi-concept tags: Scheduling, Architecture

### Evidence 575: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E91
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So line is this.
- Multi-concept tags: Scheduling, Architecture

### Evidence 576: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E92
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, actually it's this line here.
- Multi-concept tags: Scheduling, Architecture

### Evidence 577: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E93
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So this is not currently intended, that's the problem.
- Multi-concept tags: Scheduling, Architecture

### Evidence 578: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E94
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: We're going to move it two characters before.
- Multi-concept tags: Scheduling, Architecture

### Evidence 579: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E95
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, So we're going to save that.
- Multi-concept tags: Scheduling, Architecture

### Evidence 580: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E96
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's try that again.
- Multi-concept tags: Scheduling, Architecture

### Evidence 581: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E97
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay.
- Multi-concept tags: Scheduling, Architecture

### Evidence 582: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E98
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So even though here it's said line 26 the issue was a few lines above okay so let's check our solution.
- Multi-concept tags: Scheduling, Architecture, Troubleshooting

### Evidence 583: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E99
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: All right, So that works.
- Multi-concept tags: Scheduling, Architecture

### Evidence 584: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E100
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And if we look at pods now, we'll see that those the new pods are on node control plane.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 585: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E101
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay?
- Multi-concept tags: Scheduling, Architecture

### Evidence 586: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E102
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, that's the end of this lab.
- Multi-concept tags: Scheduling, Architecture

### Evidence 587: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/064_Taints and Tolerations vs Node Affinity.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 064_Taints and Tolerations vs Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: Now that we have learned about taints and tolerations and node affinity, let us tie together the two concepts through a fun exercise.
- Multi-concept tags: Scheduling, Architecture

### Evidence 588: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/064_Taints and Tolerations vs Node Affinity.extraction.md::E2
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 064_Taints and Tolerations vs Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: We have three nodes and three pods, each in three colors blue, red, and green.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 589: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/064_Taints and Tolerations vs Node Affinity.extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 064_Taints and Tolerations vs Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: The ultimate aim is to place the blue pod in the blue node, the red pod in the red node, and likewise for green.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 590: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/064_Taints and Tolerations vs Node Affinity.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 064_Taints and Tolerations vs Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: We are sharing the same Kubernetes cluster with other teams, so there are other pods in the cluster as well as other nodes.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 591: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/064_Taints and Tolerations vs Node Affinity.extraction.md::E5
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 064_Taints and Tolerations vs Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: We do not want any other pod to be placed on our node.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 592: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/064_Taints and Tolerations vs Node Affinity.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 064_Taints and Tolerations vs Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: Neither do we want our pods to be placed on their nodes.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 593: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/064_Taints and Tolerations vs Node Affinity.extraction.md::E7
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 064_Taints and Tolerations vs Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: Let us first try to solve this problem using taints and tolerations.
- Multi-concept tags: Scheduling, Architecture

### Evidence 594: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/064_Taints and Tolerations vs Node Affinity.extraction.md::E8
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 064_Taints and Tolerations vs Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: We apply a taint to the nodes, marking them with their colors blue, red and green, and we then set a toleration on the pods to tolerate the respective colors.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 595: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/064_Taints and Tolerations vs Node Affinity.extraction.md::E9
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 064_Taints and Tolerations vs Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: When the pods are now created, the nodes ensure they only accept the pods with the right toleration.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 596: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/064_Taints and Tolerations vs Node Affinity.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 064_Taints and Tolerations vs Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: So the green pod ends up on the green node and the blue pod ends up on the blue node.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 597: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/064_Taints and Tolerations vs Node Affinity.extraction.md::E11
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 064_Taints and Tolerations vs Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: However, taints and tolerations does not guarantee that the pods will only prefer these nodes, so the red pods ends up on one of the other nodes that do not have a taint or toleration set.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 598: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/064_Taints and Tolerations vs Node Affinity.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 064_Taints and Tolerations vs Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: This is not desired.
- Multi-concept tags: Scheduling, Architecture

### Evidence 599: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/064_Taints and Tolerations vs Node Affinity.extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 064_Taints and Tolerations vs Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: Let us try to solve the same problem with node affinity.
- Multi-concept tags: Scheduling, Architecture

### Evidence 600: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/064_Taints and Tolerations vs Node Affinity.extraction.md::E14
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 064_Taints and Tolerations vs Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: With node affinity, we first label the nodes with their respective colors blue, red, and green.
- Multi-concept tags: Scheduling, Architecture

### Evidence 601: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/064_Taints and Tolerations vs Node Affinity.extraction.md::E15
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 064_Taints and Tolerations vs Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: We then set node selectors on the pods to tie the pods to the nodes.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 602: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/064_Taints and Tolerations vs Node Affinity.extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 064_Taints and Tolerations vs Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: As such, the pods end up on the right nodes.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 603: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/064_Taints and Tolerations vs Node Affinity.extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 064_Taints and Tolerations vs Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: However, that does not guarantee that other pods are not placed on these nodes.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 604: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/064_Taints and Tolerations vs Node Affinity.extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 064_Taints and Tolerations vs Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: In this case, there is a chance that one of the other pods may end up on our nodes.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 605: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/064_Taints and Tolerations vs Node Affinity.extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 064_Taints and Tolerations vs Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: This is not something we desire.
- Multi-concept tags: Scheduling, Architecture

### Evidence 606: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/064_Taints and Tolerations vs Node Affinity.extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 064_Taints and Tolerations vs Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: As such, a combination of taints and tolerations and node affinity rules can be used together to completely dedicate nodes for specific pods.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 607: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/064_Taints and Tolerations vs Node Affinity.extraction.md::E21
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 064_Taints and Tolerations vs Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: We first use taints and tolerations to prevent other pods from being placed on our nodes, and then we use node affinity to prevent our pods from being placed on their nodes.
- Multi-concept tags: Pods, Scheduling, Architecture, Observability

### Evidence 608: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/064_Taints and Tolerations vs Node Affinity.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 064_Taints and Tolerations vs Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: Well, that's it for this lecture.
- Multi-concept tags: Scheduling, Architecture

### Evidence 609: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E7
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements.txt
- Line Context: Lines 1-1 from transcript
- Content: Now, as we have discussed before, it is the Kubernetes Scheduler that decides which node a pod goes to.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 610: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E8
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements.txt
- Line Context: Lines 1-1 from transcript
- Content: The scheduler takes into consideration the amount of resources required by a pod and those available on the nodes, and identifies the best node to place a pod on.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 611: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E9
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements.txt
- Line Context: Lines 1-1 from transcript
- Content: In this case, the scheduler schedules a new pod on node two because there are sufficient resources available on that node.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 612: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E11
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements.txt
- Line Context: Lines 1-1 from transcript
- Content: The scheduler avoids placing the pod on those nodes, and instead places the pod on one where sufficient resources are available, and if there is no sufficient resources available on any of the nodes, then the scheduler holds back, scheduling the pod and you will see the pod in a pending state.
- Multi-concept tags: Pods, Scheduling, Architecture, Troubleshooting

### Evidence 613: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E18
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements.txt
- Line Context: Lines 1-1 from transcript
- Content: So when the scheduler tries to place the pod on a node, it uses these numbers to identify a node which has sufficient amount of resources available.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 614: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E21
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements.txt
- Line Context: Lines 1-1 from transcript
- Content: So when the scheduler gets a request to place this pod, it looks for a node that has this amount of resources available.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 615: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/069_DaemonSets.extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 069_DaemonSets.txt
- Line Context: Lines 1-1 from transcript
- Content: It has nested pod specification under the templates section and selectors to link the demon set to the pods.
- Multi-concept tags: Pods, Scheduling

### Evidence 616: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/069_DaemonSets.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 069_DaemonSets.txt
- Line Context: Lines 1-1 from transcript
- Content: Under spec you have a selector and a pod specification template.
- Multi-concept tags: Pods, Scheduling

### Evidence 617: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/069_DaemonSets.extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 069_DaemonSets.txt
- Line Context: Lines 1-1 from transcript
- Content: Ensure the labels in the selector matches the ones in the pod template.
- Multi-concept tags: Pods, Scheduling

### Evidence 618: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/069_DaemonSets.extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 069_DaemonSets.txt
- Line Context: Lines 1-1 from transcript
- Content: How does it schedule pods on each node?
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 619: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/069_DaemonSets.extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 069_DaemonSets.txt
- Line Context: Lines 1-1 from transcript
- Content: If you were asked to schedule a pod on each node in the cluster, how would you do it?
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 620: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/069_DaemonSets.extraction.md::E35
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 069_DaemonSets.txt
- Line Context: Lines 1-1 from transcript
- Content: In one of the previous lectures in this section, we discussed that we could set the node name property on the pod to bypass the scheduler and get the pod placed on a node directly.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 621: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/069_DaemonSets.extraction.md::E39
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 069_DaemonSets.txt
- Line Context: Lines 1-1 from transcript
- Content: From version 1.1 onwards, the daemon set uses the default scheduler and node affinity rules that we learned in one of the previous lectures to schedule pods on nodes.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 622: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/071_Lab Solution - DaemonSets (optional).extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 071_Lab Solution - DaemonSets (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So here you can see the design number of nodes scheduled is one current number of nodes scheduled is one.
- Multi-concept tags: Scheduling, Architecture

### Evidence 623: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/072_Static Pods.extraction.md::E3
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 072_Static Pods.txt
- Line Context: Lines 1-1 from transcript
- Content: The Kubelet relies on the kube API server for instructions on what pods to load on its node, which was based on a decision made by the kube scheduler which was stored in the etcd data store.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 624: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/072_Static Pods.extraction.md::E4
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 072_Static Pods.txt
- Line Context: Lines 1-1 from transcript
- Content: What if there was no kube API server and kube scheduler, and no controllers and no etcd cluster?
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 625: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/072_Static Pods.extraction.md::E73
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 072_Static Pods.txt
- Line Context: Lines 1-1 from transcript
- Content: Both static pods and pods created by daemon sets are ignored by the kube scheduler.
- Multi-concept tags: Pods, Scheduling

### Evidence 626: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/072_Static Pods.extraction.md::E74
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 072_Static Pods.txt
- Line Context: Lines 1-1 from transcript
- Content: The kube scheduler has no effect on these pods.
- Multi-concept tags: Pods, Scheduling

### Evidence 627: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/074_Lab Solution - Static Pods (Optional).extraction.md::E21
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 074_Lab Solution - Static Pods (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: There are ways that you can do this for all of the pods like using filters and selectors.
- Multi-concept tags: Pods, Scheduling

### Evidence 628: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/074_Lab Solution - Static Pods (Optional).extraction.md::E29
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 074_Lab Solution - Static Pods (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So if you look at this, we have the ETCD it's a control plane, ETCD is a static pod, cube PPA server is a static pod cube control manager is a static pod and cube scheduler is a static pod So not Core DNS Core DNS does not seem to be a static pod.
- Multi-concept tags: Pods, Networking, Scheduling, Architecture

### Evidence 629: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: Let us now look at priority classes in Kubernetes.
- Multi-concept tags: Scheduling

### Evidence 630: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E2
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: We know that Kubernetes runs different applications as pods with different priorities.
- Multi-concept tags: Pods, Scheduling

### Evidence 631: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E3
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, the Kubernetes control plane components itself run as pods within the cluster.
- Multi-concept tags: Pods, Scheduling, Architecture, CKA-CKAD

### Evidence 632: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: And we know that no matter what, those workloads need to always run.
- Multi-concept tags: Scheduling

### Evidence 633: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: Similarly, we may have priority databases, critical applications running on the cluster as well as lower priority workloads like background jobs.
- Multi-concept tags: Scheduling, Architecture, On-Prem

### Evidence 634: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: Now, we need a way to make sure that higher priority workloads always get scheduled without being interrupted by lower priority workloads.
- Multi-concept tags: Scheduling

### Evidence 635: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: This is where priority classes come in.
- Multi-concept tags: Scheduling

### Evidence 636: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: Priority classes help us define priorities for different workloads, so that higher priority workloads always get priority over lower priority ones.
- Multi-concept tags: Scheduling

### Evidence 637: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E9
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: If a higher priority pod cannot be scheduled, the scheduler will try to terminate a lower priority workload to make that happen.
- Multi-concept tags: Pods, Scheduling

### Evidence 638: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E10
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: So priority classes are non namespaced objects, meaning they are not created within a specific namespace.
- Multi-concept tags: Scheduling

### Evidence 639: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: They are not attached to a specific namespace.
- Multi-concept tags: Scheduling

### Evidence 640: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E12
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: So once they're created, they're available to be configured on any port in any namespace.
- Multi-concept tags: Scheduling

### Evidence 641: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: So how do you define priorities?
- Multi-concept tags: Scheduling

### Evidence 642: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: We define priorities using a range of numbers.
- Multi-concept tags: Scheduling

### Evidence 643: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: So a priority can be defined as high as 1 billion and as low as -2 billion or around that number.
- Multi-concept tags: Scheduling

### Evidence 644: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: A larger number indicates higher priority.
- Multi-concept tags: Scheduling

### Evidence 645: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E17
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: Now this range that I've just mentioned is for the applications and workloads that are deployed on the cluster.
- Multi-concept tags: Scheduling, Architecture

### Evidence 646: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E18
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: So the positive 1 billion to -2 billion number is for the applications or workloads that are deployed as apps on the cluster.
- Multi-concept tags: Scheduling, Architecture

### Evidence 647: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: But there is a separate range that's dedicated for internal system critical parts such as the Kubernetes control plane components itself.
- Multi-concept tags: Scheduling, Architecture, On-Prem

### Evidence 648: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: So they always get the highest priority. and they have priorities up to 2 billion.
- Multi-concept tags: Scheduling

### Evidence 649: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E21
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: So to list existing priority classes run the kubectl get priority class command.
- Multi-concept tags: Scheduling, Configuration

### Evidence 650: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: And as you can see it currently lists the system cluster critical and system node critical classes.
- Multi-concept tags: Scheduling, Architecture, On-Prem

### Evidence 651: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: And as you can rightly see the value of these are close to 2 billion or around that range.
- Multi-concept tags: Scheduling

### Evidence 652: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E24
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: Let us now see how we can create a new priority class.
- Multi-concept tags: Scheduling

### Evidence 653: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E25
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: So to create a new priority class, we create an object with the API version set to scheduling v1 kind set to priority class metadata with a name.
- Multi-concept tags: Scheduling

### Evidence 654: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E26
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: And then we define the value.
- Multi-concept tags: Scheduling

### Evidence 655: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: So this is the number that we just spoke about.
- Multi-concept tags: Scheduling

### Evidence 656: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: And finally we have the description.
- Multi-concept tags: Scheduling, On-Prem

### Evidence 657: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: The description is an optional field.
- Multi-concept tags: Scheduling, On-Prem

### Evidence 658: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E30
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: Once this is created we associate this priority class to a pod by using the priority class name property inside the pod definition.
- Multi-concept tags: Pods, Scheduling

### Evidence 659: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E31
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: Like this.
- Multi-concept tags: Scheduling

### Evidence 660: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E32
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: When that pod is created, it is assumed to have this priority that is assigned to the priority class.
- Multi-concept tags: Pods, Scheduling

### Evidence 661: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E33
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: Now, what if I don't specify a priority class name for a pod?
- Multi-concept tags: Pods, Scheduling

### Evidence 662: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: By default it is assumed to have a priority value of zero.
- Multi-concept tags: Scheduling

### Evidence 663: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E35
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: However, if you'd like to modify that, you must create a new priority class and assign the global default property to true.
- Multi-concept tags: Scheduling

### Evidence 664: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E36
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: So this is an optional field, but it can be used to define the default priority of all the pods.
- Multi-concept tags: Pods, Scheduling

### Evidence 665: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E37
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: If there are no priority class name explicitly defined in that pod's configuration file.
- Multi-concept tags: Pods, Scheduling

### Evidence 666: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E38
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: So as such.
- Multi-concept tags: Scheduling

### Evidence 667: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E39
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: Also note that it can only be defined in a single priority class, so the global default property can only be defined in a single priority class because you cannot have multiple default values, right?
- Multi-concept tags: Scheduling

### Evidence 668: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E40
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: So you cannot have more than one priority class with the global default property set to true.
- Multi-concept tags: Scheduling

### Evidence 669: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: Now let us look at the effect of pod priority.
- Multi-concept tags: Pods, Scheduling

### Evidence 670: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E42
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: So say there are two workloads with two priorities coming in to be scheduled a critical app with a higher priority of seven, and a jobs app with a lower priority of five.
- Multi-concept tags: Scheduling, On-Prem

### Evidence 671: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E43
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: Now, since the critical app is of higher priority, it gets, uh, placed first.
- Multi-concept tags: Scheduling, On-Prem

### Evidence 672: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E44
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: And if there is still resources available.
- Multi-concept tags: Scheduling

### Evidence 673: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E45
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: So what you see here are the available resources on the cluster or the consumption of the resources on the cluster.
- Multi-concept tags: Scheduling, Architecture

### Evidence 674: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E46
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: So there is still some more resources left.
- Multi-concept tags: Scheduling

### Evidence 675: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E47
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: So the workload with the lower priority also gets placed.
- Multi-concept tags: Scheduling

### Evidence 676: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E48
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: Uh next uh after the higher priority pod gets placed.
- Multi-concept tags: Pods, Scheduling

### Evidence 677: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E49
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: Now let's say we have a higher priority job that comes in with a priority of six.
- Multi-concept tags: Scheduling

### Evidence 678: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E50
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: And there are no more resources available on the cluster.
- Multi-concept tags: Scheduling, Architecture

### Evidence 679: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E51
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: What happens?
- Multi-concept tags: Scheduling

### Evidence 680: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E52
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: Do we evict existing workload or does it wait?
- Multi-concept tags: Scheduling

### Evidence 681: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E53
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: What does it do?
- Multi-concept tags: Scheduling

### Evidence 682: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E54
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: Now that behavior is defined by the preemption policy defined in the priority class assigned to the new workload.
- Multi-concept tags: Scheduling, Platform Engineering

### Evidence 683: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E55
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: If the preemption policy is not set, its default value is set to preempt a lower priority.
- Multi-concept tags: Scheduling, Platform Engineering

### Evidence 684: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E56
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: This means that it would kill the existing lower priority job and take its place.
- Multi-concept tags: Scheduling

### Evidence 685: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E57
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: But if you do not want it to kill or evict the existing workload, and instead wait for the cluster resources to free up, then you must set this preemption policy to never.
- Multi-concept tags: Scheduling, Architecture, Platform Engineering

### Evidence 686: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E58
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: So a preemption policy set to never makes the pods in that priority class non preempting, meaning that they cannot preempt other pods and it will wait to be scheduled in the scheduling queue.
- Multi-concept tags: Pods, Scheduling, Platform Engineering

### Evidence 687: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E59
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: However, they will get a higher priority in scheduling over other lower priority pods that are also waiting to be scheduled.
- Multi-concept tags: Pods, Scheduling

### Evidence 688: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E60
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: So there's the priority still applies only when it is going to be scheduled.
- Multi-concept tags: Scheduling

### Evidence 689: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E61
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: But will it kill the existing preempt, or will it evict the existing workload or not?
- Multi-concept tags: Scheduling

### Evidence 690: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E62
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: That is defined by the preemption policy.
- Multi-concept tags: Scheduling, Platform Engineering

### Evidence 691: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E63
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: Well, that's it for this lecture.
- Multi-concept tags: Scheduling

### Evidence 692: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E64
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: Head over to the labs and practice what we just learned.
- Multi-concept tags: Scheduling

### Evidence 693: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E1
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: In this lecture, we look at deploying multiple schedulers in a Kubernetes cluster.
- Multi-concept tags: Scheduling, Architecture

### Evidence 694: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E2
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: Now we have seen how the default scheduler works in Kubernetes in the previous lectures.
- Multi-concept tags: Scheduling

### Evidence 695: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: It has an algorithm that distributes pods across nodes evenly, as well as takes into consideration various conditions.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 696: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: We specify through taints and tolerations and node affinity, etc..
- Multi-concept tags: Scheduling, Architecture

### Evidence 697: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: But what if none of these satisfies your needs?
- Multi-concept tags: Scheduling

### Evidence 698: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: Say you have a specific application that requires its components to be placed on nodes after performing some additional checks, so you decide to have your own scheduling algorithm to place pods on nodes so that you can add your own custom conditions and checks in.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 699: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: Kubernetes is highly extensible.
- Multi-concept tags: Scheduling

### Evidence 700: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E8
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: You can write your own Kubernetes Scheduler program, package it, and deploy it as the default scheduler, or as an additional scheduler in Kubernetes cluster.
- Multi-concept tags: Scheduling, Architecture, CKA-CKAD

### Evidence 701: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E9
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: That way, all of the other applications can go through the default scheduler.
- Multi-concept tags: Scheduling

### Evidence 702: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E10
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: However, some specific applications that you may choose can use your own custom scheduler, so your Kubernetes cluster can have multiple schedulers at a time.
- Multi-concept tags: Scheduling, Architecture

### Evidence 703: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E11
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: When creating a pod or a deployment, you can instruct Kubernetes to have the pod scheduled by a specific scheduler.
- Multi-concept tags: Pods, Deployments, Scheduling

### Evidence 704: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's see how that's done.
- Multi-concept tags: Scheduling

### Evidence 705: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E13
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: Now, when there are multiple schedulers, they must have different names so that we can identify them as separate schedulers.
- Multi-concept tags: Scheduling

### Evidence 706: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E14
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: So the default scheduler is named default scheduler.
- Multi-concept tags: Scheduling

### Evidence 707: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E15
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: And this name is configured in a kube scheduler configuration file that looks like this.
- Multi-concept tags: Scheduling

### Evidence 708: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E16
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: Now the default scheduler doesn't really need one because if you don't specify a name it sets the name to default scheduler.
- Multi-concept tags: Scheduling

### Evidence 709: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E17
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: But this is how it would look if you were to create one.
- Multi-concept tags: Scheduling

### Evidence 710: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E18
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: And for the other schedulers, we could create a separate configuration file and set the scheduler name like this.
- Multi-concept tags: Scheduling

### Evidence 711: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E19
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's start with the most simplest way of deploying an additional scheduler.
- Multi-concept tags: Scheduling

### Evidence 712: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E20
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: Now earlier we saw how to deploy the Kubernetes Kube scheduler.
- Multi-concept tags: Scheduling

### Evidence 713: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E21
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: We download the kube scheduler binary and run it as a service with a set of options.
- Multi-concept tags: Services, Scheduling

### Evidence 714: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E22
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: Now, to deploy an additional scheduler, you may use the same kube scheduler binary or use one that you might have built for yourself, which is what you would do if you needed the scheduler to work differently.
- Multi-concept tags: Scheduling

### Evidence 715: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E23
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: In this case, we're going to use the same binary to deploy the scheduler, and this time we point the configuration to the custom configuration file that we created.
- Multi-concept tags: Scheduling

### Evidence 716: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E24
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: So each scheduler uses a separate configuration file, and with each file having its own scheduler name.
- Multi-concept tags: Scheduling

### Evidence 717: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E25
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: Note that there are other options to be passed in, such as the kubeconfig file to authenticate into the Kubernetes API, but I'm just skipping that for now just to keep it super simple.
- Multi-concept tags: Scheduling

### Evidence 718: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E26
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: This is not how you would deploy a custom scheduler 99% of the time today, because with kube ADM deployment, all the control plane components run as a pod or a deployment within the Kubernetes cluster.
- Multi-concept tags: Pods, Deployments, Scheduling, Architecture

### Evidence 719: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's look at another way.
- Multi-concept tags: Scheduling

### Evidence 720: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E28
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's look at how it works if you were to deploy the scheduler as a pod.
- Multi-concept tags: Pods, Scheduling

### Evidence 721: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E29
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: So we create a pod definition file and specify the Kubeconfig property, which is the path to the scheduler conf file that has the authentication information to connect to the Kubernetes API server.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 722: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E30
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: We then pass in our custom kube scheduler configuration file as a config option to the scheduler.
- Multi-concept tags: Scheduling

### Evidence 723: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E31
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: Note that we have the scheduler name specified in the file, so that's how the name gets picked up by the scheduler.
- Multi-concept tags: Scheduling

### Evidence 724: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: Now another important option to look here is the leader elect option.
- Multi-concept tags: Scheduling

### Evidence 725: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E33
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: And this goes into the scheduler configuration.
- Multi-concept tags: Scheduling

### Evidence 726: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E34
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: The leader elect option is used when you have multiple copies of the scheduler running on different master nodes, as in a high availability setup where you have multiple master nodes with the scheduler process running on both of them.
- Multi-concept tags: Scheduling, Architecture

### Evidence 727: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E35
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: If multiple copies of the same scheduler are running on different nodes, only one can be active at a time, and that's where the leader elect option helps in choosing a leader who will lead the scheduling activities.
- Multi-concept tags: Scheduling, Architecture

### Evidence 728: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E36
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: So we will discuss more about his setup in another section.
- Multi-concept tags: Scheduling

### Evidence 729: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E37
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: In case you do have multiple masters, just remember that you can pass in this additional parameter to set a log object name.
- Multi-concept tags: Scheduling

### Evidence 730: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E38
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: And this is to differentiate that the new custom scheduler from the default selection process.
- Multi-concept tags: Scheduling

### Evidence 731: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E39
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: Now let's take a look at how to deploy the scheduler as a deployment.
- Multi-concept tags: Deployments, Scheduling

### Evidence 732: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E40
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: And for this I'm going to go into the Kubernetes documentation pages.
- Multi-concept tags: Scheduling

### Evidence 733: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E41
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: And for the one for configuring multiple schedulers.
- Multi-concept tags: Scheduling

### Evidence 734: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E42
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: And if you look here first of all it shows you how to if you were to build your own scheduler, how you could clone the Kubernetes repo and then make changes to the scheduler and build it and package it into a Docker image.
- Multi-concept tags: Scheduling, CKA-CKAD

### Evidence 735: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E43
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: And then here you can see the config file to create a scheduler as a deployment.
- Multi-concept tags: Deployments, Scheduling

### Evidence 736: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E44
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: You can ignore all of this to begin with.
- Multi-concept tags: Scheduling

### Evidence 737: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E45
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: So this is what it is really.
- Multi-concept tags: Scheduling

### Evidence 738: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E46
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: So here you have the deployment.
- Multi-concept tags: Deployments, Scheduling

### Evidence 739: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E47
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: And this deployment is similar to the pod but it's just that it's a deployment.
- Multi-concept tags: Pods, Deployments, Scheduling

### Evidence 740: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E48
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: The pot that we just looked at.
- Multi-concept tags: Scheduling

### Evidence 741: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E49
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: But it's just that it's a deployment.
- Multi-concept tags: Deployments, Scheduling

### Evidence 742: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E50
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: So here you have the image which is the custom cube scheduler image.
- Multi-concept tags: Scheduling

### Evidence 743: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E51
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: And this is the config file that we just talked about which has your custom scheduler config file.
- Multi-concept tags: Scheduling

### Evidence 744: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E52
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: Right.
- Multi-concept tags: Scheduling

### Evidence 745: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E53
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: And the binary is the cube scheduler binary.
- Multi-concept tags: Scheduling

### Evidence 746: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E54
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: Now for this to work there are some additional kind of prerequisites.
- Multi-concept tags: Scheduling

### Evidence 747: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E55
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: So some of these are like the service account and the cluster role bindings.
- Multi-concept tags: Services, Scheduling, Security-RBAC, Architecture

### Evidence 748: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E56
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: And these are basically for authentication right.
- Multi-concept tags: Scheduling

### Evidence 749: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E57
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: And we discussed about cluster role bindings and cluster roles and service accounts in uh the auth section.
- Multi-concept tags: Services, Scheduling, Security-RBAC, Architecture

### Evidence 750: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E58
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: So if you haven't gone through that yet just hold off on this.
- Multi-concept tags: Scheduling

### Evidence 751: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E59
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: You can basically ignore this for now.
- Multi-concept tags: Scheduling

### Evidence 752: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E60
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: And the only other thing is how this file is passed into the deployment.
- Multi-concept tags: Deployments, Scheduling

### Evidence 753: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E61
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: Right.
- Multi-concept tags: Scheduling

### Evidence 754: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E62
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: So you can either create this file locally and then pass it in as a volume mount as it's done for the other pods usually.
- Multi-concept tags: Pods, Storage, Scheduling

### Evidence 755: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E63
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: Or another thing you could do that's done here.
- Multi-concept tags: Scheduling

### Evidence 756: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E64
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: The approach that's used here is basically creating a config map.
- Multi-concept tags: Scheduling

### Evidence 757: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E65
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: So this is the kube cube scheduler configuration that we just talked about.
- Multi-concept tags: Scheduling

### Evidence 758: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E66
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: Um, with the leader option set to false because I think the replicas is just one.
- Multi-concept tags: Scheduling

### Evidence 759: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E67
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: And then you have the, uh, the scheduler name here.
- Multi-concept tags: Scheduling

### Evidence 760: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E68
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: So this is the, uh, the config file.
- Multi-concept tags: Scheduling

### Evidence 761: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E69
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: And then this config file is passed in as a volume here as a config file.
- Multi-concept tags: Storage, Scheduling

### Evidence 762: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E70
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: So basically whatever is the contents in the uh, in that particular config map is then mapped to a volume mount to a volume here the specific location.
- Multi-concept tags: Storage, Scheduling

### Evidence 763: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E71
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: And then from this location you have this YAML file which has which basically has this content.
- Multi-concept tags: Scheduling, Configuration

### Evidence 764: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E72
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: Right.
- Multi-concept tags: Scheduling

### Evidence 765: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E73
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: So this is how that maps.
- Multi-concept tags: Scheduling

### Evidence 766: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E74
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: But again if you haven't gone through the volume and volume mount sections of this course, then just hold off on this for now and you'll understand that when we talk about these and then again liveness probes, readiness probes, resources and security context, all of these are sections that we talk about later.
- Multi-concept tags: Storage, Scheduling, Security-RBAC, Observability

### Evidence 767: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E75
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: So again you can ignore these for now.
- Multi-concept tags: Scheduling

### Evidence 768: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E76
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: But what we need to understand here is just that this section on how this file is passed to this custom scheduler Are just proceeding with our lecture.
- Multi-concept tags: Scheduling

### Evidence 769: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E77
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: So when you run the the get pods command in the kube system namespace, you can then see the new custom scheduler running.
- Multi-concept tags: Pods, Scheduling, Configuration

### Evidence 770: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E78
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: So this is if you run it as a pod.
- Multi-concept tags: Pods, Scheduling

### Evidence 771: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E79
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: And if you run it as a deployment then you'll probably see a slightly different naming convention.
- Multi-concept tags: Deployments, Scheduling, Platform Engineering

### Evidence 772: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E80
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: But you'll be able to see the pod there.
- Multi-concept tags: Pods, Scheduling

### Evidence 773: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E81
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: Just make sure you're checking the right namespace.
- Multi-concept tags: Scheduling

### Evidence 774: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E82
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: Now, once we have deployed that custom scheduler, the next step is to configure a pod or a deployment to use this scheduler.
- Multi-concept tags: Pods, Deployments, Scheduling

### Evidence 775: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E83
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: So how do you use our custom scheduler.
- Multi-concept tags: Scheduling

### Evidence 776: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E84
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: So here we have a pod definition file.
- Multi-concept tags: Pods, Scheduling

### Evidence 777: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E85
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: And what we need to do is add a new field called scheduler name and specify the name of the scheduler.
- Multi-concept tags: Scheduling

### Evidence 778: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E86
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: And that's basically it.
- Multi-concept tags: Scheduling

### Evidence 779: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E87
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: This way when the pod is created, the right scheduler gets picked up and the scheduling process works.
- Multi-concept tags: Pods, Scheduling

### Evidence 780: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E88
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: Now create the pod using the kubectl create command.
- Multi-concept tags: Pods, Scheduling, Configuration

### Evidence 781: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E89
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: If the scheduler was not configured correctly, then the pod will continue to remain in a pending state.
- Multi-concept tags: Pods, Scheduling, Troubleshooting

### Evidence 782: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E90
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: And if everything is good, then the pod will be in a running state.
- Multi-concept tags: Pods, Scheduling

### Evidence 783: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E91
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: So if the pod is in a the pending state, then you can look at the logs under the pod describe command.
- Multi-concept tags: Pods, Scheduling, Configuration, Troubleshooting, On-Prem

### Evidence 784: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E92
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: If you've got a describe command and you'll mostly notice that the scheduler isn't configured correctly.
- Multi-concept tags: Scheduling, Configuration, On-Prem

### Evidence 785: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E93
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: Now how do you know which scheduler picked it up.
- Multi-concept tags: Scheduling

### Evidence 786: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E94
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: So we have multiple schedulers.
- Multi-concept tags: Scheduling

### Evidence 787: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E95
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: How do you know which scheduler picked up scheduling a particular pod.
- Multi-concept tags: Pods, Scheduling

### Evidence 788: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E96
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: Now we can view this in the events using the kubectl get events command with the dash o wire option.
- Multi-concept tags: Scheduling, Configuration, Observability

### Evidence 789: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E97
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: And this will list all the events in the current namespace and look for the scheduled events.
- Multi-concept tags: Scheduling, Observability

### Evidence 790: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E98
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: And as you can see, the source of the event is the custom scheduler that we created.
- Multi-concept tags: Scheduling, Observability

### Evidence 791: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E99
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: That's the name that we gave to the custom scheduler.
- Multi-concept tags: Scheduling

### Evidence 792: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E100
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: And the message says that successfully assigned the image.
- Multi-concept tags: Scheduling

### Evidence 793: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E101
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: So that indicates that it's working.
- Multi-concept tags: Scheduling

### Evidence 794: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E102
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: You could also view the logs of the scheduler in case you run into issues.
- Multi-concept tags: Scheduling, Troubleshooting

### Evidence 795: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E103
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: So for that we have logs using the kubectl logs command and provide the scheduler pod name or the deployment name.
- Multi-concept tags: Pods, Deployments, Scheduling, Configuration

### Evidence 796: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E104
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: And then the right namespace.
- Multi-concept tags: Scheduling

### Evidence 797: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E105
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: Well that's it for this lecture and I'll see you in the next one.
- Multi-concept tags: Scheduling

### Evidence 798: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E1
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: -: Okay, so let's go over the practice test for multiple schedulers.
- Multi-concept tags: Scheduling, CKA-CKAD

### Evidence 799: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E2
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: For what is the name of the pod that deploys the default Kubernetes scheduler in this environment?
- Multi-concept tags: Pods, Scheduling, Configuration

### Evidence 800: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so let's do a kubectl get pods command in the kube-system namespace.
- Multi-concept tags: Pods, Scheduling, Configuration

### Evidence 801: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna look here.
- Multi-concept tags: Scheduling

### Evidence 802: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E5
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: And we see the pod is kube scheduler-control plane.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 803: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's select that.
- Multi-concept tags: Scheduling

### Evidence 804: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E7
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: Now, what is the image used to deploy the Kubernetes scheduler?
- Multi-concept tags: Scheduling

### Evidence 805: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E8
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: Inspect the kube scheduler, pod and identify the image.
- Multi-concept tags: Pods, Scheduling

### Evidence 806: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E9
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's do a kubectl describe pod scheduler.
- Multi-concept tags: Pods, Scheduling, On-Prem

### Evidence 807: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E10
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: And then specify the namespace as kube-system.
- Multi-concept tags: Scheduling

### Evidence 808: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E11
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so here we have the image and that is case.gcr.io/kube-scheduler version 1.23.0 as of this recording.
- Multi-concept tags: Scheduling

### Evidence 809: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: So I'm gonna select that.
- Multi-concept tags: Scheduling

### Evidence 810: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E13
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, now we've already created the service account and cluster role binding that our custom scheduler will make use of.
- Multi-concept tags: Services, Scheduling, Security-RBAC, Architecture

### Evidence 811: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E14
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: So all of these are already created.
- Multi-concept tags: Scheduling

### Evidence 812: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E15
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: If we'd like to take a look, we can do a get service account my scheduler.
- Multi-concept tags: Services, Scheduling, Security-RBAC

### Evidence 813: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay.
- Multi-concept tags: Scheduling

### Evidence 814: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E17
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: So we see the my scheduler service account and the kube-system namespace and similarly, there are cluster role bindings as well.
- Multi-concept tags: Services, Scheduling, Security-RBAC, Architecture

### Evidence 815: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: So that's already done for us.
- Multi-concept tags: Scheduling

### Evidence 816: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E19
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: So we don't have to worry about that.
- Multi-concept tags: Scheduling

### Evidence 817: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's go forward.
- Multi-concept tags: Scheduling

### Evidence 818: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E21
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: And let's create a ConfigMap that the new scheduler will employ using the concept of ConfigMap as a volume.
- Multi-concept tags: Storage, Scheduling, Configuration

### Evidence 819: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E22
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: So we have to create a ConfigMap with a name using the contents of the file, so there's already a file here.
- Multi-concept tags: Scheduling, Configuration

### Evidence 820: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: And this is the configuration.
- Multi-concept tags: Scheduling

### Evidence 821: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E24
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: It will be passed through to the new scheduler that we're gonna create.
- Multi-concept tags: Scheduling

### Evidence 822: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: So the file is there.
- Multi-concept tags: Scheduling

### Evidence 823: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E26
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: We just have to create a ConfigMap for it.
- Multi-concept tags: Scheduling, Configuration

### Evidence 824: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E27
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: So we'll do a kubectl create ConfigMap.
- Multi-concept tags: Scheduling, Configuration

### Evidence 825: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: And the name will be, let's copy and paste.
- Multi-concept tags: Scheduling

### Evidence 826: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E29
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: And it has to be created from file.
- Multi-concept tags: Scheduling

### Evidence 827: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: We use the form file as data path to the file.
- Multi-concept tags: Scheduling

### Evidence 828: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E31
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: And also specify the name system.
- Multi-concept tags: Scheduling

### Evidence 829: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: This will be kube-system.
- Multi-concept tags: Scheduling

### Evidence 830: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E33
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: There's no name.
- Multi-concept tags: Scheduling

### Evidence 831: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay.
- Multi-concept tags: Scheduling

### Evidence 832: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E35
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's verify that it's created.
- Multi-concept tags: Scheduling

### Evidence 833: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E36
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: It's in the kube-system namespace.
- Multi-concept tags: Scheduling

### Evidence 834: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E37
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so that's created.
- Multi-concept tags: Scheduling

### Evidence 835: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E38
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: Go next.
- Multi-concept tags: Scheduling

### Evidence 836: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E39
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: Deploy an additional scheduler to the cluster following the given specification.
- Multi-concept tags: Scheduling, Architecture

### Evidence 837: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E40
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: Use the manifest file provided at root my scheduler.
- Multi-concept tags: Scheduling, Configuration

### Evidence 838: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: So there's already a file given for us.
- Multi-concept tags: Scheduling

### Evidence 839: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E42
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's add root.
- Multi-concept tags: Scheduling

### Evidence 840: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E43
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: My scheduler.yaml or just since we are already in that directory, you could just give the file name.
- Multi-concept tags: Scheduling, Configuration

### Evidence 841: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E44
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that most of the work is already done.
- Multi-concept tags: Scheduling

### Evidence 842: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E45
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: The liveness probe, the readiness probe are all set so we don't really have to worry about that.
- Multi-concept tags: Scheduling, Observability

### Evidence 843: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E46
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: And all we need to do is add this image that's given here and we have to use the same image that's used by the current scheduler.
- Multi-concept tags: Scheduling

### Evidence 844: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E47
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's find that out first.
- Multi-concept tags: Scheduling

### Evidence 845: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E48
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's do a kubectl pods -a.
- Multi-concept tags: Pods, Scheduling

### Evidence 846: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E49
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: And this is current scheduler.
- Multi-concept tags: Scheduling

### Evidence 847: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E50
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: So do a describe.
- Multi-concept tags: Scheduling, On-Prem

### Evidence 848: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E51
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: And kube-system.
- Multi-concept tags: Scheduling

### Evidence 849: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E52
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: And let's do it for the image.
- Multi-concept tags: Scheduling

### Evidence 850: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E53
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: And let's get this image ID.
- Multi-concept tags: Scheduling

### Evidence 851: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E54
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: And we're going to put that in in the file instead of this placeholder here.
- Multi-concept tags: Scheduling

### Evidence 852: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E55
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay?
- Multi-concept tags: Scheduling

### Evidence 853: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E56
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: And if you look at the rest of the file, it already has the ConfigMap that we created.
- Multi-concept tags: Scheduling, Configuration

### Evidence 854: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E57
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: If you scroll down, you'll see there is the ConfigMap that we created.
- Multi-concept tags: Scheduling, Configuration

### Evidence 855: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E58
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: So that's already configured.
- Multi-concept tags: Scheduling

### Evidence 856: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E59
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: And that basically passes through as a volume mount here.
- Multi-concept tags: Storage, Scheduling

### Evidence 857: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E60
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: We'll talk about ConfigMaps in the upcoming lectures, if you haven't already gone through that yet.
- Multi-concept tags: Scheduling, Configuration

### Evidence 858: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E61
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: And we're going to create this.
- Multi-concept tags: Scheduling

### Evidence 859: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E62
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's verify that it's created.
- Multi-concept tags: Scheduling

### Evidence 860: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E63
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: In the kube-system namespace, we have my scheduler here.
- Multi-concept tags: Scheduling

### Evidence 861: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E64
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's check.
- Multi-concept tags: Scheduling

### Evidence 862: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E65
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so that's done.
- Multi-concept tags: Scheduling

### Evidence 863: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E66
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: And the final step is to create a pod.
- Multi-concept tags: Pods, Scheduling

### Evidence 864: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E67
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: So there's already a pod definition file given and use it to create a pod with a new custom scheduler.
- Multi-concept tags: Pods, Scheduling

### Evidence 865: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E68
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: So here we have the NGINX pod definition file and this is pretty straightforward.
- Multi-concept tags: Pods, Scheduling

### Evidence 866: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E69
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: Just a NGINX pod with the NGINX image.
- Multi-concept tags: Pods, Scheduling

### Evidence 867: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E70
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: And what we need to do is specify the custom scheduler, which is basically my scheduler given here.
- Multi-concept tags: Scheduling

### Evidence 868: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E71
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: So as we learned in the lecture, you have to add a new field here called scheduler name.
- Multi-concept tags: Scheduling

### Evidence 869: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E72
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: And then we specify the name of the scheduler we just created.
- Multi-concept tags: Scheduling

### Evidence 870: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E73
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: Save that.
- Multi-concept tags: Scheduling

### Evidence 871: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E74
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: And then we create a pod.
- Multi-concept tags: Pods, Scheduling

### Evidence 872: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E75
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: And we make sure pod is running.
- Multi-concept tags: Pods, Scheduling

### Evidence 873: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E76
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so that's it.
- Multi-concept tags: Scheduling

### Evidence 874: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E77
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: And that's the end of this lab.
- Multi-concept tags: Scheduling

### Evidence 875: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E1
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: Let us now look at what scheduler profiles are.
- Multi-concept tags: Scheduling

### Evidence 876: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E2
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's first recap how the Kubernetes Scheduler works.
- Multi-concept tags: Scheduling

### Evidence 877: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E3
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: Using this simple example of scheduling a pod to one of these four nodes that you can see here that are part of the Kubernetes cluster.
- Multi-concept tags: Pods, Scheduling, Architecture, CKA-CKAD

### Evidence 878: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: So here we have our pod definition file.
- Multi-concept tags: Pods, Scheduling

### Evidence 879: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: And there's our pod.
- Multi-concept tags: Pods, Scheduling

### Evidence 880: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: It is waiting to be scheduled on one of these four nodes.
- Multi-concept tags: Scheduling, Architecture

### Evidence 881: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: Now it has a resource requirement of ten CPU.
- Multi-concept tags: Scheduling

### Evidence 882: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: So it's only going to be scheduled on a node that has ten CPU remaining.
- Multi-concept tags: Scheduling, Architecture

### Evidence 883: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: And you can see the available CPU on all of these nodes that are listed here.
- Multi-concept tags: Scheduling, Architecture

### Evidence 884: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: Now it is not alone.
- Multi-concept tags: Scheduling

### Evidence 885: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: There are some other pods that are waiting to be scheduled as well.
- Multi-concept tags: Pods, Scheduling

### Evidence 886: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E12
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: So the first thing that happens is that when these pods are created, the pods end up in a scheduling queue.
- Multi-concept tags: Pods, Scheduling

### Evidence 887: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: So this is where the pods wait to be scheduled.
- Multi-concept tags: Pods, Scheduling

### Evidence 888: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: So at this stage, pods are sorted based on the priority defined on the pods.
- Multi-concept tags: Pods, Scheduling

### Evidence 889: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: So in this case our pod has a high priority set.
- Multi-concept tags: Pods, Scheduling

### Evidence 890: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E16
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: So to set a priority you must first create a priority class that looks like this.
- Multi-concept tags: Scheduling

### Evidence 891: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E17
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: And you should set it a name and set it a priority value.
- Multi-concept tags: Scheduling

### Evidence 892: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: In this case it's set to 1 million.
- Multi-concept tags: Scheduling

### Evidence 893: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: So that's really high priority.
- Multi-concept tags: Scheduling

### Evidence 894: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E20
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: So this is how pods with higher priority gets to the beginning of the queue to be scheduled first.
- Multi-concept tags: Pods, Scheduling

### Evidence 895: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E21
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: And so that sorting happens in this scheduling phase.
- Multi-concept tags: Scheduling

### Evidence 896: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E22
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: Then our pod enters the filter phase.
- Multi-concept tags: Pods, Scheduling

### Evidence 897: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: This is where nodes that cannot run the pod are filtered out.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 898: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E24
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: So in our case the first two nodes do not have sufficient resources.
- Multi-concept tags: Scheduling, Architecture

### Evidence 899: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E25
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: So do not have ten CPU remaining.
- Multi-concept tags: Scheduling

### Evidence 900: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: So they are filtered out.
- Multi-concept tags: Scheduling

### Evidence 901: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E27
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: The next phase is the scoring phase.
- Multi-concept tags: Scheduling

### Evidence 902: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: So this is where nodes are scored with different weights from the two remaining nodes.
- Multi-concept tags: Scheduling, Architecture

### Evidence 903: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E29
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: The scheduler associates a score to each node based on the free space it will have after reserving the CPU required for that part.
- Multi-concept tags: Scheduling, Architecture

### Evidence 904: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E30
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: So in this case the first one has two left and the second will have six left.
- Multi-concept tags: Scheduling

### Evidence 905: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E31
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: So the second node gets a higher score.
- Multi-concept tags: Scheduling, Architecture

### Evidence 906: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: And so that's the node that gets picked up.
- Multi-concept tags: Scheduling, Architecture

### Evidence 907: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E33
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: And finally in the binding phase this is where the pod is finally bound to a node with the highest score.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 908: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: Now all of these operations are achieved with certain plugins.
- Multi-concept tags: Scheduling

### Evidence 909: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E35
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: For example while in the scheduling queue it's the priority sort plugin that sorts the pods in an order based on the priority configured on the pods.
- Multi-concept tags: Pods, Scheduling, CKA-CKAD

### Evidence 910: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E36
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: This is how pods with priority class gets higher priority over the other pods.
- Multi-concept tags: Pods, Scheduling

### Evidence 911: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E37
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: When scheduling in the filtering stage, it's the Node Resources Fit plugin that identifies the nodes that has sufficient resources required by the pods, and filters out the nodes.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 912: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E38
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: That doesn't.
- Multi-concept tags: Scheduling

### Evidence 913: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E39
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: Now, some other plugin examples that come into this particular stage are the node name plugin that checks if a pod has a node name mentioned in the pod spec, and filters out all the nodes that does not match this name.
- Multi-concept tags: Pods, Scheduling, Architecture, CKA-CKAD

### Evidence 914: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E40
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: Another example is the node unschedulable plugin, and that filters out nodes that has the Unschedulable flag set to true.
- Multi-concept tags: Scheduling, Architecture, CKA-CKAD

### Evidence 915: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: So this is when you run the command on a node, which we will discuss later.
- Multi-concept tags: Scheduling, Configuration, Architecture

### Evidence 916: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E42
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: But all the nodes that has unschedulable flags set to true.
- Multi-concept tags: Scheduling, Architecture

### Evidence 917: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E43
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: It's this particular plugin that makes sure that no pods are set on those nodes.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 918: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E44
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: Now in the scoring phase again, the Node Resources Fit plugin associates a score to each node based on the resource available on it, and after the pod is allocated to it.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 919: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E45
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: So as you can see, a single plugin can be associated in multiple different phases.
- Multi-concept tags: Scheduling

### Evidence 920: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E46
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: Another example of a plugin in this stage would be the image locality plugin, that associates a high score to the nodes that already has the container image used by the pods among the different nodes.
- Multi-concept tags: Pods, Scheduling, Architecture, CKA-CKAD

### Evidence 921: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E47
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: Now note that at this phase, the plugins do not really reject the pod placement on a particular node.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 922: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E48
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, in case of the image locality node, it ensures that pods are placed on a node that already has the image.
- Multi-concept tags: Pods, Scheduling, Architecture, CKA-CKAD

### Evidence 923: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E49
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: But if there are no nodes available, it will anyway place the pod on a node that does not even have the image.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 924: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E50
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: So it's just a scoring that happens at this stage.
- Multi-concept tags: Scheduling

### Evidence 925: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E51
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: And finally, in the binding phase, you have the default binder plugin that provides the binding mechanism.
- Multi-concept tags: Scheduling

### Evidence 926: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E52
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: Now, the highly extensible nature of Kubernetes makes it possible for us to customize what plugins go where, and for us to write our own plugin and plug them in here.
- Multi-concept tags: Scheduling

### Evidence 927: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E53
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: And that is achieved with the help of what is called as extension points.
- Multi-concept tags: Scheduling

### Evidence 928: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E54
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: So at each stage, there is an extension point to which a plugin can be plugged to.
- Multi-concept tags: Scheduling

### Evidence 929: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E55
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: In the scheduling queue, we have a short extension to which the Priority Sort plugin is plugged to, and then we have the filter extension, the the score and the bind extension to which each of these plugins that we just talked about are plugged two.
- Multi-concept tags: Scheduling

### Evidence 930: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E56
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: As a matter of fact, there's more.
- Multi-concept tags: Scheduling

### Evidence 931: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E57
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: So there are extensions before entering the filter phase called the Prefilter extension, and the and after the filter phase called post filter.
- Multi-concept tags: Scheduling

### Evidence 932: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E58
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: And then there are Pre-score before the score extension point and reserve after the extension point, the score extension point.
- Multi-concept tags: Scheduling

### Evidence 933: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E59
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: And then there is permit and pre bind before the bind and post bind after the binding phase.
- Multi-concept tags: Scheduling

### Evidence 934: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E60
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: So there are so many options available.
- Multi-concept tags: Scheduling

### Evidence 935: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E61
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: Basically you can get a custom code of your own to run anywhere in these points by just creating a plugin and plugging it into the respective kind of point that you want to plug into.
- Multi-concept tags: Scheduling

### Evidence 936: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E62
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: And here is a little bit more details on some additional plugins that come by default that are associated with the different extension points.
- Multi-concept tags: Scheduling

### Evidence 937: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E63
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: As you can see, some of the plugins span across multiple extension points, and some of them are just within a specific extension point.
- Multi-concept tags: Scheduling

### Evidence 938: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E64
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: So that's what scheduling plugins and extension points are.
- Multi-concept tags: Scheduling

### Evidence 939: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E65
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: So the highly extensible nature of Kubernetes allows us to customize the way that these plugins are called and, and write our own scheduling plugin if needed.
- Multi-concept tags: Scheduling

### Evidence 940: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E66
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: So having learned that, let's look at how we can change the default behavior of how these plugins are called and and and how we can get our own plugins in there if it's really needed.
- Multi-concept tags: Scheduling

### Evidence 941: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E67
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: So taking a step back earlier, we talked about deploying three separate schedulers, each with a separate scheduler binary.
- Multi-concept tags: Scheduling

### Evidence 942: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E68
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: So we have the the default scheduler and then the my scheduler and then the my scheduler to.
- Multi-concept tags: Scheduling

### Evidence 943: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E69
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: Now all of these are three separate scheduler binaries that are run with a separate scheduler config file associated with each of them.
- Multi-concept tags: Scheduling

### Evidence 944: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E70
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: Now that's one way to deploy multiple schedulers.
- Multi-concept tags: Scheduling

### Evidence 945: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E71
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: Now the problem here is that since these are separate processes, there is an additional effort required to maintain these separate processes.
- Multi-concept tags: Scheduling

### Evidence 946: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E72
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: And also more importantly, since they are separate processes, they may run into race conditions while making scheduling decisions.
- Multi-concept tags: Scheduling

### Evidence 947: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E73
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, one scheduler may schedule a workload on a node without knowing that there's another scheduler scheduling a workload on that same node at the same time.
- Multi-concept tags: Scheduling, Architecture, CKA-CKAD

### Evidence 948: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E74
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: So with the 1.18 release of Kubernetes, a feature to support multiple profiles in a single scheduler was introduced.
- Multi-concept tags: Scheduling

### Evidence 949: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E75
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: So now you can configure multiple profiles within a single scheduler in the scheduler configuration file by adding more entries to the list of profiles, and for each profile, specify a separate scheduler name.
- Multi-concept tags: Scheduling

### Evidence 950: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E76
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: So this creates a separate profile for each scheduler, which acts as a separate scheduler itself, except that now multiple schedulers are run in the same binary as opposed to creating separate binaries for each scheduler.
- Multi-concept tags: Scheduling

### Evidence 951: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E77
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: Now, how do you configure these different scheduler profiles to work differently?
- Multi-concept tags: Scheduling

### Evidence 952: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E78
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: Because right now all of them just simply have different names.
- Multi-concept tags: Scheduling

### Evidence 953: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E79
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: So they're going to work just like the default scheduler.
- Multi-concept tags: Scheduling

### Evidence 954: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E80
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: How do you configure them to work differently?
- Multi-concept tags: Scheduling

### Evidence 955: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E81
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: Under each scheduler profile, we can configure the plugins the way we want to.
- Multi-concept tags: Scheduling

### Evidence 956: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E82
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, for the scheduler two profile, I'm going to disable certain plugins like the Taint and Toleration plugin and enable my own custom plugins for the scheduler three profile.
- Multi-concept tags: Scheduling, CKA-CKAD

### Evidence 957: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E83
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: I'm going to disable all the Pre-score and score plugins, so this is how that's going to look.
- Multi-concept tags: Scheduling

### Evidence 958: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E84
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: Under the plugins section, specify the extension point and enable or disable the plugins by name or pattern as shown in this case.
- Multi-concept tags: Scheduling

### Evidence 959: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E85
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: So yeah, so that's about it.
- Multi-concept tags: Scheduling

### Evidence 960: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E86
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: I hope that gives you an overview of how schedulers and scheduler profiles work, and how you can configure multiple scheduler profiles in Kubernetes.
- Multi-concept tags: Scheduling

### Evidence 961: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E87
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: To read more about this, check out the Kubernetes enhancement proposal that introduced Multi Scheduling Profiles.
- Multi-concept tags: Scheduling

### Evidence 962: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E88
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: It's the cap 1451 um that introduced the multi scheduling profiles and the article uh on scheduling framework.
- Multi-concept tags: Scheduling

### Evidence 963: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E89
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: Well that's all for now.
- Multi-concept tags: Scheduling

### Evidence 964: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E90
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Line Context: Lines 1-1 from transcript
- Content: I will see you in the next one.
- Multi-concept tags: Scheduling

### Evidence 965: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/131_OS Upgrades.extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 131_OS Upgrades.txt
- Line Context: Lines 1-1 from transcript
- Content: In modern Kubernetes, pod eviction is handled through node taints and pod tolerations.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 966: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/131_OS Upgrades.extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 131_OS Upgrades.txt
- Line Context: Lines 1-1 from transcript
- Content: When a node becomes not ready or unreachable, Kubernetes applies no execute taints and pods are evicted after a grace period unless they tolerate those taints.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 967: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/131_OS Upgrades.extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 131_OS Upgrades.txt
- Line Context: Lines 1-1 from transcript
- Content: When the node comes back online after the pod eviction timeout, it comes up blank without any pod scheduled on it.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 968: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/131_OS Upgrades.extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 131_OS Upgrades.txt
- Line Context: Lines 1-1 from transcript
- Content: The node is also cordoned or marked as unschedulable, meaning no pods can be scheduled on this node until you specifically remove the restriction.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 969: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/131_OS Upgrades.extraction.md::E31
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 131_OS Upgrades.txt
- Line Context: Lines 1-1 from transcript
- Content: You then need to uncoordinated so that the pods can be scheduled on it again.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 970: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/131_OS Upgrades.extraction.md::E37
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 131_OS Upgrades.txt
- Line Context: Lines 1-1 from transcript
- Content: It simply makes sure that new pods are not scheduled on that node.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 971: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/135_Cluster Upgrade Introduction.extraction.md::E8
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 135_Cluster Upgrade Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: The controller, manager and scheduler can be at one version lower.
- Multi-concept tags: Scheduling, Architecture

### Evidence 972: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/135_Cluster Upgrade Introduction.extraction.md::E9
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 135_Cluster Upgrade Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: So if kube API server was at EKS, controller managers and kube schedulers can be at x minus one and the kubelet and kube proxy components can be at two versions lower x minus two.
- Multi-concept tags: Scheduling, Architecture, Cross-Cloud

### Evidence 973: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/135_Cluster Upgrade Introduction.extraction.md::E10
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 135_Cluster Upgrade Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: So if kube API server was at 1.1, the controller manager and scheduler could be at 1.1 or 1.9, and the kubelet and kube proxy could be at 1.8.
- Multi-concept tags: Scheduling, Architecture

### Evidence 974: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/135_Cluster Upgrade Introduction.extraction.md::E36
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 135_Cluster Upgrade Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: The control plane components such as the API, server, scheduler, and controller managers go down briefly, the master going down does not mean your worker nodes and applications on the cluster are impacted.
- Multi-concept tags: Scheduling, Architecture

### Evidence 975: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/135_Cluster Upgrade Introduction.extraction.md::E50
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 135_Cluster Upgrade Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: Once the upgrade is complete, the nodes are back up, new pods are scheduled, and users can resume access.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 976: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/135_Cluster Upgrade Introduction.extraction.md::E92
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 135_Cluster Upgrade Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: The kube control drain command lets you safely terminate all the pods from a node and reschedules them on the other nodes.
- Multi-concept tags: Pods, Scheduling, Configuration, Architecture

### Evidence 977: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/135_Cluster Upgrade Introduction.extraction.md::E94
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 135_Cluster Upgrade Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: That way no new pods are scheduled on it.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 978: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/135_Cluster Upgrade Introduction.extraction.md::E103
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 135_Cluster Upgrade Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: Only when the pods are deleted from the other nodes, or when new pods are scheduled.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 979: certified-kubernetes-administrator-with-practice-tests/07_Security/144_Kubernetes Security Primitives.extraction.md::E25
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 144_Kubernetes Security Primitives.txt
- Line Context: Lines 1-1 from transcript
- Content: All communication with the cluster between the various components such as the etcd cluster, the kube controller, manager, scheduler, API server, as well as those running on the worker nodes such as the Kubelet and kube proxy, is secured using TLS encryption.
- Multi-concept tags: Scheduling, Security-RBAC, Architecture

### Evidence 980: certified-kubernetes-administrator-with-practice-tests/07_Security/148_TLS in Kubernetes.extraction.md::E45
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 148_TLS in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: We will call it "admin.crt," and "admin.key." The scheduler talks to the Kube API server to look for pods that require scheduling and then get the API server to schedule the pods on the right worker nodes.
- Multi-concept tags: Pods, Scheduling, Security-RBAC, Architecture

### Evidence 981: certified-kubernetes-administrator-with-practice-tests/07_Security/148_TLS in Kubernetes.extraction.md::E46
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 148_TLS in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: The scheduler is a client that accesses the Kube API server.
- Multi-concept tags: Scheduling, Security-RBAC, Architecture

### Evidence 982: certified-kubernetes-administrator-with-practice-tests/07_Security/148_TLS in Kubernetes.extraction.md::E47
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 148_TLS in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: As far as the Kube API server is concerned, the scheduler is just another client, like the admin user.
- Multi-concept tags: Scheduling, Security-RBAC, Architecture

### Evidence 983: certified-kubernetes-administrator-with-practice-tests/07_Security/148_TLS in Kubernetes.extraction.md::E48
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 148_TLS in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: So the scheduler needs to validate its identity using a client TLS certificate.
- Multi-concept tags: Scheduling, Security-RBAC

### Evidence 984: certified-kubernetes-administrator-with-practice-tests/07_Security/148_TLS in Kubernetes.extraction.md::E50
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 148_TLS in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: We will call it "scheduler.crt" and "scheduler.key." The Kube Controller Manager is another client that accesses the Kube API server.
- Multi-concept tags: Scheduling, Security-RBAC, Architecture

### Evidence 985: certified-kubernetes-administrator-with-practice-tests/07_Security/149_TLS in Kubernetes - Certificate Creation.extraction.md::E43
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 149_TLS in Kubernetes - Certificate Creation.txt
- Line Context: Lines 1-1 from transcript
- Content: The kube scheduler.
- Multi-concept tags: Scheduling, Security-RBAC

### Evidence 986: certified-kubernetes-administrator-with-practice-tests/07_Security/149_TLS in Kubernetes - Certificate Creation.extraction.md::E44
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 149_TLS in Kubernetes - Certificate Creation.txt
- Line Context: Lines 1-1 from transcript
- Content: Now the kube scheduler is a system component part of the Kubernetes control plane, so its name must be prefixed with the keyword system.
- Multi-concept tags: Scheduling, Security-RBAC, Architecture, Troubleshooting

### Evidence 987: certified-kubernetes-administrator-with-practice-tests/07_Security/149_TLS in Kubernetes - Certificate Creation.extraction.md::E48
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 149_TLS in Kubernetes - Certificate Creation.txt
- Line Context: Lines 1-1 from transcript
- Content: Then all of the client certificates including the admin, user scheduler, controller manager and kube proxy.
- Multi-concept tags: Scheduling, Security-RBAC, Architecture

### Evidence 988: certified-kubernetes-administrator-with-practice-tests/07_Security/149_TLS in Kubernetes - Certificate Creation.extraction.md::E110
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 149_TLS in Kubernetes - Certificate Creation.txt
- Line Context: Lines 1-1 from transcript
- Content: That's who the API server talks to to monitor the node, as well as send information regarding what pods to schedule on this node.
- Multi-concept tags: Pods, Scheduling, Security-RBAC, Architecture, Observability

### Evidence 989: certified-kubernetes-administrator-with-practice-tests/07_Security/149_TLS in Kubernetes - Certificate Creation.extraction.md::E125
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 149_TLS in Kubernetes - Certificate Creation.txt
- Line Context: Lines 1-1 from transcript
- Content: Since the nodes are system components like the kube scheduler and the controller manager we talked about earlier, the format starts with the system keyword followed by node and then the node name.
- Multi-concept tags: Scheduling, Security-RBAC, Architecture

### Evidence 990: certified-kubernetes-administrator-with-practice-tests/07_Security/154_Certificates API.extraction.md::E55
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 154_Certificates API.txt
- Line Context: Lines 1-1 from transcript
- Content: If you look at the Kubernetes control plane, you see the kube-apiserver, the scheduler, the controller manager, etcd server, et cetera.
- Multi-concept tags: Scheduling, Security-RBAC, Architecture

### Evidence 991: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E38
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: Labels and selectors.
- Multi-concept tags: Networking, Scheduling, Security-RBAC, Platform Engineering

### Evidence 992: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E39
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: We label the pod and use the same labels on the port selector field in the network policy.
- Multi-concept tags: Pods, Networking, Scheduling, Security-RBAC, Platform Engineering

### Evidence 993: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E44
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: Next we specify the ingress rule that allows traffic from the API pod, and you specify the API pod again using labels and selectors.
- Multi-concept tags: Pods, Networking, Scheduling, Security-RBAC, Platform Engineering

### Evidence 994: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E52
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: And then under the spec section we will first move the pod selector to apply this policy to the DB pod.
- Multi-concept tags: Pods, Networking, Scheduling, Security-RBAC, Platform Engineering

### Evidence 995: certified-kubernetes-administrator-with-practice-tests/07_Security/180_Developing network policies.extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 180_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: And we do that using labels and selectors.
- Multi-concept tags: Networking, Scheduling, Security-RBAC

### Evidence 996: certified-kubernetes-administrator-with-practice-tests/07_Security/180_Developing network policies.extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 180_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: So we do that by adding a pod selector field with the match labels option and by specifying the label on the DB pod, which happens to be set to roll DB.
- Multi-concept tags: Pods, Networking, Scheduling, Security-RBAC

### Evidence 997: certified-kubernetes-administrator-with-practice-tests/07_Security/180_Developing network policies.extraction.md::E47
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 180_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: And here we would use a port selector and provide the labels of the API pod like this.
- Multi-concept tags: Pods, Networking, Scheduling, Security-RBAC

### Evidence 998: certified-kubernetes-administrator-with-practice-tests/07_Security/180_Developing network policies.extraction.md::E58
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 180_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: For this, we add a new selector called as the namespace selector property along with the pod selector property.
- Multi-concept tags: Pods, Networking, Scheduling, Security-RBAC

### Evidence 999: certified-kubernetes-administrator-with-practice-tests/07_Security/180_Developing network policies.extraction.md::E61
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 180_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: So that's what the namespace selector does.
- Multi-concept tags: Networking, Scheduling, Security-RBAC

### Evidence 1000: certified-kubernetes-administrator-with-practice-tests/07_Security/180_Developing network policies.extraction.md::E63
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 180_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: Now what if you only have the namespace selector and not the pod selector like this.
- Multi-concept tags: Pods, Networking, Scheduling, Security-RBAC

### Evidence 1001: certified-kubernetes-administrator-with-practice-tests/07_Security/180_Developing network policies.extraction.md::E68
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 180_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: Now, since this backup server is not deployed in our Kubernetes cluster, the pod selector and namespace selector fields that we use to define traffic from won't work because it's not a pod in the cluster.
- Multi-concept tags: Pods, Networking, Scheduling, Security-RBAC, Architecture

### Evidence 1002: certified-kubernetes-administrator-with-practice-tests/07_Security/180_Developing network policies.extraction.md::E73
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 180_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: So those are three supported selectors under the from section in ingress.
- Multi-concept tags: Networking, Scheduling, Security-RBAC

### Evidence 1003: certified-kubernetes-administrator-with-practice-tests/07_Security/180_Developing network policies.extraction.md::E76
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 180_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: We have pod selector to select pods by labels.
- Multi-concept tags: Pods, Networking, Scheduling, Security-RBAC

### Evidence 1004: certified-kubernetes-administrator-with-practice-tests/07_Security/180_Developing network policies.extraction.md::E77
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 180_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: We have namespace selector to select namespaces by labels.
- Multi-concept tags: Networking, Scheduling, Security-RBAC

### Evidence 1005: certified-kubernetes-administrator-with-practice-tests/07_Security/180_Developing network policies.extraction.md::E78
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 180_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: And we have the IP block selector to select IP address ranges.
- Multi-concept tags: Networking, Scheduling, Security-RBAC

### Evidence 1006: certified-kubernetes-administrator-with-practice-tests/07_Security/180_Developing network policies.extraction.md::E82
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 180_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: The first rule has the pod selector and the namespace selector together, and the second rule has the IP block selector.
- Multi-concept tags: Pods, Networking, Scheduling, Security-RBAC

### Evidence 1007: certified-kubernetes-administrator-with-practice-tests/07_Security/180_Developing network policies.extraction.md::E85
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 180_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: However, within the first rule we have two selectors.
- Multi-concept tags: Networking, Scheduling, Security-RBAC

### Evidence 1008: certified-kubernetes-administrator-with-practice-tests/07_Security/180_Developing network policies.extraction.md::E89
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 180_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: Now what if we were to separate them by adding a dash before the namespace selector like this.
- Multi-concept tags: Networking, Scheduling, Security-RBAC

### Evidence 1009: certified-kubernetes-administrator-with-practice-tests/07_Security/180_Developing network policies.extraction.md::E106
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 180_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: Under two we could use any of the selectors such as a pod, a namespace or an IP block selector.
- Multi-concept tags: Pods, Networking, Scheduling, Security-RBAC

### Evidence 1010: certified-kubernetes-administrator-with-practice-tests/07_Security/180_Developing network policies.extraction.md::E107
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 180_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: And in this case, since the database server is external, we use IP block selector and provide the Cidr block for the server.
- Multi-concept tags: Networking, Scheduling, Security-RBAC

### Evidence 1011: certified-kubernetes-administrator-with-practice-tests/07_Security/182_Lab Solution - Network Policies (optional).extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 182_Lab Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So if you look at this you have a pod selector and it says, "Name Equals Payroll".
- Multi-concept tags: Pods, Networking, Scheduling, Security-RBAC

### Evidence 1012: certified-kubernetes-administrator-with-practice-tests/07_Security/182_Lab Solution - Network Policies (optional).extraction.md::E42
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 182_Lab Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that, we see the pod selector, which we know and it's allowing ingress traffic to port 8080 from the pod.
- Multi-concept tags: Pods, Networking, Scheduling, Security-RBAC

### Evidence 1013: certified-kubernetes-administrator-with-practice-tests/07_Security/182_Lab Solution - Network Policies (optional).extraction.md::E50
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 182_Lab Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So this is with the to the port within the, within the pod, from, we have a pod selector and the name is internal.
- Multi-concept tags: Pods, Networking, Scheduling, Security-RBAC

### Evidence 1014: certified-kubernetes-administrator-with-practice-tests/07_Security/182_Lab Solution - Network Policies (optional).extraction.md::E98
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 182_Lab Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Like the pod selector should be for the internal pod.
- Multi-concept tags: Pods, Networking, Scheduling, Security-RBAC

### Evidence 1015: certified-kubernetes-administrator-with-practice-tests/07_Security/182_Lab Solution - Network Policies (optional).extraction.md::E110
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 182_Lab Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Then you have the pod selectors.
- Multi-concept tags: Pods, Networking, Scheduling, Security-RBAC

### Evidence 1016: certified-kubernetes-administrator-with-practice-tests/07_Security/182_Lab Solution - Network Policies (optional).extraction.md::E120
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 182_Lab Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And so the first rule is so we need to specify the pod selector.
- Multi-concept tags: Pods, Networking, Scheduling, Security-RBAC

### Evidence 1017: certified-kubernetes-administrator-with-practice-tests/07_Security/182_Lab Solution - Network Policies (optional).extraction.md::E121
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 182_Lab Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So pod selector and match labels.
- Multi-concept tags: Pods, Networking, Scheduling, Security-RBAC

### Evidence 1018: certified-kubernetes-administrator-with-practice-tests/07_Security/182_Lab Solution - Network Policies (optional).extraction.md::E133
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 182_Lab Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, and within this we're gonna have pod selector then we're gonna have match labels, and then we have MySQL.
- Multi-concept tags: Pods, Networking, Scheduling, Security-RBAC

### Evidence 1019: certified-kubernetes-administrator-with-practice-tests/07_Security/182_Lab Solution - Network Policies (optional).extraction.md::E144
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 182_Lab Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, let's do a describe internal policy and we'll verify the pod selector and egress traffic configuration.
- Multi-concept tags: Pods, Networking, Scheduling, Security-RBAC, On-Prem, Platform Engineering

### Evidence 1020: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E9
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: However, if there are multiple possible matches for a single claim and you would like to specifically use a particular volume, you could still use labels and selectors to bind to the right volumes.
- Multi-concept tags: Storage, Scheduling

### Evidence 1021: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E87
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So we don't need the advanced selectors.
- Multi-concept tags: Storage, Scheduling

### Evidence 1022: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E42
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: We don't need the the selectors.
- Multi-concept tags: Storage, Scheduling

### Evidence 1023: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E65
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: Right, so a pod consuming the volume is not scheduled person volume and claim is match search class not found.
- Multi-concept tags: Pods, Storage, Scheduling

### Evidence 1024: certified-kubernetes-administrator-with-practice-tests/09_Networking/212_Cluster Networking.extraction.md::E18
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 212_Cluster Networking.txt
- Line Context: Lines 1-1 from transcript
- Content: The kube scheduler requires port 10259 to be open.
- Multi-concept tags: Networking, Scheduling, Architecture

### Evidence 1025: certified-kubernetes-administrator-with-practice-tests/09_Networking/215_Lab Solution - Explore Environment (optional).extraction.md::E59
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 215_Lab Solution - Explore Environment (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: The next question is asking us, what is the port the kube-scheduler is listening on in the controlplane.
- Multi-concept tags: Networking, Scheduling, Configuration

### Evidence 1026: certified-kubernetes-administrator-with-practice-tests/09_Networking/215_Lab Solution - Explore Environment (optional).extraction.md::E65
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 215_Lab Solution - Explore Environment (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Also, I want to be able to do, you know, like a netstat and then filter based off of, you know, scheduler, to figure out the schedule process.
- Multi-concept tags: Networking, Scheduling, Configuration

### Evidence 1027: certified-kubernetes-administrator-with-practice-tests/09_Networking/215_Lab Solution - Explore Environment (optional).extraction.md::E66
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 215_Lab Solution - Explore Environment (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we want to do the -p flag, which is gonna list out the program name, so that we can actually grep for the scheduler.
- Multi-concept tags: Networking, Scheduling, Configuration

### Evidence 1028: certified-kubernetes-administrator-with-practice-tests/09_Networking/215_Lab Solution - Explore Environment (optional).extraction.md::E72
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 215_Lab Solution - Explore Environment (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And I'll do scheduler.
- Multi-concept tags: Networking, Scheduling, Configuration

### Evidence 1029: certified-kubernetes-administrator-with-practice-tests/09_Networking/215_Lab Solution - Explore Environment (optional).extraction.md::E73
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 215_Lab Solution - Explore Environment (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that the scheduler is listening on this port right here, 10259.
- Multi-concept tags: Networking, Scheduling, Configuration

### Evidence 1030: certified-kubernetes-administrator-with-practice-tests/09_Networking/230_Lab Solution - Explore DNS (optional).extraction.md::E92
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 230_Lab Solution - Explore DNS (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that the selector here, name equals HR right?
- Multi-concept tags: Networking, Scheduling

### Evidence 1031: certified-kubernetes-administrator-with-practice-tests/09_Networking/230_Lab Solution - Explore DNS (optional).extraction.md::E128
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 230_Lab Solution - Explore DNS (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay and, we see that the selector's name equals web app.
- Multi-concept tags: Networking, Scheduling

### Evidence 1032: certified-kubernetes-administrator-with-practice-tests/09_Networking/231_Ingress.extraction.md::E106
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 231_Ingress.txt
- Line Context: Lines 1-1 from transcript
- Content: So we create a service of type node port with the nginx ingress label selector to link the service to the deployment.
- Multi-concept tags: Deployments, Services, Networking, Scheduling, Architecture

### Evidence 1033: certified-kubernetes-administrator-with-practice-tests/09_Networking/237_Lab Solution - Ingress Networking - 2 (optional).extraction.md::E90
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 237_Lab Solution - Ingress Networking - 2 (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, and the right selector.
- Multi-concept tags: Networking, Scheduling

### Evidence 1034: certified-kubernetes-administrator-with-practice-tests/09_Networking/237_Lab Solution - Ingress Networking - 2 (optional).extraction.md::E91
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 237_Lab Solution - Ingress Networking - 2 (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So expo should take care of using the right selector for this, for the deployment.
- Multi-concept tags: Deployments, Networking, Scheduling

### Evidence 1035: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/241_Design a Kubernetes Cluster.extraction.md::E51
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 241_Design a Kubernetes Cluster.txt
- Line Context: Lines 1-1 from transcript
- Content: Deployment tools like kube ADM prevent workloads from being hosted on master nodes by adding a taint to the master node.
- Multi-concept tags: Deployments, Scheduling, Architecture, Observability

### Evidence 1036: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/243_Configure High Availability.extraction.md::E7
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 243_Configure High Availability.txt
- Line Context: Lines 1-1 from transcript
- Content: But the master is not available and so are the controllers and schedulers on the master.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1037: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/243_Configure High Availability.extraction.md::E8
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 243_Configure High Availability.txt
- Line Context: Lines 1-1 from transcript
- Content: There is no one to recreate the pod and no one to schedule it on nodes.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1038: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/243_Configure High Availability.extraction.md::E19
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 243_Configure High Availability.txt
- Line Context: Lines 1-1 from transcript
- Content: As we learned already, the master node hosts the control plane components, including the API controller, manager, scheduler and etcd server in a setup with an additional master node.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1039: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/243_Configure High Availability.extraction.md::E38
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 243_Configure High Availability.txt
- Line Context: Lines 1-1 from transcript
- Content: What about the scheduler and the controller manager.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1040: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/243_Configure High Availability.extraction.md::E42
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 243_Configure High Availability.txt
- Line Context: Lines 1-1 from transcript
- Content: The same is true with scheduler.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1041: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/243_Configure High Availability.extraction.md::E59
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 243_Configure High Availability.txt
- Line Context: Lines 1-1 from transcript
- Content: The scheduler follows a similar approach and has the same command line options.
- Multi-concept tags: Scheduling, Configuration, Architecture

### Evidence 1042: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/276_Patches Intro.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 276_Patches Intro.txt
- Line Context: Lines 1-1 from transcript
- Content: And so we can match on a couple of different properties like kind or the version or the name of the object or the namespace, labelSelector, or AnnotationSelector.
- Multi-concept tags: Scheduling, Configuration

### Evidence 1043: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/286_Application Failure.extraction.md::E19
- Type: Comparison
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 286_Application Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: Compare the selectors configured on the service to the ones on the pod.
- Multi-concept tags: Pods, Services, Scheduling, Troubleshooting

### Evidence 1044: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E68
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the port numbers are there, selector is there, or another approach we could do is to just delete the service and export or expose the service, the MySQL service again.
- Multi-concept tags: Services, Scheduling, Troubleshooting

### Evidence 1045: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E106
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see selector is right, the endpoints it has has detected the endpoint.
- Multi-concept tags: Scheduling, Troubleshooting

### Evidence 1046: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E146
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna do describe service, web service, and we see the name, web service, name space is gamma, has the right selectors and has the endpoints.
- Multi-concept tags: Services, Scheduling, Troubleshooting, On-Prem

### Evidence 1047: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E171
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So if you look at the selectors right here, it says name equals SQL 00001, and for the pod, so describe POD MySQL.
- Multi-concept tags: Pods, Scheduling, Troubleshooting, On-Prem

### Evidence 1048: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E173
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that should be the selector not name equals SQL 0001.
- Multi-concept tags: Scheduling, Troubleshooting

### Evidence 1049: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E176
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: We're going to edit the service, MySQL service, and we're going to change the selector to MySQL then save that.
- Multi-concept tags: Services, Scheduling, Troubleshooting

### Evidence 1050: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/289_Control Plane Failure.extraction.md::E3
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 289_Control Plane Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: If we had control plane components deployed as pods in case of a cluster deployed with the kube ADM tool, then we can check to make sure that the pods in the kube system namespace are running, or else if the control plane components are deployed as services, as in our case, then check the status of the services such as the kube API server, the controller, manager and scheduler on the master nodes, and the Kubelet and kube proxy service on the worker nodes.
- Multi-concept tags: Pods, Services, Scheduling, Architecture, Troubleshooting

### Evidence 1051: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E31
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: That means the pod has not been assigned to a node and the job of assigning a pod to a node is scheduler's job, right?
- Multi-concept tags: Pods, Scheduling, Architecture, Troubleshooting

### Evidence 1052: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E32
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we have to look at the status of the scheduler.
- Multi-concept tags: Scheduling, Architecture, Troubleshooting

### Evidence 1053: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E33
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's do a, and we know that scheduler runs as a pod in the kube system name space.
- Multi-concept tags: Pods, Scheduling, Architecture, Troubleshooting

### Evidence 1054: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E34
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And here you have the scheduler and it has control plane at the end.
- Multi-concept tags: Scheduling, Architecture, Troubleshooting

### Evidence 1055: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E36
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's take a look at the pod in more detail in the kube system name space and we're looking at the kube-scheduler.
- Multi-concept tags: Pods, Scheduling, Architecture, Troubleshooting

### Evidence 1056: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E38
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And then it says fail to start container kube-scheduler error response from daemon, OCI runtime create failed, starting container process kube-scheduler, executable file not found.
- Multi-concept tags: Scheduling, Architecture, Troubleshooting

### Evidence 1057: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E42
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we know that the kube-scheduler is a static pod.
- Multi-concept tags: Pods, Scheduling, Architecture, Troubleshooting

### Evidence 1058: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E43
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the file is in TTC Kubernetes manifests and we have the kube-scheduler.yaml file here.
- Multi-concept tags: Scheduling, Configuration, Architecture, Troubleshooting

### Evidence 1059: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E44
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So this is the manifest file for kube-scheduler and within that there's a wrong command.
- Multi-concept tags: Scheduling, Configuration, Architecture, Troubleshooting

### Evidence 1060: certified-kubernetes-administrator-with-practice-tests/15_Other Topics/299_JSON Path in Kubernetes.extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 15_Other Topics / 299_JSON Path in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: Or the list of nodes and the taints set on them.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1061: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E602
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: In this case it's got a namespace selector.
- Multi-concept tags: Scheduling, CKA-CKAD

### Evidence 1062: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E616
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: We can see this is applied to the backend namespace pod selector.
- Multi-concept tags: Pods, Scheduling, CKA-CKAD

### Evidence 1063: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E146
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Modify the pod to use the priority class you created and then recreate the pod if necessary.
- Multi-concept tags: Pods, Scheduling, CKA-CKAD

### Evidence 1064: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E158
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: It's not gonna really make a difference 'cause the instructions don't say anything specifically about that, but we'll just say, "This is a lower priority class." So we can then save that.
- Multi-concept tags: Scheduling, CKA-CKAD

### Evidence 1065: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E165
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: We need to modify to use the priority class you created.
- Multi-concept tags: Scheduling, CKA-CKAD

### Evidence 1066: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E187
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So if we have to, when we set the priority class name, we're gonna remove the priority value that's set there.
- Multi-concept tags: Scheduling, CKA-CKAD

### Evidence 1067: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E212
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So under the pod selector we're going to set that to be run and what is it np-test-1.
- Multi-concept tags: Pods, Scheduling, CKA-CKAD

### Evidence 1068: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E220
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And it says, taint the worker node, node 1 to be unscheduled.
- Multi-concept tags: Scheduling, Architecture, CKA-CKAD

### Evidence 1069: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E221
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Once done, create a pod called dev-redis with the following image to ensure workloads are not scheduled to this worker node.
- Multi-concept tags: Pods, Scheduling, Architecture, CKA-CKAD

### Evidence 1070: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E222
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And then create another pod called prod-redis, an image with this, with the toleration to be scheduled on node1.
- Multi-concept tags: Pods, Scheduling, Architecture, CKA-CKAD

### Evidence 1071: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E223
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So basically we're gonna taint a node and then we're gonna create one pod that's not tolerant to that taint, which is the dev and the one pod that is tolerant to the taint, which is the prod one.
- Multi-concept tags: Pods, Scheduling, Architecture, CKA-CKAD

### Evidence 1072: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E224
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see the values that we should use for the taint.
- Multi-concept tags: Scheduling, CKA-CKAD

### Evidence 1073: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E225
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So to taint a node and if you want, you can always take a look in the documentation.
- Multi-concept tags: Scheduling, Architecture, CKA-CKAD

### Evidence 1074: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E226
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: If you just search for taint, it's probably gonna be the first one.
- Multi-concept tags: Scheduling, CKA-CKAD

### Evidence 1075: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E229
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we have to taint node1.
- Multi-concept tags: Scheduling, Architecture, CKA-CKAD

### Evidence 1076: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E230
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So I'll say kubectl, taint node node1.
- Multi-concept tags: Scheduling, Architecture, CKA-CKAD

### Evidence 1077: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E231
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And then what we have to do is we have to provide the key then the value and then the effect which is no schedule.
- Multi-concept tags: Scheduling, CKA-CKAD

### Evidence 1078: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E232
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we'll say env_type = production and then NoSchedule.
- Multi-concept tags: Scheduling, Configuration, CKA-CKAD

### Evidence 1079: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E233
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And so now if I do kubectl describe node node1 and then grep for taint, we should see that it has taint now.
- Multi-concept tags: Scheduling, Architecture, CKA-CKAD, On-Prem

### Evidence 1080: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E237
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: But this time it's going to have a toleration so that it can be scheduled on node1.
- Multi-concept tags: Scheduling, Architecture, CKA-CKAD

### Evidence 1081: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E243
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And that's all we need for the base configuration, but we have to add a toleration so that it can be scheduled to node1.
- Multi-concept tags: Scheduling, Architecture, CKA-CKAD

### Evidence 1082: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E244
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And so to add a toleration, I'm just gonna go to top level and I'll just say tolerations.
- Multi-concept tags: Scheduling, CKA-CKAD

### Evidence 1083: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E246
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So first, what is the effect of the toleration that we're gonna tolerate?
- Multi-concept tags: Scheduling, CKA-CKAD

### Evidence 1084: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E247
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the effect is going to be NoSchedule. 'cause remember that's what we set it on.
- Multi-concept tags: Scheduling, CKA-CKAD

### Evidence 1085: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E248
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: The node effect is NoSchedule.
- Multi-concept tags: Scheduling, Architecture, CKA-CKAD

### Evidence 1086: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E251
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, and so that's going to allow this pod to tolerate the taint of node1.
- Multi-concept tags: Pods, Scheduling, Architecture, CKA-CKAD

### Evidence 1087: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E253
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And so now if I do a show, sorry, kubectl get pod and we do -o wide to see what node they're assigned to, we could see that dev-redis did not get assigned to node1, it went to the control plane node and we could see prod-redis was allowed to be scheduled to node1 because we assigned the toleration to that pod.
- Multi-concept tags: Pods, Scheduling, Architecture, CKA-CKAD

### Evidence 1088: certified-kubernetes-application-developer/01_Introduction/001_Introduction.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-application-developer / 01_Introduction / 001_Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: In workloads and scheduling, we explore labels, selectors, rolling updates, and rollbacks.
- Multi-concept tags: Deployments, Scheduling

### Evidence 1089: certified-kubernetes-application-developer/02_Core Concepts/007_Recap - Kubernetes Architecture.extraction.md::E23
- Type: Architecture
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 007_Recap - Kubernetes Architecture.txt
- Line Context: Lines 1-1 from transcript
- Content: Runtime controllers and schedulers.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1090: certified-kubernetes-application-developer/02_Core Concepts/007_Recap - Kubernetes Architecture.extraction.md::E29
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 007_Recap - Kubernetes Architecture.txt
- Line Context: Lines 1-1 from transcript
- Content: Etcd is responsible for implementing locks within the cluster to ensure that there are no conflicts between the masters, the scheduler is responsible for distributing work or containers across multiple nodes.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1091: certified-kubernetes-application-developer/02_Core Concepts/007_Recap - Kubernetes Architecture.extraction.md::E53
- Type: Architecture
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 007_Recap - Kubernetes Architecture.txt
- Line Context: Lines 1-1 from transcript
- Content: The master also has the control manager and the scheduler.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1092: certified-kubernetes-application-developer/02_Core Concepts/021_Recap - ReplicaSets.extraction.md::E78
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 021_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: Replica set requires a selector definition.
- Multi-concept tags: Deployments, Scheduling

### Evidence 1093: certified-kubernetes-application-developer/02_Core Concepts/021_Recap - ReplicaSets.extraction.md::E79
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 021_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: The selector section helps the replica set identify what pods fall under it, but why would you have to specify what pods fall under it if we have provided the contents of the pod definition file itself in the template.
- Multi-concept tags: Pods, Deployments, Scheduling

### Evidence 1094: certified-kubernetes-application-developer/02_Core Concepts/021_Recap - ReplicaSets.extraction.md::E81
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 021_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: Say for example, the reports created before the creation of the replica set that match labels specified in the selector.
- Multi-concept tags: Deployments, Scheduling, CKA-CKAD

### Evidence 1095: certified-kubernetes-application-developer/02_Core Concepts/021_Recap - ReplicaSets.extraction.md::E83
- Type: Comparison
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 021_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: I will elaborate this in the next slide, but before we get into that, I would like to mention that the selector is one of the major differences between replication controller and replica set.
- Multi-concept tags: Deployments, Scheduling, Platform Engineering

### Evidence 1096: certified-kubernetes-application-developer/02_Core Concepts/021_Recap - ReplicaSets.extraction.md::E84
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 021_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: The selector is not a required field in case of a replication controller, but it is still available when you skip it, as we did in the previous slide, it assumes it to be the same as the labels provided in the Pod definition file.
- Multi-concept tags: Pods, Deployments, Scheduling, Platform Engineering

### Evidence 1097: certified-kubernetes-application-developer/02_Core Concepts/021_Recap - ReplicaSets.extraction.md::E86
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 021_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: The match labels selector simply matches the labels specified under it to the labels on the pods.
- Multi-concept tags: Pods, Deployments, Scheduling

### Evidence 1098: certified-kubernetes-application-developer/02_Core Concepts/021_Recap - ReplicaSets.extraction.md::E87
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 021_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: The replica set selector also provides many other options for matching labels that were not available in a replication controller, and as always, to create a replica set, run the kubectl create command, providing the definition file as input, and to see the created replicas run the kubectl get replica set command.
- Multi-concept tags: Deployments, Scheduling, Configuration

### Evidence 1099: certified-kubernetes-application-developer/02_Core Concepts/021_Recap - ReplicaSets.extraction.md::E89
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 021_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: So what is the deal with labels and selectors?
- Multi-concept tags: Deployments, Scheduling

### Evidence 1100: certified-kubernetes-application-developer/02_Core Concepts/021_Recap - ReplicaSets.extraction.md::E102
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 021_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: We could now provide these labels as a filter for replica set under the selector section, we use the Match labels filter and provide the same label that we used while creating the pods.
- Multi-concept tags: Pods, Deployments, Scheduling

### Evidence 1101: certified-kubernetes-application-developer/02_Core Concepts/021_Recap - ReplicaSets.extraction.md::E104
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 021_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: The same concept of labels and selectors is used in many other places throughout Kubernetes.
- Multi-concept tags: Deployments, Scheduling

### Evidence 1102: certified-kubernetes-application-developer/02_Core Concepts/021_Recap - ReplicaSets.extraction.md::E106
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 021_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: Along the same lines, in the replica set specification section, we learned that there are three sections template, replicas, and selector.
- Multi-concept tags: Deployments, Scheduling

### Evidence 1103: certified-kubernetes-application-developer/02_Core Concepts/021_Recap - ReplicaSets.extraction.md::E107
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 021_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: We need three replicas and we have updated our selector based on our discussion in the previous slide.
- Multi-concept tags: Deployments, Scheduling, Platform Engineering

### Evidence 1104: certified-kubernetes-application-developer/02_Core Concepts/023_Solution - ReplicaSets (optional).extraction.md::E72
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 023_Solution - ReplicaSets (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so it says there's an invalid value selector does not match template labels.
- Multi-concept tags: Deployments, Scheduling

### Evidence 1105: certified-kubernetes-application-developer/02_Core Concepts/023_Solution - ReplicaSets (optional).extraction.md::E79
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 023_Solution - ReplicaSets (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So you have replicas, you have selector.
- Multi-concept tags: Deployments, Scheduling

### Evidence 1106: certified-kubernetes-application-developer/02_Core Concepts/023_Solution - ReplicaSets (optional).extraction.md::E82
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 023_Solution - ReplicaSets (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So here it says invalid value selector does not match the template labels.
- Multi-concept tags: Deployments, Scheduling

### Evidence 1107: certified-kubernetes-application-developer/02_Core Concepts/024_Recap - Deployments.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 024_Recap - Deployments.txt
- Line Context: Lines 1-1 from transcript
- Content: If we walk through the contents of the file, it has an API version which is apps forward slash v1 metadata, which has name and labels, and a spec that has template replicas and selector.
- Multi-concept tags: Deployments, Scheduling

### Evidence 1108: certified-kubernetes-application-developer/02_Core Concepts/030_Services.extraction.md::E85
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 030_Services.txt
- Line Context: Lines 1-1 from transcript
- Content: We will use labels and selectors to link these together.
- Multi-concept tags: Services, Scheduling

### Evidence 1109: certified-kubernetes-application-developer/02_Core Concepts/030_Services.extraction.md::E88
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 030_Services.txt
- Line Context: Lines 1-1 from transcript
- Content: So we have a new property in the specs section and that is called selector.
- Multi-concept tags: Services, Scheduling

### Evidence 1110: certified-kubernetes-application-developer/02_Core Concepts/030_Services.extraction.md::E90
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 030_Services.txt
- Line Context: Lines 1-1 from transcript
- Content: Under the selector provide a list of labels to identify the pod.
- Multi-concept tags: Pods, Services, Scheduling

### Evidence 1111: certified-kubernetes-application-developer/02_Core Concepts/030_Services.extraction.md::E92
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 030_Services.txt
- Line Context: Lines 1-1 from transcript
- Content: Pull the labels from the pod definition file and place it under the selector section.
- Multi-concept tags: Pods, Services, Scheduling

### Evidence 1112: certified-kubernetes-application-developer/02_Core Concepts/030_Services.extraction.md::E106
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 030_Services.txt
- Line Context: Lines 1-1 from transcript
- Content: The same label is used as a selector during the creation of the service.
- Multi-concept tags: Services, Scheduling

### Evidence 1113: certified-kubernetes-application-developer/02_Core Concepts/031_Services - Cluster IP.extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 031_Services - Cluster IP.txt
- Line Context: Lines 1-1 from transcript
- Content: To link the service to a set of ports, we use selector.
- Multi-concept tags: Services, Scheduling, Architecture

### Evidence 1114: certified-kubernetes-application-developer/02_Core Concepts/031_Services - Cluster IP.extraction.md::E31
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 031_Services - Cluster IP.txt
- Line Context: Lines 1-1 from transcript
- Content: We will refer to the pod definition file and copy the labels from it and move it under selector, and that should be it.
- Multi-concept tags: Pods, Services, Scheduling, Architecture

### Evidence 1115: certified-kubernetes-application-developer/02_Core Concepts/033_Solution - Services (optional).extraction.md::E39
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 033_Solution - Services (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And, the way that we create a service, in order to direct traffic to these pods, is we provide the same labels as selectors to the service.
- Multi-concept tags: Pods, Services, Scheduling

### Evidence 1116: certified-kubernetes-application-developer/02_Core Concepts/033_Solution - Services (optional).extraction.md::E43
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 033_Solution - Services (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: The pods that the service has identified, that it's going to direct traffic to, based on the selectors specified on the service and the labels on the pods.
- Multi-concept tags: Pods, Services, Scheduling

### Evidence 1117: certified-kubernetes-application-developer/02_Core Concepts/033_Solution - Services (optional).extraction.md::E44
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 033_Solution - Services (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now, when we create a service for a set of pods, and we might think that depending on the label and the selector we specified, the service is going to direct traffic to those pods, but it might be possible that we have another pod, which we accidentally created with the same kind of label.
- Multi-concept tags: Pods, Services, Scheduling, Troubleshooting

### Evidence 1118: certified-kubernetes-application-developer/02_Core Concepts/033_Solution - Services (optional).extraction.md::E52
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 033_Solution - Services (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: We set a label to FE, but we accidentally set the selector to, say, FR, something that's different.
- Multi-concept tags: Services, Scheduling

### Evidence 1119: certified-kubernetes-application-developer/02_Core Concepts/033_Solution - Services (optional).extraction.md::E57
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 033_Solution - Services (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, and then that's when we can look at the labels and selectors in more detail to identify the root cause.
- Multi-concept tags: Services, Scheduling

### Evidence 1120: certified-kubernetes-application-developer/02_Core Concepts/033_Solution - Services (optional).extraction.md::E59
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 033_Solution - Services (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: It's nothing but, it's a specification of all the pods that that particular service has identified, based on the selectors and the label set on those pods.
- Multi-concept tags: Pods, Services, Scheduling

### Evidence 1121: certified-kubernetes-application-developer/02_Core Concepts/033_Solution - Services (optional).extraction.md::E78
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 033_Solution - Services (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Also, specify the selector.
- Multi-concept tags: Services, Scheduling

### Evidence 1122: certified-kubernetes-application-developer/02_Core Concepts/033_Solution - Services (optional).extraction.md::E89
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 033_Solution - Services (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And, the selector name is simple web app.
- Multi-concept tags: Services, Scheduling

### Evidence 1123: certified-kubernetes-application-developer/02_Core Concepts/038_Solution - Imperative Commands (optional).extraction.md::E35
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 038_Solution - Imperative Commands (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So with this command, there's no way to specify a selector.
- Multi-concept tags: Scheduling, Configuration

### Evidence 1124: certified-kubernetes-application-developer/02_Core Concepts/038_Solution - Imperative Commands (optional).extraction.md::E38
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 038_Solution - Imperative Commands (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So this is to create a service named Redis service of cluster IP, and we could do a kubectl create service command, but then you cannot really specify the selectors, right?
- Multi-concept tags: Services, Scheduling, Configuration, Architecture

### Evidence 1125: certified-kubernetes-application-developer/02_Core Concepts/038_Solution - Imperative Commands (optional).extraction.md::E41
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 038_Solution - Imperative Commands (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And because it will automatically detect the, uh, labels and then use that as selectors for the service, right?
- Multi-concept tags: Services, Scheduling, Configuration

### Evidence 1126: certified-kubernetes-application-developer/02_Core Concepts/038_Solution - Imperative Commands (optional).extraction.md::E48
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 038_Solution - Imperative Commands (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Or if you go the other approach, then there's, you cannot specify the selector.
- Multi-concept tags: Scheduling, Configuration

### Evidence 1127: certified-kubernetes-application-developer/02_Core Concepts/038_Solution - Imperative Commands (optional).extraction.md::E73
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 038_Solution - Imperative Commands (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's see if it's got the right labels and selectors, and also the endpoint.
- Multi-concept tags: Scheduling, Configuration

### Evidence 1128: certified-kubernetes-application-developer/02_Core Concepts/038_Solution - Imperative Commands (optional).extraction.md::E135
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 038_Solution - Imperative Commands (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, we have the ACTPD pod, we have the ACTPD service, and if we look at this service in more detail, we see that it has got the selector, run equals ACTPD and then it also has the endpoint discovered.
- Multi-concept tags: Pods, Services, Scheduling, Configuration

### Evidence 1129: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E7
- Type: Architecture
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements.txt
- Line Context: Lines 1-1 from transcript
- Content: Now, as we have discussed before, it is the Kubernetes Scheduler that decides which node a pod goes to.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1130: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E8
- Type: Architecture
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements.txt
- Line Context: Lines 1-1 from transcript
- Content: The scheduler takes into consideration the amount of resources required by a pod and those available on the nodes, and identifies the best node to place a pod on.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1131: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E9
- Type: Architecture
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements.txt
- Line Context: Lines 1-1 from transcript
- Content: In this case, the scheduler schedules a new pod on node two because there are sufficient resources available on that node.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1132: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E11
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements.txt
- Line Context: Lines 1-1 from transcript
- Content: The scheduler avoids placing the pod on those nodes, and instead places the pod on one where sufficient resources are available, and if there is no sufficient resources available on any of the nodes, then the scheduler holds back, scheduling the pod and you will see the pod in a pending state.
- Multi-concept tags: Pods, Scheduling, Architecture, Troubleshooting

### Evidence 1133: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E18
- Type: Architecture
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements.txt
- Line Context: Lines 1-1 from transcript
- Content: So when the scheduler tries to place the pod on a node, it uses these numbers to identify a node which has sufficient amount of resources available.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1134: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E21
- Type: Architecture
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements.txt
- Line Context: Lines 1-1 from transcript
- Content: So when the scheduler gets a request to place this pod, it looks for a node that has this amount of resources available.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1135: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: In this lecture, we will discuss about the pod to node relationship and how you can restrict what pods are placed on what nodes.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1136: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E2
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: The concept of taints and tolerations can be a bit confusing for beginners, so we will try to understand what they are using an analogy of a bug approaching a person.
- Multi-concept tags: Scheduling

### Evidence 1137: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Now my apologies in advance, but this is the best I could come up with.
- Multi-concept tags: Scheduling

### Evidence 1138: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: To prevent the bug from landing on the person, we spray the person with repellent spray or taint as we will call it in this lecture.
- Multi-concept tags: Scheduling, Observability

### Evidence 1139: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: The bug is intolerant to the smell, so on approaching the person, the taint applied on the person throws the bug off.
- Multi-concept tags: Scheduling

### Evidence 1140: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: However, there could be other bugs that are tolerant to this smell and so the taints doesn't really affect them and so they end up landing on the person.
- Multi-concept tags: Scheduling

### Evidence 1141: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E7
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: So there are two things that decide if a bug can land on a person first, the taint on the person, and second the bug's toleration level to that particular taint.
- Multi-concept tags: Scheduling

### Evidence 1142: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Getting back to Kubernetes, the person is a node and the bugs are pods.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1143: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Now, taints and tolerations have nothing to do with security or intrusion on the cluster.
- Multi-concept tags: Scheduling, Security-RBAC, Architecture

### Evidence 1144: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Taints and tolerations are used to set restrictions on what pods can be scheduled on a node.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1145: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Let us start with a simple cluster with three worker nodes.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1146: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: The nodes are named one, two, and three.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1147: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E13
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: We also have a set of pods that are to be deployed on these nodes.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1148: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's call them A, B, C, and D.
- Multi-concept tags: Scheduling

### Evidence 1149: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E15
- Type: Architecture
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: When the pods are created, Kubernetes Scheduler tries to place these pods on the worker nodes.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1150: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E16
- Type: Architecture
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: As of now, there are no restrictions or limitations, and as such, the scheduler places the pods across all of the nodes to balance them out equally.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1151: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Now let us assume that we have dedicated resources on node one for a particular use case or application.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1152: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: So we would like only those parts that belong to this application to be placed on node one.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1153: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E19
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: First, we prevent all parts from being placed on the node by placing a taint on the node.
- Multi-concept tags: Scheduling, Architecture, Observability

### Evidence 1154: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's call it blue by default.
- Multi-concept tags: Scheduling

### Evidence 1155: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E21
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Pods have no tolerations, which means unless specified otherwise, none of the pods can tolerate any taint.
- Multi-concept tags: Pods, Scheduling

### Evidence 1156: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: So in this case, none of the pods can be placed on node one, as none of them can tolerate the taint.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1157: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Blue.
- Multi-concept tags: Scheduling

### Evidence 1158: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: This solves half of our requirement.
- Multi-concept tags: Scheduling

### Evidence 1159: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: No unwanted pods are going to be placed on this node.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1160: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: The other half is to enable certain pods to be placed on this node.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1161: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: For this, we must specify which pods are tolerant to this particular taint.
- Multi-concept tags: Pods, Scheduling

### Evidence 1162: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: In our case, we would like to allow only part D to be placed on this node.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1163: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: So we add a toleration to part D.
- Multi-concept tags: Scheduling

### Evidence 1164: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Part D is now tolerant to blue.
- Multi-concept tags: Scheduling

### Evidence 1165: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E31
- Type: Architecture
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: So when the scheduler tries to place this part on node one it goes through node one can now only accept pods that can tolerate the taint blue.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1166: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: So with all the chains and tolerations in place, this is how the pods would be scheduled.
- Multi-concept tags: Pods, Scheduling

### Evidence 1167: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E33
- Type: Architecture
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: The scheduler tries to place pod A on node one, but due to the time it is thrown off and it goes to node two, the scheduler then tries to place pod B on node one, but again due to the taint, it is thrown off and is placed on node three, which happens to be the next free node.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1168: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E34
- Type: Architecture
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: The scheduler then tries to place pod C to the node one.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1169: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E35
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: It is thrown off again and ends up on node two.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1170: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E36
- Type: Architecture
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: And finally the scheduler tries to place pod D on node one.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1171: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E37
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Since the pod is tolerant to node one, it goes through.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1172: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E38
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: So remember chains Things are set on nodes and tolerations are set on pods.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1173: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E39
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: So how do you do this?
- Multi-concept tags: Scheduling

### Evidence 1174: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E40
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Use the kube control nodes command to taint a node.
- Multi-concept tags: Scheduling, Configuration, Architecture

### Evidence 1175: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Specify the name of the node to taint followed by the taint itself, which is a key value pair.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1176: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E42
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, if you would like to dedicate the node to pods in application blue, then the key value pair would be app equals blue.
- Multi-concept tags: Pods, Scheduling, Architecture, CKA-CKAD

### Evidence 1177: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E43
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: The taint effect defines what would happen to the pods if they do not tolerate the taint.
- Multi-concept tags: Pods, Scheduling

### Evidence 1178: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E44
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: There are three taint effects.
- Multi-concept tags: Scheduling

### Evidence 1179: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E45
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: No schedule, which means the pods will not be scheduled on the node, which is what we have been discussing.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1180: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E46
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Preferred no schedule, which means the system will try to avoid placing a pod on the node, but that is not guaranteed.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1181: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E47
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: And third is no execute, which means that new pods will not be scheduled on the node and existing pods on the node, if any will be evicted if they do not tolerate the taint.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1182: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E48
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: These pods may have been scheduled on the node before the taint was applied to the node.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1183: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E49
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: An example command would be to taint node node one with the key value pair app blue, and an effect of no schedule.
- Multi-concept tags: Scheduling, Configuration, Architecture, CKA-CKAD

### Evidence 1184: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E50
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Tolerations are added to pods to add a toleration to a pod.
- Multi-concept tags: Pods, Scheduling

### Evidence 1185: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E51
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: First, pull up the pod definition file in the spec section of the Pod definition file.
- Multi-concept tags: Pods, Scheduling

### Evidence 1186: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E52
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Add a section called Tolerations.
- Multi-concept tags: Scheduling

### Evidence 1187: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E53
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Move the same values used while creating the taint under this section.
- Multi-concept tags: Scheduling

### Evidence 1188: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E54
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: The key is app operator is equal, value is blue and the effect is no schedule.
- Multi-concept tags: Scheduling

### Evidence 1189: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E55
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: And remember all of these values need to be encoded in double quotes.
- Multi-concept tags: Scheduling

### Evidence 1190: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E56
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: When the pods are now created or updated with the new tolerations, they are either not scheduled on nodes or evicted from the existing nodes depending on the effect set.
- Multi-concept tags: Pods, Scheduling, Architecture, Troubleshooting

### Evidence 1191: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E57
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Let us try to understand the no execute change effect in a bit more depth.
- Multi-concept tags: Scheduling

### Evidence 1192: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E58
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: In this example we have three nodes running some workload.
- Multi-concept tags: Scheduling, Architecture, CKA-CKAD

### Evidence 1193: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E59
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: We do not have any teams or tolerations at this point, so they are scheduled this way.
- Multi-concept tags: Scheduling

### Evidence 1194: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E60
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: We then decided to dedicate node one for a special application, and as such, we change the node with the application name and add a toleration to the pod that belongs to the application, which happens to be pod D in this case, while tending the node, we set the taint effect to no execute, and as such, once the taint on the node takes effect, it evicts pod C from the node, which simply means that the pod is killed.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1195: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E61
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: The pod D continues to run on the node as it has a toleration to the tank blue.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1196: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E62
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Now, going back to our original scenario where we have taints and tolerations configured, remember taints and tolerations are only meant to restrict nodes from accepting certain paths.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1197: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E63
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: In this case, node one can only accept pod D, but it does not guarantee that pod D will always be placed on node one, since there are no taints or restrictions applied on the other two nodes, pod D may very well be placed on any of the other two nodes.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1198: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E64
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: So remember taints and Tolerations does not tell the pod to go to a particular node.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1199: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E65
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Instead, it tells the node to only accept pods with certain tolerations.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1200: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E66
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: If your requirement is to restrict a pod to certain nodes, it is achieved through another concept called as node affinity, which we will discuss in the next lecture.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1201: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E67
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Finally, while we are on this topic, let us also take a look at an interesting fact.
- Multi-concept tags: Scheduling

### Evidence 1202: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E68
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: So far we have only been referring to the worker nodes, but we also have master nodes in the cluster, which is technically just another node that has all the capabilities of hosting a pod.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1203: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E69
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Plus it runs all the management software.
- Multi-concept tags: Scheduling

### Evidence 1204: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E70
- Type: Architecture
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Now, I'm not sure if you noticed the scheduler does not schedule any pods on the master node.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1205: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E71
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Why is that?
- Multi-concept tags: Scheduling

### Evidence 1206: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E72
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: When the Kubernetes cluster is first set up, a tent is set on the master node automatically that prevents any pods from being scheduled on this node.
- Multi-concept tags: Pods, Scheduling, Architecture, Observability

### Evidence 1207: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E73
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: You can see this as well as modify this behavior if required.
- Multi-concept tags: Scheduling

### Evidence 1208: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E74
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: However, a best practice is to not deploy application workloads on a master server.
- Multi-concept tags: Scheduling

### Evidence 1209: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E75
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: To see this tent run a cube control, describe node command with cube Master as the node name and look for the tent section.
- Multi-concept tags: Scheduling, Configuration, Architecture, On-Prem

### Evidence 1210: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E76
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: You will see a tent set to not schedule any pods on the master node.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1211: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E77
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Well, that's it for this lecture.
- Multi-concept tags: Scheduling

### Evidence 1212: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E78
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Head over to the Coding Exercises section and practice working with Taints and Tolerations.
- Multi-concept tags: Scheduling

### Evidence 1213: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: -: Okay, so let's go over the lab for practicing taints and tolerations.
- Multi-concept tags: Scheduling

### Evidence 1214: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E2
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's start with the first question, how many nodes exist on the system, including the control plane?
- Multi-concept tags: Scheduling, Architecture

### Evidence 1215: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's look at the number of nodes. and we see that there are two nodes, control plane and node 01, so the answer is two.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1216: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E4
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so the next question is, do any taints exist on node 01 node?
- Multi-concept tags: Scheduling, Architecture

### Evidence 1217: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So for that we're gonna have to take a closer look at node 01.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1218: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we do a kubectl describe node, node 01, and we see taints right here and we see that there are none, so there are no taints on this particular node.
- Multi-concept tags: Scheduling, Architecture, On-Prem

### Evidence 1219: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So I'm gonna select no going to clear my screen.
- Multi-concept tags: Scheduling

### Evidence 1220: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E8
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so the next question is to create a taint on node 01, with key of spray value of morteen, and effect of node schedule.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1221: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E9
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna continue with the, the silly example that we used in the lecture of the spray and morteen and mosquito and bee.
- Multi-concept tags: Scheduling, CKA-CKAD

### Evidence 1222: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E10
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So here the task is to create a taint.
- Multi-concept tags: Scheduling

### Evidence 1223: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna do kubectl taint and let's quickly look at the help.
- Multi-concept tags: Scheduling

### Evidence 1224: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E12
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the command is kubectl of taint, and then nodes, then the name of the node, and then followed by these values, which are, the key has to be spray, and then the value is morteen, and then the effect is no schedule.
- Multi-concept tags: Scheduling, Configuration, Architecture

### Evidence 1225: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's do that.
- Multi-concept tags: Scheduling

### Evidence 1226: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E14
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So it's kubectl taint, node, and it's node 01, and then the key is spray, and the value is morteen, and the effect is no schedule.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1227: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, let's confirm that.
- Multi-concept tags: Scheduling

### Evidence 1228: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we have the spray equals morteen, and the no schedule effect, right.
- Multi-concept tags: Scheduling

### Evidence 1229: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that's done.
- Multi-concept tags: Scheduling

### Evidence 1230: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we now have a taint on node 01.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1231: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E19
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now the goal is to create a new pod with the nginx image and the pod name as mosquito, right?
- Multi-concept tags: Pods, Scheduling

### Evidence 1232: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E20
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna do a kubectl run and then that's a pod name, and image equals nginx.
- Multi-concept tags: Pods, Scheduling

### Evidence 1233: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E21
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's do get pods, and we see that it's created.
- Multi-concept tags: Pods, Scheduling

### Evidence 1234: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Ignore the status for now.
- Multi-concept tags: Scheduling

### Evidence 1235: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so what is the state of the pod?
- Multi-concept tags: Pods, Scheduling

### Evidence 1236: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So it seems to be in a pending state, so select pending.
- Multi-concept tags: Scheduling, Troubleshooting

### Evidence 1237: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now why do you think the pod is in a pending state?
- Multi-concept tags: Pods, Scheduling, Troubleshooting

### Evidence 1238: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Is it because image is not available?
- Multi-concept tags: Scheduling

### Evidence 1239: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E27
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Is there an error?
- Multi-concept tags: Scheduling, Troubleshooting

### Evidence 1240: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's see, let's do a describe pod, and the pod name.
- Multi-concept tags: Pods, Scheduling, On-Prem

### Evidence 1241: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And here you'll see the reason why it's in a pending state. it says that the pod didn't tolerate one node that had taint and spray morteen that the pod didn't tolerate.
- Multi-concept tags: Pods, Scheduling, Architecture, Troubleshooting

### Evidence 1242: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So basically the pod mosquito cannot tolerate the taint morteen, that's a problem here.
- Multi-concept tags: Pods, Scheduling

### Evidence 1243: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E31
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna select that.
- Multi-concept tags: Scheduling

### Evidence 1244: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E32
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so now we have to create another pod named bee, with the nginx image, which has a toleration set to the taint morteen.
- Multi-concept tags: Pods, Scheduling

### Evidence 1245: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E33
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna do kubectl run command to create a pod.
- Multi-concept tags: Pods, Scheduling, Configuration

### Evidence 1246: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: The name is going to be bee, and the image is going to be nginx.
- Multi-concept tags: Scheduling

### Evidence 1247: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E35
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And basically, now we have to add toleration to it, but you cannot specify toleration in the command lane.
- Multi-concept tags: Scheduling, Configuration

### Evidence 1248: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E36
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So what we're gonna do is we're going do a dry run, equals client to generate a yamo file for this pod.
- Multi-concept tags: Pods, Scheduling

### Evidence 1249: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E37
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that's the yamo file and we're gonna redirect that to bee.yamo.
- Multi-concept tags: Scheduling

### Evidence 1250: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E38
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we have this in bee.yamo, we're going to edit bee.yamo file and we're going to add in tolerations.
- Multi-concept tags: Scheduling

### Evidence 1251: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E39
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So add a section called tolerations.
- Multi-concept tags: Scheduling

### Evidence 1252: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E40
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now if you're not sure of the format check out the Kubernetes documentation pages and search for chains tolerations, and that's the first result.
- Multi-concept tags: Scheduling

### Evidence 1253: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And so these are, this is the command for taint, and this is the format for tolerations.
- Multi-concept tags: Scheduling, Configuration

### Evidence 1254: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E42
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So dash key operator value and effect, so that's key, so key is going to be spray, operator value and effect.
- Multi-concept tags: Scheduling

### Evidence 1255: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E43
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the value is going to be in effect that's going to be schedule, finally we have operator set be equal.
- Multi-concept tags: Scheduling

### Evidence 1256: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E44
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Operator set to equal, you save that, and let's create image.
- Multi-concept tags: Scheduling

### Evidence 1257: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E45
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so it's now in a container creating state.
- Multi-concept tags: Scheduling

### Evidence 1258: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E46
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's watch the creation process and we can see that it's now in a running state.
- Multi-concept tags: Scheduling

### Evidence 1259: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E47
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So this pod is now running.
- Multi-concept tags: Pods, Scheduling

### Evidence 1260: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E48
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so that's correct.
- Multi-concept tags: Scheduling

### Evidence 1261: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E49
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now notice the bee pod was scheduled on node 01, so let's see where it was scheduled.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1262: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E50
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see the bee pod is on node 01.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1263: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E51
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So basically now this bee was able to tolerate the taint set on node 01.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1264: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E52
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now do you see any taints on control plane node?
- Multi-concept tags: Scheduling, Architecture

### Evidence 1265: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E53
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's look at the control plane node, and let's look at taints, and we see that yes, there is a taint set on the control plane node and it's set to no schedule, that's the effect.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1266: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E54
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So yes, it's set, it's set to no schedule.
- Multi-concept tags: Scheduling

### Evidence 1267: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E55
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, now remove the taint on control plane, which currently has the taint effect of no schedule.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1268: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E56
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we've got to remove that.
- Multi-concept tags: Scheduling

### Evidence 1269: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E57
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So first let's get that.
- Multi-concept tags: Scheduling

### Evidence 1270: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E58
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So this is the taint, so let's copy that, and the command to remove is the same, kubectl taint, and we just, that's by the node, that's control plane node, specify the taint that we want to remove, and at the end you've got to put a dash or a minus for it to remove that taint.
- Multi-concept tags: Scheduling, Configuration, Architecture

### Evidence 1271: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E59
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So it says it's untainted, so let's confirm that.
- Multi-concept tags: Scheduling

### Evidence 1272: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E60
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Go back to taints, I see, that nothing is set.
- Multi-concept tags: Scheduling

### Evidence 1273: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E61
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's click on check.
- Multi-concept tags: Scheduling

### Evidence 1274: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E62
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so that's done.
- Multi-concept tags: Scheduling

### Evidence 1275: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E63
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And now we've got to check the status of the pods again.
- Multi-concept tags: Pods, Scheduling

### Evidence 1276: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E64
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that the pod mosquito, which earlier was in a pending state, is now in a running state.
- Multi-concept tags: Pods, Scheduling, Troubleshooting

### Evidence 1277: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E65
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that's the state of the pod mosquito.
- Multi-concept tags: Pods, Scheduling

### Evidence 1278: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E66
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And then we have to, let's check on what node it is placed so as you can see it's now placed on the control plane node.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1279: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E67
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So earlier in the beginning the control plane node has a taint set on it, and then we set a taint on node 01 and then we created the mosquito pod.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1280: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E68
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And so it was not placed on any of the nodes because both of them had a taint then.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1281: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E69
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Then we created the bee pod with the toleration on node 01, so the bee pod was able to be placed on node 01, and then we removed the taint on control plane.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1282: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E70
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And without doing anything the pod mosquito was automatically placed on control plane because it no longer has any kind of taint on it.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1283: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E71
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So it's, the answer to this is control plane.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1284: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E72
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so that's the end of this lab.
- Multi-concept tags: Scheduling

### Evidence 1285: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: In this lecture we will talk about node selectors in Kubernetes.
- Multi-concept tags: Scheduling, Architecture, Observability

### Evidence 1286: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E2
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: Let us start with a simple example.
- Multi-concept tags: Scheduling, Architecture, Observability, CKA-CKAD

### Evidence 1287: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E3
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: You have a three node cluster of which two are smaller nodes with lower hardware resources, and one of them is a larger node configured with higher resources.
- Multi-concept tags: Scheduling, Architecture, Observability

### Evidence 1288: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: You have different kinds of workloads running in your cluster.
- Multi-concept tags: Scheduling, Architecture, Observability

### Evidence 1289: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: You would like to dedicate the data processing workloads that require higher horsepower to the larger node, as that is the only node that will not run out of resources in case the job demands extra resources.
- Multi-concept tags: Scheduling, Architecture, Observability

### Evidence 1290: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: However, in the current default setup, any pods can go to any nodes.
- Multi-concept tags: Pods, Scheduling, Architecture, Observability

### Evidence 1291: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: So pod C in this case may very well end up on nodes 2 or 3, which is not desired.
- Multi-concept tags: Pods, Scheduling, Architecture, Observability

### Evidence 1292: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: To solve this, we can set a limitation on the pods so that they only run on particular nodes.
- Multi-concept tags: Pods, Scheduling, Architecture, Observability

### Evidence 1293: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: There are two ways to do this.
- Multi-concept tags: Scheduling, Architecture, Observability

### Evidence 1294: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E10
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: The first is using node selectors, which is the simple and easier method.
- Multi-concept tags: Scheduling, Architecture, Observability

### Evidence 1295: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E11
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: For this we look at the pod definition file we created earlier.
- Multi-concept tags: Pods, Scheduling, Architecture, Observability

### Evidence 1296: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E12
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: This file has a simple definition to create a pod with a data processing image.
- Multi-concept tags: Pods, Scheduling, Architecture, Observability

### Evidence 1297: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: To limit this pod to run on the larger node, we add a new property called node selector to the spec section and specify the size as large.
- Multi-concept tags: Pods, Scheduling, Architecture, Observability

### Evidence 1298: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: But wait a minute, where did the size large come from?
- Multi-concept tags: Scheduling, Architecture, Observability

### Evidence 1299: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: And how does Kubernetes know which is the large node?
- Multi-concept tags: Scheduling, Architecture, Observability

### Evidence 1300: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: The key value pair of size and large are in fact labels assigned to the nodes.
- Multi-concept tags: Scheduling, Architecture, Observability

### Evidence 1301: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E17
- Type: Architecture
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: The scheduler uses these labels to match and identify the right node to place the pods on.
- Multi-concept tags: Pods, Scheduling, Architecture, Observability

### Evidence 1302: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E18
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: Labels and selectors are a topic we have seen many times throughout this Kubernetes course, such as with services, replica sets and deployments.
- Multi-concept tags: Deployments, Services, Scheduling, Architecture, Observability

### Evidence 1303: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E19
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: To use labels in a node selector like this, you must have first labeled your nodes prior to creating this pod.
- Multi-concept tags: Pods, Scheduling, Architecture, Observability

### Evidence 1304: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: So let us go back and see how we can label the nodes to label a node.
- Multi-concept tags: Scheduling, Architecture, Observability

### Evidence 1305: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E21
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: Use the command Kube cube control.
- Multi-concept tags: Scheduling, Configuration, Architecture, Observability

### Evidence 1306: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: Label nodes followed by the name of the node and the label in a key value pair format.
- Multi-concept tags: Scheduling, Architecture, Observability

### Evidence 1307: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: In this case it would be cube control label nodes.
- Multi-concept tags: Scheduling, Architecture, Observability

### Evidence 1308: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: Node one, followed by the label in a key value format such as size equals large.
- Multi-concept tags: Scheduling, Architecture, Observability

### Evidence 1309: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: Now that we have labeled the node, we can get back to creating the pod, this time with the node selector set to a size of large.
- Multi-concept tags: Pods, Scheduling, Architecture, Observability

### Evidence 1310: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E26
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: When the pod is now created, it is placed on node one as desired.
- Multi-concept tags: Pods, Scheduling, Architecture, Observability

### Evidence 1311: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: Node selector served our purpose, but it has limitations.
- Multi-concept tags: Scheduling, Architecture, Observability

### Evidence 1312: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: We used a single label and selector to achieve our goal here.
- Multi-concept tags: Scheduling, Architecture, Observability

### Evidence 1313: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: But what if our requirement is much more complex?
- Multi-concept tags: Scheduling, Architecture, Observability

### Evidence 1314: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E30
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, we would like to say something like place the pod on a large or medium node or something like place the pod on any nodes that are not small.
- Multi-concept tags: Pods, Scheduling, Architecture, Observability, CKA-CKAD

### Evidence 1315: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E31
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: You cannot achieve this using node selectors.
- Multi-concept tags: Scheduling, Architecture, Observability

### Evidence 1316: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E32
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: For this node affinity and anti-affinity features were introduced and we will look at that next.
- Multi-concept tags: Scheduling, Architecture, Observability

### Evidence 1317: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: In this lecture we will talk about node affinity feature in Kubernetes.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1318: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E2
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: The primary purpose of node affinity feature is to ensure that pods are hosted on particular nodes.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1319: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: In this case, to ensure the large data processing pod ends up on node one.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1320: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: In the previous lecture, we did this easily using node selectors.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1321: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: We discussed that you cannot provide advanced expressions like or or not with node selectors.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1322: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: The node affinity feature provides us with advanced capabilities to limit pod placement on specific nodes.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1323: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: With great power comes great complexity.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1324: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: So the simple node selector specification will now look like this with node affinity.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1325: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: Although both does exactly the same thing.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1326: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: Place the pod on the node.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1327: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: Let us look at it a bit closer.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1328: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E12
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: Under spec you have affinity and then node affinity under that.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1329: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E13
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: And then you have a property that looks like a sentence called required during scheduling.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1330: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: Ignored during execution.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1331: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: No description needed for that.
- Multi-concept tags: Scheduling, Architecture, On-Prem

### Evidence 1332: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E16
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: And then you have the node selector turns.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1333: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: That is an array.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1334: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: And that is where you will specify the key and value pairs.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1335: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: The key value pairs are in the form, key operator, and value where the operator is in the in operator ensures that the pod will be placed on a node whose label size has any value in the list of values specified here.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1336: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: In this case, it is just one called large.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1337: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E21
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: If you think your pod could be placed on a large or a medium node, you could simply add the value to the list of values like this.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1338: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: You could use the not in operator to say something like size, not in small, where node affinity will match the nodes with a size not set to small.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1339: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E23
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: We know that we have only set the label size to large and medium nodes, The smaller nodes don't even have the label set, so we don't really have to even check the value of the label, as long as we are sure we don't set a label size to the smaller nodes, using the exists operator will give us the same result.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1340: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E24
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: The excess operator will simply check if the label size exists on the nodes, and you don't need the values section for that, as it does not compare the values.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1341: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: There are a number of other operators as well.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1342: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: Check the documentation for specific details.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1343: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: Now we understand all of this and we're comfortable with creating a pod with specific affinity rules.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1344: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E28
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: When the pods are created, these rules are considered and the pods are placed onto the right nodes.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1345: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: But what if node affinity could not match a node with a given expression?
- Multi-concept tags: Scheduling, Architecture

### Evidence 1346: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: In this case, what if there are no nodes with the label called size?
- Multi-concept tags: Scheduling, Architecture

### Evidence 1347: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E31
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: Say we had the labels and the pods are scheduled.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1348: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: What if someone changes the label on the node at a future point in time, will the pod continue to stay on the node?
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1349: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E33
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: All of this is answered by the long sentence like property under node affinity, which happens to be the type of node affinity.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1350: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E34
- Type: Architecture
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: The type of node affinity defines the behavior of the scheduler with respect to node affinity, and the stages in the lifecycle of the pod.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1351: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E35
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: There are currently two types of node affinity available.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1352: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E36
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: Required during scheduling.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1353: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E37
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: Ignored during execution and preferred during scheduling.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1354: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E38
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: Ignored during execution.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1355: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E39
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: And there are additional types of node affinity planned as of this recording.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1356: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E40
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: Required during scheduling.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1357: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: Required during execution.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1358: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E42
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: We will now break this down to understand further.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1359: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E43
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: We will start by looking at the two available affinity types.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1360: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E44
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: There are two states in the life cycle of a pod when considering node affinity during scheduling and during execution.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1361: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E45
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: During scheduling is the state where a pot does not exist and is created for the first time.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1362: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E46
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: We have no doubt that when a pot is first created, the affinity rules specified are considered to place the pods on the right nodes.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1363: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E47
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: Now, what if the nodes with matching labels are not available?
- Multi-concept tags: Scheduling, Architecture

### Evidence 1364: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E48
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, we forgot to label the node as large.
- Multi-concept tags: Scheduling, Architecture, CKA-CKAD

### Evidence 1365: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E49
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: That is where the type of node affinity used comes into play.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1366: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E50
- Type: Architecture
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: If you select the required type, which is the first one, the scheduler will mandate that the pod be placed on a node with the given affinity rules.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1367: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E51
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: If it cannot find one, the pod will not be scheduled.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1368: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E52
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: This type will be used in cases where the placement of the pod is crucial.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1369: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E53
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: If a matching node does not exist, the pod will not be scheduled.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1370: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E54
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: But let's say the pod placement is less important than running the workload itself.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1371: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E55
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: In that case, you could set it to preferred.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1372: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E56
- Type: Architecture
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: And in cases where a matching node is not found, the scheduler will simply ignore Ignored node affinity rules and place the pot on any available node.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1373: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E57
- Type: Architecture
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: This is a way of telling the scheduler, hey, try your best to place the pod on matching node, but if you really cannot find one, just place it anywhere.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1374: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E58
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: The second part of the property or the other state is during execution.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1375: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E59
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: During execution is the state where a pod has been running, and a change is made in the environment that affects node affinity, such as a change in the label of a node.
- Multi-concept tags: Pods, Scheduling, Configuration, Architecture

### Evidence 1376: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E60
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, say an administrator removed the label we set earlier called size equals large from the node.
- Multi-concept tags: Scheduling, Architecture, CKA-CKAD

### Evidence 1377: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E61
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: Now, what would happen to the pods that are running on the node?
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1378: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E62
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: As you can see, the two types of node affinity available today has this value set to ignored, which means pods will continue to run and any changes in node affinity will not impact them once they are scheduled.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1379: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E63
- Type: Comparison
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: In the next lecture, we will compare taints and Tolerations and node affinity.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1380: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: -: Okay, in this video we will go over the practice test for node affinity.
- Multi-concept tags: Scheduling, Architecture, CKA-CKAD

### Evidence 1381: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E2
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the first question is to identify the labels on node zero one.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1382: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So to count the number of labels on node zero one.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1383: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's do kubectl, describe node, node zero one and let's look at the labels.
- Multi-concept tags: Scheduling, Architecture, On-Prem

### Evidence 1384: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we have one, two, three, four, five, five labels.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1385: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna select five.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1386: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E7
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And then the next question is, what is the value set to the label at beta.kubernetes.io/arch?
- Multi-concept tags: Scheduling, Architecture

### Evidence 1387: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So on node zero one, so we are already on node zero one and it is AMD 64.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1388: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: That's this one.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1389: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E10
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so the next question is to apply a label called color equals blue to node, node zero one.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1390: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So for that we're going to use the kubectl label command.
- Multi-concept tags: Scheduling, Configuration, Architecture

### Evidence 1391: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's take a look at the help.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1392: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E13
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And here we have some examples.
- Multi-concept tags: Scheduling, Architecture, CKA-CKAD

### Evidence 1393: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E14
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So you have kubectl label, the pods or node what, whatever, what is the object that we wanna apply the label to?
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1394: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E15
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And then the node name, and then just the label.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1395: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So it's pretty straightforward.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1396: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E17
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna do kubectl, label, node, node zero one and then color equals blue.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1397: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's verify that it's set correctly.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1398: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: We're gonna go back the labels and we see the color equals blue.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1399: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E20
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, now the next one is to create a new deployment named blue with the nginx image and three replicas.
- Multi-concept tags: Deployments, Scheduling, Architecture

### Evidence 1400: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E21
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's create the deployment, the name is blue, image is nginx and replicas is three.
- Multi-concept tags: Deployments, Scheduling, Architecture

### Evidence 1401: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E22
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so the next one is, which nodes can the pods for the blue deployment be placed on?
- Multi-concept tags: Pods, Deployments, Scheduling, Architecture

### Evidence 1402: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we, we've gotta check the taints on both the nodes.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1403: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's do that.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1404: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's check the taints on each one.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1405: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna do a kubectl describe node.
- Multi-concept tags: Scheduling, Architecture, On-Prem

### Evidence 1406: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's check node zero one.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1407: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And let's just check for taints.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1408: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So there are no taints on node zero one and the other node, which I believe is the control plane node.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1409: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's check that too.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1410: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E31
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, so there are no taints on either of these nodes, but for now the pods can be scheduled on either of the nodes because there are no taints on any of these nodes.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1411: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E32
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so in this question, the task is to set node affinity to the deployment to place the pod on node zero one only.
- Multi-concept tags: Pods, Deployments, Scheduling, Architecture

### Evidence 1412: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E33
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're going to edit the deployment.
- Multi-concept tags: Deployments, Scheduling, Architecture

### Evidence 1413: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E34
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's kubectl edit deployment blue.
- Multi-concept tags: Deployments, Scheduling, Architecture

### Evidence 1414: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E35
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we are here and what we need to do is on the pod specification.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1415: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E36
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now we've got to set the node affinity for these, right?
- Multi-concept tags: Scheduling, Architecture

### Evidence 1416: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E37
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we, we have to use the required during scheduling, ignore during execution, then use the color and the values to blue.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1417: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E38
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So for this, let's go to the Kubernetes documentation page and search for node affinity.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1418: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E39
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And let's get this.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1419: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E40
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And here, let's look for the affinity spec.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1420: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're going to copy this and paste it here.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1421: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E42
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So here, basically this one is an example for a pod.
- Multi-concept tags: Pods, Scheduling, Architecture, CKA-CKAD

### Evidence 1422: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E43
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And so all of these are kind of aligned a bit more to the left.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1423: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E44
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: But here, this is under the pod which is under the template section of deployment.
- Multi-concept tags: Pods, Deployments, Scheduling, Architecture

### Evidence 1424: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E45
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we have to move it all a little bit to the right.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1425: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E46
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So for this, what I'm gonna do here is, the first one is okay, first line is okay but all these remaining lines we need to move it one step inside.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1426: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E47
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So press capital V and then select all the lines.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1427: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E48
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Then I'm gonna do a greater than symbol.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1428: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E49
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that's shift dot on the keyboard that I'm using.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1429: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E50
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So it moves everything to the, to the right.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1430: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E51
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So it's not, not very pretty but I think that will do the job for now.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1431: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E52
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And I'm just going to set the key to color and the value to blue.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1432: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E53
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So there are ways that we can set the vim settings so that this always gets indented with spaces as opposed to multiple spaces at a time that you can see here.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1433: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E54
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna save that and let's give this a shot.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1434: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E55
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so that's done.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1435: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E56
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now the question is to find out which nodes the pods are placed on.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1436: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E57
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's run a kubectl get pods dash o wide.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1437: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E58
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay now it shows us all the pods are on node zero one.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1438: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E59
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So they're all on node zero one.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1439: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E60
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the next task is to create a new deployment named red with the nginx image and two replicas and ensure it gets placed on the control plane node only.
- Multi-concept tags: Deployments, Scheduling, Architecture

### Evidence 1440: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E61
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And the recommendation is to use the label node coordinators dot io slash master which is already set on the control plane node.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1441: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E62
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So if you look at the control plane node we see that there is this label, right?
- Multi-concept tags: Scheduling, Architecture

### Evidence 1442: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E63
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: It doesn't have a value set, right?
- Multi-concept tags: Scheduling, Architecture

### Evidence 1443: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E64
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So all we need to do is to set a node affinity rule that says the pods that are part of the deployment red should be placed on a node that has this label set.
- Multi-concept tags: Pods, Deployments, Scheduling, Architecture

### Evidence 1444: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E65
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And the label does not have a value.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1445: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E66
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: But if this label exists then that's where it should be placed on.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1446: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E67
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's try and do that.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1447: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E68
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we'll use the kubectl create deployment command and then the name is red, image is nginx and replicas equals two.
- Multi-concept tags: Deployments, Scheduling, Configuration, Architecture

### Evidence 1448: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E69
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: But we're not gonna create it.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1449: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E70
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna do a dry run because we need to get the yaml file to input the new definition rules.
- Multi-concept tags: Scheduling, Configuration, Architecture

### Evidence 1450: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E71
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna do a dry run equals find and then dash o yaml.
- Multi-concept tags: Scheduling, Configuration, Architecture

### Evidence 1451: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E72
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that's gonna give us the yaml output.
- Multi-concept tags: Scheduling, Configuration, Architecture

### Evidence 1452: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E73
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Then we're going to put it to a file named red dot yaml.
- Multi-concept tags: Scheduling, Configuration, Architecture

### Evidence 1453: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E74
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now we're going to edit that file.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1454: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E75
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And within the spec section, we're gonna do the same as we did before.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1455: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E76
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna copy this new definition rule and paste it.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1456: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E77
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now we've got to select all of these lines.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1457: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E78
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: We're gonna do a shift dot on my keyboard which is gonna, that's basically the greater than symbol and it's gonna move it to the right.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1458: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E79
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now we're gonna change this so the key is the label, which is this.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1459: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E80
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: We're gonna copy and paste.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1460: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E81
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And as we realized that this label does not have value, so there's no point in checking the value here.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1461: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E82
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna get rid of this and all we are gonna do is say if the label exists, so the operator would be exists with a capital E.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1462: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E83
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Save that.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1463: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E84
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And now we're going to create a deployment.
- Multi-concept tags: Deployments, Scheduling, Architecture

### Evidence 1464: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E85
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: There seems to be some error.
- Multi-concept tags: Scheduling, Architecture, Troubleshooting

### Evidence 1465: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E86
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's go back, see what the error is.
- Multi-concept tags: Scheduling, Architecture, Troubleshooting

### Evidence 1466: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E87
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: It's on line 26.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1467: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E88
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Did not find expected key.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1468: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E89
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So line 26 is this.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1469: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E90
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, actually it's this line here.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1470: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E91
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So this is not currently indented, that's the problem.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1471: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E92
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: We're going to move it two characters before.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1472: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E93
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay so we're going to save that.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1473: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E94
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's try that again.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1474: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E95
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so even though here it said line 26 the issue was a few lines above.
- Multi-concept tags: Scheduling, Architecture, Troubleshooting

### Evidence 1475: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E96
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay so let's check our solution.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1476: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E97
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: All right, so that works.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1477: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E98
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And if we look at pods now, we'll see that those the new pods are on node control plane.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1478: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E99
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, that's the end of this lab.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1479: certified-kubernetes-application-developer/03_Configuration/076_Taints & Tolerations vs Node Affinity.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 076_Taints & Tolerations vs Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: Now that we have learned about taints and tolerations and node affinity, let us tie together the two concepts through a fun exercise.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1480: certified-kubernetes-application-developer/03_Configuration/076_Taints & Tolerations vs Node Affinity.extraction.md::E2
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 076_Taints & Tolerations vs Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: We have three nodes and three pods, each in three colors blue, red, and green.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1481: certified-kubernetes-application-developer/03_Configuration/076_Taints & Tolerations vs Node Affinity.extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 076_Taints & Tolerations vs Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: The ultimate aim is to place the blue pod in the blue node, the red pod in the red node, and likewise for green.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1482: certified-kubernetes-application-developer/03_Configuration/076_Taints & Tolerations vs Node Affinity.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 076_Taints & Tolerations vs Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: We are sharing the same Kubernetes cluster with other teams, so there are other pods in the cluster as well as other nodes.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1483: certified-kubernetes-application-developer/03_Configuration/076_Taints & Tolerations vs Node Affinity.extraction.md::E5
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 03_Configuration / 076_Taints & Tolerations vs Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: We do not want any other pod to be placed on our node.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1484: certified-kubernetes-application-developer/03_Configuration/076_Taints & Tolerations vs Node Affinity.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 076_Taints & Tolerations vs Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: Neither do we want our pods to be placed on their nodes.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1485: certified-kubernetes-application-developer/03_Configuration/076_Taints & Tolerations vs Node Affinity.extraction.md::E7
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 076_Taints & Tolerations vs Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: Let us first try to solve this problem using taints and tolerations.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1486: certified-kubernetes-application-developer/03_Configuration/076_Taints & Tolerations vs Node Affinity.extraction.md::E8
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 076_Taints & Tolerations vs Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: We apply a taint to the nodes, marking them with their colors blue, red and green, and we then set a toleration on the pods to tolerate the respective colors.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1487: certified-kubernetes-application-developer/03_Configuration/076_Taints & Tolerations vs Node Affinity.extraction.md::E9
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 076_Taints & Tolerations vs Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: When the pods are now created, the nodes ensure they only accept the pods with the right toleration, so the green pod ends up on the green node and the blue pod ends up on the blue node.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1488: certified-kubernetes-application-developer/03_Configuration/076_Taints & Tolerations vs Node Affinity.extraction.md::E10
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 03_Configuration / 076_Taints & Tolerations vs Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: However, taints and tolerations does not guarantee that the pods will only prefer these nodes, so the red pods ends up on one of the other nodes that do not have a taint or toleration set.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1489: certified-kubernetes-application-developer/03_Configuration/076_Taints & Tolerations vs Node Affinity.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 076_Taints & Tolerations vs Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: This is not desired.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1490: certified-kubernetes-application-developer/03_Configuration/076_Taints & Tolerations vs Node Affinity.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 076_Taints & Tolerations vs Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: Let us try to solve the same problem with node affinity.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1491: certified-kubernetes-application-developer/03_Configuration/076_Taints & Tolerations vs Node Affinity.extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 076_Taints & Tolerations vs Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: With node affinity.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1492: certified-kubernetes-application-developer/03_Configuration/076_Taints & Tolerations vs Node Affinity.extraction.md::E14
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 076_Taints & Tolerations vs Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: We first label the nodes with their respective colors blue, red, and green.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1493: certified-kubernetes-application-developer/03_Configuration/076_Taints & Tolerations vs Node Affinity.extraction.md::E15
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 076_Taints & Tolerations vs Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: We then set node selectors on the pods to tie the pods to the nodes.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1494: certified-kubernetes-application-developer/03_Configuration/076_Taints & Tolerations vs Node Affinity.extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 076_Taints & Tolerations vs Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: As such, the pods end up on the right nodes.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1495: certified-kubernetes-application-developer/03_Configuration/076_Taints & Tolerations vs Node Affinity.extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 076_Taints & Tolerations vs Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: However, that does not guarantee that other pods are not placed on these nodes.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1496: certified-kubernetes-application-developer/03_Configuration/076_Taints & Tolerations vs Node Affinity.extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 076_Taints & Tolerations vs Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: In this case, there is a chance that one of the other pods may end up on our nodes.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1497: certified-kubernetes-application-developer/03_Configuration/076_Taints & Tolerations vs Node Affinity.extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 076_Taints & Tolerations vs Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: This is not something we desire.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1498: certified-kubernetes-application-developer/03_Configuration/076_Taints & Tolerations vs Node Affinity.extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 076_Taints & Tolerations vs Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: As such, a combination of taints and tolerations and node affinity rules can be used together to completely dedicate nodes for specific pods.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1499: certified-kubernetes-application-developer/03_Configuration/076_Taints & Tolerations vs Node Affinity.extraction.md::E21
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 076_Taints & Tolerations vs Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: We first use taints and tolerations to prevent other pods from being placed on our nodes, and then we use node affinity to prevent our pods from being placed on their nodes.
- Multi-concept tags: Pods, Scheduling, Architecture, Observability

### Evidence 1500: certified-kubernetes-application-developer/03_Configuration/076_Taints & Tolerations vs Node Affinity.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 076_Taints & Tolerations vs Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: Well, that's it for this lecture.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1501: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E9
- Type: Architecture
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: This is when the scheduler tries to figure out where to place the pod.
- Multi-concept tags: Pods, Scheduling, Observability

### Evidence 1502: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E10
- Type: Architecture
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: If the scheduler cannot find the node to place the pod, it remains in a pending state.
- Multi-concept tags: Pods, Scheduling, Architecture, Observability, Troubleshooting

### Evidence 1503: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: Once the pod is scheduled, it goes into a container creating status where the images required for the application are pulled and the container starts.
- Multi-concept tags: Pods, Scheduling, Observability

### Evidence 1504: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: When a pod is scheduled on a node, the pod scheduled condition is set to true.
- Multi-concept tags: Pods, Scheduling, Architecture, Observability

### Evidence 1505: certified-kubernetes-application-developer/06_POD Design/096_Labels, Selectors and Annotations.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 096_Labels, Selectors and Annotations.txt
- Line Context: Lines 1-1 from transcript
- Content: What do we know about labels and selectors already?
- Multi-concept tags: Pods, Scheduling

### Evidence 1506: certified-kubernetes-application-developer/06_POD Design/096_Labels, Selectors and Annotations.extraction.md::E2
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 096_Labels, Selectors and Annotations.txt
- Line Context: Lines 1-1 from transcript
- Content: Labels and selectors are a standard method to group things together.
- Multi-concept tags: Pods, Scheduling

### Evidence 1507: certified-kubernetes-application-developer/06_POD Design/096_Labels, Selectors and Annotations.extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 096_Labels, Selectors and Annotations.txt
- Line Context: Lines 1-1 from transcript
- Content: Say you have a set of different species.
- Multi-concept tags: Pods, Scheduling

### Evidence 1508: certified-kubernetes-application-developer/06_POD Design/096_Labels, Selectors and Annotations.extraction.md::E4
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 06_POD Design / 096_Labels, Selectors and Annotations.txt
- Line Context: Lines 1-1 from transcript
- Content: A user wants to be able to filter them based on different criteria, such as based on their class or kind, if they are domestic or wild, or say by their color and not just group, you want to be able to filter them based on a criteria such as all green animals or with multiple criteria such as everything green that is also a bird.
- Multi-concept tags: Pods, Scheduling, On-Prem

### Evidence 1509: certified-kubernetes-application-developer/06_POD Design/096_Labels, Selectors and Annotations.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 096_Labels, Selectors and Annotations.txt
- Line Context: Lines 1-1 from transcript
- Content: Whatever that classification may be, you need the ability to group things together and filter them based on your needs.
- Multi-concept tags: Pods, Scheduling

### Evidence 1510: certified-kubernetes-application-developer/06_POD Design/096_Labels, Selectors and Annotations.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 096_Labels, Selectors and Annotations.txt
- Line Context: Lines 1-1 from transcript
- Content: And the best way to do that is with labels.
- Multi-concept tags: Pods, Scheduling

### Evidence 1511: certified-kubernetes-application-developer/06_POD Design/096_Labels, Selectors and Annotations.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 096_Labels, Selectors and Annotations.txt
- Line Context: Lines 1-1 from transcript
- Content: Labels are properties attached to each item, so you add properties to each item for their class.
- Multi-concept tags: Pods, Scheduling

### Evidence 1512: certified-kubernetes-application-developer/06_POD Design/096_Labels, Selectors and Annotations.extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 096_Labels, Selectors and Annotations.txt
- Line Context: Lines 1-1 from transcript
- Content: Kind and color selectors help you filter these items.
- Multi-concept tags: Pods, Scheduling

### Evidence 1513: certified-kubernetes-application-developer/06_POD Design/096_Labels, Selectors and Annotations.extraction.md::E9
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 06_POD Design / 096_Labels, Selectors and Annotations.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, when you say class equals mammal, we get a list of mammals.
- Multi-concept tags: Pods, Scheduling, CKA-CKAD

### Evidence 1514: certified-kubernetes-application-developer/06_POD Design/096_Labels, Selectors and Annotations.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 096_Labels, Selectors and Annotations.txt
- Line Context: Lines 1-1 from transcript
- Content: And when you say color equals green, we get the green mammals.
- Multi-concept tags: Pods, Scheduling

### Evidence 1515: certified-kubernetes-application-developer/06_POD Design/096_Labels, Selectors and Annotations.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 096_Labels, Selectors and Annotations.txt
- Line Context: Lines 1-1 from transcript
- Content: We see labels and selectors used everywhere, such as the keywords you tag to YouTube videos or blogs that help users filter and find the right content.
- Multi-concept tags: Pods, Scheduling

### Evidence 1516: certified-kubernetes-application-developer/06_POD Design/096_Labels, Selectors and Annotations.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 096_Labels, Selectors and Annotations.txt
- Line Context: Lines 1-1 from transcript
- Content: We see labels added to items in an online store that help you add different kinds of filters to view your products.
- Multi-concept tags: Pods, Scheduling

### Evidence 1517: certified-kubernetes-application-developer/06_POD Design/096_Labels, Selectors and Annotations.extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 096_Labels, Selectors and Annotations.txt
- Line Context: Lines 1-1 from transcript
- Content: So how are labels and selectors used in Kubernetes?
- Multi-concept tags: Pods, Scheduling

### Evidence 1518: certified-kubernetes-application-developer/06_POD Design/096_Labels, Selectors and Annotations.extraction.md::E14
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 06_POD Design / 096_Labels, Selectors and Annotations.txt
- Line Context: Lines 1-1 from transcript
- Content: We have created a lot of different types of objects in Kubernetes pods, services, replica sets, deployments, etc. for Kubernetes.
- Multi-concept tags: Pods, Deployments, Services, Scheduling

### Evidence 1519: certified-kubernetes-application-developer/06_POD Design/096_Labels, Selectors and Annotations.extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 096_Labels, Selectors and Annotations.txt
- Line Context: Lines 1-1 from transcript
- Content: All of these are different objects.
- Multi-concept tags: Pods, Scheduling

### Evidence 1520: certified-kubernetes-application-developer/06_POD Design/096_Labels, Selectors and Annotations.extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 096_Labels, Selectors and Annotations.txt
- Line Context: Lines 1-1 from transcript
- Content: Over time, you may end up having hundreds or thousands of these objects in your cluster.
- Multi-concept tags: Pods, Scheduling, Architecture

### Evidence 1521: certified-kubernetes-application-developer/06_POD Design/096_Labels, Selectors and Annotations.extraction.md::E17
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 06_POD Design / 096_Labels, Selectors and Annotations.txt
- Line Context: Lines 1-1 from transcript
- Content: Then you will need a way to filter and view different objects by different categories, such as to group objects by their type or view objects by application or by their functionality, whatever it may be.
- Multi-concept tags: Pods, Scheduling

### Evidence 1522: certified-kubernetes-application-developer/06_POD Design/096_Labels, Selectors and Annotations.extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 096_Labels, Selectors and Annotations.txt
- Line Context: Lines 1-1 from transcript
- Content: You can group and select objects using labels and selectors for each object.
- Multi-concept tags: Pods, Scheduling

### Evidence 1523: certified-kubernetes-application-developer/06_POD Design/096_Labels, Selectors and Annotations.extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 096_Labels, Selectors and Annotations.txt
- Line Context: Lines 1-1 from transcript
- Content: Attach labels as per your needs like app, function, etc..
- Multi-concept tags: Pods, Scheduling

### Evidence 1524: certified-kubernetes-application-developer/06_POD Design/096_Labels, Selectors and Annotations.extraction.md::E20
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 06_POD Design / 096_Labels, Selectors and Annotations.txt
- Line Context: Lines 1-1 from transcript
- Content: Then, while selecting, specify a condition to filter specific objects.
- Multi-concept tags: Pods, Scheduling

### Evidence 1525: certified-kubernetes-application-developer/06_POD Design/096_Labels, Selectors and Annotations.extraction.md::E21
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 06_POD Design / 096_Labels, Selectors and Annotations.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, app equals app one.
- Multi-concept tags: Pods, Scheduling, CKA-CKAD

### Evidence 1526: certified-kubernetes-application-developer/06_POD Design/096_Labels, Selectors and Annotations.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 096_Labels, Selectors and Annotations.txt
- Line Context: Lines 1-1 from transcript
- Content: So how exactly do you specify labels in Kubernetes in a Pod definition file under metadata?
- Multi-concept tags: Pods, Scheduling

### Evidence 1527: certified-kubernetes-application-developer/06_POD Design/096_Labels, Selectors and Annotations.extraction.md::E23
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 06_POD Design / 096_Labels, Selectors and Annotations.txt
- Line Context: Lines 1-1 from transcript
- Content: Create a section called labels.
- Multi-concept tags: Pods, Scheduling

### Evidence 1528: certified-kubernetes-application-developer/06_POD Design/096_Labels, Selectors and Annotations.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 096_Labels, Selectors and Annotations.txt
- Line Context: Lines 1-1 from transcript
- Content: Under that, add the labels in a key value format like this.
- Multi-concept tags: Pods, Scheduling

### Evidence 1529: certified-kubernetes-application-developer/06_POD Design/096_Labels, Selectors and Annotations.extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 096_Labels, Selectors and Annotations.txt
- Line Context: Lines 1-1 from transcript
- Content: You can add as many labels as you like.
- Multi-concept tags: Pods, Scheduling

### Evidence 1530: certified-kubernetes-application-developer/06_POD Design/096_Labels, Selectors and Annotations.extraction.md::E26
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 06_POD Design / 096_Labels, Selectors and Annotations.txt
- Line Context: Lines 1-1 from transcript
- Content: Once the pod is created to select the pod with labels, use the Kube control get pods command along with the selector option and specify the condition like app equals app one.
- Multi-concept tags: Pods, Scheduling, Configuration

### Evidence 1531: certified-kubernetes-application-developer/06_POD Design/096_Labels, Selectors and Annotations.extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 096_Labels, Selectors and Annotations.txt
- Line Context: Lines 1-1 from transcript
- Content: Now this is one use case of labels and selectors.
- Multi-concept tags: Pods, Scheduling

### Evidence 1532: certified-kubernetes-application-developer/06_POD Design/096_Labels, Selectors and Annotations.extraction.md::E28
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 06_POD Design / 096_Labels, Selectors and Annotations.txt
- Line Context: Lines 1-1 from transcript
- Content: Kubernetes objects use labels and selectors internally to connect different objects together.
- Multi-concept tags: Pods, Scheduling

### Evidence 1533: certified-kubernetes-application-developer/06_POD Design/096_Labels, Selectors and Annotations.extraction.md::E29
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 06_POD Design / 096_Labels, Selectors and Annotations.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, to create a replica set consisting of three different parts, we first label the part definition and use selector in a replica set to group the parts in a replica set definition file.
- Multi-concept tags: Pods, Scheduling, CKA-CKAD

### Evidence 1534: certified-kubernetes-application-developer/06_POD Design/096_Labels, Selectors and Annotations.extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 096_Labels, Selectors and Annotations.txt
- Line Context: Lines 1-1 from transcript
- Content: You will see labels defined in two places.
- Multi-concept tags: Pods, Scheduling

### Evidence 1535: certified-kubernetes-application-developer/06_POD Design/096_Labels, Selectors and Annotations.extraction.md::E31
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 096_Labels, Selectors and Annotations.txt
- Line Context: Lines 1-1 from transcript
- Content: Note that this is an area where beginners tend to make a mistake.
- Multi-concept tags: Pods, Scheduling

### Evidence 1536: certified-kubernetes-application-developer/06_POD Design/096_Labels, Selectors and Annotations.extraction.md::E32
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 06_POD Design / 096_Labels, Selectors and Annotations.txt
- Line Context: Lines 1-1 from transcript
- Content: The labels defined under the templates section are the labels configured on the pods.
- Multi-concept tags: Pods, Scheduling

### Evidence 1537: certified-kubernetes-application-developer/06_POD Design/096_Labels, Selectors and Annotations.extraction.md::E33
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 096_Labels, Selectors and Annotations.txt
- Line Context: Lines 1-1 from transcript
- Content: The labels you see at the top are the labels of the replica set itself.
- Multi-concept tags: Pods, Scheduling

### Evidence 1538: certified-kubernetes-application-developer/06_POD Design/096_Labels, Selectors and Annotations.extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 096_Labels, Selectors and Annotations.txt
- Line Context: Lines 1-1 from transcript
- Content: We're not really concerned about the labels of the replica set for now, because we are trying to get the replica set to discover the pods.
- Multi-concept tags: Pods, Scheduling

### Evidence 1539: certified-kubernetes-application-developer/06_POD Design/096_Labels, Selectors and Annotations.extraction.md::E35
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 096_Labels, Selectors and Annotations.txt
- Line Context: Lines 1-1 from transcript
- Content: The labels on the replica set will be used.
- Multi-concept tags: Pods, Scheduling

### Evidence 1540: certified-kubernetes-application-developer/06_POD Design/096_Labels, Selectors and Annotations.extraction.md::E36
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 06_POD Design / 096_Labels, Selectors and Annotations.txt
- Line Context: Lines 1-1 from transcript
- Content: If you were to configure some other object to discover the replica set.
- Multi-concept tags: Pods, Scheduling

### Evidence 1541: certified-kubernetes-application-developer/06_POD Design/096_Labels, Selectors and Annotations.extraction.md::E37
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 06_POD Design / 096_Labels, Selectors and Annotations.txt
- Line Context: Lines 1-1 from transcript
- Content: In order to connect the replica set to the pods, we configure the selector field under the Replica set specification to match the labels defined on the pod.
- Multi-concept tags: Pods, Scheduling

### Evidence 1542: certified-kubernetes-application-developer/06_POD Design/096_Labels, Selectors and Annotations.extraction.md::E38
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 096_Labels, Selectors and Annotations.txt
- Line Context: Lines 1-1 from transcript
- Content: A single label will do if it matches correctly.
- Multi-concept tags: Pods, Scheduling

### Evidence 1543: certified-kubernetes-application-developer/06_POD Design/096_Labels, Selectors and Annotations.extraction.md::E39
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 096_Labels, Selectors and Annotations.txt
- Line Context: Lines 1-1 from transcript
- Content: However, if you feel there could be other pods parts with the same label, but with a different function.
- Multi-concept tags: Pods, Scheduling

### Evidence 1544: certified-kubernetes-application-developer/06_POD Design/096_Labels, Selectors and Annotations.extraction.md::E40
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 06_POD Design / 096_Labels, Selectors and Annotations.txt
- Line Context: Lines 1-1 from transcript
- Content: Then you could specify both the labels to ensure that the right parts are discovered by the replica set on creation.
- Multi-concept tags: Pods, Scheduling

### Evidence 1545: certified-kubernetes-application-developer/06_POD Design/096_Labels, Selectors and Annotations.extraction.md::E41
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 06_POD Design / 096_Labels, Selectors and Annotations.txt
- Line Context: Lines 1-1 from transcript
- Content: If the labels match, the replica set is created successfully.
- Multi-concept tags: Pods, Scheduling

### Evidence 1546: certified-kubernetes-application-developer/06_POD Design/096_Labels, Selectors and Annotations.extraction.md::E42
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 096_Labels, Selectors and Annotations.txt
- Line Context: Lines 1-1 from transcript
- Content: It works the same for other objects like a service.
- Multi-concept tags: Pods, Services, Scheduling

### Evidence 1547: certified-kubernetes-application-developer/06_POD Design/096_Labels, Selectors and Annotations.extraction.md::E43
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 06_POD Design / 096_Labels, Selectors and Annotations.txt
- Line Context: Lines 1-1 from transcript
- Content: When a service is created, it uses the selector defined in the service definition file to match the labels set on the pods in the replica set definition file.
- Multi-concept tags: Pods, Services, Scheduling

### Evidence 1548: certified-kubernetes-application-developer/06_POD Design/096_Labels, Selectors and Annotations.extraction.md::E44
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 096_Labels, Selectors and Annotations.txt
- Line Context: Lines 1-1 from transcript
- Content: Finally, let's look at annotations.
- Multi-concept tags: Pods, Scheduling

### Evidence 1549: certified-kubernetes-application-developer/06_POD Design/096_Labels, Selectors and Annotations.extraction.md::E45
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 096_Labels, Selectors and Annotations.txt
- Line Context: Lines 1-1 from transcript
- Content: While labels and selectors are used to group and select objects, annotations are used to record other details for informatory purpose.
- Multi-concept tags: Pods, Scheduling

### Evidence 1550: certified-kubernetes-application-developer/06_POD Design/096_Labels, Selectors and Annotations.extraction.md::E46
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 06_POD Design / 096_Labels, Selectors and Annotations.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, tool details like name version, build information, etc. or contact details, phone numbers, email IDs, etc. that may be used for some kind of integration purpose.
- Multi-concept tags: Pods, Scheduling, CKA-CKAD

### Evidence 1551: certified-kubernetes-application-developer/06_POD Design/096_Labels, Selectors and Annotations.extraction.md::E47
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 096_Labels, Selectors and Annotations.txt
- Line Context: Lines 1-1 from transcript
- Content: Well, that's it for this lecture on labels and selectors and annotations, head over to the Coding Exercises section and practice working with labels and selectors.
- Multi-concept tags: Pods, Scheduling

### Evidence 1552: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: -: Hey, in this video, we're gonna walk through the practice test for labels and selectors.
- Multi-concept tags: Pods, Scheduling, CKA-CKAD

### Evidence 1553: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E2
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the question is, we have deployed a number of pods.
- Multi-concept tags: Pods, Scheduling

### Evidence 1554: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: They are labeled with a tier ENV and BU.
- Multi-concept tags: Pods, Scheduling, Configuration

### Evidence 1555: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And how many pods exist in the dev environment?
- Multi-concept tags: Pods, Scheduling, Configuration

### Evidence 1556: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we have to use selectors.
- Multi-concept tags: Pods, Scheduling

### Evidence 1557: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E6
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So first let's do a get pods.
- Multi-concept tags: Pods, Scheduling

### Evidence 1558: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that there are a number of pods.
- Multi-concept tags: Pods, Scheduling

### Evidence 1559: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now we've got to filter it and identify the pods that are in the dev environment.
- Multi-concept tags: Pods, Scheduling, Configuration

### Evidence 1560: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So I'm assuming ENV is for environment.
- Multi-concept tags: Pods, Scheduling, Configuration

### Evidence 1561: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that's the label.
- Multi-concept tags: Pods, Scheduling

### Evidence 1562: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And the, so this is the key and this is the value.
- Multi-concept tags: Pods, Scheduling

### Evidence 1563: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E12
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So if we have to find pods using the selector and then we'll say ENV equals dev.
- Multi-concept tags: Pods, Scheduling, Configuration

### Evidence 1564: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that these are the pods in the dev environment.
- Multi-concept tags: Pods, Scheduling, Configuration

### Evidence 1565: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that's 1, 2, 3, 4, 5, 6, 7, 7 of them.
- Multi-concept tags: Pods, Scheduling

### Evidence 1566: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: If you want to find So now let's say since there are just seven, it's easy to for us to just count.
- Multi-concept tags: Pods, Scheduling

### Evidence 1567: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: But let's say there are a lot of them there that now where it becomes difficult to count mentally, one thing you could do is just do a word count, right?
- Multi-concept tags: Pods, Scheduling

### Evidence 1568: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So you could do a word count dash L.
- Multi-concept tags: Pods, Scheduling

### Evidence 1569: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now the problem with this is this also counts this top line which is the header.
- Multi-concept tags: Pods, Scheduling

### Evidence 1570: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So there's a way to print this without the headers and that's using the no headers option.
- Multi-concept tags: Pods, Scheduling

### Evidence 1571: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And when you run that you just get the output without the header.
- Multi-concept tags: Pods, Scheduling

### Evidence 1572: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E21
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And then we can do a word count on that.
- Multi-concept tags: Pods, Scheduling

### Evidence 1573: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And that's seven.
- Multi-concept tags: Pods, Scheduling

### Evidence 1574: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So seven is the answer here.
- Multi-concept tags: Pods, Scheduling

### Evidence 1575: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E24
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so the next question is how many pods are in the finance business unit?
- Multi-concept tags: Pods, Scheduling

### Evidence 1576: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we saw that the that label key is BUS for business unit.
- Multi-concept tags: Pods, Scheduling

### Evidence 1577: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And the business unit, we are looking at is finance.
- Multi-concept tags: Pods, Scheduling

### Evidence 1578: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we'll just use same command for this.
- Multi-concept tags: Pods, Scheduling, Configuration

### Evidence 1579: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And this time is six.
- Multi-concept tags: Pods, Scheduling

### Evidence 1580: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay?
- Multi-concept tags: Pods, Scheduling

### Evidence 1581: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And how many objects are in the prod environment including pods ReplicaSets and any other objects.
- Multi-concept tags: Pods, Deployments, Scheduling, Configuration

### Evidence 1582: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E31
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's use the same command and change the labels.
- Multi-concept tags: Pods, Scheduling, Configuration

### Evidence 1583: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the environment is prod and now we are only listing the pods.
- Multi-concept tags: Pods, Scheduling, Configuration

### Evidence 1584: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E33
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So to list all objects what you could do is give all instead of pods So all lists all the objects in that name space.
- Multi-concept tags: Pods, Scheduling

### Evidence 1585: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So here we have pods, we have surveys, and we have replica sets, right?
- Multi-concept tags: Pods, Scheduling

### Evidence 1586: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E35
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So if you count this, that's, let's do a word count.
- Multi-concept tags: Pods, Scheduling

### Evidence 1587: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E36
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And so that's number seven.
- Multi-concept tags: Pods, Scheduling

### Evidence 1588: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E37
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So there are seven objects.
- Multi-concept tags: Pods, Scheduling

### Evidence 1589: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E38
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And then the next question is to identify the pod which is part of the prod environment, the finance BU and the front end tier.
- Multi-concept tags: Pods, Scheduling, Configuration

### Evidence 1590: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E39
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So one that has all of it.
- Multi-concept tags: Pods, Scheduling

### Evidence 1591: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E40
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the environment is prod.
- Multi-concept tags: Pods, Scheduling, Configuration

### Evidence 1592: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E41
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Then we can just add additional labels separated by a comma.
- Multi-concept tags: Pods, Scheduling

### Evidence 1593: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E42
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: BU equals finance and tier is front end.
- Multi-concept tags: Pods, Scheduling

### Evidence 1594: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E43
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay?
- Multi-concept tags: Pods, Scheduling

### Evidence 1595: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E44
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that happens to be this particular pod, which is, it starts with ZZXTF.
- Multi-concept tags: Pods, Scheduling

### Evidence 1596: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E45
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: It's this one right here.
- Multi-concept tags: Pods, Scheduling

### Evidence 1597: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E46
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay?
- Multi-concept tags: Pods, Scheduling

### Evidence 1598: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E47
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: The final question is about, again, labels.
- Multi-concept tags: Pods, Scheduling

### Evidence 1599: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E48
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So there is a file called ReplicaSet definition file.
- Multi-concept tags: Pods, Deployments, Scheduling

### Evidence 1600: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E49
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And the request is to create the ReplicaSet.
- Multi-concept tags: Pods, Deployments, Scheduling

### Evidence 1601: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E50
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And, but there's an issue with this, so we've got to fix it.
- Multi-concept tags: Pods, Scheduling, Troubleshooting

### Evidence 1602: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E51
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's try creating it.
- Multi-concept tags: Pods, Scheduling

### Evidence 1603: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E52
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay?
- Multi-concept tags: Pods, Scheduling

### Evidence 1604: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E53
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And it says the ReplicaSet is invalid.
- Multi-concept tags: Pods, Deployments, Scheduling

### Evidence 1605: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E54
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Invalid value selector does not match template labels.
- Multi-concept tags: Pods, Scheduling

### Evidence 1606: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E55
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So selector is this and template labels, so this template and template labels is this.
- Multi-concept tags: Pods, Scheduling

### Evidence 1607: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E56
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the error message is that this does not match this.
- Multi-concept tags: Pods, Scheduling, Troubleshooting

### Evidence 1608: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E57
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now we know that for ReplicaSet to manage the pod so this is basically the pod definition.
- Multi-concept tags: Pods, Deployments, Scheduling

### Evidence 1609: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E58
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: The ReplicaSet needs to have these two match otherwise it won't be able to manage the pod.
- Multi-concept tags: Pods, Deployments, Scheduling

### Evidence 1610: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E59
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that's the validation error here.
- Multi-concept tags: Pods, Scheduling, Troubleshooting

### Evidence 1611: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E60
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna fix this by changing this to the value below.
- Multi-concept tags: Pods, Scheduling, Troubleshooting

### Evidence 1612: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E61
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Save that and let's create pod, sorry the ReplicaSet and it's created.
- Multi-concept tags: Pods, Deployments, Scheduling

### Evidence 1613: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E62
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: That's verify creation.
- Multi-concept tags: Pods, Scheduling

### Evidence 1614: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E63
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Yep, that's working.
- Multi-concept tags: Pods, Scheduling

### Evidence 1615: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E64
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so that's the end of this lab.
- Multi-concept tags: Pods, Scheduling

### Evidence 1616: certified-kubernetes-application-developer/06_POD Design/103_Deployment Strategy - Blue Green.extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 103_Deployment Strategy - Blue Green.txt
- Line Context: Lines 1-1 from transcript
- Content: We use the same label as selector on the service.
- Multi-concept tags: Pods, Deployments, Services, Scheduling

### Evidence 1617: certified-kubernetes-application-developer/06_POD Design/103_Deployment Strategy - Blue Green.extraction.md::E29
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 06_POD Design / 103_Deployment Strategy - Blue Green.txt
- Line Context: Lines 1-1 from transcript
- Content: Once all tests are passed, we route traffic from the service to the green deployment by switching the label selector on the service.
- Multi-concept tags: Pods, Deployments, Services, Scheduling

### Evidence 1618: certified-kubernetes-application-developer/06_POD Design/103_Deployment Strategy - Blue Green.extraction.md::E31
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 06_POD Design / 103_Deployment Strategy - Blue Green.txt
- Line Context: Lines 1-1 from transcript
- Content: So now that we have set the label version to v2 to the pods on the new deployment, all we need to do is switch the labels specified under the selector of the service to v2 as well.
- Multi-concept tags: Pods, Deployments, Services, Scheduling

### Evidence 1619: certified-kubernetes-application-developer/06_POD Design/103_Deployment Strategy - Blue Green.extraction.md::E45
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 103_Deployment Strategy - Blue Green.txt
- Line Context: Lines 1-1 from transcript
- Content: And once done, to switch traffic to the green version, we simply change the label on the service selector to v2.
- Multi-concept tags: Pods, Deployments, Services, Scheduling

### Evidence 1620: certified-kubernetes-application-developer/06_POD Design/104_Deployment Strategy - Canary.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 104_Deployment Strategy - Canary.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's call it App, which is set to front end, and we update the selector label in the service to match this common label.
- Multi-concept tags: Pods, Deployments, Services, Scheduling

### Evidence 1621: certified-kubernetes-application-developer/06_POD Design/104_Deployment Strategy - Canary.extraction.md::E40
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 06_POD Design / 104_Deployment Strategy - Canary.txt
- Line Context: Lines 1-1 from transcript
- Content: With canary deployment, as before, you deploy the application as a deployment, so let's call it MyApp-Primary, and we create a service with the selector set to label app and value front end.
- Multi-concept tags: Pods, Deployments, Services, Scheduling

### Evidence 1622: certified-kubernetes-application-developer/06_POD Design/104_Deployment Strategy - Canary.extraction.md::E44
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 06_POD Design / 104_Deployment Strategy - Canary.txt
- Line Context: Lines 1-1 from transcript
- Content: We need to route the traffic from the same service to both the deployments, and for this, we make sure that we use the same labels and selector combination under the pod spec labels to match what is already in the service definition.
- Multi-concept tags: Pods, Deployments, Services, Scheduling

### Evidence 1623: certified-kubernetes-application-developer/06_POD Design/106_Solution_ Deployment strategies.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 106_Solution_ Deployment strategies.txt
- Line Context: Lines 1-1 from transcript
- Content: And if you wanna just double check and verify that this is the right service, we could do a kubectl describe service, and we could just make sure that the labels or the selectors are a match up.
- Multi-concept tags: Pods, Deployments, Services, Scheduling, On-Prem

### Evidence 1624: certified-kubernetes-application-developer/06_POD Design/106_Solution_ Deployment strategies.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 106_Solution_ Deployment strategies.txt
- Line Context: Lines 1-1 from transcript
- Content: So here we are using a selector called app=frontend.
- Multi-concept tags: Pods, Deployments, Scheduling

### Evidence 1625: certified-kubernetes-application-developer/06_POD Design/106_Solution_ Deployment strategies.extraction.md::E14
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 06_POD Design / 106_Solution_ Deployment strategies.txt
- Line Context: Lines 1-1 from transcript
- Content: For the next question, it's asking, "What is the selector used by this service?" We already saw that it's going to be app=frontend.
- Multi-concept tags: Pods, Deployments, Services, Scheduling

### Evidence 1626: certified-kubernetes-application-developer/06_POD Design/106_Solution_ Deployment strategies.extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 106_Solution_ Deployment strategies.txt
- Line Context: Lines 1-1 from transcript
- Content: And if we go back to the service, you can see that we're using the selector app=frontend.
- Multi-concept tags: Pods, Deployments, Services, Scheduling

### Evidence 1627: certified-kubernetes-application-developer/06_POD Design/106_Solution_ Deployment strategies.extraction.md::E21
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 106_Solution_ Deployment strategies.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's take a look at the selector used on the frontend-v2. (mouse clicks) And we can see that it's also using app=frontend.
- Multi-concept tags: Pods, Deployments, Scheduling

### Evidence 1628: certified-kubernetes-application-developer/06_POD Design/108_CronJobs.extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 108_CronJobs.txt
- Line Context: Lines 1-1 from transcript
- Content: A CronJob is a job that can be scheduled just like Crontab in Linux, if you're familiar with it.
- Multi-concept tags: Pods, Scheduling

### Evidence 1629: certified-kubernetes-application-developer/06_POD Design/108_CronJobs.extraction.md::E6
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 06_POD Design / 108_CronJobs.txt
- Line Context: Lines 1-1 from transcript
- Content: Instead, you could create a CronJob to schedule and run it periodically.
- Multi-concept tags: Pods, Scheduling

### Evidence 1630: certified-kubernetes-application-developer/06_POD Design/108_CronJobs.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 108_CronJobs.txt
- Line Context: Lines 1-1 from transcript
- Content: Under spec you specify a schedule.
- Multi-concept tags: Pods, Scheduling

### Evidence 1631: certified-kubernetes-application-developer/06_POD Design/108_CronJobs.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-application-developer / 06_POD Design / 108_CronJobs.txt
- Line Context: Lines 1-1 from transcript
- Content: The schedule option takes a Cron-like format string where you can specify the time when the job is to be run.
- Multi-concept tags: Pods, Scheduling

### Evidence 1632: certified-kubernetes-application-developer/06_POD Design/110_Solution - Jobs and Cronjobs (optional).extraction.md::E80
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 06_POD Design / 110_Solution - Jobs and Cronjobs (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: This is gonna be the name, this is gonna be the image, and then, if you wanna configure the schedule, it's gonna be 30-21.
- Multi-concept tags: Pods, Scheduling

### Evidence 1633: certified-kubernetes-application-developer/06_POD Design/110_Solution - Jobs and Cronjobs (optional).extraction.md::E88
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 06_POD Design / 110_Solution - Jobs and Cronjobs (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And, we wanna update the schedule to be this, so I'm just gonna copy this, and then paste it in there.
- Multi-concept tags: Pods, Scheduling

### Evidence 1634: certified-kubernetes-application-developer/07_Services & Networking/111_Network Policies.extraction.md::E39
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 111_Network Policies.txt
- Line Context: Lines 1-1 from transcript
- Content: Labels and selectors.
- Multi-concept tags: Services, Networking, Scheduling

### Evidence 1635: certified-kubernetes-application-developer/07_Services & Networking/111_Network Policies.extraction.md::E40
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 111_Network Policies.txt
- Line Context: Lines 1-1 from transcript
- Content: We label the pod and use the same labels on the port selector field in the network policy.
- Multi-concept tags: Pods, Services, Networking, Scheduling, Platform Engineering

### Evidence 1636: certified-kubernetes-application-developer/07_Services & Networking/111_Network Policies.extraction.md::E47
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 111_Network Policies.txt
- Line Context: Lines 1-1 from transcript
- Content: Again using labels and selectors.
- Multi-concept tags: Services, Networking, Scheduling

### Evidence 1637: certified-kubernetes-application-developer/07_Services & Networking/111_Network Policies.extraction.md::E55
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 111_Network Policies.txt
- Line Context: Lines 1-1 from transcript
- Content: And then under the specs section we will first move the pod selector to apply this policy to the DB pod.
- Multi-concept tags: Pods, Services, Networking, Scheduling, Platform Engineering

### Evidence 1638: certified-kubernetes-application-developer/07_Services & Networking/112_Developing network policies.extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 112_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: And we do that using labels and selectors.
- Multi-concept tags: Services, Networking, Scheduling

### Evidence 1639: certified-kubernetes-application-developer/07_Services & Networking/112_Developing network policies.extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 112_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: So we do that by adding a pod selector field with the match labels option, and by specifying the label on the DB pod, which happens to be set to role DB, and that associates the network policy with the database pod and blocks out all traffic.
- Multi-concept tags: Pods, Services, Networking, Scheduling, Security-RBAC, Platform Engineering

### Evidence 1640: certified-kubernetes-application-developer/07_Services & Networking/112_Developing network policies.extraction.md::E44
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 112_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: And here we would use a pod selector and provide the labels of the API pod like this.
- Multi-concept tags: Pods, Services, Networking, Scheduling

### Evidence 1641: certified-kubernetes-application-developer/07_Services & Networking/112_Developing network policies.extraction.md::E55
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 112_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: For this, we add a new selector called as the namespace selector property along with the pod selector property.
- Multi-concept tags: Pods, Services, Networking, Scheduling

### Evidence 1642: certified-kubernetes-application-developer/07_Services & Networking/112_Developing network policies.extraction.md::E57
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 112_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: So that's what the namespace selector does.
- Multi-concept tags: Services, Networking, Scheduling

### Evidence 1643: certified-kubernetes-application-developer/07_Services & Networking/112_Developing network policies.extraction.md::E59
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 112_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: Now what if you only have the namespace selector and not the pod selector like this.
- Multi-concept tags: Pods, Services, Networking, Scheduling

### Evidence 1644: certified-kubernetes-application-developer/07_Services & Networking/112_Developing network policies.extraction.md::E63
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 112_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: Now, since this backup server is not deployed in our Kubernetes cluster, the pod selector and namespace selector fields that we use to define traffic from won't work because it's not a pod in the cluster.
- Multi-concept tags: Pods, Services, Networking, Scheduling, Architecture

### Evidence 1645: certified-kubernetes-application-developer/07_Services & Networking/112_Developing network policies.extraction.md::E68
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 112_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: So those are three supported selectors under the from section and ingress.
- Multi-concept tags: Services, Networking, Scheduling

### Evidence 1646: certified-kubernetes-application-developer/07_Services & Networking/112_Developing network policies.extraction.md::E70
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 112_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: And we'll see that in a few minutes we have pod selector to select pods by labels.
- Multi-concept tags: Pods, Services, Networking, Scheduling

### Evidence 1647: certified-kubernetes-application-developer/07_Services & Networking/112_Developing network policies.extraction.md::E71
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 112_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: We have namespace selector to select namespaces by labels.
- Multi-concept tags: Services, Networking, Scheduling

### Evidence 1648: certified-kubernetes-application-developer/07_Services & Networking/112_Developing network policies.extraction.md::E72
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 112_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: And we have the IP block selector to select IP address ranges.
- Multi-concept tags: Services, Networking, Scheduling

### Evidence 1649: certified-kubernetes-application-developer/07_Services & Networking/112_Developing network policies.extraction.md::E76
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 112_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: The first rule has the pod selector and the namespace selector together, and the second rule has the IP block selector.
- Multi-concept tags: Pods, Services, Networking, Scheduling

### Evidence 1650: certified-kubernetes-application-developer/07_Services & Networking/112_Developing network policies.extraction.md::E79
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 112_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: However, within the first rule we have two selectors.
- Multi-concept tags: Services, Networking, Scheduling

### Evidence 1651: certified-kubernetes-application-developer/07_Services & Networking/112_Developing network policies.extraction.md::E83
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 112_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: Now what if we were to separate them by adding a dash before the namespace selector?
- Multi-concept tags: Services, Networking, Scheduling

### Evidence 1652: certified-kubernetes-application-developer/07_Services & Networking/112_Developing network policies.extraction.md::E101
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 112_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: Under two we could use any of the selectors such as a pod, a namespace or an IP block selector.
- Multi-concept tags: Pods, Services, Networking, Scheduling

### Evidence 1653: certified-kubernetes-application-developer/07_Services & Networking/112_Developing network policies.extraction.md::E102
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 112_Developing network policies.txt
- Line Context: Lines 1-1 from transcript
- Content: And in this case, since the database server is external, we use IP block selector and provide the Cidr block for the server.
- Multi-concept tags: Services, Networking, Scheduling

### Evidence 1654: certified-kubernetes-application-developer/07_Services & Networking/114_Solution - Network Policies (optional).extraction.md::E33
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 114_Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So if you look at this, you have a pod selector and it says name equals payroll.
- Multi-concept tags: Pods, Services, Networking, Scheduling

### Evidence 1655: certified-kubernetes-application-developer/07_Services & Networking/114_Solution - Network Policies (optional).extraction.md::E47
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 114_Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that, we see the pod selector, which we know and it's allowing ingress traffic to port 8080 from the pod.
- Multi-concept tags: Pods, Services, Networking, Scheduling

### Evidence 1656: certified-kubernetes-application-developer/07_Services & Networking/114_Solution - Network Policies (optional).extraction.md::E56
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 114_Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So this is to the port within the pod, from we have a pod selector and the name is internal.
- Multi-concept tags: Pods, Services, Networking, Scheduling

### Evidence 1657: certified-kubernetes-application-developer/07_Services & Networking/114_Solution - Network Policies (optional).extraction.md::E109
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 114_Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Like the pod selector should be for the internal pod.
- Multi-concept tags: Pods, Services, Networking, Scheduling

### Evidence 1658: certified-kubernetes-application-developer/07_Services & Networking/114_Solution - Network Policies (optional).extraction.md::E121
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 114_Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Then you have the pod selector.
- Multi-concept tags: Pods, Services, Networking, Scheduling

### Evidence 1659: certified-kubernetes-application-developer/07_Services & Networking/114_Solution - Network Policies (optional).extraction.md::E132
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 114_Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And so the first rule is, so we need to specify the pod selector.
- Multi-concept tags: Pods, Services, Networking, Scheduling

### Evidence 1660: certified-kubernetes-application-developer/07_Services & Networking/114_Solution - Network Policies (optional).extraction.md::E133
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 114_Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So pod selector and match labels.
- Multi-concept tags: Pods, Services, Networking, Scheduling

### Evidence 1661: certified-kubernetes-application-developer/07_Services & Networking/114_Solution - Network Policies (optional).extraction.md::E146
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 114_Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And within this we're gonna have pod selector, then we're gonna have match labels, and then we have MySQL, so that's the second pod.
- Multi-concept tags: Pods, Services, Networking, Scheduling

### Evidence 1662: certified-kubernetes-application-developer/07_Services & Networking/114_Solution - Network Policies (optional).extraction.md::E155
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 114_Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, let's do a describe internal policy and we verify the pod selector and egress traffic configuration.
- Multi-concept tags: Pods, Services, Networking, Scheduling, On-Prem, Platform Engineering

### Evidence 1663: certified-kubernetes-application-developer/07_Services & Networking/115_Ingress Networking.extraction.md::E106
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 115_Ingress Networking.txt
- Line Context: Lines 1-1 from transcript
- Content: So we create a service of type node port with the nginx ingress label selector to link the service to the deployment.
- Multi-concept tags: Deployments, Services, Networking, Scheduling, Architecture

### Evidence 1664: certified-kubernetes-application-developer/07_Services & Networking/120_Solution_ Ingress Networking - 2.extraction.md::E89
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 120_Solution_ Ingress Networking - 2.txt
- Line Context: Lines 1-1 from transcript
- Content: So, and the right selector, so expose should take care of using the right selector for this, for the deployment.
- Multi-concept tags: Deployments, Services, Networking, Scheduling

### Evidence 1665: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E9
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: However, if there are multiple possible matches for a single claim and you would like to specifically use a particular volume, you could still use labels and selectors to bind to the right volumes.
- Multi-concept tags: Storage, Scheduling

### Evidence 1666: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E97
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, we don't need the advanced selectors.
- Multi-concept tags: Storage, Scheduling

### Evidence 1667: certified-kubernetes-application-developer/08_State Persistence/136_Headless Services.extraction.md::E43
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 136_Headless Services.txt
- Line Context: Lines 1-1 from transcript
- Content: Specify the ports, the selector to select the pods.
- Multi-concept tags: Pods, Services, Scheduling

### Evidence 1668: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E37
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets.txt
- Line Context: Lines 1-1 from transcript
- Content: What if one of these pods fail and is recreated or rescheduled onto a note?
- Multi-concept tags: Pods, Storage, Scheduling, Troubleshooting

### Evidence 1669: certified-kubernetes-application-developer/09_Security/138_Kubernetes Security Primitives.extraction.md::E24
- Type: Architecture
- Source: certified-kubernetes-application-developer / 09_Security / 138_Kubernetes Security Primitives.txt
- Line Context: Lines 1-1 from transcript
- Content: All communication with the cluster between the various components such as the etcd cluster, the kube controller, manager, scheduler, API server, as well as those running on the worker nodes such as the Kubelet and the kube proxy, is secured using TLS encryption.
- Multi-concept tags: Scheduling, Security-RBAC, Architecture

### Evidence 1670: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/187_Patches Intro.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 187_Patches Intro.txt
- Line Context: Lines 1-1 from transcript
- Content: And so we can match on a couple of different properties like kind or the version or the name of the object or the namespace label selector or annotation selector.
- Multi-concept tags: Scheduling, Configuration

### Evidence 1671: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E83
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Line Context: Lines 1-1 from transcript
- Content: So traffic from where, so I'll say, "-from." And then here, we're gonna do a Pod selector.
- Multi-concept tags: Pods, Scheduling, CKA-CKAD

### Evidence 1672: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E51
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Line Context: Lines 1-1 from transcript
- Content: From a schedule perspective, it's saying that this should run every one minute.
- Multi-concept tags: Scheduling, CKA-CKAD

### Evidence 1673: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E90
- Type: Concept
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Line Context: Lines 1-1 from transcript
- Content: And the final requirement is that we have to make sure this pod is scheduled on the control plane and no other node in the cluster.
- Multi-concept tags: Pods, Scheduling, Architecture, CKA-CKAD

### Evidence 1674: certified-kubernetes-application-developer/15_Mock Exams/206_Mock Exam -1 (Solution).extraction.md::E141
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 206_Mock Exam -1 (Solution).txt
- Line Context: Lines 1-1 from transcript
- Content: And then for pod selector, we have to specify the label that we gave the pod.
- Multi-concept tags: Pods, Scheduling, CKA-CKAD

### Evidence 1675: certified-kubernetes-application-developer/15_Mock Exams/206_Mock Exam -1 (Solution).extraction.md::E143
- Type: Concept
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 206_Mock Exam -1 (Solution).txt
- Line Context: Lines 1-1 from transcript
- Content: So for the pod selector, it's gonna be app redis.
- Multi-concept tags: Pods, Scheduling, CKA-CKAD

### Evidence 1676: certified-kubernetes-application-developer/15_Mock Exams/206_Mock Exam -1 (Solution).extraction.md::E146
- Type: Concept
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 206_Mock Exam -1 (Solution).txt
- Line Context: Lines 1-1 from transcript
- Content: We wanna delete everything except for the pod selector.
- Multi-concept tags: Pods, Scheduling, CKA-CKAD

### Evidence 1677: certified-kubernetes-application-developer/15_Mock Exams/206_Mock Exam -1 (Solution).extraction.md::E147
- Type: Concept
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 206_Mock Exam -1 (Solution).txt
- Line Context: Lines 1-1 from transcript
- Content: So, we just wanna define a pod selector.
- Multi-concept tags: Pods, Scheduling, CKA-CKAD

### Evidence 1678: certified-kubernetes-application-developer/15_Mock Exams/208_Mock Exam -2 (Solution).extraction.md::E19
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 208_Mock Exam -2 (Solution).txt
- Line Context: Lines 1-1 from transcript
- Content: For the next question, we have to add a taint to the node, node one of the cluster using the following specs, and then after that we have to create a pod called alpha with an image of Redis and with a toleration to node one.
- Multi-concept tags: Pods, Scheduling, Architecture, CKA-CKAD

### Evidence 1679: certified-kubernetes-application-developer/15_Mock Exams/208_Mock Exam -2 (Solution).extraction.md::E21
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 208_Mock Exam -2 (Solution).txt
- Line Context: Lines 1-1 from transcript
- Content: That's gonna be kubectl taint, and then node.
- Multi-concept tags: Scheduling, Architecture, CKA-CKAD

### Evidence 1680: certified-kubernetes-application-developer/15_Mock Exams/208_Mock Exam -2 (Solution).extraction.md::E24
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 208_Mock Exam -2 (Solution).txt
- Line Context: Lines 1-1 from transcript
- Content: So we've got node01 here. we'll do kubectl taint node node01, and then it's gonna be app_type=alpha, effect is gonna be NoSchedule.
- Multi-concept tags: Scheduling, Architecture, CKA-CKAD

### Evidence 1681: certified-kubernetes-application-developer/15_Mock Exams/208_Mock Exam -2 (Solution).extraction.md::E25
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 208_Mock Exam -2 (Solution).txt
- Line Context: Lines 1-1 from transcript
- Content: And so now if I do a kubectl describe node node1, and we go under taints near the top, we should see the new taint that we just created.
- Multi-concept tags: Scheduling, Architecture, CKA-CKAD, On-Prem

### Evidence 1682: certified-kubernetes-application-developer/15_Mock Exams/208_Mock Exam -2 (Solution).extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 208_Mock Exam -2 (Solution).txt
- Line Context: Lines 1-1 from transcript
- Content: And so in the pod spec we have to add a toleration.
- Multi-concept tags: Pods, Scheduling, CKA-CKAD

### Evidence 1683: certified-kubernetes-application-developer/15_Mock Exams/208_Mock Exam -2 (Solution).extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 208_Mock Exam -2 (Solution).txt
- Line Context: Lines 1-1 from transcript
- Content: So I'm gonna go under spec add toleration.
- Multi-concept tags: Scheduling, CKA-CKAD

### Evidence 1684: certified-kubernetes-application-developer/15_Mock Exams/208_Mock Exam -2 (Solution).extraction.md::E31
- Type: Concept
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 208_Mock Exam -2 (Solution).txt
- Line Context: Lines 1-1 from transcript
- Content: The effect is going to be the same NoSchedule.
- Multi-concept tags: Scheduling, CKA-CKAD

### Evidence 1685: certified-kubernetes-application-developer/15_Mock Exams/208_Mock Exam -2 (Solution).extraction.md::E42
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 208_Mock Exam -2 (Solution).txt
- Line Context: Lines 1-1 from transcript
- Content: Now for the next step, we have to create a new deployment with the following specs of a name of beta-apps, with an image of an NGINX and then a replicas of three, and then configure the node affinity.
- Multi-concept tags: Deployments, Scheduling, Architecture, CKA-CKAD

### Evidence 1686: certified-kubernetes-application-developer/15_Mock Exams/208_Mock Exam -2 (Solution).extraction.md::E45
- Type: Concept
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 208_Mock Exam -2 (Solution).txt
- Line Context: Lines 1-1 from transcript
- Content: And so we're gonna have to add the node affinity configuration.
- Multi-concept tags: Scheduling, Architecture, CKA-CKAD

### Evidence 1687: certified-kubernetes-application-developer/15_Mock Exams/208_Mock Exam -2 (Solution).extraction.md::E46
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 208_Mock Exam -2 (Solution).txt
- Line Context: Lines 1-1 from transcript
- Content: So if you go to the Kubernetes documentation, under this section here, node affinity, this is gonna give you an example of how to configure a node affinity.
- Multi-concept tags: Scheduling, Architecture, CKA-CKAD

### Evidence 1688: learn-kubernetes/02_Kubernetes Overview/007_Kubernetes Architecture.extraction.md::E21
- Type: Architecture
- Source: learn-kubernetes / 02_Kubernetes Overview / 007_Kubernetes Architecture.txt
- Line Context: Lines 1-1 from transcript
- Content: When you install Kubernetes on a system, you're actually installing the following components an API server and etcd service, a Kubernetes service, a container, runtime controllers and schedulers.
- Multi-concept tags: Services, Scheduling, Architecture

### Evidence 1689: learn-kubernetes/02_Kubernetes Overview/007_Kubernetes Architecture.extraction.md::E27
- Type: Exam Tip
- Source: learn-kubernetes / 02_Kubernetes Overview / 007_Kubernetes Architecture.txt
- Line Context: Lines 1-1 from transcript
- Content: Etcd is responsible for implementing locks within the cluster to ensure that there are no conflicts between the masters, the scheduler is responsible for distributing work or containers across multiple nodes.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1690: learn-kubernetes/02_Kubernetes Overview/007_Kubernetes Architecture.extraction.md::E51
- Type: Architecture
- Source: learn-kubernetes / 02_Kubernetes Overview / 007_Kubernetes Architecture.txt
- Line Context: Lines 1-1 from transcript
- Content: The master also has the control manager and the scheduler.
- Multi-concept tags: Scheduling, Architecture

### Evidence 1691: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E36
- Type: Architecture
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Line Context: Lines 1-1 from transcript
- Content: Earlier, we talked about the different components of Kubernetes that make up a control plane and worker nodes such as the API server, etcd key value store controllers and scheduler on the master or the control plane, and then you have the Kubernetes and container runtime on the worker nodes.
- Multi-concept tags: Scheduling, Architecture, On-Prem

### Evidence 1692: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/026_Replication Controllers and ReplicaSets.extraction.md::E79
- Type: Concept
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 026_Replication Controllers and ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: Replica set requires a selector definition.
- Multi-concept tags: Pods, Deployments, Scheduling

### Evidence 1693: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/026_Replication Controllers and ReplicaSets.extraction.md::E80
- Type: Concept
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 026_Replication Controllers and ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: The selector section helps the replica set identify what pods fall under it, but why would you have to specify what pods fall under it if we have provided the contents of the pod definition file itself in the template.
- Multi-concept tags: Pods, Deployments, Scheduling

### Evidence 1694: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/026_Replication Controllers and ReplicaSets.extraction.md::E82
- Type: Exam Tip
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 026_Replication Controllers and ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: Say for example, the reports created before the creation of the replica set that matched labels specified in the selector.
- Multi-concept tags: Pods, Deployments, Scheduling, CKA-CKAD

### Evidence 1695: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/026_Replication Controllers and ReplicaSets.extraction.md::E84
- Type: Comparison
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 026_Replication Controllers and ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: I will elaborate this in the next slide, but before we get into that, I would like to mention that the selector is one of the major differences between replication controller and replica set.
- Multi-concept tags: Pods, Deployments, Scheduling, Platform Engineering

### Evidence 1696: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/026_Replication Controllers and ReplicaSets.extraction.md::E85
- Type: Concept
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 026_Replication Controllers and ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: The selector is not a required field in case of a replication controller, but it is still available when you skip it, as we did in the previous slide, it assumes it to be the same as the labels provided in the Pod definition file.
- Multi-concept tags: Pods, Deployments, Scheduling, Platform Engineering

### Evidence 1697: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/026_Replication Controllers and ReplicaSets.extraction.md::E87
- Type: Concept
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 026_Replication Controllers and ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: The match labels selector simply matches the labels specified under it to the labels on the pods.
- Multi-concept tags: Pods, Deployments, Scheduling

### Evidence 1698: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/026_Replication Controllers and ReplicaSets.extraction.md::E88
- Type: Concept
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 026_Replication Controllers and ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: The replica set selector also provides many other options for matching labels that were not available in a replication controller.
- Multi-concept tags: Pods, Deployments, Scheduling

### Evidence 1699: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/026_Replication Controllers and ReplicaSets.extraction.md::E91
- Type: Concept
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 026_Replication Controllers and ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: So what is the deal with labels and selectors?
- Multi-concept tags: Pods, Deployments, Scheduling

### Evidence 1700: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/026_Replication Controllers and ReplicaSets.extraction.md::E104
- Type: Concept
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 026_Replication Controllers and ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: We could now provide these labels as a filter for replica set under the selector section, we use the Match labels filter and provide the same label that we used while creating the pods.
- Multi-concept tags: Pods, Deployments, Scheduling

### Evidence 1701: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/026_Replication Controllers and ReplicaSets.extraction.md::E106
- Type: Concept
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 026_Replication Controllers and ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: The same concept of labels and selectors is used in many other places throughout Kubernetes.
- Multi-concept tags: Pods, Deployments, Scheduling

### Evidence 1702: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/026_Replication Controllers and ReplicaSets.extraction.md::E108
- Type: Concept
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 026_Replication Controllers and ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: In the replica set specification section, we learned that there are three sections template, replicas, and selector.
- Multi-concept tags: Pods, Deployments, Scheduling

### Evidence 1703: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/026_Replication Controllers and ReplicaSets.extraction.md::E109
- Type: Concept
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 026_Replication Controllers and ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: We need three replicas and we have updated our selector based on our discussion in the previous slide.
- Multi-concept tags: Pods, Deployments, Scheduling, Platform Engineering

### Evidence 1704: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/027_Demo - ReplicaSets.extraction.md::E15
- Type: Concept
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 027_Demo - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: And as you can see for replica set, uh, the Visual Studio code extension, the ML extension is, uh, automatically understood that the object is replica set and that it needs a selector.
- Multi-concept tags: Pods, Deployments, Scheduling

### Evidence 1705: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/027_Demo - ReplicaSets.extraction.md::E16
- Type: Implementation Step
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 027_Demo - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: So it has already created the selector field for us.
- Multi-concept tags: Pods, Deployments, Scheduling

### Evidence 1706: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/027_Demo - ReplicaSets.extraction.md::E43
- Type: Concept
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 027_Demo - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: So one thing to note here is the labels used for the pod and the labels used under the selector at the top.
- Multi-concept tags: Pods, Deployments, Scheduling

### Evidence 1707: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/027_Demo - ReplicaSets.extraction.md::E46
- Type: Implementation Step
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 027_Demo - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: The it is the the two labels, um, that are set on the pod and then the one set on the selector that matters.
- Multi-concept tags: Pods, Deployments, Scheduling

### Evidence 1708: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/027_Demo - ReplicaSets.extraction.md::E88
- Type: Concept
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 027_Demo - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: Um, so here we see the, the name of the replica set the selectors, the label for the replica sets itself.
- Multi-concept tags: Pods, Deployments, Scheduling

### Evidence 1709: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/027_Demo - ReplicaSets.extraction.md::E89
- Type: Concept
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 027_Demo - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: If you scroll down, you'll see the labels that the selector above makes use of, which is the labels on the pod.
- Multi-concept tags: Pods, Deployments, Scheduling

### Evidence 1710: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/027_Demo - ReplicaSets.extraction.md::E100
- Type: Implementation Step
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 027_Demo - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's try to create a new pod by making use of the the same label that the replica set selector uses, uh, which is, um, the app set to my app.
- Multi-concept tags: Pods, Deployments, Scheduling

### Evidence 1711: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/027_Demo - ReplicaSets.extraction.md::E107
- Type: Implementation Step
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 027_Demo - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: Um, when we create a new pod outside of the replica set, uh, but one that has the same labels that the replica set selector uses.
- Multi-concept tags: Pods, Deployments, Scheduling

### Evidence 1712: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/029_Solution - ReplicaSets.extraction.md::E109
- Type: Concept
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 029_Solution - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: So it says there's an invalid value selector does not match template labels so let's take a look at.
- Multi-concept tags: Pods, Deployments, Scheduling

### Evidence 1713: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/029_Solution - ReplicaSets.extraction.md::E115
- Type: Concept
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 029_Solution - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: So you have replicas, you have selector.
- Multi-concept tags: Pods, Deployments, Scheduling

### Evidence 1714: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/029_Solution - ReplicaSets.extraction.md::E120
- Type: Concept
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 029_Solution - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: Selector does not match the template labels.
- Multi-concept tags: Pods, Deployments, Scheduling

### Evidence 1715: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/030_Deployments.extraction.md::E22
- Type: Concept
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 030_Deployments.txt
- Line Context: Lines 1-1 from transcript
- Content: If we walk through the contents of the file, it has an API version which is apps forward slash v1 metadata, which has name and labels, and a spec that has template replicas and selector.
- Multi-concept tags: Pods, Deployments, Scheduling

### Evidence 1716: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/031_Demo - Deployments.extraction.md::E38
- Type: Implementation Step
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 031_Demo - Deployments.txt
- Line Context: Lines 1-1 from transcript
- Content: So the name of the pod, the label of the deployment itself, um, and uh, the, the front end, uh, label that we set, um, and we see the selector that we used, uh, the same as that of the replica set, which is equal to my app, and it has three desired and three available pods and which are in a running state.
- Multi-concept tags: Pods, Deployments, Scheduling

### Evidence 1717: learn-kubernetes/07_Services/039_Services - NodePort.extraction.md::E85
- Type: Concept
- Source: learn-kubernetes / 07_Services / 039_Services - NodePort.txt
- Line Context: Lines 1-1 from transcript
- Content: We will use labels and selectors to link these together.
- Multi-concept tags: Services, Scheduling, Architecture

### Evidence 1718: learn-kubernetes/07_Services/039_Services - NodePort.extraction.md::E88
- Type: Concept
- Source: learn-kubernetes / 07_Services / 039_Services - NodePort.txt
- Line Context: Lines 1-1 from transcript
- Content: So we have a new property in the specs section and that is called selector.
- Multi-concept tags: Services, Scheduling, Architecture

### Evidence 1719: learn-kubernetes/07_Services/039_Services - NodePort.extraction.md::E89
- Type: Implementation Step
- Source: learn-kubernetes / 07_Services / 039_Services - NodePort.txt
- Line Context: Lines 1-1 from transcript
- Content: Just like in a replica set and deployment definition, files under the selector provide a list of labels to identify the pod.
- Multi-concept tags: Pods, Deployments, Services, Scheduling, Architecture

### Evidence 1720: learn-kubernetes/07_Services/039_Services - NodePort.extraction.md::E91
- Type: Concept
- Source: learn-kubernetes / 07_Services / 039_Services - NodePort.txt
- Line Context: Lines 1-1 from transcript
- Content: Pull the labels from the pod definition file and place it under the selector section.
- Multi-concept tags: Pods, Services, Scheduling, Architecture

### Evidence 1721: learn-kubernetes/07_Services/039_Services - NodePort.extraction.md::E106
- Type: Concept
- Source: learn-kubernetes / 07_Services / 039_Services - NodePort.txt
- Line Context: Lines 1-1 from transcript
- Content: The same label is used as a selector during the creation of the service.
- Multi-concept tags: Services, Scheduling, Architecture

### Evidence 1722: learn-kubernetes/07_Services/040_Demo - Services.extraction.md::E28
- Type: Implementation Step
- Source: learn-kubernetes / 07_Services / 040_Demo - Services.txt
- Line Context: Lines 1-1 from transcript
- Content: Next we're going to add a selector, which helps us bind our service to the port with the same label so quickly.
- Multi-concept tags: Services, Scheduling

### Evidence 1723: learn-kubernetes/07_Services/040_Demo - Services.extraction.md::E30
- Type: Concept
- Source: learn-kubernetes / 07_Services / 040_Demo - Services.txt
- Line Context: Lines 1-1 from transcript
- Content: So let us add the same value here under the selector section.
- Multi-concept tags: Services, Scheduling

### Evidence 1724: learn-kubernetes/07_Services/041_Services - ClusterIP.extraction.md::E31
- Type: Concept
- Source: learn-kubernetes / 07_Services / 041_Services - ClusterIP.txt
- Line Context: Lines 1-1 from transcript
- Content: To link the service to a set of ports, we use selector.
- Multi-concept tags: Services, Scheduling, Architecture

### Evidence 1725: learn-kubernetes/07_Services/041_Services - ClusterIP.extraction.md::E32
- Type: Best Practice
- Source: learn-kubernetes / 07_Services / 041_Services - ClusterIP.txt
- Line Context: Lines 1-1 from transcript
- Content: We will refer to the pod definition file and copy the labels from it and move it under selector, and that should be it.
- Multi-concept tags: Pods, Services, Scheduling, Architecture

### Evidence 1726: learn-kubernetes/07_Services/044_Solution - Services.extraction.md::E45
- Type: Concept
- Source: learn-kubernetes / 07_Services / 044_Solution - Services.txt
- Line Context: Lines 1-1 from transcript
- Content: As selectors to the service.
- Multi-concept tags: Services, Scheduling

### Evidence 1727: learn-kubernetes/07_Services/044_Solution - Services.extraction.md::E48
- Type: Concept
- Source: learn-kubernetes / 07_Services / 044_Solution - Services.txt
- Line Context: Lines 1-1 from transcript
- Content: So from from the perspective of a service endpoints are basically these the parts, the parts that the service has identified that is going to direct traffic to based on the selector specified on the service and the labels on the parts.
- Multi-concept tags: Services, Scheduling

### Evidence 1728: learn-kubernetes/07_Services/044_Solution - Services.extraction.md::E49
- Type: Implementation Step
- Source: learn-kubernetes / 07_Services / 044_Solution - Services.txt
- Line Context: Lines 1-1 from transcript
- Content: Now when we create a service for a set of parts, now we might think that depending on the label and the selector specified, the service is going to direct traffic to those parts.
- Multi-concept tags: Services, Scheduling, Troubleshooting

### Evidence 1729: learn-kubernetes/07_Services/044_Solution - Services.extraction.md::E59
- Type: Concept
- Source: learn-kubernetes / 07_Services / 044_Solution - Services.txt
- Line Context: Lines 1-1 from transcript
- Content: The selector to say f r something that's different.
- Multi-concept tags: Services, Scheduling

### Evidence 1730: learn-kubernetes/07_Services/044_Solution - Services.extraction.md::E65
- Type: Implementation Step
- Source: learn-kubernetes / 07_Services / 044_Solution - Services.txt
- Line Context: Lines 1-1 from transcript
- Content: So and then that's when we can look at the labels and selectors in more detail to identify the root cause.
- Multi-concept tags: Services, Scheduling

### Evidence 1731: learn-kubernetes/07_Services/044_Solution - Services.extraction.md::E68
- Type: Concept
- Source: learn-kubernetes / 07_Services / 044_Solution - Services.txt
- Line Context: Lines 1-1 from transcript
- Content: That that particular service was identified based on the selectors and the labels set on those parts.
- Multi-concept tags: Services, Scheduling

### Evidence 1732: learn-kubernetes/07_Services/044_Solution - Services.extraction.md::E97
- Type: Concept
- Source: learn-kubernetes / 07_Services / 044_Solution - Services.txt
- Line Context: Lines 1-1 from transcript
- Content: So the node port and all the different ports and also specify the selector.
- Multi-concept tags: Services, Scheduling, Architecture

### Evidence 1733: learn-kubernetes/07_Services/044_Solution - Services.extraction.md::E110
- Type: Concept
- Source: learn-kubernetes / 07_Services / 044_Solution - Services.txt
- Line Context: Lines 1-1 from transcript
- Content: And the selector name is simple web app.
- Multi-concept tags: Services, Scheduling

### Evidence 1734: learn-kubernetes/08_Microservices Architecture/047_Demo - Deploying Voting App on Kubernetes.extraction.md::E123
- Type: Implementation Step
- Source: learn-kubernetes / 08_Microservices Architecture / 047_Demo - Deploying Voting App on Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: And then after that we have to provide a selector.
- Multi-concept tags: Services, Scheduling, Architecture

### Evidence 1735: learn-kubernetes/08_Microservices Architecture/047_Demo - Deploying Voting App on Kubernetes.extraction.md::E146
- Type: Implementation Step
- Source: learn-kubernetes / 08_Microservices Architecture / 047_Demo - Deploying Voting App on Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: And then finally we need a selector.
- Multi-concept tags: Services, Scheduling, Architecture

### Evidence 1736: learn-kubernetes/08_Microservices Architecture/047_Demo - Deploying Voting App on Kubernetes.extraction.md::E175
- Type: Implementation Step
- Source: learn-kubernetes / 08_Microservices Architecture / 047_Demo - Deploying Voting App on Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: Then we need a selector.
- Multi-concept tags: Services, Scheduling, Architecture

### Evidence 1737: learn-kubernetes/08_Microservices Architecture/047_Demo - Deploying Voting App on Kubernetes.extraction.md::E196
- Type: Implementation Step
- Source: learn-kubernetes / 08_Microservices Architecture / 047_Demo - Deploying Voting App on Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: And then we have to change the selector to be of whatever the result app is, which is result.
- Multi-concept tags: Services, Scheduling, Architecture

### Evidence 1738: learn-kubernetes/08_Microservices Architecture/048_Demo - Deploying Voting App on Kubernetes With Deployments.extraction.md::E58
- Type: Implementation Step
- Source: learn-kubernetes / 08_Microservices Architecture / 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Line Context: Lines 1-1 from transcript
- Content: And then we also have to provide a selector.
- Multi-concept tags: Deployments, Services, Scheduling, Architecture

### Evidence 1739: learn-kubernetes/08_Microservices Architecture/048_Demo - Deploying Voting App on Kubernetes With Deployments.extraction.md::E77
- Type: Implementation Step
- Source: learn-kubernetes / 08_Microservices Architecture / 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Line Context: Lines 1-1 from transcript
- Content: And then the last thing we have to change is the selector.
- Multi-concept tags: Deployments, Services, Scheduling, Architecture

### Evidence 1740: learn-kubernetes/08_Microservices Architecture/048_Demo - Deploying Voting App on Kubernetes With Deployments.extraction.md::E92
- Type: Implementation Step
- Source: learn-kubernetes / 08_Microservices Architecture / 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Line Context: Lines 1-1 from transcript
- Content: And then we also need to make sure that the selector is pointing to the right label.
- Multi-concept tags: Deployments, Services, Scheduling, Architecture

### Evidence 1741: learn-kubernetes/08_Microservices Architecture/048_Demo - Deploying Voting App on Kubernetes With Deployments.extraction.md::E99
- Type: Implementation Step
- Source: learn-kubernetes / 08_Microservices Architecture / 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Line Context: Lines 1-1 from transcript
- Content: And then we have to make sure we update the selector.
- Multi-concept tags: Deployments, Services, Scheduling, Architecture

### Evidence 1742: learn-kubernetes/08_Microservices Architecture/048_Demo - Deploying Voting App on Kubernetes With Deployments.extraction.md::E108
- Type: Implementation Step
- Source: learn-kubernetes / 08_Microservices Architecture / 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Line Context: Lines 1-1 from transcript
- Content: And then we want to make sure that we update the label to be worker as well for the selector.
- Multi-concept tags: Deployments, Services, Scheduling, Architecture
