# Normalized Concept: Scheduling

- Concept Key: scheduling
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 737

## 1. Definition
- Let us now look at what scheduler profiles are.
- So let's first recap how the Kubernetes Scheduler works.
- So here we have our pod definition file.
- And there's our pod.
- It is waiting to be scheduled on one of these four nodes.
- Now it has a resource requirement of ten CPU.
- So it's only going to be scheduled on a node that has ten CPU remaining.
- And you can see the available CPU on all of these nodes that are listed here.
- Now it is not alone.
- There are some other pods that are waiting to be scheduled as well.

## 2. First-Principles Mental Model
- Let us now look at what scheduler profiles are.
- So let's first recap how the Kubernetes Scheduler works.
- So the first thing that happens is that when these pods are created, the pods end up in a scheduling queue.
- So to set a priority you must first create a priority class that looks like this.
- So this is how pods with higher priority gets to the beginning of the queue to be scheduled first.
- Then our pod enters the filter phase.
- The next phase is the scoring phase.
- The scheduler associates a score to each node based on the free space it will have after reserving the CPU required for that part.
- So in this case the first one has two left and the second will have six left.
- In the scheduling queue, we have a short extension to which the Priority Sort plugin is plugged to, and then we have the filter extension, the the score and the bind extension to which each of these plugins that we just talked about are plugged two.

## 3. Why This Exists
- Using this simple example of scheduling a pod to one of these four nodes that you can see here that are part of the Kubernetes cluster.
- It is waiting to be scheduled on one of these four nodes.
- So it's only going to be scheduled on a node that has ten CPU remaining.
- There are some other pods that are waiting to be scheduled as well.
- So this is where the pods wait to be scheduled.
- So to set a priority you must first create a priority class that looks like this.
- In this case it's set to 1 million.
- So that's really high priority.
- So this is how pods with higher priority gets to the beginning of the queue to be scheduled first.
- And so that sorting happens in this scheduling phase.

## 4. Internal Working
- Let us now look at what scheduler profiles are.
- So let's first recap how the Kubernetes Scheduler works.
- So the first thing that happens is that when these pods are created, the pods end up in a scheduling queue.
- So to set a priority you must first create a priority class that looks like this.
- So this is how pods with higher priority gets to the beginning of the queue to be scheduled first.
- Then our pod enters the filter phase.
- The next phase is the scoring phase.
- The scheduler associates a score to each node based on the free space it will have after reserving the CPU required for that part.
- So in this case the first one has two left and the second will have six left.
- In the scheduling queue, we have a short extension to which the Priority Sort plugin is plugged to, and then we have the filter extension, the the score and the bind extension to which each of these plugins that we just talked about are plugged two.
- And then there are Pre-score before the score extension point and reserve after the extension point, the score extension point.
- And then there is permit and pre bind before the bind and post bind after the binding phase.

## 5. Key Objects / Fields / Relationships
- Using this simple example of scheduling a pod to one of these four nodes that you can see here that are part of the Kubernetes cluster.
- So here we have our pod definition file.
- And there's our pod.
- It is waiting to be scheduled on one of these four nodes.
- So it's only going to be scheduled on a node that has ten CPU remaining.
- And you can see the available CPU on all of these nodes that are listed here.
- There are some other pods that are waiting to be scheduled as well.
- So the first thing that happens is that when these pods are created, the pods end up in a scheduling queue.
- So this is where the pods wait to be scheduled.
- So at this stage, pods are sorted based on the priority defined on the pods.

## 6. YAML Deep Dive
- Now, some other plugin examples that come into this particular stage are the node name plugin that checks if a pod has a node name mentioned in the pod spec, and filters out all the nodes that does not match this name.
- Basically you can get a custom code of your own to run anywhere in these points by just creating a plugin and plugging it into the respective kind of point that you want to plug into.
- As you can see, some of the plugins span across multiple extension points, and some of them are just within a specific extension point.
- So now you can configure multiple profiles within a single scheduler in the scheduler configuration file by adding more entries to the list of profiles, and for each profile, specify a separate scheduler name.
- Under the plugins section, specify the extension point and enable or disable the plugins by name or pattern as shown in this case.
- So you've got one from version 1.28 to version 1.29, which is what I'm on now, which is the latest kind of upgrade, because version 1.29 is the latest at the moment.
- So this is using Debian, and so we're gonna follow the instructions for that on this specific page.
- And what I'm gonna do is I'm gonna just copy this and paste this into Notepad or some text editor of my choice, and we're gonna select, or we're gonna have to update one thing, which is the specific minor version that we want.
- And once again, we're gonna make sure that we specify the version that we want to upgrade to, which is gonna be something in the version 1.29 release.
- So now we're gonna go back to the documentation, and right here it's telling us, "Determine which version to upgrade to." So obviously, you know, as I said, we're gonna be upgrading from version 1.28 to version 1.29, but what specific version with...

