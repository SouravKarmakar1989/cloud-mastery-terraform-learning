# Phase 6: Storage And Stateful Workloads

## Phase Goal
- Teach how Kubernetes models storage, binds workloads to persistent state, and integrates with external storage systems.

## Best-Fit Lens
- CKA primary, platform secondary.

## Concepts In This Phase
- storage
- volumes
- persistent-volumes
- persistent-volume-claims
- storage-class
- csi
- backup-and-restore

## Module: Core Storage Objects

### Module Overview
- This module starts with the storage object chain before discussing external integration and recovery.
- Concepts in this module: storage, volumes, persistent-volumes, persistent-volume-claims, storage-class, csi, backup-and-restore

### Lesson: Volumes, Persistence, And Claim Binding

#### Concepts Covered
- storage
- volumes
- persistent-volumes
- persistent-volume-claims
- storage-class

#### Lesson Explanation
- Let us now look at storage in Kubernetes to understand storage in container orchestration tools like Kubernetes.
- When it comes to storage in Docker, there are two concepts you must know about storage drivers and volume driver plugins.
- In the upcoming video, we will discuss about storage drivers.
- It's something that we've discussed in the Docker course, so if you have gone through that already, feel free to skip this video or you may choose to stay and refresh your memory.
- Once done, we will talk about volume drivers.
- Before we head into understanding pods, we would like to assume that the following have been set up already.
- At this point, we assume that the application is already developed and built into Docker images, and it is available on Docker repository like Docker Hub, so Kubernetes can pull it down.
- We also assume that the Kubernetes cluster has already been set up and is working.
- This could be a single node setup or a multi-node setup.
- Doesn't matter.
- So let's copy and let's run that.
- And this basically gives you auto completion.

#### Key Structural Points
- When it comes to storage in Docker, there are two concepts you must know about storage drivers and volume driver plugins.
- Once done, we will talk about volume drivers.
- Before we head into understanding pods, we would like to assume that the following have been set up already.
- This could be a single node setup or a multi-node setup.
- All the services need to be in a running state.
- As we discussed before with Kubernetes, our ultimate aim is to deploy our application in the form of containers on a set of machines that are configured as worker nodes in a cluster.
- However, Kubernetes does not deploy containers directly on the worker nodes.
- The containers are encapsulated into a Kubernetes object known as pods.
- A pod is a single instance of an application.
- A pod is the smallest object that you can create in Kubernetes.

#### Key YAML Examples
- A single pod can have multiple containers, except for the fact that they're usually not multiple containers of the same kind.
- But sometimes you might have a scenario where you have a helper container that might be doing some kind of supporting task for our web application, such as processing a user entered data, processing a file uploaded by the user, etc. and you want t...
- For that you need to specify the image name using the image parameter.
- It is supported on any cloud platform and supports hosting enhanced and complex applications on various kinds of architectures that make it a vast and complex technology.
- There are a set of prerequisite knowledge required, such as containers, applications, YAML files, et cetera.
- There are students from different backgrounds, such as the absolute beginners to Kubernetes or those with some experience looking for specialized knowledge in administration, or those from an application development background.
- Covering all of these topics for all of these students in a single course is an impossible task, which is why we created a three-course series so each course can target specific audience, topics and certifications.
- Specify a name and use provisioner as kubernetes.io/pd.
- So we no longer need the PV definition because the PV and any associated storage is going to be created automatically when the storage class is created for the PVC to use the storage class we defined, we specify the storage class name in the PVC d...
- You can specify the type which could be standard or SSD.

