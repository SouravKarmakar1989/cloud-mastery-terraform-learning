# Phase 3: Application Configuration And Delivery

## Phase Goal
- Teach how workloads become configurable, composable, and reusable across environments.

## Best-Fit Lens
- CKAD primary, platform secondary. This phase converts raw object knowledge into deployment practice.

## Concepts In This Phase
- commands-and-arguments
- environment-variables
- application-lifecycle
- configmaps
- secrets
- multi-container-pods
- init-containers
- helm
- kustomize

## Module: Runtime Configuration

### Module Overview
- This module focuses on how container behavior is shaped at runtime and how application configuration is externalized.
- Concepts in this module: commands-and-arguments, environment-variables, application-lifecycle, configmaps, secrets

### Lesson: Command Surface And Application Lifecycle Basics

#### Concepts Covered
- commands-and-arguments
- environment-variables
- application-lifecycle

#### Lesson Explanation
- In this lecture we will look at commands and arguments in a Kubernetes pod.
- We named it Ubuntu Sleeper and we ran it using the docker command Docker run ubuntu sleeper.
- By default it sleeps for five seconds, but you can override it by passing a command line argument.
- We start with a blank pod definition template, input the name of the pod and specify the image name.
- Now, if you need the container to sleep for 10s as in the second command, how do you specify the additional argument in the pod definition file?
- Anything that is appended to the docker run command will go into the args property of the pod definition file in the form of an array like this.
- The docker file has an entry point as well as a cmd instructions Specified, the entry point is the command that is run at startup, and the cmd is the default parameter passed to the command with the args option in the Pod definition file.
- We override the cmd instruction in the docker file.
- But what if you need to override the entry point, say from sleep to an imaginary sleep 2.0 command?
- In the Docker world, we would run the docker run command with the entry point option set to the new command.
- In this lecture we will discuss how to work with configuration data in Kubernetes.
- In the previous lecture we saw how to define environment variables in a Pod definition file.

#### Key Structural Points
- In this lecture we will look at commands and arguments in a Kubernetes pod.
- We will now create a pod using this image.
- We start with a blank pod definition template, input the name of the pod and specify the image name.
- When this pod is created, it creates a container from the specified image and the container sleeps for five seconds before exiting.
- Now, if you need the container to sleep for 10s as in the second command, how do you specify the additional argument in the pod definition file?
- Anything that is appended to the docker run command will go into the args property of the pod definition file in the form of an array like this.
- The docker file has an entry point as well as a cmd instructions Specified, the entry point is the command that is run at startup, and the cmd is the default parameter passed to the command with the args option in the Pod definition file.
- The corresponding entry in the pod definition file would be using a command field.
- The docker file has an entry point as well as a cmd instruction Specified, the entry point is the command that is run at startup, and the cmd is the default parameter passed to the command with the args option in the Pod definition file.
- So the first question is, how many pods exist on the system?

#### Key YAML Examples
- We start with a blank pod definition template, input the name of the pod and specify the image name.
- When this pod is created, it creates a container from the specified image and the container sleeps for five seconds before exiting.
- Now, if you need the container to sleep for 10s as in the second command, how do you specify the additional argument in the pod definition file?
- The docker file has an entry point as well as a cmd instructions Specified, the entry point is the command that is run at startup, and the cmd is the default parameter passed to the command with the args option in the Pod definition file.
- The docker file has an entry point as well as a cmd instruction Specified, the entry point is the command that is run at startup, and the cmd is the default parameter passed to the command with the args option in the Pod definition file.
- Now remember that when you specify command, the command is always an array, right.
- So this is, that's one way of specifying an array.
- It's a single kind of item in the area.
- Now, one of the things to remember is when you're specifying a command, a command always have to have the command as the first item.
- And the argument, you could specify the argument either in the same command as another item, or you could provide it as as an argument.

