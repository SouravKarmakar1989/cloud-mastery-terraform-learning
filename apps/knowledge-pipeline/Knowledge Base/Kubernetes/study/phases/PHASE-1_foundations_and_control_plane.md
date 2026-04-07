# Phase 1: Foundations And Control Plane

## Phase Goal
- Build the mental model, control-plane understanding, and API-first operating habits needed before working with higher-level Kubernetes objects.

## Best-Fit Lens
- All three lenses equally. CKAD needs enough control-plane context to reason about workload behavior. CKA and platform/architect learners need deep system understanding here.

## Concepts In This Phase
- kubernetes-mental-model
- cluster-architecture
- etcd
- kube-api-server
- controller-manager
- scheduler
- kubelet
- kube-proxy
- imperative-vs-declarative
- kubectl-apply
- api-groups
- kubeconfig

## Module: Mental Model And Core Architecture

### Module Overview
- This module establishes what Kubernetes is trying to do, what a cluster actually contains, and how work flows from desired state into running workloads.
- Concepts in this module: kubernetes-mental-model, cluster-architecture, etcd, kube-api-server, controller-manager, scheduler, kubelet, kube-proxy

### Lesson: Kubernetes Mental Model And Cluster Architecture

#### Concepts Covered
- kubernetes-mental-model
- cluster-architecture

#### Lesson Explanation
- -: Hello there.
- Before we begin, I wanna spend a minute on the Kubernetes series of courses.
- Kubernetes is one of the most trending technology in cloud computing as of today.
- It is supported on any cloud platform and supports hosting enhanced and complex applications on various kinds of architectures that make it a vast and complex technology.
- There are a set of prerequisite knowledge required such as containers, applications, yammel files, et cetera.
- A lot of topics to discuss, a lot of concepts to cover such as the architecture, networking, load balancing, a variety of monitoring tools, auto scaling, configuration, security storage, et cetera.
- There are students from different backgrounds such as the absolute beginners to Kubernetes or those with some experience looking for specialized knowledge in administration or those from an application development background.
- The Kubernetes for the Absolute Beginner's course, The Certified Kubernetes Administrators course, and The Certified Kubernetes Application Developers course.
- Let's look at what we cover in each of these courses.
- The Kubernetes for the Absolute Beginner's course helps a beginner having no prior experience with containers or container orchestration get started with the concepts of Kubernetes.
- We start with a basic overview of the Kubernetes cluster architecture.
- We first look at the architecture at a high level, and then we drill down into each of these components.

#### Key Structural Points
- You only need to know the real basics of development on a platform like Python or Node.js.
- This course focuses on topics relevant for a developer such as ConfigMaps, secrets and service accounts, multi container pods, readiness and liveness probes, logging and monitoring, jobs, services, and networking.
- So the course begins with core concepts reviewing Kubernetes architecture, pods, and essential configurations to refresh and reinforce foundational knowledge.
- So that's mastering ConfigMaps, security context, resource requirements, secrets, and service accounts to manage app configurations securely and efficiently.
- The multi-container pods module covers multi-container patterns like ambassador, adapter, or sidecar, with examples to demonstrate each use case.
- In workloads and scheduling, we explore labels, selectors, rolling updates, and rollbacks.
- The networking module covers services and network policies to manage connectivity and security within clusters.
- Finally, we cover persistent storage with persistent volumes and claims to ensure data durability across containers.
- So jump right in and roll today, and I'll see you in class.
- It could either be because you cannot find a component or a service that you want to use as part of your application on Docker Hub already or you and your team decided that the application you're developing will be Dockerized for ease of shipping ...

#### Key YAML Examples
- It is supported on any cloud platform and supports hosting enhanced and complex applications on various kinds of architectures that make it a vast and complex technology.
- There are students from different backgrounds such as the absolute beginners to Kubernetes or those with some experience looking for specialized knowledge in administration or those from an application development background.
- Covering all of these topics for all of these students in a single course is an impossible task, which is why we created a three course series so each course can target specific audience, topics, and certifications.
- This certification is a big step in your Kubernetes journey, especially if you are on your way to become a Kubestronaut.
- Instead, every lab is created specifically for the topic you just learned, and you're asked questions to explore and identify information in the lab or do specific tasks.
- Once done, build your image using the docker build command and specify the Docker File as input as well as a tag name for the image.
- To make it available on the public Docker Hub registry, run the docker push command and specify the name of the image you just created.
- Each of these instruct Docker to perform a specific action while creating the image.
- And finally, entry point allows us to specify a command that will be run when the image is run as a container.
- This is helpful especially when you update source code of your application, as it may change more frequently.