#### Key Commands
- Then we would first simply deploy our application using a simple Docker run Python app command.
- When the load increases, we deploy more instances of our application by running the Docker run commands many more times.
- Earlier we learned about the Kube control run command.
- What this command really does is it deploys a Docker container by creating a pod.
- The Kube control get pods command helps us see the list of pods in our cluster.
- So, for this, in order to view a file within the pod we'll do kubectl exec, and provide the pod name, and then the command.
- So, we'll do kubectl edit on web app.
- So, we're gonna do a kubectl replace force.
- Okay, now we're gonna do a kubectl create minus half bc.
- Lets do a kubectl get pv.
- So before we begin, a quick tip if you don't have the alias set already on your prompt so you could do a alias, k equals kubectl.
- And also if you don't have auto completion then one thing you could do is you could go to the Kubernetes documentation pages search for kubectl cheat sheet and then the first thing that comes here is the kubectl completion bash.

#### Real-World Angle
- At this point, we assume that the application is already developed and built into Docker images, and it is available on Docker repository like Docker Hub, so Kubernetes can pull it down.
- We also assume that the Kubernetes cluster has already been set up and is working.
- As we discussed before with Kubernetes, our ultimate aim is to deploy our application in the form of containers on a set of machines that are configured as worker nodes in a cluster.
- However, Kubernetes does not deploy containers directly on the worker nodes.
- Here we see the simplest of simplest cases, where you have a single node Kubernetes cluster with a single instance of your application running in a single Docker container encapsulated in a pod.
- Well, then you can always deploy additional pods on a new node in the cluster.
- You will have a new node added to the cluster to expand the cluster's physical capacity.
- Let's assume we were developing a process or a script to deploy our application on a Docker host.

#### Pitfalls
- You do not add additional containers to an existing pod to scale your application.
- As this is a beginner's course, we do not deep dive into technical details.
- Now, you don't have to be an expert application developer for this course and there's no real coding or application development involved in either of this course or the certification itself.
- Now, you don't have to take these courses in order.
- It's just that you don't have to manually create PVC anymore.
- We don't need volume mode.
- So, we don't need the advanced selectors.
- We don't need a volume mode, and the storage is gonna be 50 Mi.
- So, we don't need these lines.
- You don't have to have a high end system or access to cloud platforms or worry about cloud costs to gain practice.

#### Troubleshooting Focus
- The Kubernetes for administrators course focuses on advanced topics on Kubernetes, and in-depth discussions into the various concepts around deploying a high-availability cluster for production use case, understanding more about scheduling, monito...
- And our AI Assistant in labs acts as your personal guide, providing feedback, troubleshooting issues, and offering insights as you tackle each task.
- We then cover probes, monitoring, logging, and debugging, key skills to keep applications healthy and resolve issues.
- Okay, so for question six, a new application origin is deployed and there's something wrong with it, identify and fix the issue.
- So everything else kind of seems normal and then we have our init container and our init container, we could see that state is terminated and reason is error.
- This got terminated due to an error.
- And so as you probably expected, this is the issue with the typo, it should just be two e's.
- So let's go ahead and fix that.
- Then I'm gonna open question6.yaml and we're going to fix this.
- So we have now successfully finished fixing the orange pod, it's now up and running.

#### Revision Points
- Let us now look at storage in Kubernetes to understand storage in container orchestration tools like Kubernetes.
- It is important to first understand how storage works with containers.
- Understanding how storage works with Docker first and getting all the basics right will later make it so much easier to understand how it works in Kubernetes.
- When it comes to storage in Docker, there are two concepts you must know about storage drivers and volume driver plugins.
- It's something that we've discussed in the Docker course, so if you have gone through that already, feel free to skip this video or you may choose to stay and refresh your memory.
- Before we head into understanding pods, we would like to assume that the following have been set up already.
- All the services need to be in a running state.
- As we discussed before with Kubernetes, our ultimate aim is to deploy our application in the form of containers on a set of machines that are configured as worker nodes in a cluster.
- What if the number of users accessing your application increase and you need to scale your application?
- You need to add additional instances of your web application to share the load.