## 7. kubectl / command usage
- So this is when you run the command on a node, which we will discuss later.
- And what we're gonna do is we're gonna follow the documentation when it comes to upgrading using kubeadm.
- And so if you go to the Kubernetes documentation and you go under Tasks, under Administer a Cluster, and then down here under Administration with kubeadm, select Upgrading a kubeadm cluster.
- And this is gonna have all of the instructions necessary to perform an upgrade on a Kubernetes cluster using kubeadm, and it'll have separate instructions for each different upgrade.
- So moving forward, we want to use the pkgs.k8s.io repositories to actually, you know, download the latest versions of like kubectl, kubeadm, and all of the different tools.
- So the first thing that we have to do is we have to make sure we know what our, you know, distribution is 'cause the commands are gonna be a little bit different.
- So if I do kubectl get node, we can see that I've got two nodes here, one control plane, one worker node.
- And so all we have to do is just copy this command.
- And then there's a second command in here, which is right here, "Download the public signing key "for the Kubernetes package repositories." So this is, once again, we're gonna copy this.
- And then after we run those two commands, we can do an apt-get update and we should be all set.

## 8. Real-world scenarios
- Using this simple example of scheduling a pod to one of these four nodes that you can see here that are part of the Kubernetes cluster.
- And you can see the available CPU on all of these nodes that are listed here.
- So that's really high priority.
- For example while in the scheduling queue it's the priority sort plugin that sorts the pods in an order based on the priority configured on the pods.
- Now, some other plugin examples that come into this particular stage are the node name plugin that checks if a pod has a node name mentioned in the pod spec, and filters out all the nodes that does not match this name.
- Another example is the node unschedulable plugin, and that filters out nodes that has the Unschedulable flag set to true.
- But all the nodes that has unschedulable flags set to true.
- Now in the scoring phase again, the Node Resources Fit plugin associates a score to each node based on the resource available on it, and after the pod is allocated to it.
- Another example of a plugin in this stage would be the image locality plugin, that associates a high score to the nodes that already has the container image used by the pods among the different nodes.
- Now note that at this phase, the plugins do not really reject the pod placement on a particular node.

## 9. Pitfalls and misunderstandings
- So in our case the first two nodes do not have sufficient resources.
- So do not have ten CPU remaining.
- Now note that at this phase, the plugins do not really reject the pod placement on a particular node.
- And so those have been deprecated.
- And if we want to do that, we can always do a kubeadm upgrade apply v1.28.8, but we don't want that, we want to upgrade to 1.29.3, which is the instructions down here.
- And so you'll see here you get that same message about changing package repository, but we already did that for our worker node so we don't need to do that again.
- So we don't do an apply, we do an upgrade node.
- Keep in mind, you don't technically need to have that on there, but if you do, go ahead and upgrade that as well.
- Now, what if I don't specify a priority class name for a pod?
- But if you do not want it to kill or evict the existing workload, and instead wait for the cluster resources to free up, then you must set this preemption policy to never.

## 10. Troubleshooting angle
- So the plan command is just gonna walk us through the different versions that we can upgrade our cluster to and it's gonna make sure that there aren't some sort of like, compatibility issues.
- You could also view the logs of the scheduler in case you run into issues.
- The Kubernetes for administrators course focuses on advanced topics on Kubernetes, and in-depth discussions into the various concepts around deploying a high-availability cluster for production use case, understanding more about scheduling, monito...
- There seems to be some error.
- So let's go back, see what the error is.
- Okay, so even though here it said line 26 the issue was a few lines above.
- Service networking is 20%, storage is another 10% and finally, the biggest section of them all is troubleshooting, which accounts for 30% of the questions.
- Now the sixth question as you can see, is from the troubleshooting section.