#### Key Commands
- If I were to set it up manually, I would start with an operating system like Ubuntu, then update the source repositories using the APT command, then install dependencies using the APT command, then install Python dependencies using the pip command...
- Once done, build your image using the docker build command and specify the Docker File as input as well as a tag name for the image.
- To make it available on the public Docker Hub registry, run the docker push command and specify the name of the image you just created.
- The run instruction instructs Docker to run a particular command on those base images.
- So at this point, Docker runs the apt-get update command to fetch the updated packages and installs required dependencies on the image.
- And finally, entry point allows us to specify a command that will be run when the image is run as a container.
- You could see this information if you run the docker history command followed by the image name.
- When you run the docker build command, you could see the various steps involved and the result of each task.
- The new developers had to follow a large set of instructions and that run hundreds of commands to finally set up their environments.
- Our developers could now get started with a simple docker run command, irrespective of what the underlying operating system they run.
- No direct source-supported coverage found for this concept in the current merged map.

#### Real-World Angle
- Instead, we focus on a high level overview of Kubernetes, setting up a symbol lab environment to play with Kubernetes, learning the prerequisites required to understand and get started, understanding the various concepts to deploy an application s...
- The Kubernetes for Administrators course focuses on advanced topics on Kubernetes and in-depth discussions into the various concepts around deploying a high availability cluster for production use case, understanding more about scheduling, monitor...
- Now, you don't have to be an expert application developer for this course, and there's no real coding or application development involved in either this course or the certification itself.
- You only need to know the real basics of development on a platform like Python or Node.js.
- All of these courses are filled with coding exercises and quizzes that will help you practice developing and deploying applications on Kubernetes.
- The course starts with lectures that simplify Kubernetes development concepts through visuals and animations, followed by hands-on labs that bring these concepts to real life in a real Kubernetes environment.
- And our AI Assistant in labs acts as your personal guide, providing feedback, troubleshooting issues, and offering insights as you tackle each task.
- Our enhanced lab environments offer guided in-browser practice, so you'll tackle hands-on tasks with instant feedback to help you correct mistakes as you go.

#### Pitfalls
- As this is a beginner's course, we do not deep dive into technical details.
- Now, you don't have to be an expert application developer for this course, and there's no real coding or application development involved in either this course or the certification itself.
- Now, you don't have to take these courses in order.
- You don't have to have a high end system or access to cloud platforms or worry about cloud costs to gain practice.
- Our labs are unique, as in, we don't provide a blank environment and give you instructions to copy and paste.
- This way, rebuilding your image is faster and you don't have to wait for Docker to rebuild the entire image each time.
- And when they don't anymore, get rid of it easily without having to clean up too much. (gentle upbeat music)
- Now, you don't have to be an expert application developer for this course and there's no real coding or application development involved in either of this course or the certification itself.
- So what is an OS that do not share the same kernel as this windows?
- It is also important to note that Docker has less isolation as more resources are shared between the containers, like the kernel, whereas VMs have complete isolation from each other since VMs don't rely on the underlying OS or kernel.

#### Troubleshooting Focus
- The Kubernetes for Administrators course focuses on advanced topics on Kubernetes and in-depth discussions into the various concepts around deploying a high availability cluster for production use case, understanding more about scheduling, monitor...
- And our AI Assistant in labs acts as your personal guide, providing feedback, troubleshooting issues, and offering insights as you tackle each task.
- We then cover probes, monitoring, logging, and debugging, key skills to keep applications healthy and resolve issues.
- All the layers built are cast, so the layered architecture helps you restart docker build from that particular step in case it fails.
- So in case a particular step was to fail, for example, in this case, step three failed, and you were to fix the issue and rerun docker build, it will reuse the previous layers from cache and continue to build the remaining layers.
- The Kubernetes for administrators course focuses on advanced topics on Kubernetes, and in-depth discussions into the various concepts around deploying a high-availability cluster for production use case, understanding more about scheduling, monito...
- We had a lot of issues developing this application stack with all these different components.
- First of all, their compatibility with the underlying OS was an issue.
- We've had issues where one service requires one version of a dependent library, whereas another service requires another version.
- This compatibility matrix issue is usually referred to as the matrix from hell.

