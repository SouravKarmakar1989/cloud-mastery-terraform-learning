# Phase 2: Workload Primitives

## Phase Goal
- Move from cluster internals to the first application-facing objects that define, replicate, expose, and isolate workloads.

## Best-Fit Lens
- CKAD first, then CKA and platform. This is where the workload model becomes concrete.

## Concepts In This Phase
- pods
- labels-and-selectors
- replicasets
- deployments
- services
- namespaces

## Module: Core Workload Objects

### Module Overview
- This module teaches the baseline object model that nearly every later concept depends on: pods, labels, replication, services, and namespaces.
- Concepts in this module: pods, labels-and-selectors, replicasets, deployments, services, namespaces

### Lesson: Pods And Labels As The Smallest Deployable Unit

#### Concepts Covered
- pods
- labels-and-selectors

#### Lesson Explanation
- Hello and welcome to this lecture.
- In this lecture we will discuss about namespaces in Kubernetes.
- Let us begin with an analogy.
- There are two boys named Mark to differentiate them from each other.
- We call them by their last names, Smith and Williams.
- They come from different houses, of course, the Smiths and the Williams.
- There are other members in the house.
- However, if the father wishes to address the mark in the other house, he would use the full name.
- Someone outside of these houses would also use the full name to refer to the boys or anyone within these houses.
- Each of these houses have their own set of rules that defines who does what.
- In this lecture we will talk about node selectors in Kubernetes.
- You have different kinds of workloads running in your cluster.

#### Key Structural Points
- In this lecture we will discuss about namespaces in Kubernetes.
- These houses correspond to namespaces in Kubernetes.
- So far in this course, we've created objects such as pods, deployments, and services in our cluster.
- Whatever we have been doing, we have been doing within a namespace.
- This namespace is known as the default namespace, and it is created automatically by Kubernetes.
- When the cluster is first set up, Kubernetes creates a set of pods and services for its internal purpose, such as those required by the networking solution, the DNS service, etc. to isolate these from the user and to prevent you from accidentally ...
- A third namespace created by Kubernetes automatically is called kube public.
- If your environment is small or you're learning and playing around with a small cluster, you shouldn't really have to worry about namespaces.
- You could continue to work in the default namespace.
- However, as of when you grow and use a Kubernetes cluster for enterprise or production purposes, you may want to consider the use of namespaces.

#### Key YAML Examples
- Let us now look at some of the operational aspects of namespaces.
- If you want to make sure that this pod gets created in the dev environment all the time, even if you don't specify the namespace in the command line, you can move the namespace definition into the pod definition file like this.
- Under the metadata section, this is a good way to ensure your resources are always created in the same namespace.
- The API version is v1, kind is namespace, and under metadata specify the name in this case dev.
- But what if we want to switch to the dev namespace permanently so that we don't have to specify the namespace option anymore?
- You can then simply run the kube control get pods command without the namespace option to list pods in the dev environment, but you will need to specify the option for other environments such as default or prod.
- Specify the namespace for which you want to create the quota and then under spec provide your limits such as ten pods, ten CPU units, ten GB bytes of memory, etc..
- So there is some kind of error.
- So it says no kind deployment is registered for version apps slash v1.
- So if we look at the file, we see that the API version is app slash v1 which seems to be correct, but the kind is deployment, which is also right, but the issue is that it's case sensitive, right?

#### Key Commands
- Let us start with a kube control commands.
- For example, this command is used to list all the pods, but it only lists the pods in the default namespace.
- To list pods in another namespace, use the namespace option in the command along with the name of the namespace, in this case kube system.
- If you want to make sure that this pod gets created in the dev environment all the time, even if you don't specify the namespace in the command line, you can move the namespace definition into the pod definition file like this.
- Create command to create the namespace.
- Another way to create a namespace is by simply running the command Kube control create namespace followed by the name of the namespace.
- As we discussed before, by default we are in the default namespace, which is why we can see the resources inside the default namespace using the kube control get pods command.
- Well, in that case, use the kube control config command to set the namespace in the current context to dev.
- You can then simply run the kube control get pods command without the namespace option to list pods in the dev environment, but you will need to specify the option for other environments such as default or prod.
- Finally, to view pods in all namespaces, use the all namespaces option in the command.
- To label a node, use the command Kube cube control label nodes, followed by the name of the node and the label in a key value pair format.
- Once the file is ready, run the kubectl create command and input the file using the f parameter.

