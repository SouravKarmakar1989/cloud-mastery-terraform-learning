# Normalized Concept: Taints And Tolerations

- Concept Key: taints-and-tolerations
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 1167

## 1. Definition
- In this lecture, we will see the options available to handle such cases.
- So you have a cluster with a few nodes and pods serving applications.
- What happens when one of these nodes go down?
- Of course, the pods on them are not accessible.
- However, users accessing the green pod are impacted as that was the only pod running the green application.
- Now, what does Kubernetes do in this case?
- Well, Kubernetes considers them as dead.
- The time it waits for a pod to come back online is known as the pod eviction timeout and is set on the controller manager with a default value of five minutes.
- In modern Kubernetes, pod eviction is handled through node taints and pod tolerations.
- When a node becomes not ready or unreachable, Kubernetes applies no execute taints and pods are evicted after a grace period unless they tolerate those taints.

## 2. First-Principles Mental Model
- In this lecture, we will discuss about scenarios where you might have to take down nodes as part of your cluster, say for maintenance purposes, like upgrading a base software or applying patches like security patches, et cetera, on your cluster.
- Now, depending upon how you deploy those pods, your users may be impacted.
- If the node came back online immediately, then the cube control process starts and the pods come back online.
- However, if the node was down for more than five minutes, then the pods are terminated from that node.
- If the pods were part of a replica set, then they're recreated on other nodes.
- The time it waits for a pod to come back online is known as the pod eviction timeout and is set on the controller manager with a default value of five minutes.
- Since the blue pod was part of a replica set, it had a new pod created on another node.
- When you drain a node, the pods are gracefully terminated from the node that they're on and recreated on another.
- Now that the pods are safe on the other nodes, you can reboot the first node.
- You then need to uncoordinated so that the pods can be scheduled on it again.

## 3. Why This Exists
- In this lecture, we will discuss about scenarios where you might have to take down nodes as part of your cluster, say for maintenance purposes, like upgrading a base software or applying patches like security patches, et cetera, on your cluster.
- In this lecture, we will see the options available to handle such cases.
- The time it waits for a pod to come back online is known as the pod eviction timeout and is set on the controller manager with a default value of five minutes.
- So whenever a node goes offline, the master node waits for up to five minutes before considering the node dead.
- Thus, if you have maintenance tasks to be performed on a node, if you know that the workloads running on the node have other replicas, and if it's okay that they go down for a short period of time, and if you're sure the node will come back online...
- However, you do not for sure know if a node is going to be back online in five minutes.
- Well, you cannot for sure say it is going to be back at all.
- So there is a safer way to do it.
- You can purposefully drain the node of all the workloads so that the workloads are moved to other nodes in the cluster.
- You then need to uncoordinated so that the pods can be scheduled on it again.

## 4. Internal Working
- In this lecture, we will discuss about scenarios where you might have to take down nodes as part of your cluster, say for maintenance purposes, like upgrading a base software or applying patches like security patches, et cetera, on your cluster.
- Now, depending upon how you deploy those pods, your users may be impacted.
- If the node came back online immediately, then the cube control process starts and the pods come back online.
- However, if the node was down for more than five minutes, then the pods are terminated from that node.
- If the pods were part of a replica set, then they're recreated on other nodes.
- The time it waits for a pod to come back online is known as the pod eviction timeout and is set on the controller manager with a default value of five minutes.
- Since the blue pod was part of a replica set, it had a new pod created on another node.
- When you drain a node, the pods are gracefully terminated from the node that they're on and recreated on another.
- Now that the pods are safe on the other nodes, you can reboot the first node.
- You then need to uncoordinated so that the pods can be scheduled on it again.
- If any of those pods were deleted or if new pods were created in the cluster, then they would be created on this node.
- Head over to the practice test and practice training, coordinating and then coordinating a note.

## 5. Key Objects / Fields / Relationships
- In this lecture, we will discuss about scenarios where you might have to take down nodes as part of your cluster, say for maintenance purposes, like upgrading a base software or applying patches like security patches, et cetera, on your cluster.
- So you have a cluster with a few nodes and pods serving applications.
- What happens when one of these nodes go down?
- Of course, the pods on them are not accessible.
- Now, depending upon how you deploy those pods, your users may be impacted.
- For example, since you have multiple replicas of the blue pod, the users accessing the blue application are not impacted as they're being served through the other blue pod that's online.
- However, users accessing the green pod are impacted as that was the only pod running the green application.
- If the node came back online immediately, then the cube control process starts and the pods come back online.
- However, if the node was down for more than five minutes, then the pods are terminated from that node.
- If the pods were part of a replica set, then they're recreated on other nodes.