#### Revision Points
- A lot of topics to discuss, a lot of concepts to cover such as the architecture, networking, load balancing, a variety of monitoring tools, auto scaling, configuration, security storage, et cetera.
- There are students from different backgrounds such as the absolute beginners to Kubernetes or those with some experience looking for specialized knowledge in administration or those from an application development background.
- The Kubernetes for the Absolute Beginner's course helps a beginner having no prior experience with containers or container orchestration get started with the concepts of Kubernetes.
- Instead, we focus on a high level overview of Kubernetes, setting up a symbol lab environment to play with Kubernetes, learning the prerequisites required to understand and get started, understanding the various concepts to deploy an application s...
- This course is also suitable for a non-technical person trying to understand the basic concepts of Kubernetes just enough to get involved in discussions around technology.
- This course also helps you prepare for the certified Kubernetes administrator exam and gets you verified as a Kubernetes administrator.
- The Kubernetes for Developers course is for application developers who are looking to learn how to design, build, and configure cloud native applications.
- Now, you don't have to be an expert application developer for this course, and there's no real coding or application development involved in either this course or the certification itself.
- You only need to know the real basics of development on a platform like Python or Node.js.
- This course also helps you prepare for the certified Kubernetes application developer exam.

#### Step-By-Step Hands-On
1. Read the normalized concept files for this lesson in the listed concept order.
2. Recreate one minimal object or workflow from the YAML examples and note which fields are essential versus optional.
3. Run the core inspection and mutation commands highlighted in the command list, then compare expected versus actual object state.
4. Intentionally trigger one common mistake from the pitfall list, then recover from it using the troubleshooting focus above.
5. End the lesson by summarizing the dependency chain: what this lesson assumes, and what later topics depend on it.

### Lesson: Control-Plane And Node Internals

#### Concepts Covered
- etcd
- kube-api-server
- controller-manager
- scheduler
- kubelet
- kube-proxy

#### Lesson Explanation
- We now look at high availability in Kubernetes.
- So what happens when you lose the master node in your cluster?
- As long as the workers are up and continuous are alive, your applications are still running.
- Users can access the application until things start to fail.
- But the master is not available and so are the controllers and schedulers on the master.
- The master nodes.
- The worker nodes.
- The control plane components.
- So our focus in this lecture is going to be on the master and control plane components.
- Let's take a better look at how it works.
- Instructor: Okay, so in this video, we're going to look into encrypting secret data at rest.
- So if you go to the Kubernetes documentation pages and under Tasks, you have Administer a Cluster and Encrypting Secret Data at Rest, you have these following documents.

#### Key Structural Points
- So what happens when you lose the master node in your cluster?
- For example, a container or pod on the worker node crashes.
- Now, if that pod was part of a replica set, then the replication controller on the master needs to instruct the worker to load a new pod.
- But the master is not available and so are the controllers and schedulers on the master.
- There is no one to recreate the pod and no one to schedule it on nodes.
- Similarly, since the kube API server is not available, you cannot access the cluster externally through kube control tool or through API for management purposes, which is why you must consider multiple master nodes in a high availability configura...
- The master nodes.
- The worker nodes.
- The application, of course, which we already have multiple copies in the form of replica sets and services.
- We've been looking at a three node cluster with one master and two worker nodes throughout this course.

#### Key YAML Examples
- So it is better to have a load balancer of some kind configured in the front of the master nodes that split traffic between the API servers.
- When a controller manager process is configured, you may specify the leader elect option, which is by default set to true.
- It holds the lock for the lease duration specified using the lease duration option, which is by default set to 15 seconds.
- And if you look into the API service configuration options, we have a set of options specifying where the etcd server is.
- This is why we specify a list of etcd servers in the kube API server configuration.
- What kind of workloads are you going to run on this cluster?
- What kind of applications are going to be hosted on the cluster?
- Depending on the kind of application, the resource requirements may vary.
- This table shows the size of the instances and their resource specifications for specific number of nodes.
- As a best practice, it is recommended to dedicate master nodes for control plane components only, especially in a production environment.