#### Real-World Angle
- For example, the father addresses Mark simply as Mark.
- So far in this course, we've created objects such as pods, deployments, and services in our cluster.
- When the cluster is first set up, Kubernetes creates a set of pods and services for its internal purpose, such as those required by the networking solution, the DNS service, etc. to isolate these from the user and to prevent you from accidentally ...
- This is where resources that should be made available to all users are created.
- If your environment is small or you're learning and playing around with a small cluster, you shouldn't really have to worry about namespaces.
- However, as of when you grow and use a Kubernetes cluster for enterprise or production purposes, you may want to consider the use of namespaces.
- For example, if you wanted to use the same cluster for both dev and production environment, but at the same time isolate the resources between them, you can create a different namespace for each of them.
- That way, while working in the dev environment, you don't accidentally modify resources in production.

#### Pitfalls
- That way, while working in the dev environment, you don't accidentally modify resources in production.
- If you want to make sure that this pod gets created in the dev environment all the time, even if you don't specify the namespace in the command line, you can move the namespace definition into the pod definition file like this.
- But what if we want to switch to the dev namespace permanently so that we don't have to specify the namespace option anymore?
- We do not know how many replica sets.
- And we don't want to spend a lot of time during the exam just not knowing what those are.
- However, when you upgrade your instances, you do not want to upgrade all of them at once, as we just did.
- Finally, say, for example, you would like to make multiple changes to your environment, such as upgrading the underlying web server versions, as well as scaling your environment and also modifying the resource allocations, etc. you do not want to ...
- And, I do not see any arguments.
- So taking a quick look, I don't see anything wrong with it.
- So this exercise was just to kind of make sure you know that you don't accidentally put in a number instead of a string.

#### Troubleshooting Focus
- So there is some kind of error.
- So if we look at the file, we see that the API version is app slash v1 which seems to be correct, but the kind is deployment, which is also right, but the issue is that it's case sensitive, right?
- So the reason we have these kind of exercises is just to help you understand and learn how to, you know, know what the issue is when you come up across these errors.
- So oftentimes you'll face these kind of errors because of these kind of typos or, you know, a word's not being spelled correctly or not in the right case.
- And you should know what those mean when you see these kind of errors.
- So I've just fixed that and let's proceed with the creation.
- Suppose one of the upgrades you performed resulted in an unexpected error, and you're asked to undo the recent change You would like to be able to roll back the changes that were recently carried out.
- So try and fix it.
- So, there's the link here, and clicking on it, we see that it gives us a bad gateway error.
- Of course it's obvious, but I just wanna show you if you're not sure what the error is then you've got to look at one of these pods in a bit more detail.

#### Revision Points
- Hello and welcome to this lecture.
- There are two boys named Mark to differentiate them from each other.
- However, if the father wishes to address the mark in the other house, he would use the full name.
- Someone outside of these houses would also use the full name to refer to the boys or anyone within these houses.
- Now let's get back to Kubernetes.
- These houses correspond to namespaces in Kubernetes.
- When the cluster is first set up, Kubernetes creates a set of pods and services for its internal purpose, such as those required by the networking solution, the DNS service, etc. to isolate these from the user and to prevent you from accidentally ...
- This is where resources that should be made available to all users are created.
- If your environment is small or you're learning and playing around with a small cluster, you shouldn't really have to worry about namespaces.
- You could continue to work in the default namespace.

#### Step-By-Step Hands-On
1. Read the normalized concept files for this lesson in the listed concept order.
2. Recreate one minimal object or workflow from the YAML examples and note which fields are essential versus optional.
3. Run the core inspection and mutation commands highlighted in the command list, then compare expected versus actual object state.
4. Intentionally trigger one common mistake from the pitfall list, then recover from it using the troubleshooting focus above.
5. End the lesson by summarizing the dependency chain: what this lesson assumes, and what later topics depend on it.

### Lesson: Replication And Rollout Primitives

