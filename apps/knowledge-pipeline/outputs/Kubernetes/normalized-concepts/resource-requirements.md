# Normalized Concept: Resource Requirements

- Concept Key: resource-requirements
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 639

## 1. Definition
- Let's look at resource requirements.
- Let us start by looking at a three node Kubernetes cluster.
- Each node has a set of CPU and memory resources available.
- Now every pod requires a set of resources to run.
- Now, whenever a pod is placed on a node, it consumes the resources available on that node.
- Now, as we have discussed before, it is the Kubernetes Scheduler that decides which node a pod goes to.
- The scheduler takes into consideration the amount of resources required by a pod and those available on the nodes, and identifies the best node to place a pod on.
- In this case, the scheduler schedules a new pod on node two because there are sufficient resources available on that node.
- If nodes have no sufficient resources available.
- And if you look at the events using the cube control describe pod command, you will see there is an insufficient CPU.

## 2. First-Principles Mental Model
- Now, as we have discussed before, it is the Kubernetes Scheduler that decides which node a pod goes to.
- The scheduler takes into consideration the amount of resources required by a pod and those available on the nodes, and identifies the best node to place a pod on.
- In this case, the scheduler schedules a new pod on node two because there are sufficient resources available on that node.
- So when the scheduler tries to place the pod on a node, it uses these numbers to identify a node which has sufficient amount of resources available.
- So when the scheduler gets a request to place this pod, it looks for a node that has this amount of resources available.
- Now when the pod is created, Kubernetes sets new limits for the container.
- The next one is where requests and limits are set.
- So if there are sufficient CPU cycles available on the system, then why not let the pods use them?
- It has requested, then it will be guaranteed its requested CPU cycle.
- So if there is any pod that has no request set and and there are no limits set for all the all the other pods, then it's possible that any pod could consume all the memory, all the CPU that's available on the node, and starve the pod that has no r...

## 3. Why This Exists
- Now every pod requires a set of resources to run.
- The scheduler takes into consideration the amount of resources required by a pod and those available on the nodes, and identifies the best node to place a pod on.
- So when the scheduler tries to place the pod on a node, it uses these numbers to identify a node which has sufficient amount of resources available.
- So to do this in the the sample pod definition file, all you need to do is add a section called resources under which add requests and specify the new values for memory and CPU usage.
- In this case, I set it to four gigabyte of memory and two counts of CPU.
- So when the scheduler gets a request to place this pod, it looks for a node that has this amount of resources available.
- Uh, now one count of CPU is equivalent to one Vcpu so that's one vcpu in AWS.
- So if you're looking at the AWS cloud, or it could be referred to as one core in GCP or Azure or one Hyperthread, um, on other other systems, and you could request a higher number of CPUs for the container provided your nodes are sufficiently funded.
- In this example, I have set it to five.
- So g is gigabyte and it refers to 1000MB, whereas g refers to GB byte.

## 4. Internal Working
- Now, as we have discussed before, it is the Kubernetes Scheduler that decides which node a pod goes to.
- The scheduler takes into consideration the amount of resources required by a pod and those available on the nodes, and identifies the best node to place a pod on.
- In this case, the scheduler schedules a new pod on node two because there are sufficient resources available on that node.
- So when the scheduler tries to place the pod on a node, it uses these numbers to identify a node which has sufficient amount of resources available.
- So when the scheduler gets a request to place this pod, it looks for a node that has this amount of resources available.
- Now when the pod is created, Kubernetes sets new limits for the container.
- The next one is where requests and limits are set.
- So if there are sufficient CPU cycles available on the system, then why not let the pods use them?
- It has requested, then it will be guaranteed its requested CPU cycle.
- So if there is any pod that has no request set and and there are no limits set for all the all the other pods, then it's possible that any pod could consume all the memory, all the CPU that's available on the node, and starve the pod that has no r...
- So let's look at how it works for memory next.
- In the first case there are two pods competing for memory resources on the cluster.