#### Key Commands
- The scheduler follows a similar approach and has the same command line options.
- Run the etcd cuddle command and specify the key as name and value as John.
- To retrieve data, run the etcd cuddle git command with the key name and it returns the value.
- Only command.
- It's just a file that has all commands we will be using, and we can run this multiple times for each container.
- We create that using the IP link add command.
- Using the IP link, set command with an assigned IP address using the IP addr command, and add a route to the default gateway.
- Whenever a container is created, the container runtime looks at the CNI configuration passed as a command line argument when it was run, and identifies our scripts name.
- It then looks in the CNI bin directory to find our script, and then executes the script with the add command and the name and namespace ID of the container, and then our script takes care of the rest.
- So we can do this by running a kubectl get nodes and we can see there's two nodes, control-plane and node01.
- All right, so this basically uses, it is built with the kubeadm tool and has containerd.
- So I'm going to do a kubectl create secret, and I want a generic secret, so I'll do that, and I'll probably create a secret from literal, so I'm just going to copy this command.

#### Real-World Angle
- We now look at high availability in Kubernetes.
- So what happens when you lose the master node in your cluster?
- For example, a container or pod on the worker node crashes.
- But the master is not available and so are the controllers and schedulers on the master.
- Similarly, since the kube API server is not available, you cannot access the cluster externally through kube control tool or through API for management purposes, which is why you must consider multiple master nodes in a high availability configura...
- A high availability configuration is where you have redundancy across every component in the cluster, so as to avoid a single point of failure.
- We've been looking at a three node cluster with one master and two worker nodes throughout this course.
- Now we know that the API server is responsible for receiving requests and processing them or providing information about the cluster.

#### Pitfalls
- You don't have to memorize the numbers that we discussed as these are available in the documentation page.
- When the cluster is set up, we have three nodes that do not have a leader elected.
- Now that it is elected the leader, it sends out notification at regular intervals to other masters, informing them that it is continuing to assume the role of the leader in case the other nodes do not receive a notification from the leader at some...
- Now, you don't have to know any kind of complicated scripting.
- Don't focus on the options as they are similar to what we saw in our previous lectures.
- Of course, we don't want to do that, as in large environments where thousands of pods are created every minute.
- For now I do not anticipate any questions on operators itself in the exam.
- Now you don't want to build and run it each time, so you may package the custom controller in a Docker image and then choose to run it inside your Kubernetes cluster as a pod or a deployment.
- Now, in the exam, I don't expect them to ask a question about building a custom controller as it requires more coding knowledge.
- So I don't anticipate a question on this.

#### Troubleshooting Focus
- A high availability configuration is where you have redundancy across every component in the cluster, so as to avoid a single point of failure.
- For example, the controller manager consists of controllers like the replication controller that is constantly watching the state of pots and taking necessary actions like creating a new pot when one fails, etc..
- That way, if one process fails, maybe because the first master crashes, then the second process can acquire the lock and become the leader.
- If one fails, there is no quorum, so rights won't be processed.
- Say for example, due to a disruption in the network, it fails and causes the network to partition.
- So Kubernetes operators do what a human operator typically would do to manage a specific application, such as installing it, maintaining it by taking backups, and restoring backups in case of disasters, uh, fixing any issues that may come across t...
- So the issuer is Kubernetes, but the subject, which is what this certificate is issued to, is the common name for that is kube-apiserver.
- Now, what is the name of the CA who issued the Kube API Server Certificate?
- If you at here you have the issuer and the name is Kubernetes.
- So Kubernetes is the CA who issued the Kube API Server Certificate.

#### Revision Points
- Users can access the application until things start to fail.
- Now, if that pod was part of a replica set, then the replication controller on the master needs to instruct the worker to load a new pod.
- There is no one to recreate the pod and no one to schedule it on nodes.
- A high availability configuration is where you have redundancy across every component in the cluster, so as to avoid a single point of failure.
- So our focus in this lecture is going to be on the master and control plane components.
- Are they going to do the same thing twice?
- So far in this course, we know that the kube control utility talks to the API server to get things done, and we point the kube control utility to reach the master node at port 643.
- We can send the request to either one of them.
- But we shouldn't be sending the same request to both of them.
- So it is better to have a load balancer of some kind configured in the front of the master nodes that split traffic between the API servers.