#### Key Commands
- In this lecture we will look at commands and arguments in a Kubernetes pod.
- We named it Ubuntu Sleeper and we ran it using the docker command Docker run ubuntu sleeper.
- By default it sleeps for five seconds, but you can override it by passing a command line argument.
- Now, if you need the container to sleep for 10s as in the second command, how do you specify the additional argument in the pod definition file?
- Anything that is appended to the docker run command will go into the args property of the pod definition file in the form of an array like this.
- The docker file has an entry point as well as a cmd instructions Specified, the entry point is the command that is run at startup, and the cmd is the default parameter passed to the command with the args option in the Pod definition file.
- But what if you need to override the entry point, say from sleep to an imaginary sleep 2.0 command?
- In the Docker world, we would run the docker run command with the entry point option set to the new command.
- The corresponding entry in the pod definition file would be using a command field.
- The command field corresponds to entry point instruction in the docker file.
- If you do not wish to create a config map definition file, you could simply use the cube control, create Configmap command and specify the required arguments.
- With this method, you can directly specify the key value pairs in the command line to create a config map of the given values.

#### Real-World Angle
- Head over to the Coding exercises section and practice viewing, configuring and troubleshooting commands and arguments in Kubernetes.
- -: Okay, in this video we're gonna go over the lab on commands and arguments.
- And that's also, that's the best practice.
- So for example, in general if I had this application locally I would run python app.py or if there's an executable cob:web app I would actually run web app, something like this.
- So you have image which is specifically for the kubectl utility and there may be many other arguments such as all of these dry run labels.
- -: Okay, in this video, we're going to go over the lab on commands and arguments.
- So for example, in general if I had this application locally, I would run python abdo py or if there's an executable called web app.
- So you have image which is specifically for the queue cuttle utility and there may be many other arguments such as all of these dry run labels.

#### Pitfalls
- And I do not see any arguments so that's the command.
- So taking a quick look, I don't see anything wrong with it.
- So this exercise was just to kind of make sure you know that you don't accidentally put in a number instead of a string.
- In this case we don't, we're not going to do that.
- And, I do not see any arguments.
- In this case, the sleep program do not specify the command and parameters together like this.
- If you do not wish to create a config map definition file, you could simply use the cube control create config map command and specify the required arguments.
- We don't need the certificate stuff, so we'll remove that.
- Then we need to add the annotations, so the annotations for the rewrite target, because as we discussed earlier we don't want it to go to a wear and watch URL and then this is, so to prevent the redirect, SSL redirect we have to add the false, the...
- We don't need the certificate stuff.

#### Troubleshooting Focus
- Head over to the Coding exercises section and practice viewing, configuring and troubleshooting commands and arguments in Kubernetes.
- Okay, and there's something wrong with it, so try and fix it.
- So try and fix it.
- Then the command at startup will be just sleep and you get the error that the operand is missing.
- So head over to the coding exercises section and practice viewing, configuring and troubleshooting environment variables on a live Kubernetes environment.
- There are just, there are some issues.
- So it looks like there are some issues.
- So there's, there's an issue.
- Line 36 looks like a YAML issue.
- So let's, let's edit the file and try and fix those.

#### Revision Points
- Now, if you need the container to sleep for 10s as in the second command, how do you specify the additional argument in the pod definition file?
- Anything that is appended to the docker run command will go into the args property of the pod definition file in the form of an array like this.
- Let us try to relate that to the docker file we created earlier.
- The docker file has an entry point as well as a cmd instructions Specified, the entry point is the command that is run at startup, and the cmd is the default parameter passed to the command with the args option in the Pod definition file.
- But what if you need to override the entry point, say from sleep to an imaginary sleep 2.0 command?
- In the Docker world, we would run the docker run command with the entry point option set to the new command.
- The command field corresponds to entry point instruction in the docker file.
- So to summarize, there are two fields that correspond to two instructions in the docker file.
- Head over to the Coding exercises section and practice viewing, configuring and troubleshooting commands and arguments in Kubernetes.
- The docker file has an entry point as well as a cmd instruction Specified, the entry point is the command that is run at startup, and the cmd is the default parameter passed to the command with the args option in the Pod definition file.

#### Step-By-Step Hands-On
1. Read the normalized concept files for this lesson in the listed concept order.
2. Recreate one minimal object or workflow from the YAML examples and note which fields are essential versus optional.
3. Run the core inspection and mutation commands highlighted in the command list, then compare expected versus actual object state.
4. Intentionally trigger one common mistake from the pitfall list, then recover from it using the troubleshooting focus above.
5. End the lesson by summarizing the dependency chain: what this lesson assumes, and what later topics depend on it.