## 6. YAML Deep Dive
- The node is also cordoned or marked as unschedulable, meaning no pods can be scheduled on this node until you specifically remove the restriction.
- Now, some other plugin examples that come into this particular stage are the node name plugin that checks if a pod has a node name mentioned in the pod spec, and filters out all the nodes that does not match this name.
- Basically you can get a custom code of your own to run anywhere in these points by just creating a plugin and plugging it into the respective kind of point that you want to plug into.
- As you can see, some of the plugins span across multiple extension points, and some of them are just within a specific extension point.
- So now you can configure multiple profiles within a single scheduler in the scheduler configuration file by adding more entries to the list of profiles, and for each profile, specify a separate scheduler name.
- Under the plugins section, specify the extension point and enable or disable the plugins by name or pattern as shown in this case.
- We specify through taints and tolerations and node affinity, etc..
- Say you have a specific application that requires its components to be placed on nodes after performing some additional checks, so you decide to have your own scheduling algorithm to place pods on nodes so that you can add your own custom conditio...
- However, some specific applications that you may choose can use your own custom scheduler, so your Kubernetes cluster can have multiple schedulers at a time.
- When creating a pod or a deployment, you can instruct Kubernetes to have the pod scheduled by a specific scheduler.

## 7. kubectl / command usage
- Apart from drain and uncordon, there is also another command called cordon.
- So this is when you run the command on a node, which we will discuss later.
- So when you run the the get pods command in the kube system namespace, you can then see the new custom scheduler running.
- Now create the pod using the kubectl create command.
- So if the pod is in a the pending state, then you can look at the logs under the pod describe command.
- If you've got a describe command and you'll mostly notice that the scheduler isn't configured correctly.
- Now we can view this in the events using the kubectl get events command with the dash o wire option.
- So for that we have logs using the kubectl logs command and provide the scheduler pod name or the deployment name.
- So we're gonna do a kubectl, create deployment, and it's gonna be called mywebapp, then the image is going to be nginx, and we wanna set the replicas to two.
- I'm gonna do a --dry-run=client and I'm gonna do -o yaml so we can pipe it to a file, and I'll just call this mydashwebapp.yaml.

## 8. Real-world scenarios
- In this lecture, we will discuss about scenarios where you might have to take down nodes as part of your cluster, say for maintenance purposes, like upgrading a base software or applying patches like security patches, et cetera, on your cluster.
- In this lecture, we will see the options available to handle such cases.
- So you have a cluster with a few nodes and pods serving applications.
- Now, depending upon how you deploy those pods, your users may be impacted.
- For example, since you have multiple replicas of the blue pod, the users accessing the blue application are not impacted as they're being served through the other blue pod that's online.
- You can purposefully drain the node of all the workloads so that the workloads are moved to other nodes in the cluster.
- The node is also cordoned or marked as unschedulable, meaning no pods can be scheduled on this node until you specifically remove the restriction.
- When it comes back online, it is still unschedulable.
- If any of those pods were deleted or if new pods were created in the cluster, then they would be created on this node.
- Cordon simply marks a node unschedulable.

## 9. Pitfalls and misunderstandings
- However, you do not for sure know if a node is going to be back online in five minutes.
- Now remember, the pods that were moved to the other nodes don't automatically fall back.
- So in our case the first two nodes do not have sufficient resources.
- So do not have ten CPU remaining.
- Now note that at this phase, the plugins do not really reject the pod placement on a particular node.
- Now the default scheduler doesn't really need one because if you don't specify a name it sets the name to default scheduler.
- So I'm gonna copy this, and I'm gonna delete the host part here, I don't need that.
- So for this, if you don't remember how to create a storageclass off the top of your head, we can always just go to the documentation and just search for storageclass.
- I mean it's set to false so it doesn't matter, but we don't really need this configuration.
- We don't need that.