#### Concepts Covered
- replicasets
- deployments

#### Lesson Explanation
- Controllers are the brain behind Kubernetes.
- They are the processes that monitor Kubernetes objects and respond accordingly.
- In this lecture, we will discuss about one controller in particular and that is the replication controller.
- So what is a replica and why do we need a replication controller?
- To prevent users from losing access to our application, we would like to have more than one instance or pod running at the same time.
- So does that mean you can't use a replication controller if you plan to have a single pod?
- No.
- Thus, the replication controller ensures that the specified number of pods are running at all times, even if it's just 1 or 100.
- It's important to note that there are two similar terms replication controller and replica set.
- Both have the same purpose, but they are not the same.
- (bright music) Instructor: In the last lecture, we learned about the kustomize build command.
- It's pretty long, but let me explain what it does.

#### Key Structural Points
- Controllers are the brain behind Kubernetes.
- In this lecture, we will discuss about one controller in particular and that is the replication controller.
- So what is a replica and why do we need a replication controller?
- Let's go back to our first scenario where we had a single pod running our application.
- What if for some reason our application crashes and the pod fails, users will no longer be able to access our application?
- To prevent users from losing access to our application, we would like to have more than one instance or pod running at the same time.
- The replication controller helps us run multiple instances of a single pod in the Kubernetes cluster, After, thus providing high availability.
- So does that mean you can't use a replication controller if you plan to have a single pod?
- Even if you have a single pod, replication controller can help by automatically bringing up a new pod when the existing one fails.
- Thus, the replication controller ensures that the specified number of pods are running at all times, even if it's just 1 or 100.

#### Key YAML Examples
- Thus, the replication controller ensures that the specified number of pods are running at all times, even if it's just 1 or 100.
- We will name it rc definition dot YAML.
- As with any Kubernetes definition file, we have four sections the API, version, kind, metadata, and spec.
- The API version is specific to what we are creating.
- The kind as we know is replication controller.
- Under metadata we will add a name and we will call it Myapp dash RC.
- The next is the most crucial part of the definition file, and that is the specification written as spec for any Kubernetes definition file.
- The spec section defines what's inside the object we are creating.
- We create a template section under spec to provide a pod template to be used by the replication controller to create replicas.
- To populate the templates section, move all the contents of the Pod definition file into the templates section of the replication controller, except for the first few lines which are API version and kind.

#### Key Commands
- Once the file is ready, run the kubectl create command and input the file using the f parameter.
- To view the list of created replication controllers, run the kubectl get replication controller command and you will see the replication Controller listed.
- If you would like to see the pods that were created by the replication controller, run the kubectl get pods command and you will see three pods running.
- And as always, to create a replica set, run the kubectl create command, providing the definition file as input and to see the created replicas run the kubectl get replica set command to get list of pods.
- Simply run the kube control get pods command.
- The first is to update the number of replicas in the definition file to six, then run the kubectl apply command to specify the same file using the f parameter, and that will update the replica set to have six replicas.
- The second way to do it is to run the kube control scale command.
- In other words, the number of replicas in the replica set definition file will still be three, even though you scaled your replica set to have six replicas using the Kube control scale command and the file as input.
- Let us now review the commands real quick.
- The cube control create command as we know, is used to create a replica, set or basically any object in Kubernetes depending on the file we are providing as input.
- (bright music) Instructor: In the last lecture, we learned about the kustomize build command.
- And we learned that when we run this command, it's going to take all of our resources, it's going to apply the all...

#### Real-World Angle
- The replication controller helps us run multiple instances of a single pod in the Kubernetes cluster, After, thus providing high availability.
- For example, in this simple scenario, we have a single pod serving a set of users.
- When the number of users increased, we deploy additional pod to balance the load across the two pods.
- If the demand further increases, and if we were to run out of resources on the first node, Snowed, we could deploy additional pods across the other nodes in the cluster.
- As you can see, the replication controller spans across multiple nodes in the cluster.
- And we will also add a few labels app and type and assign values to them.
- The kind would be replica set and we add name and labels in the metadata.
- Say for example, the reports created before the creation of the replica set that matched labels specified in the selector.