#### Step-By-Step Hands-On
1. Read the normalized concept files for this lesson in the listed concept order.
2. Recreate one minimal object or workflow from the YAML examples and note which fields are essential versus optional.
3. Run the core inspection and mutation commands highlighted in the command list, then compare expected versus actual object state.
4. Intentionally trigger one common mistake from the pitfall list, then recover from it using the troubleshooting focus above.
5. End the lesson by summarizing the dependency chain: what this lesson assumes, and what later topics depend on it.

### Lesson: CSI And Recovery Thinking

#### Concepts Covered
- csi
- backup-and-restore

#### Lesson Explanation
- Let us now look at the container storage interface.
- Similarly, as we saw in the networking lectures to extend support for different networking solutions, the container networking interface was introduced now.
- Any new networking vendors could simply develop their plugin based on the CNI standards and make their solution work with Kubernetes.
- You can now write your own drivers for your own storage to work with.
- Kubernetes.
- Portworx.
- Amazon EBS.
- Azure disk.
- Dell EMC Isilon Powermax.
- Unity.
- Let's now look at the operator framework.
- So we've talked about creating a custom resource definition or CRD and a custom controller that has the logic to work with that CRD.

#### Key Structural Points
- For example, CSI says that when a pod is created and requires a volume, the container orchestrator in this case Kubernetes should call the create volume RPC and pass a set of details such as the volume name.
- The storage driver should implement this RPC and handle that request, and provision a new volume on the storage array and return the results of the operation.
- Similarly, container orchestrator should call the delete volume RPC when a volume is to be deleted, and the storage driver should implement the code to decommission the volume from the array when that call is made.
- In the previous lecture, we created a persistent volume.
- Now we will try to create a persistent volume claim to make storage available to a pod.
- Persistent volumes and persistent volume claims are two separate objects in the Kubernetes namespace.
- An administrator creates a set of persistent volumes, and a user creates persistent volume claims to use the storage.
- Once the persistent volume claims are created, Kubernetes binds the persistent volumes to claims based on the request and properties set on the volume.
- Every persistent volume claim is bound to a single persistent volume.
- During the binding process, Kubernetes tries to find a persistent volume that has sufficient capacity as requested by the claim and any other request.

#### Key YAML Examples
- Note that CSI is not a Kubernetes specific standard.
- So here's what the CSI kind of looks like.
- And the specification details exactly what parameters should be sent by the caller, what should be received by the solution, and what error codes should be exchanged.
- If you're interested, you can view all these details in the CSI specification on GitHub at this URL.
- However, if there are multiple possible matches for a single claim and you would like to specifically use a particular volume, you could still use labels and selectors to bind to the right volumes.
- Set the API version to v1 and kind to persistent volume claim.
- Under specification, set the access modes to read.
- It didn't guarantee secure erasure, didn't handle snapshots, or provide provider metadata, and only worked for certain entry volume plugins on cloud or block backends like EBS, Google Cloud, Azure Disk, or network storage like NFS or Sis drivers.
- A plain rm rf leaves a inode metadata and may fail under permissions.
- We start with a blank template, set the API version to v1, and kind to persistent volume claim.

#### Key Commands
- Create command to view the created claim.
- Get persistent volume claim command.
- When we run the Get volumes command again, we see the claim is bound to the persistent volume we created.
- To delete a PVC we run the kubectl delete persistent volume claim command.
- However, note that this is an older option and is deprecated now because the Recycle controller originally did a best effort wipe by launching a tiny recycler pod that mounted the volume and ran a shell command like rm rf Scrub star to clear files.
- Tutor: Let's talk about Lifecycle Management with Helm.
- Now, since Helm knows what Kubernetes objects belong to each release, it can do things like upgrades, downgrades, or uninstalls without touching objects that might belong to other releases.
- By the way, you can pass in a specific version of Helm chart to install using the version option in the install command like this.
- Fortunately, as we said, Helm keeps track of everything associated with a release, so we don't have to upgrade our objects one by one.
- So we run the, "kubecutl get pods", command to see the pod that we created.
- Then we run a "kubectl describe pod" command to see more details about the image, and we see that it's running Nginx version 1.19.2.
- Now let's see a Helm upgrade in action.