#### Step-By-Step Hands-On
1. Read the normalized concept files for this lesson in the listed concept order.
2. Recreate one minimal object or workflow from the YAML examples and note which fields are essential versus optional.
3. Run the core inspection and mutation commands highlighted in the command list, then compare expected versus actual object state.
4. Intentionally trigger one common mistake from the pitfall list, then recover from it using the troubleshooting focus above.
5. End the lesson by summarizing the dependency chain: what this lesson assumes, and what later topics depend on it.

## Module: API-Driven Operations

### Module Overview
- This module shifts the learner from object recognition to API-centered interaction, which is the foundation for declarative cluster operation.
- Concepts in this module: imperative-vs-declarative, kubectl-apply, api-groups, kubeconfig

### Lesson: Declarative Interaction And Client Context

#### Concepts Covered
- imperative-vs-declarative
- kubectl-apply
- api-groups
- kubeconfig

#### Lesson Explanation
- Let us now look at horizontal pod autoscaler in Kubernetes.
- Let's start by looking at how I would manually scale a workload horizontally.
- So I'm a Kubernetes administrator, and I'm sitting on my machine looking at a cluster.
- And I'm tasked to make sure that there is always sufficient workload to support demand for this application.
- This means that 500 Millicores is the max the CPU it gets, after which it doesn't get any more.
- Um, and the capacity that a single pod can handle is 500 millicores of CPU.
- So I would run the kubectl top pod command and monitor the resource consumption of the pod.
- If I had to do it manually.
- Now remember that you must have the metrics server running on the cluster to be able to monitor the resource usage like this.
- Now, when it reaches the threshold of 450 millicores or whatever it is that I have defined as the threshold or close to that.
- And that's going to be the focus of this video.
- I have two YAML files.

#### Key Structural Points
- Let us now look at horizontal pod autoscaler in Kubernetes.
- From a deployment configuration perspective, I see this pod requests 250 milli CPU and has a limit of 500 millicores of CPU.
- Um, and the capacity that a single pod can handle is 500 millicores of CPU.
- So I would run the kubectl top pod command and monitor the resource consumption of the pod.
- I would run the kubectl scale command to scale the deployment to add additional pods.
- So to solve this, we use the Horizontal Pod autoscaler.
- So the horizontal Pod autoscaler continuously monitors the metrics as we did manually using the top command.
- It then automatically increases or decreases the number of pods in a deployment Statefulset or replica set based on the CPU, memory, or custom metrics.
- And if the CPU, memory, or memory usage goes too high, HPA creates more paths to handle that, and if it drops, it removes the extra pods to save resources and thus balances the thresholds.
- For the given nginx deployment, we can configure a horizontal pod autoscaler by running the kubectl autoscale command, targeting the deployment myapp, and specifying a CPU threshold of 50% with a minimum of one and maximum of ten pods.

#### Key YAML Examples
- From a deployment configuration perspective, I see this pod requests 250 milli CPU and has a limit of 500 millicores of CPU.
- For the given nginx deployment, we can configure a horizontal pod autoscaler by running the kubectl autoscale command, targeting the deployment myapp, and specifying a CPU threshold of 50% with a minimum of one and maximum of ten pods.
- So it would never go beyond the maximum that we have specified when scaling up, and it would not go beyond the minimum that we specified when scaling down.
- So create an HPA definition file with the API version set to auto scaling v2 kind is set to horizontal pod autoscaler.
- By using a secret definition file with the imperative method, you can directly specify the key value pairs in the command line itself to create a secret of the given values.
- The from literal option is used to specify the key value pairs in the command itself.
- If you wish to add additional key value pairs, simply specify the from literal options multiple times.
- Use the from file option to specify a path to the file that contains the required data.
- The file has API version kind metadata and data.
- Kind is secret.

