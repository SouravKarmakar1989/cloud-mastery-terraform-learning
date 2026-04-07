# Phase 4: Scheduling And Compute Placement

## Phase Goal
- Explain how Kubernetes decides where workloads run and how operators influence compute placement behavior.

## Best-Fit Lens
- CKA primary, platform secondary. Placement control is a key operator skill.

## Concepts In This Phase
- scheduling
- resource-requirements
- node-selectors
- taints-and-tolerations
- node-affinity
- priority-classes
- daemonsets
- static-pods
- autoscaling

## Module: Scheduling Foundations

### Module Overview
- This module teaches the basic scheduler inputs first, then adds increasingly specific placement and priority controls.
- Concepts in this module: scheduling, resource-requirements, node-selectors, taints-and-tolerations, node-affinity, priority-classes, daemonsets, static-pods, autoscaling

### Lesson: Scheduling Inputs, Resource Math, And First Placement Controls

#### Concepts Covered
- scheduling
- resource-requirements
- node-selectors

#### Lesson Explanation
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
- Let's look at resource requirements.
- Let us start by looking at a three node Kubernetes cluster.

#### Key Structural Points
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

#### Key YAML Examples
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

#### Key Commands
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
- And if you look at the events using the cube control describe pod command, you will see there is an insufficient CPU.
- The pod will be terminated and you will see that the pod terminated with an error in the logs or in the output of the describe command.

#### Real-World Angle
- Using this simple example of scheduling a pod to one of these four nodes that you can see here that are part of the Kubernetes cluster.
- And you can see the available CPU on all of these nodes that are listed here.
- So that's really high priority.
- For example while in the scheduling queue it's the priority sort plugin that sorts the pods in an order based on the priority configured on the pods.
- Now, some other plugin examples that come into this particular stage are the node name plugin that checks if a pod has a node name mentioned in the pod spec, and filters out all the nodes that does not match this name.
- Another example is the node unschedulable plugin, and that filters out nodes that has the Unschedulable flag set to true.
- But all the nodes that has unschedulable flags set to true.
- Now in the scoring phase again, the Node Resources Fit plugin associates a score to each node based on the resource available on it, and after the pod is allocated to it.

#### Pitfalls
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

#### Troubleshooting Focus
- So the plan command is just gonna walk us through the different versions that we can upgrade our cluster to and it's gonna make sure that there aren't some sort of like, compatibility issues.
- You could also view the logs of the scheduler in case you run into issues.
- The Kubernetes for administrators course focuses on advanced topics on Kubernetes, and in-depth discussions into the various concepts around deploying a high-availability cluster for production use case, understanding more about scheduling, monito...
- There seems to be some error.
- So let's go back, see what the error is.
- Okay, so even though here it said line 26 the issue was a few lines above.
- Service networking is 20%, storage is another 10% and finally, the biggest section of them all is troubleshooting, which accounts for 30% of the questions.
- Now the sixth question as you can see, is from the troubleshooting section.
- Now, similarly with memory, you could specify 256 mebibyte using the mi suffix, or specify the same value in memory like this.
- So um or use the suffix g for uh gigabyte.

#### Revision Points
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

#### Step-By-Step Hands-On
1. Read the normalized concept files for this lesson in the listed concept order.
2. Recreate one minimal object or workflow from the YAML examples and note which fields are essential versus optional.
3. Run the core inspection and mutation commands highlighted in the command list, then compare expected versus actual object state.
4. Intentionally trigger one common mistake from the pitfall list, then recover from it using the troubleshooting focus above.
5. End the lesson by summarizing the dependency chain: what this lesson assumes, and what later topics depend on it.

### Lesson: Affinity, Taints, And Priority

#### Concepts Covered
- taints-and-tolerations
- node-affinity
- priority-classes

#### Lesson Explanation
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
- Now we have seen how the default scheduler works in Kubernetes in the previous lectures.
- It has an algorithm that distributes pods across nodes evenly, as well as takes into consideration various conditions.

#### Key Structural Points
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

#### Key YAML Examples
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