### Lesson: Externalized Configuration And Sensitive Data

#### Concepts Covered
- configmaps
- secrets

#### Lesson Explanation
- -: Kubernetes has gained tremendous popularity the past decade, with it being called the Linux of the future.
- The AI revolution rides entirely on Kubernetes.
- Everything you touch today with ChatGPT or OpenAI ultimately runs on Kubernetes.
- Now, with the AI revolution happening, demand for Kubernetes is expected to explode in the coming years.
- As per a past survey conducted by Indeed, Kubernetes had the fastest growth in job searches, over 173% from a year before.
- And so it is important for us to be prepared to establish credibility and value in the market.
- My name is Mumshad Mannambeth, and I'll be your instructor for this course. (uplifting music) This course will guide you through the essential skills and knowledge needed to develop and manage applications on Kubernetes.
- The course starts with lectures that simplify Kubernetes development concepts through visuals and animations, followed by hands-on labs that bring these concepts to real life in a real Kubernetes environment.
- So whether you're new to Kubernetes or need a refresher, we've got it covered with the foundational content and resources for Docker, Kubernetes, and even DevOps basics, if that's needed.
- Our enhanced lab environments offer guided in-browser practice, so you'll tackle hands-on tasks with instant feedback to help you correct mistakes as you go.
- Instructor: Let's look at the different components of Helm.
- So we have the Helm command line utility on our local system that we will be using to perform Helm actions such as installing a chart, upgrading, rollback, et cetera.

#### Key Structural Points
- So the course begins with core concepts reviewing Kubernetes architecture, pods, and essential configurations to refresh and reinforce foundational knowledge.
- So that's mastering ConfigMaps, security context, resource requirements, secrets, and service accounts to manage app configurations securely and efficiently.
- The multi-container pods module covers multi-container patterns like ambassador, adapter, or sidecar, with examples to demonstrate each use case.
- In workloads and scheduling, we explore labels, selectors, rolling updates, and rollbacks.
- The networking module covers services and network policies to manage connectivity and security within clusters.
- Finally, we cover persistent storage with persistent volumes and claims to ensure data durability across containers.
- So jump right in and roll today, and I'll see you in class.
- In this lecture, we look at role based access controls in much more detail.
- So how do we create a role?
- We do that by creating a role object.

#### Key YAML Examples
- This certification is a big step in your Kubernetes journey, especially if you are on your way to become a Kubestronaut.
- Instead, every lab is created specifically for the topic you just learned, and you're asked questions to explore and identify information in the lab or do specific tasks.
- So we create a role definition file with the API version set to Rbac, dot authorization, dot k.io v1, and kind set to role.
- And then we specify rules.
- For any other group, you specify the group name.
- The kind is rule binding.
- The subjects is where we specify the user details.
- If you want to limit the dev users access within a different namespace, then specify the namespace within the metadata of the definition file while creating them.
- The dev user has access to creating pods, though you can also specify the namespace in the command like this.
- You can go one level down and allow access to specific resources alone.

#### Key Commands
- Create rule command.
- Create the rule binding using the cube control create command.
- Command to list role bindings from the Kube control.
- Get role bindings command to view more details about the role.
- When the kube control describe role developer command, here you see the details about the resources and permissions for each resource.
- Similarly, to view details about role bindings, run the kube control describe role bindings command.
- Can I command and check if you can say create deployments or say delete nodes?
- Instead, you can use the same command with the as user option.
- The dev user has access to creating pods, though you can also specify the namespace in the command like this.
- So you have to authenticate to the API using your certificate files by passing them in the command line like this.
- Instructor: Let's look at the different components of Helm.
- So we have the Helm command line utility on our local system that we will be using to perform Helm actions such as installing a chart, upgrading, rollback, et cetera.