#### Key Commands
- So I would run the kubectl top pod command and monitor the resource consumption of the pod.
- I would run the kubectl scale command to scale the deployment to add additional pods.
- I need to manually run commands to scale up and down.
- So the horizontal Pod autoscaler continuously monitors the metrics as we did manually using the top command.
- For the given nginx deployment, we can configure a horizontal pod autoscaler by running the kubectl autoscale command, targeting the deployment myapp, and specifying a CPU threshold of 50% with a minimum of one and maximum of ten pods.
- So when this command is run, Kubernetes creates a horizontal pod autoscaler for this deployment that first reads the limits configured on the pod, and then learns that it's set to 500 milli core.
- So to view the status of the created HPA, run the kubectl get HPA command and it lists the current HPA.
- And when you no longer need the HPA, you can delete it using the kubectl delete HPA command.
- By using a secret definition file with the imperative method, you can directly specify the key value pairs in the command line itself to create a secret of the given values.
- Create secret generic command.
- (jaunty music) Instructor: Now that we have the Kustomize tool installed and configured, we're gonna finally get started playing with the tool itself.
- And we're gonna point Kustomize to this folder, 'cause this is where all of my Kubernetes configs are.

#### Real-World Angle
- So I'm a Kubernetes administrator, and I'm sitting on my machine looking at a cluster.
- From a deployment configuration perspective, I see this pod requests 250 milli CPU and has a limit of 500 millicores of CPU.
- Now remember that you must have the metrics server running on the cluster to be able to monitor the resource usage like this.
- I would run the kubectl scale command to scale the deployment to add additional pods.
- It then automatically increases or decreases the number of pods in a deployment Statefulset or replica set based on the CPU, memory, or custom metrics.
- For the given nginx deployment, we can configure a horizontal pod autoscaler by running the kubectl autoscale command, targeting the deployment myapp, and specifying a CPU threshold of 50% with a minimum of one and maximum of ten pods.
- So when this command is run, Kubernetes creates a horizontal pod autoscaler for this deployment that first reads the limits configured on the pod, and then learns that it's set to 500 milli core.
- That's the deployment named Myapp.

#### Pitfalls
- So you don't have to worry about that for now.
- Okay, so, this is basically command, and it says the Dry Run command is deprecated and is replaced with the Dry Run = Client.
- If you do not wish to create a config map definition file, you could simply use the cube control, create Configmap command and specify the required arguments.
- You don't have to worry about this.
- Of course you don't have to develop that solutions yourself.
- If you do not wish to create a config map definition file, you could simply use the cube control create config map command and specify the required arguments.
- You don't have to provide step-by-step instructions.
- Now, these commands help in quickly creating or modifying objects as we don't have to deal with YAML files.
- That's what we learned, so we're gonna run the kubectl get pods command, and you can ignore this line here that says in the current default namespace, so we're gonna talk about namespaces in one of the upcoming lectures, so you don't have to worry...
- Okay, so, so this is basically command and it says, "The dry-run command is deprecated," and it's replaced with the dry-run equals client, So let's run that, okay, so this is the yaml file.

#### Troubleshooting Focus
- So out of these it's not running ready your success is actually error or waiting.
- Okay, now why do you think the container Agent X in pod web app is in an error or waiting state?
- So if you look at one of the section here, under State you have the reason called as error image pull.
- Or if you just look at it below here in the event section, you can see the error.
- Okay, so it's created and it's in an error image pool state because we have the wrong image name.
- And the last question for this lab is to change the image on this pod to Redis, to fix that error that we, you know, purposefully created.
- Okay, let's check status Now we'll talk about this error message later when we talk about imperative commands and the declarative way that we apply.
- So head over to the coding exercises section and practice viewing, configuring and troubleshooting environment variables on a live Kubernetes environment.
- Well, then it would fail with an error that says the pod already exists.
- If an object does not exist, the replace command fails with an error message.

#### Revision Points
- And I'm tasked to make sure that there is always sufficient workload to support demand for this application.
- If I had to do it manually.
- Now remember that you must have the metrics server running on the cluster to be able to monitor the resource usage like this.
- Now, when it reaches the threshold of 450 millicores or whatever it is that I have defined as the threshold or close to that.
- I would run the kubectl scale command to scale the deployment to add additional pods.
- So that's the manual way to scale a workload.
- The problems with this approach is that I have to sit in front of my computer and continuously monitor resource usage.
- I need to manually run commands to scale up and down.
- And if there's a sudden traffic spike and I want a break or something, I may not be able to react fast enough to support the spike in the application or in the traffic.
- So to solve this, we use the Horizontal Pod autoscaler.

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