## 5. Key Objects / Fields / Relationships
- Let us start by looking at a three node Kubernetes cluster.
- Each node has a set of CPU and memory resources available.
- Now every pod requires a set of resources to run.
- In this case, for example, this pod requires two CPUs and one memory unit.
- Now, whenever a pod is placed on a node, it consumes the resources available on that node.
- Now, as we have discussed before, it is the Kubernetes Scheduler that decides which node a pod goes to.
- The scheduler takes into consideration the amount of resources required by a pod and those available on the nodes, and identifies the best node to place a pod on.
- In this case, the scheduler schedules a new pod on node two because there are sufficient resources available on that node.
- If nodes have no sufficient resources available.
- The scheduler avoids placing the pod on those nodes, and instead places the pod on one where sufficient resources are available, and if there is no sufficient resources available on any of the nodes, then the scheduler holds back, scheduling the p...

## 6. YAML Deep Dive
- Now you can specify the amount of CPU and memory required for Pod when creating one.
- So to do this in the the sample pod definition file, all you need to do is add a section called resources under which add requests and specify the new values for memory and CPU usage.
- Now you can specify any value as low as 0.1.
- Now, similarly with memory, you could specify 256 mebibyte using the mi suffix, or specify the same value in memory like this.
- That's the um, the full number, the whole number, and or specify the same value in memory like this as m.
- Now you can specify the limits under the limits section.
- So here specify the new limits for memory and CPU.
- So what happens when a pod tries to exceed resources beyond its specified limit?
- In case of the CPU, the system throttles the CPU so that it does not go beyond the specified limit.
- Now let's look at another case where we have no request specified.

## 7. kubectl / command usage
- And if you look at the events using the cube control describe pod command, you will see there is an insufficient CPU.
- The pod will be terminated and you will see that the pod terminated with an error in the logs or in the output of the describe command.
- And if you look at the events using the kube control describe pod command, you will see there is an insufficient CPU.
- The pod will be terminated and you'll see that the pod terminated with an error in the logs or in the output of the describe command when you run it.
- So as I did before, I would run the kubectl top pod command and monitor the resource consumption of the pod.
- And when it reaches a specific threshold, what I'm going to do to scale the pod vertically is run the kubectl edit deployment command.
- So I would run the edit deployment command and I would change the resource requests and limits assigned to the deployment under the pod template, under the container section, and then save it.
- And then when we run the kubectl get pods command in the cube system namespace and search for VPA, we'll be able to see that there are multiple components deployed.
- So we can check the recommendations with the command kubectl describe VPA followed by the name of the VPA.
- So, let's do kubectl get pod, and see if there is a rabbit pod.

## 8. Real-world scenarios
- Let us start by looking at a three node Kubernetes cluster.
- Each node has a set of CPU and memory resources available.
- In this case, for example, this pod requires two CPUs and one memory unit.
- Now, whenever a pod is placed on a node, it consumes the resources available on that node.
- The scheduler takes into consideration the amount of resources required by a pod and those available on the nodes, and identifies the best node to place a pod on.
- In this case, the scheduler schedules a new pod on node two because there are sufficient resources available on that node.
- If nodes have no sufficient resources available.
- The scheduler avoids placing the pod on those nodes, and instead places the pod on one where sufficient resources are available, and if there is no sufficient resources available on any of the nodes, then the scheduler holds back, scheduling the p...
- For example, it could be one CPU and one GB of memory and this is known as the resource request for a container.
- So when the scheduler tries to place the pod on a node, it uses these numbers to identify a node which has sufficient amount of resources available.

## 9. Pitfalls and misunderstandings
- However, the issue is that if Pod one needs more CPU cycles for some reason and pod two isn't really consuming that many CPU cycles, then we don't want to limit pod one of CPU, right?
- So we don't want to unnecessarily limit resources of CPU cycles.
- But in your case, if you don't want to restrict your application to consume additional CPU, uh, if needed, then you could consider not setting limits.
- Now of course we don't wanna do it manually.
- So unlike the horizontal pod autoscaler, the vertical pod autoscaler do not come built-in, as such, we must deploy it.
- When it comes to vertical scaling, I don't think that's a common approach used for Kubernetes, because it would result in having to take down the server and applications running on them, and then add more resources to the servers and bring it back...
- So I don't think vertical scaling is that common of an approach.
- Now don't let the graphic mislead you.
- In the first phase, the scheduler tries to filter out the nodes that do not fit the profile for this pod.
- For example, the nodes that do not have sufficient CPU and memory resources requested by the pod.