#### Real-World Angle
- The course starts with lectures that simplify Kubernetes development concepts through visuals and animations, followed by hands-on labs that bring these concepts to real life in a real Kubernetes environment.
- And our AI Assistant in labs acts as your personal guide, providing feedback, troubleshooting issues, and offering insights as you tackle each task.
- Our enhanced lab environments offer guided in-browser practice, so you'll tackle hands-on tasks with instant feedback to help you correct mistakes as you go.
- If you're stuck, hints and solutions are available to guide you through.
- The multi-container pods module covers multi-container patterns like ambassador, adapter, or sidecar, with examples to demonstrate each use case.
- In workloads and scheduling, we explore labels, selectors, rolling updates, and rollbacks.
- The networking module covers services and network policies to manage connectivity and security within clusters.
- Kubernetes is the go to platform for hosting production grade applications.

#### Pitfalls
- You don't have to have a high end system or access to cloud platforms or worry about cloud costs to gain practice.
- Our labs are unique, as in, we don't provide a blank environment and give you instructions to copy and paste.
- You don't have to authenticate as the user to test it.
- That way you don't have to specify those in the curl command.
- And so, we don't actually have to run another command.
- It's saying that we need to delete and recreate the pod and only make the necessary changes, and to make sure that we don't modify the name of the pod.
- I'm gonna copy this just to make sure I don't make a mistake.
- And I'm gonna copy this, as well, just so I don't make a mistake.
- If you do not wish to create a config map definition file, you could simply use the cube control, create Configmap command and specify the required arguments.
- If you do not wish to create a config map definition file, you could simply use the cube control create config map command and specify the required arguments.

#### Troubleshooting Focus
- And our AI Assistant in labs acts as your personal guide, providing feedback, troubleshooting issues, and offering insights as you tackle each task.
- We then cover probes, monitoring, logging, and debugging, key skills to keep applications healthy and resolve issues.
- So head over to the coding exercises section and practice viewing, configuring and troubleshooting environment variables on a live Kubernetes environment.
- So this is going to create a little bit of an issue 'cause we have these individual features that only apply to a certain subset of our overlays.
- So that's why we get an error.
- Um that's going to be in like troubleshooting scenarios where the kube API server is down and you want to be able to check if a container is running you.
- For those specific troubleshooting scenarios.
- Now the last step here is very specific to our environment, and I want to explain the issue that we're going.
- And this is to help avoid certain issues that you may.
- And it's going to help avoid any potential issues.

#### Revision Points
- Now, with the AI revolution happening, demand for Kubernetes is expected to explode in the coming years.
- And so it is important for us to be prepared to establish credibility and value in the market.
- Welcome to the Certified Kubernetes Application Developer exam prep course.
- My name is Mumshad Mannambeth, and I'll be your instructor for this course. (uplifting music) This course will guide you through the essential skills and knowledge needed to develop and manage applications on Kubernetes.
- The course starts with lectures that simplify Kubernetes development concepts through visuals and animations, followed by hands-on labs that bring these concepts to real life in a real Kubernetes environment.
- You'll also find quizzes and a supportive Discord channel for Q&amp;A and exam tips to keep you on track.
- So whether you're new to Kubernetes or need a refresher, we've got it covered with the foundational content and resources for Docker, Kubernetes, and even DevOps basics, if that's needed.
- Our course objectives are fully aligned with the Certified Kubernetes Application Developer exam curriculum, designed to equip you with skills needed for the exam as well as beyond.
- Our enhanced lab environments offer guided in-browser practice, so you'll tackle hands-on tasks with instant feedback to help you correct mistakes as you go.
- If you're stuck, hints and solutions are available to guide you through.

#### Step-By-Step Hands-On
1. Read the normalized concept files for this lesson in the listed concept order.
2. Recreate one minimal object or workflow from the YAML examples and note which fields are essential versus optional.
3. Run the core inspection and mutation commands highlighted in the command list, then compare expected versus actual object state.
4. Intentionally trigger one common mistake from the pitfall list, then recover from it using the troubleshooting focus above.
5. End the lesson by summarizing the dependency chain: what this lesson assumes, and what later topics depend on it.

## Module: Pod Composition

### Module Overview
- This module teaches how multiple containers cooperate inside a pod and how ordered initialization changes startup behavior.
- Concepts in this module: multi-container-pods, init-containers

### Lesson: Multi-Container Coordination Patterns

#### Concepts Covered
- multi-container-pods
- init-containers