#### Pitfalls
- Do not increase the replicas of the frontend deployment." So if we do a kubectl get deployments, we can see that the frontend, the original version one has five pods, and then frontend v2 has two pods.
- The response back to the user, denoted by the dotted lines, do not really matter.
- What if we do not want the front end web server to be able to communicate with the database server directly?
- And what's important to understand is that we don't actually deploy or apply any of these configs.
- So don't worry if you don't fully understand this piece of code.
- Well now when we create a service.yml file, we have to remember to copy it to all three directories because we don't want it to be missing from one of our environments.
- What we don't wanna do is copy all of our configs across each and every environment.
- Now we already know we don't want it to be 1 in staging and production, and we only want it to be 1 in development, but we'll worry about that in a second.
- The great part about Kustomize is it actually comes built in with kubectl, so you don't have to install any other packages.
- With Kustomize, we're not actually making use of any sort of templating system like we do in helm, and that's nice because we don't actually have to learn a templating language, all we have to do is just define our base configs and then specify ou...

#### Troubleshooting Focus
- What if for some reason our application crashes and the pod fails, users will no longer be able to access our application?
- That way, if one fails, we still have our application running on the other one.
- Even if you have a single pod, replication controller can help by automatically bringing up a new pod when the existing one fails.
- If you get this wrong, you are likely to get an error that looks like this.
- So in order to fix this, um, one easy way to do it is to select the, the whole section that we just pasted, except for the the first line and then press tab twice and then or until, um, you know, um, it fixes, uh, the, the, the indentation.
- So for now, we will just stick to the manual way of fixing it.
- Um, so, uh, now the the format is corrected and there are no more errors in the file.
- So this is, um, a handy tool and command if you would like to inspect, um, what happened to a replica set in case, you know, you're troubleshooting something or you're just looking for more information on what's happening with the replica set, um,...
- Of course, it's obvious, but I'm just I just want to show you, if you're not sure what the error is, then you've got to look at one of these parts in a bit more detail.
- So there's one here and there's an issue with the file, so we have to try and fix it.

#### Revision Points
- Let's go back to our first scenario where we had a single pod running our application.
- What if for some reason our application crashes and the pod fails, users will no longer be able to access our application?
- To prevent users from losing access to our application, we would like to have more than one instance or pod running at the same time.
- The replication controller helps us run multiple instances of a single pod in the Kubernetes cluster, After, thus providing high availability.
- So does that mean you can't use a replication controller if you plan to have a single pod?
- Another reason we need replication controller is to create multiple pods to share the load across them.
- When the number of users increased, we deploy additional pod to balance the load across the two pods.
- If the demand further increases, and if we were to run out of resources on the first node, Snowed, we could deploy additional pods across the other nodes in the cluster.
- It helps us balance the load across multiple pods on different nodes, as well as scale our application when the demand increases.
- It's important to note that there are two similar terms replication controller and replica set.

#### Step-By-Step Hands-On
1. Read the normalized concept files for this lesson in the listed concept order.
2. Recreate one minimal object or workflow from the YAML examples and note which fields are essential versus optional.
3. Run the core inspection and mutation commands highlighted in the command list, then compare expected versus actual object state.
4. Intentionally trigger one common mistake from the pitfall list, then recover from it using the troubleshooting focus above.
5. End the lesson by summarizing the dependency chain: what this lesson assumes, and what later topics depend on it.

### Lesson: Namespaces, Services, And Discovery Boundaries

#### Concepts Covered
- services
- namespaces

#### Lesson Explanation
- Before we head into understanding pods, we would like to assume that the following have been set up already.
- At this point, we assume that the application is already developed and built into Docker images, and it is available on Docker repository like Docker Hub, so Kubernetes can pull it down.
- We also assume that the Kubernetes cluster has already been set up and is working.
- This could be a single node setup or a multi-node setup.
- Doesn't matter.
- All the services need to be in a running state.
- The containers are encapsulated into a Kubernetes object known as pods.
- A pod is a single instance of an application.
- Here we see the simplest of simplest cases, where you have a single node Kubernetes cluster with a single instance of your application running in a single Docker container encapsulated in a pod.
- What if the number of users accessing your application increase and you need to scale your application?
- This lecture will discuss about CNI in Kubernetes.
- In the prerequisite lectures we started all the way from the absolute basics of network namespaces.