## 10. Troubleshooting angle
- Now, similarly with memory, you could specify 256 mebibyte using the mi suffix, or specify the same value in memory like this.
- So um or use the suffix g for uh gigabyte.
- The pod will be terminated and you will see that the pod terminated with an error in the logs or in the output of the describe command.
- The pod will be terminated and you'll see that the pod terminated with an error in the logs or in the output of the describe command when you run it.
- Yep, so we have a pod called elephant and it fails to get to a running state.
- So, that's, basically, that indicates that it's a memory issue.

## 11. CKA / CKAD relevance
- In this case, for example, this pod requires two CPUs and one memory unit.
- For example, it could be one CPU and one GB of memory and this is known as the resource request for a container.
- In this example, I have set it to five.
- For example, if you set a limit of one vcpu to um, the containers, a container will be limited to consume only one vcpu uh, from that node.
- For example, you can set a limit of 512 megabyte on containers.
- So if there are multiple containers, then each container can have a request or limit set for its own.
- For example, requests and limits are assumed to be three in this case, and each pod is guaranteed three vCPUs and no more than that, as limits are also set to the same.
- For example, a good use case for setting limits is our labs themselves, where, um, all the labs that you've been, you guys have been going through and accessing, um, as part of this course, they are hosted as containers, um, on a cluster.
- The requests and limits may be different for each pod, but for the sake of simplicity we are assuming that it's the same for both pods in these examples that I'm sharing here.
- So for example requests and limits are assumed to be three gigabytes in this case.

## 12. Source Contributions
- Matched Global Concepts:
  - Resource Requirements (match score: 4, notes: 300)
  - (2025 Updates) In-Place Resize of Pods_ (match score: 4, notes: 36)
  - Scheduling - Section Introduction (match score: 3, notes: 8)
  - (2025 Updates) Vertical Pod Autoscaling (VPA)_ (match score: 3, notes: 88)
  - Lab Solution - Resource Limits (match score: 3, notes: 59)
  - (2025 Updates) Introduction to Autoscaling_ (match score: 2, notes: 51)
  - Kube Scheduler (match score: 2, notes: 48)
  - (2025 Updates) Horizontal Pod Autoscaler (HPA)_ (match score: 2, notes: 49)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts: 48 note entries
  - certified-kubernetes-administrator-with-practice-tests / 03_Scheduling: 218 note entries
  - certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management: 224 note entries
  - certified-kubernetes-application-developer / 03_Configuration: 149 note entries
- Explicit Source Reference Samples:
  - section-maps/BATCH-003_section_concept_map.md | 065_Resource Requirements.extraction.md | Entry 1 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 065_Resource Requirements.extraction.md | Entry 2 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 065_Resource Requirements.extraction.md | Entry 3 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 065_Resource Requirements.extraction.md | Entry 4 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 065_Resource Requirements.extraction.md | Entry 5 | Type Exam Tip
  - section-maps/BATCH-003_section_concept_map.md | 065_Resource Requirements.extraction.md | Entry 6 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 065_Resource Requirements.extraction.md | Entry 7 | Type Architecture
  - section-maps/BATCH-003_section_concept_map.md | 065_Resource Requirements.extraction.md | Entry 8 | Type Architecture
  - section-maps/BATCH-003_section_concept_map.md | 065_Resource Requirements.extraction.md | Entry 9 | Type Architecture
  - section-maps/BATCH-003_section_concept_map.md | 065_Resource Requirements.extraction.md | Entry 10 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 065_Resource Requirements.extraction.md | Entry 11 | Type Best Practice
  - section-maps/BATCH-003_section_concept_map.md | 065_Resource Requirements.extraction.md | Entry 12 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 065_Resource Requirements.extraction.md | Entry 13 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 065_Resource Requirements.extraction.md | Entry 14 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 065_Resource Requirements.extraction.md | Entry 15 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 065_Resource Requirements.extraction.md | Entry 16 | Type Exam Tip
  - section-maps/BATCH-003_section_concept_map.md | 065_Resource Requirements.extraction.md | Entry 17 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 065_Resource Requirements.extraction.md | Entry 18 | Type Architecture
  - section-maps/BATCH-003_section_concept_map.md | 065_Resource Requirements.extraction.md | Entry 19 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 065_Resource Requirements.extraction.md | Entry 20 | Type Concept