#### Lesson Explanation
- -: Kubernetes has gained tremendous popularity the past decade, with it being called the Linux of the future.
- The AI revolution rides entirely on Kubernetes.
- Everything you touch today with ChatGPT or OpenAI ultimately runs on Kubernetes.
- Now, with the AI revolution happening, demand for Kubernetes is expected to explode in the coming years.
- As per a past survey conducted by Indeed, Kubernetes had the fastest growth in job searches, over 173% from a year before.
- And so it is important for us to be prepared to establish credibility and value in the market.
- My name is Mumshad Mannambeth, and I'll be your instructor for this course. (uplifting music) This course will guide you through the essential skills and knowledge needed to develop and manage applications on Kubernetes.
- The course starts with lectures that simplify Kubernetes development concepts through visuals and animations, followed by hands-on labs that bring these concepts to real life in a real Kubernetes environment.
- So whether you're new to Kubernetes or need a refresher, we've got it covered with the foundational content and resources for Docker, Kubernetes, and even DevOps basics, if that's needed.
- Our enhanced lab environments offer guided in-browser practice, so you'll tackle hands-on tasks with instant feedback to help you correct mistakes as you go.
- Let us now look at in-place resizing of pods.
- So before we talk about Vertical Pod autoscaler, I thought it would be a good idea to talk about in-place resize of pod resources.

#### Key Structural Points
- So the course begins with core concepts reviewing Kubernetes architecture, pods, and essential configurations to refresh and reinforce foundational knowledge.
- So that's mastering ConfigMaps, security context, resource requirements, secrets, and service accounts to manage app configurations securely and efficiently.
- The multi-container pods module covers multi-container patterns like ambassador, adapter, or sidecar, with examples to demonstrate each use case.
- In workloads and scheduling, we explore labels, selectors, rolling updates, and rollbacks.
- The networking module covers services and network policies to manage connectivity and security within clusters.
- Finally, we cover persistent storage with persistent volumes and claims to ensure data durability across containers.
- So jump right in and roll today, and I'll see you in class.
- Let us now look at the different multi-container pods design patterns.
- So there are different patterns for multi-container pods.
- It's as simple as two containers running in a pod.

#### Key YAML Examples
- This certification is a big step in your Kubernetes journey, especially if you are on your way to become a Kubestronaut.
- Instead, every lab is created specifically for the topic you just learned, and you're asked questions to explore and identify information in the lab or do specific tasks.
- So why are there two if they kind of serve the same purpose?
- However, the Sidecar Containers option provides the ability to specify an order of startup and then continue to run throughout the pod lifecycle.
- In this case you can see that the container section is an array and it has two elements in the array two containers specified in the array.
- Now remember the container section under the spec section in a Pod definition file is an array.
- And it says that we have to create a storage class named local SC with the following specifications and set it as the default storage class.
- And it's got the following specifications.
- And I'll just say question two dot YAML.
- It doesn't say it has to be anything specifically.

#### Key Commands
- So under that we have the name and image and command as we do for the main container.
- And it should run the following command to simulate writing logs.
- And then we have to add a sidecar container name log agent that also uses the BusyBox image and runs the command that's listed here.
- And then what this should do is basically run this command.
- So we have to change the command of the container.
- So that will overwrite the default command of the BusyBox container or the image.
- And then it's going to run this command.
- And then the command that should run.
- So I'll do a kubectl get deploy dash n ingress dash s.
- And we'll do a kubectl get ingress class.
- So if I do a Kubectl get pods, we should see that we have three different pods, red, green, blue.
- And to see which one has an Init container, we're gonna have to do a Kubectl describe.

#### Real-World Angle
- The course starts with lectures that simplify Kubernetes development concepts through visuals and animations, followed by hands-on labs that bring these concepts to real life in a real Kubernetes environment.
- And our AI Assistant in labs acts as your personal guide, providing feedback, troubleshooting issues, and offering insights as you tackle each task.
- Our enhanced lab environments offer guided in-browser practice, so you'll tackle hands-on tasks with instant feedback to help you correct mistakes as you go.
- If you're stuck, hints and solutions are available to guide you through.
- The multi-container pods module covers multi-container patterns like ambassador, adapter, or sidecar, with examples to demonstrate each use case.
- In workloads and scheduling, we explore labels, selectors, rolling updates, and rollbacks.
- The networking module covers services and network policies to manage connectivity and security within clusters.
- Kubernetes is the go to platform for hosting production grade applications.