#### Key Commands
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
- Set command to view the created daemon set.
- Run the kube control, get daemon, set command and of course to view more details on the kube control, describe daemon sets command.

#### Real-World Angle
- In this lecture, we will discuss about scenarios where you might have to take down nodes as part of your cluster, say for maintenance purposes, like upgrading a base software or applying patches like security patches, et cetera, on your cluster.
- In this lecture, we will see the options available to handle such cases.
- So you have a cluster with a few nodes and pods serving applications.
- Now, depending upon how you deploy those pods, your users may be impacted.
- For example, since you have multiple replicas of the blue pod, the users accessing the blue application are not impacted as they're being served through the other blue pod that's online.
- You can purposefully drain the node of all the workloads so that the workloads are moved to other nodes in the cluster.
- The node is also cordoned or marked as unschedulable, meaning no pods can be scheduled on this node until you specifically remove the restriction.
- When it comes back online, it is still unschedulable.

#### Pitfalls
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

#### Troubleshooting Focus
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

#### Revision Points
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

#### Step-By-Step Hands-On
1. Read the normalized concept files for this lesson in the listed concept order.
2. Recreate one minimal object or workflow from the YAML examples and note which fields are essential versus optional.
3. Run the core inspection and mutation commands highlighted in the command list, then compare expected versus actual object state.
4. Intentionally trigger one common mistake from the pitfall list, then recover from it using the troubleshooting focus above.
5. End the lesson by summarizing the dependency chain: what this lesson assumes, and what later topics depend on it.

### Lesson: Special Placement Patterns And Elasticity

#### Concepts Covered
- daemonsets
- static-pods
- autoscaling

#### Lesson Explanation
- Instructor: In this video, I'm gonna walk you through a demo of upgrading a Kubernetes cluster from version 1.28 to version 1.29.
- And what we're gonna do is we're gonna follow the documentation when it comes to upgrading using kubeadm.
- And this is gonna have all of the instructions necessary to perform an upgrade on a Kubernetes cluster using kubeadm, and it'll have separate instructions for each different upgrade.
- So you've got one from version 1.28 to version 1.29, which is what I'm on now, which is the latest kind of upgrade, because version 1.29 is the latest at the moment.
- But you can see you could also have 1.27 to 1.28, 1.26 to 1.27, 1.25 to 1.26, and 1.24 to 1.25.
- So just select whichever upgrade path you're performing and just follow those instructions and you'll see that it's gonna be pretty much identical regardless of what versions you're upgrading from and upgrading to.
- All right, so let's go ahead and get started.
- So moving forward, we want to use the pkgs.k8s.io repositories to actually, you know, download the latest versions of like kubectl, kubeadm, and all of the different tools.
- So we're gonna have to, you know, at the early stages of performing the upgrade, we're gonna have to make sure that we're utilizing the newer repositories and not the older ones.
- And I'll show you guys how we can actually go ahead and do that.
- Adjust the following network parameters on the system to the following values and make sure your changes persist reboots.
- So these are the two changes that we need to make so that we can actually run Kubernetes.

#### Key Structural Points
- And what we're gonna do is we're gonna follow the documentation when it comes to upgrading using kubeadm.
- And so if you go to the Kubernetes documentation and you go under Tasks, under Administer a Cluster, and then down here under Administration with kubeadm, select Upgrading a kubeadm cluster.
- And this is gonna have all of the instructions necessary to perform an upgrade on a Kubernetes cluster using kubeadm, and it'll have separate instructions for each different upgrade.
- So moving forward, we want to use the pkgs.k8s.io repositories to actually, you know, download the latest versions of like kubectl, kubeadm, and all of the different tools.
- So if I go to my cluster right here, and just to show you guys, I have a two node cluster.
- So if I do kubectl get node, we can see that I've got two nodes here, one control plane, one worker node.
- And keep in mind the steps for upgrading a cluster, you know, whether it's, you know, two nodes, three nodes, five nodes, it's all going to be identical.
- All right, and the next thing I'm gonna do is I'm gonna do this same thing on my worker node.
- So I'm gonna SSH to my worker node and we'll copy those two commands once again.
- And keep in mind, if you have like a 3, 4, 5, 10-node cluster, you're gonna do this on all of your nodes.