#### Key Structural Points
- Before we head into understanding pods, we would like to assume that the following have been set up already.
- This could be a single node setup or a multi-node setup.
- All the services need to be in a running state.
- As we discussed before with Kubernetes, our ultimate aim is to deploy our application in the form of containers on a set of machines that are configured as worker nodes in a cluster.
- However, Kubernetes does not deploy containers directly on the worker nodes.
- The containers are encapsulated into a Kubernetes object known as pods.
- A pod is a single instance of an application.
- A pod is the smallest object that you can create in Kubernetes.
- Here we see the simplest of simplest cases, where you have a single node Kubernetes cluster with a single instance of your application running in a single Docker container encapsulated in a pod.
- Do we bring up new container instance within the same pod?

#### Key YAML Examples
- A single pod can have multiple containers, except for the fact that they're usually not multiple containers of the same kind.
- But sometimes you might have a scenario where you have a helper container that might be doing some kind of supporting task for our web application, such as processing a user entered data, processing a file uploaded by the user, etc. and you want t...
- For that you need to specify the image name using the image parameter.
- In this lecture we will talk about creating a pod using a YAML based configuration file.
- In the previous lecture we learned about YAML files in general.
- Now we will learn how to develop YAML files specifically for Kubernetes.
- Kubernetes uses YAML files as inputs for the creation of objects such as pods, replicas, deployments, services, etc. all of these follow a similar structure.
- A Kubernetes definition file always contains four top level fields the API version, kind, metadata, and spec.
- Next is the kind.
- The kind refers to the type of object we are trying to create, which in this case happens to be a pod.

#### Key Commands
- Then we would first simply deploy our application using a simple Docker run Python app command.
- When the load increases, we deploy more instances of our application by running the Docker run commands many more times.
- Earlier we learned about the Kube control run command.
- What this command really does is it deploys a Docker container by creating a pod.
- The Kube control get pods command helps us see the list of pods in our cluster.
- Once the file is created, run the command kubectl create dash f followed by the file name, which is pod definition dot YAML and Kubernetes creates the pod.
- Use the kubectl get pods command to see a list of pods available.
- To see detailed information about the pod, run the kubectl describe pod command.
- If you're learning Kubernetes, you can run commands here and interact with the system and perform your tasks.
- One is this terminal on the right where you'll be working, and you'll run commands to view and configure the Kubernetes cluster.
- It's just a file that has all commands we will be using, and we can run this multiple times for each container.
- We create that using the IP link add command.

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
- Now, don't be too worried about the exam interface itself.
- Don't stress too much about it.
- If you if you don't know anything you have, you must go through the documentation pages and try to find the answers.
- As this is a beginner's course, we do not deep dive into technical details.
- Now, you don't have to be an expert application developer for this course and there's no real coding or application development involved in either of this course or the certification itself.
- Now, you don't have to take these courses in order.
- So for this, if you don't remember how to create a storageclass off the top of your head, we can always just go to the documentation and just search for storageclass.
- I mean it's set to false so it doesn't matter, but we don't really need this configuration.
- We don't need that.

#### Troubleshooting Focus
- The Kubernetes for administrators course focuses on advanced topics on Kubernetes, and in-depth discussions into the various concepts around deploying a high-availability cluster for production use case, understanding more about scheduling, monito...
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
- Before we head into understanding pods, we would like to assume that the following have been set up already.
- All the services need to be in a running state.
- As we discussed before with Kubernetes, our ultimate aim is to deploy our application in the form of containers on a set of machines that are configured as worker nodes in a cluster.
- What if the number of users accessing your application increase and you need to scale your application?
- You need to add additional instances of your web application to share the load.
- You will have a new node added to the cluster to expand the cluster's physical capacity.
- So what I'm trying to illustrate in this slide is that pods usually have a 1 to 1 relationship, with containers running your application.
- To scale up, you create new pods, and to scale down you delete existing pods.
- You do not add additional containers to an existing pod to scale your application.
- For now, we are only trying to understand the basic concepts.

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