#### Pitfalls
- You don't have to have a high end system or access to cloud platforms or worry about cloud costs to gain practice.
- Our labs are unique, as in, we don't provide a blank environment and give you instructions to copy and paste.
- You don't want to merge and bloat the code of the two services, as each of them target different features, and you still like them to be developed and deployed separately.
- This way you do not have to establish volume sharing or services between the pods to enable communication between them.
- You don't want to merge and bloat the code of the two services, as each of them target different features and you still like them to be developed and deployed separately, you only need the two functionality to work together.
- We don't need that.
- And let me just copy the whole thing and just delete what I don't need.
- But since this is a scratch data and we don't actually need the data to persist, we just need it to be available during the lifetime of the pod.
- And I don't know why it always moves over I don't want it to do that.
- Now we don't need to do this because this is the default one.

#### Troubleshooting Focus
- And our AI Assistant in labs acts as your personal guide, providing feedback, troubleshooting issues, and offering insights as you tackle each task.
- We then cover probes, monitoring, logging, and debugging, key skills to keep applications healthy and resolve issues.
- Let's apply this and hope there's no errors.
- You got to use a path type prefix route request center path slash.
- You can see it's going to use path type prefix.
- It's going to be under TLS issue a certificate.
- And it looks like there's an error.
- Make sure that it's recreated restarted automatically in case of failures.
- The Kubernetes for administrators course focuses on advanced topics on Kubernetes, and in-depth discussions into the various concepts around deploying a high-availability cluster for production use case, understanding more about scheduling, monito...
- And it's saying that there's a new application orange that was deployed and there's something wrong with it, identify and fix the issue.

#### Revision Points
- Now, with the AI revolution happening, demand for Kubernetes is expected to explode in the coming years.
- And so it is important for us to be prepared to establish credibility and value in the market.
- Welcome to the Certified Kubernetes Application Developer exam prep course.
- My name is Mumshad Mannambeth, and I'll be your instructor for this course. (uplifting music) This course will guide you through the essential skills and knowledge needed to develop and manage applications on Kubernetes.
- The course starts with lectures that simplify Kubernetes development concepts through visuals and animations, followed by hands-on labs that bring these concepts to real life in a real Kubernetes environment.
- You'll also find quizzes and a supportive Discord channel for Q&amp;A and exam tips to keep you on track.
- So whether you're new to Kubernetes or need a refresher, we've got it covered with the foundational content and resources for Docker, Kubernetes, and even DevOps basics, if that's needed.
- Our course objectives are fully aligned with the Certified Kubernetes Application Developer exam curriculum, designed to equip you with skills needed for the exam as well as beyond.
- Our enhanced lab environments offer guided in-browser practice, so you'll tackle hands-on tasks with instant feedback to help you correct mistakes as you go.
- If you're stuck, hints and solutions are available to guide you through.

#### Step-By-Step Hands-On
1. Read the normalized concept files for this lesson in the listed concept order.
2. Recreate one minimal object or workflow from the YAML examples and note which fields are essential versus optional.
3. Run the core inspection and mutation commands highlighted in the command list, then compare expected versus actual object state.
4. Intentionally trigger one common mistake from the pitfall list, then recover from it using the troubleshooting focus above.
5. End the lesson by summarizing the dependency chain: what this lesson assumes, and what later topics depend on it.

## Module: Packaging And Overlays

### Module Overview
- This module teaches reusable packaging and environment-specific customization without abandoning declarative workflows.
- Concepts in this module: helm, kustomize

### Lesson: Packaging Reusable Deployments

#### Concepts Covered
- helm
- kustomize

#### Lesson Explanation
- Okay.
- Now in question one, it says that we need to solve this question on cluster one control plane.
- And what I'm going to do is refer to the documentation.
- And I'm going to search for the storage class.
- And I'm going to paste that here.
- And so what we need to do is we have to change a few things.
- So to do that, we have to set this annotation with the default class, and we just have to set it to be true.
- So we've got all of that done.
- So I'll just copy this.
- All right.
- (gentle music) Instructor: In this section, we're gonna take a look at patches.
- And so kustomize patches provide another method to modifying Kubernetes configs.