#### Key YAML Examples
- So you've got one from version 1.28 to version 1.29, which is what I'm on now, which is the latest kind of upgrade, because version 1.29 is the latest at the moment.
- So this is using Debian, and so we're gonna follow the instructions for that on this specific page.
- And what I'm gonna do is I'm gonna just copy this and paste this into Notepad or some text editor of my choice, and we're gonna select, or we're gonna have to update one thing, which is the specific minor version that we want.
- And once again, we're gonna make sure that we specify the version that we want to upgrade to, which is gonna be something in the version 1.29 release.
- So now we're gonna go back to the documentation, and right here it's telling us, "Determine which version to upgrade to." So obviously, you know, as I said, we're gonna be upgrading from version 1.28 to version 1.29, but what specific version with...
- So this is what we want to upgrade to, so right here, if we just change the value here to be the specific version that we want, then I can just copy this, go back to my cluster, and paste this into my control plane node.
- And it's gonna let us know if there's going to be some problems if we try to perform an upgrade to a specific version.
- So it's just kind of like a dry run just to make sure that, you know, everything looks okay and it's gonna tell us, like, hey, what are the different components that kubeadm will upgrade for us automatically, and what are the different components ...
- So right here we can see the steps it's kind of going through.
- So run those two commands, then you would want to upgrade kubeadm to that specific version.

#### Key Commands
- And what we're gonna do is we're gonna follow the documentation when it comes to upgrading using kubeadm.
- And so if you go to the Kubernetes documentation and you go under Tasks, under Administer a Cluster, and then down here under Administration with kubeadm, select Upgrading a kubeadm cluster.
- And this is gonna have all of the instructions necessary to perform an upgrade on a Kubernetes cluster using kubeadm, and it'll have separate instructions for each different upgrade.
- So moving forward, we want to use the pkgs.k8s.io repositories to actually, you know, download the latest versions of like kubectl, kubeadm, and all of the different tools.
- So the first thing that we have to do is we have to make sure we know what our, you know, distribution is 'cause the commands are gonna be a little bit different.
- So if I do kubectl get node, we can see that I've got two nodes here, one control plane, one worker node.
- And so all we have to do is just copy this command.
- And then there's a second command in here, which is right here, "Download the public signing key "for the Kubernetes package repositories." So this is, once again, we're gonna copy this.
- And then after we run those two commands, we can do an apt-get update and we should be all set.
- So I'm going to go back to my cluster and I'm going to paste those two commands in.
- Now for question one, you can see that it says that you are an administrator preparing your environment to deploy a Kubernetes cluster using kubeadm.
- To do this, what I always recommend is remembering that since we are in the process of creating a new cluster, using kubeadm, most likely to figure out where we would get the information to do this inside the documentation, which remember, you hav...

#### Real-World Angle
- Instructor: In this video, I'm gonna walk you through a demo of upgrading a Kubernetes cluster from version 1.28 to version 1.29.
- And so if you go to the Kubernetes documentation and you go under Tasks, under Administer a Cluster, and then down here under Administration with kubeadm, select Upgrading a kubeadm cluster.
- And this is gonna have all of the instructions necessary to perform an upgrade on a Kubernetes cluster using kubeadm, and it'll have separate instructions for each different upgrade.
- So if I go to my cluster right here, and just to show you guys, I have a two node cluster.
- And keep in mind the steps for upgrading a cluster, you know, whether it's, you know, two nodes, three nodes, five nodes, it's all going to be identical.
- So this example uses the new package repository, which is what we want, but there's a different package repository for each minor version.
- So I'm going to go back to my cluster and I'm going to paste those two commands in.
- And keep in mind, if you have like a 3, 4, 5, 10-node cluster, you're gonna do this on all of your nodes.