## 11. CKA / CKAD relevance
- Using this simple example of scheduling a pod to one of these four nodes that you can see here that are part of the Kubernetes cluster.
- For example while in the scheduling queue it's the priority sort plugin that sorts the pods in an order based on the priority configured on the pods.
- Now, some other plugin examples that come into this particular stage are the node name plugin that checks if a pod has a node name mentioned in the pod spec, and filters out all the nodes that does not match this name.
- Another example is the node unschedulable plugin, and that filters out nodes that has the Unschedulable flag set to true.
- So as you can see, a single plugin can be associated in multiple different phases.
- Another example of a plugin in this stage would be the image locality plugin, that associates a high score to the nodes that already has the container image used by the pods among the different nodes.
- For example, in case of the image locality node, it ensures that pods are placed on a node that already has the image.
- As you can see, some of the plugins span across multiple extension points, and some of them are just within a specific extension point.
- Now that's one way to deploy multiple schedulers.
- For example, one scheduler may schedule a workload on a node without knowing that there's another scheduler scheduling a workload on that same node at the same time.

## 12. Source Contributions
- Matched Global Concepts:
  - Configuring Scheduler Profiles (match score: 1, notes: 90)
  - Demo - Cluster upgrade (match score: 1, notes: 157)
  - Priority Classes (match score: 1, notes: 64)
  - Multiple Schedulers (match score: 1, notes: 105)
  - TLS in Kubernetes (match score: 1, notes: 75)
  - Kubernetes Series of Courses (match score: 1, notes: 29)
  - Solution - Node Affinity (Optional) (match score: 1, notes: 99)
  - What's Next_ (match score: 1, notes: 118)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 03_Scheduling: 259 note entries
  - certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance: 157 note entries
  - certified-kubernetes-administrator-with-practice-tests / 07_Security: 75 note entries
  - certified-kubernetes-administrator-with-practice-tests / 18_Bonus Section: 88 note entries
  - certified-kubernetes-application-developer / 01_Introduction: 29 note entries
  - certified-kubernetes-application-developer / 03_Configuration: 99 note entries
  - certified-kubernetes-application-developer / 15_Mock Exams: 30 note entries
- Explicit Source Reference Samples:
  - section-maps/BATCH-003_section_concept_map.md | 080_Configuring Scheduler Profiles.extraction.md | Entry 1 | Type Architecture
  - section-maps/BATCH-003_section_concept_map.md | 080_Configuring Scheduler Profiles.extraction.md | Entry 2 | Type Architecture
  - section-maps/BATCH-003_section_concept_map.md | 080_Configuring Scheduler Profiles.extraction.md | Entry 3 | Type Exam Tip
  - section-maps/BATCH-003_section_concept_map.md | 080_Configuring Scheduler Profiles.extraction.md | Entry 4 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 080_Configuring Scheduler Profiles.extraction.md | Entry 5 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 080_Configuring Scheduler Profiles.extraction.md | Entry 6 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 080_Configuring Scheduler Profiles.extraction.md | Entry 7 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 080_Configuring Scheduler Profiles.extraction.md | Entry 8 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 080_Configuring Scheduler Profiles.extraction.md | Entry 9 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 080_Configuring Scheduler Profiles.extraction.md | Entry 10 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 080_Configuring Scheduler Profiles.extraction.md | Entry 11 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 080_Configuring Scheduler Profiles.extraction.md | Entry 12 | Type Implementation Step
  - section-maps/BATCH-003_section_concept_map.md | 080_Configuring Scheduler Profiles.extraction.md | Entry 13 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 080_Configuring Scheduler Profiles.extraction.md | Entry 14 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 080_Configuring Scheduler Profiles.extraction.md | Entry 15 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 080_Configuring Scheduler Profiles.extraction.md | Entry 16 | Type Implementation Step
  - section-maps/BATCH-003_section_concept_map.md | 080_Configuring Scheduler Profiles.extraction.md | Entry 17 | Type Best Practice
  - section-maps/BATCH-003_section_concept_map.md | 080_Configuring Scheduler Profiles.extraction.md | Entry 18 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 080_Configuring Scheduler Profiles.extraction.md | Entry 19 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 080_Configuring Scheduler Profiles.extraction.md | Entry 20 | Type Implementation Step