#### Key Structural Points
- And it says that we have to create a storage class named local SC with the following specifications and set it as the default storage class.
- And let's go ahead and create a storage class.
- And I'm going to search for the storage class.
- It says that this should be set as the default storage class.
- So to do that, we have to set this annotation with the default class, and we just have to set it to be true.
- And then the next two things that we need is a volume binding mode and the volume expansion mode.
- So it says nothing about a reclaim policy.
- Volume expansion should be enabled.
- Volume binding mode should be wait for first consumer.
- And what we need to do is we have to create a deployment named logging deployment in the namespace logging dash ns with the replica of one.

#### Key YAML Examples
- And it says that we have to create a storage class named local SC with the following specifications and set it as the default storage class.
- And it's got the following specifications.
- And I'll just say question two dot YAML.
- It doesn't say it has to be anything specifically.
- So let's go under spec and let's create a volume.
- And we specifically want the log agent container.
- So this is going to be the logs for that specific container.
- So we've got a rule here but it's not for a specific host.
- Specify the first image which is going to be nginx one dot 16.
- And I'm going to just spit this out to a file by doing dash dash dry run equals client dash o YAML.

#### Key Commands
- And it should run the following command to simulate writing logs.
- And then we have to add a sidecar container name log agent that also uses the BusyBox image and runs the command that's listed here.
- And then what this should do is basically run this command.
- So we have to change the command of the container.
- So that will overwrite the default command of the BusyBox container or the image.
- And then it's going to run this command.
- And then the command that should run.
- So I'll do a kubectl get deploy dash n ingress dash s.
- And we'll do a kubectl get ingress class.
- So to do that what I'm going to do is I'm going to do kubectl create deployment.
- And so kustomize patches provide another method to modifying Kubernetes configs.
- However, if you wanna apply or change something on one specific object or just a couple of objects, you would use a kustomize patch.

#### Real-World Angle
- Now in question one, it says that we need to solve this question on cluster one control plane.
- So first let's SSH to that cluster one.
- So we can grab an example configuration.
- And in the file here I'm just going to copy this example.
- It's once again going to be on the cluster one control plane which we're already at.
- And what we need to do is we have to create a deployment named logging deployment in the namespace logging dash ns with the replica of one.
- So let's go ahead and create a deployment I'm going to get a example configuration of deployment from the docs.
- So this should be logging dash deployment.

#### Pitfalls
- We don't need that.
- And let me just copy the whole thing and just delete what I don't need.
- But since this is a scratch data and we don't actually need the data to persist, we just need it to be available during the lifetime of the pod.
- And I don't know why it always moves over I don't want it to do that.
- Now we don't need to do this because this is the default one.
- I don't think there's going to be a full example.
- But we don't want to test.
- Do not delete any existing policies, so we want to find one of the policies.
- So I don't think this is the one that we want.
- And it's going to allow traffic from the database namespace, which is not what we want, because we do not want traffic coming from the databases in the database namespace.

#### Troubleshooting Focus
- Let's apply this and hope there's no errors.
- You got to use a path type prefix route request center path slash.
- You can see it's going to use path type prefix.
- It's going to be under TLS issue a certificate.
- And it looks like there's an error.
- Make sure that it's recreated restarted automatically in case of failures.
- And you could see that it deleted the old one, but then we got an error.
- So this error is expected and I recommend you read this error 'cause it tells us everything we need to know.
- So what is the issue?
- And now if we do kubectl apply question5-pod.yaml, we can see it's created, we'll do kubectl get pod -n low- priority and we can see it's running with no issues.

#### Revision Points
- So what we're going to do is we're going to go over the solutions for the questions in Mock Exam two.
- Now in question one, it says that we need to solve this question on cluster one control plane.
- And it says that we have to create a storage class named local SC with the following specifications and set it as the default storage class.
- So first let's SSH to that cluster one.
- And what I'm going to do is refer to the documentation.
- And I'm going to search for the storage class.
- And in the file here I'm just going to copy this example.
- And I'm going to paste that here.
- And so what we need to do is we have to change a few things.
- First of all the name has to be local SC.

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