#### Pitfalls
- And so those have been deprecated.
- And if we want to do that, we can always do a kubeadm upgrade apply v1.28.8, but we don't want that, we want to upgrade to 1.29.3, which is the instructions down here.
- And so you'll see here you get that same message about changing package repository, but we already did that for our worker node so we don't need to do that again.
- So we don't do an apply, we do an upgrade node.
- Keep in mind, you don't technically need to have that on there, but if you do, go ahead and upgrade that as well.
- Then you don't have to worry about adding or removing monitoring agents from these nodes when there are changes in your cluster, as the Daemonset will take care of that for you.
- And we don't need replicas, because demo sets don't have replicas, so you can actually look at it and compare it here.
- Well, if you don't know about Daemonset yet, don't worry.
- So for this, if you don't remember how to create a storageclass off the top of your head, we can always just go to the documentation and just search for storageclass.
- I mean it's set to false so it doesn't matter, but we don't really need this configuration.

#### Troubleshooting Focus
- So the plan command is just gonna walk us through the different versions that we can upgrade our cluster to and it's gonna make sure that there aren't some sort of like, compatibility issues.
- And you could see that it deleted the old one, but then we got an error.
- So this error is expected and I recommend you read this error 'cause it tells us everything we need to know.
- So what is the issue?
- And now if we do kubectl apply question5-pod.yaml, we can see it's created, we'll do kubectl get pod -n low- priority and we can see it's running with no issues.
- All right, so it says that we've deployed a new pod called np-test-1 and a service called np-test-services, incoming connections to the service are not working, troubleshoot and fix it.
- And it tells us basically what we need to do to fix it, which is create a network policy by the name of ingress-nptest that allows incoming connections to this service over port 80.
- So we've now successfully fixed the issue.
- Okay, so for this question it says that there's a kubeconfig file called super.kubeconfig in the following location and it says there's something wrong with this con configuration, troubleshoot and fix it.
- Whenever there's a question where it says there's an issue and we need to fix it, always verify the issue first.

#### Revision Points
- Instructor: In this video, I'm gonna walk you through a demo of upgrading a Kubernetes cluster from version 1.28 to version 1.29.
- And what we're gonna do is we're gonna follow the documentation when it comes to upgrading using kubeadm.
- And so if you go to the Kubernetes documentation and you go under Tasks, under Administer a Cluster, and then down here under Administration with kubeadm, select Upgrading a kubeadm cluster.
- And this is gonna have all of the instructions necessary to perform an upgrade on a Kubernetes cluster using kubeadm, and it'll have separate instructions for each different upgrade.
- So you've got one from version 1.28 to version 1.29, which is what I'm on now, which is the latest kind of upgrade, because version 1.29 is the latest at the moment.
- But you can see you could also have 1.27 to 1.28, 1.26 to 1.27, 1.25 to 1.26, and 1.24 to 1.25.
- So I'm gonna scroll down and you can see that there's an important note which is "Changing the package repository." And so if you guys aren't up to date as to what happened, the old package repositories for all of the different Kubernetes tools an...
- So moving forward, we want to use the pkgs.k8s.io repositories to actually, you know, download the latest versions of like kubectl, kubeadm, and all of the different tools.
- So we're gonna have to, you know, at the early stages of performing the upgrade, we're gonna have to make sure that we're utilizing the newer repositories and not the older ones.
- And so what we're gonna do is we're gonna click on this link right here, and this is gonna give us the instructions on how to actually use and set up the new package repositories.

#### Step-By-Step Hands-On
1. Read the normalized concept files for this lesson in the listed concept order.
2. Recreate one minimal object or workflow from the YAML examples and note which fields are essential versus optional.
3. Run the core inspection and mutation commands highlighted in the command list, then compare expected versus actual object state.
4. Intentionally trigger one common mistake from the pitfall list, then recover from it using the troubleshooting focus above.
5. End the lesson by summarizing the dependency chain: what this lesson assumes, and what later topics depend on it.

## Phase Revision Checklist
- Can you explain why each module in this phase comes before the next one?
- Can you identify the core objects and command surfaces without relying on memory shortcuts alone?
- Can you recreate at least one minimal YAML or kubectl workflow for every lesson in this phase?
- Can you describe the main failure modes and the first inspection steps you would use to diagnose them?

## Source Basis
- Structural source: ../learning-path/00_k8s_master_learning_path.md
- Concept detail source: ../normalized-concepts/