#### Real-World Angle
- So in the future, if any new container runtime interface is developed, they can simply follow the CRI standards, and that new container runtime would work with Kubernetes without really having to work with Kubernetes team of developers, or touch t...
- For example, CSI says that when a pod is created and requires a volume, the container orchestrator in this case Kubernetes should call the create volume RPC and pass a set of details such as the volume name.
- Now we will try to create a persistent volume claim to make storage available to a pod.
- However, if there are multiple possible matches for a single claim and you would like to specifically use a particular volume, you could still use labels and selectors to bind to the right volumes.
- If there are no volumes available, the persistent volume claim will remain in a pending state until newer volumes are made available to the cluster.
- Once newer volumes are available.
- The claim would automatically be bound to the newly available volume.
- Since there are no other volumes available, the persistent volume claim is bound to the persistent volume.

#### Pitfalls
- However, note that this is an older option and is deprecated now because the Recycle controller originally did a best effort wipe by launching a tiny recycler pod that mounted the volume and ran a shell command like rm rf Scrub star to clear files.
- For now I do not anticipate any questions on operators itself in the exam.
- Fortunately, as we said, Helm keeps track of everything associated with a release, so we don't have to upgrade our objects one by one.
- Now let's assume this upgrade did something that we don't like.
- You don't have to worry about this.
- Of course you don't have to develop that solutions yourself.
- And you don't have to enable it specifically from the Bios.
- However, note that as you can see here in the documentation page, um, there's a warning that says it can result in security or data loss issues.
- So right now we don't have any virtual machines running.
- So apart from just installing VirtualBox, you don't really have to do anything directly with it.

#### Troubleshooting Focus
- And the specification details exactly what parameters should be sent by the caller, what should be received by the solution, and what error codes should be exchanged.
- Head over to the labs and practice configuring and troubleshooting persistent volumes and volume claims in Kubernetes.
- So Kubernetes operators do what a human operator typically would do to manage a specific application, such as installing it, maintaining it by taking backups, and restoring backups in case of disasters, uh, fixing any issues that may come across t...
- So Kubernetes operators do what a human operator typically will do to manage a specific application such as installing it, maintaining it, by taking backups, and restoring backups in case of disasters, fixing any issues that may come across the ap...
- Uh, if you run into issues with the installation anytime, feel free to run this command and check the status.
- If the test fails, the container is considered unhealthy and is destroyed and recreated.
- As well as additional options like initial delay before the test is run, periodSeconds to define the frequency, and success and failure thresholds.
- We have some fun and challenging exercises where you will be required to configure probes as well as troubleshoot and fix issues with existing probes.
- Create command to view the created claim.
- Get persistent volume claim command.

#### Revision Points
- In the past, Kubernetes used container D alone as the container runtime engine, and all the code to work with container D was embedded within the Kubernetes source code, with other container runtimes coming in, such as rocket and Cri-o.
- It was important to open up and extend support to work with different container runtimes, and not be dependent on the Kubernetes source code.
- And that's how Container Runtime Interface came to be.
- So in the future, if any new container runtime interface is developed, they can simply follow the CRI standards, and that new container runtime would work with Kubernetes without really having to work with Kubernetes team of developers, or touch t...
- Similarly, as we saw in the networking lectures to extend support for different networking solutions, the container networking interface was introduced now.
- And as you can guess, the container storage interface was developed to support multiple storage solutions with CSI.
- You can now write your own drivers for your own storage to work with.
- It is meant to be a universal standard and if implemented, allows any container orchestration tool to work with any storage vendor with a supported plugin.
- Similarly, container orchestrator should call the delete volume RPC when a volume is to be deleted, and the storage driver should implement the code to decommission the volume from the array when that call is made.
- So that's about it for now.

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
- Structural source: learning-path/00_k8s_master_learning_path.md
- Concept detail source: normalized-concepts/