## 10. Troubleshooting angle
- You could also view the logs of the scheduler in case you run into issues.
- So I'm gonna just copy this, and under spec, let's add that in there, and let me fix the spacings.
- And we have to add a liveness probe to the container to restart if the command ls/bar/www/atm/probe fails.
- Is there an error?
- And you could see that it deleted the old one, but then we got an error.
- So this error is expected and I recommend you read this error 'cause it tells us everything we need to know.
- So what is the issue?
- And now if we do kubectl apply question5-pod.yaml, we can see it's created, we'll do kubectl get pod -n low- priority and we can see it's running with no issues.
- All right, so it says that we've deployed a new pod called np-test-1 and a service called np-test-services, incoming connections to the service are not working, troubleshoot and fix it.
- And it tells us basically what we need to do to fix it, which is create a network policy by the name of ingress-nptest that allows incoming connections to this service over port 80.

## 11. CKA / CKAD relevance
- For example, since you have multiple replicas of the blue pod, the users accessing the blue application are not impacted as they're being served through the other blue pod that's online.
- Using this simple example of scheduling a pod to one of these four nodes that you can see here that are part of the Kubernetes cluster.
- For example while in the scheduling queue it's the priority sort plugin that sorts the pods in an order based on the priority configured on the pods.
- Now, some other plugin examples that come into this particular stage are the node name plugin that checks if a pod has a node name mentioned in the pod spec, and filters out all the nodes that does not match this name.
- Another example is the node unschedulable plugin, and that filters out nodes that has the Unschedulable flag set to true.
- So as you can see, a single plugin can be associated in multiple different phases.
- Another example of a plugin in this stage would be the image locality plugin, that associates a high score to the nodes that already has the container image used by the pods among the different nodes.
- For example, in case of the image locality node, it ensures that pods are placed on a node that already has the image.
- As you can see, some of the plugins span across multiple extension points, and some of them are just within a specific extension point.
- Now that's one way to deploy multiple schedulers.

## 12. Source Contributions
- Matched Global Concepts:
  - OS Upgrades (match score: 2, notes: 40)
  - Configuring Scheduler Profiles (match score: 2, notes: 90)
  - Multiple Schedulers (match score: 2, notes: 105)
  - Mock Exam -2 (Solution) (match score: 2, notes: 138)
  - Solution - Taints and Tolerations (Optional) (match score: 2, notes: 72)
  - Mock Exam - 3 - Solution _ (Optional) (match score: 2, notes: 485)
  - Cluster Architecture (match score: 2, notes: 82)
  - Taints and Tolerations (match score: 2, notes: 155)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts: 82 note entries
  - certified-kubernetes-administrator-with-practice-tests / 03_Scheduling: 272 note entries
  - certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance: 40 note entries
  - certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams: 485 note entries
  - certified-kubernetes-application-developer / 03_Configuration: 150 note entries
  - certified-kubernetes-application-developer / 15_Mock Exams: 138 note entries
- Explicit Source Reference Samples:
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 131_OS Upgrades.extraction.md | Entry 1 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 131_OS Upgrades.extraction.md | Entry 2 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 131_OS Upgrades.extraction.md | Entry 3 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 131_OS Upgrades.extraction.md | Entry 4 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 131_OS Upgrades.extraction.md | Entry 5 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 131_OS Upgrades.extraction.md | Entry 6 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 131_OS Upgrades.extraction.md | Entry 7 | Type Exam Tip
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 131_OS Upgrades.extraction.md | Entry 8 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 131_OS Upgrades.extraction.md | Entry 9 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 131_OS Upgrades.extraction.md | Entry 10 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 131_OS Upgrades.extraction.md | Entry 11 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 131_OS Upgrades.extraction.md | Entry 12 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 131_OS Upgrades.extraction.md | Entry 13 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 131_OS Upgrades.extraction.md | Entry 14 | Type Architecture
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 131_OS Upgrades.extraction.md | Entry 15 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 131_OS Upgrades.extraction.md | Entry 16 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 131_OS Upgrades.extraction.md | Entry 17 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 131_OS Upgrades.extraction.md | Entry 18 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 131_OS Upgrades.extraction.md | Entry 19 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 131_OS Upgrades.extraction.md | Entry 20 | Type Concept

