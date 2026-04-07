# Phase 7: Security And Access Control

## Phase Goal
- Connect trust, authentication, authorization, and runtime hardening into one Kubernetes security model.

## Best-Fit Lens
- CKA primary, platform primary, CKAD important.

## Concepts In This Phase
- security-primitives
- authentication
- tls
- certificates
- kubeconfig
- authorization
- rbac
- cluster-roles
- api-groups
- service-accounts
- image-security
- security-contexts
- admission-controllers

## Module: Auth And Trust Chain

### Module Overview
- This module establishes who can talk to the cluster, how the cluster decides to trust them, and how client context carries access.
- Concepts in this module: security-primitives, authentication, tls, certificates, kubeconfig

### Lesson: Identity, Transport Trust, And Client Access

#### Concepts Covered
- security-primitives
- authentication
- tls
- certificates
- kubeconfig

#### Lesson Explanation
- -: Hello and welcome to this section on security in Kubernetes.
- My name is Mumshad Mannambeth, and we are going through the certified Kubernetes Administrators Course.
- In this section of the course, we will start with understanding the Kubernetes security primitives.
- How does someone gain access to the Kubernetes cluster?
- And how are their actions controlled, et cetera, at a high level?
- We will look at the default settings in the cluster and we practice viewing configurations of an existing cluster.
- We discuss about TLS certificates and how various components within the cluster are secured using TLS certificates.
- If you are a Kubernetes administrator and you set up a cluster on your own you are bound to face challenges related to certificates, which is why we discuss these from ground up, from the absolute basics.
- This is one of the sections that I spent a lot of time on.
- I wanted to simplify some of the core concepts around certificates, which is why I've added a number of prerequisite lectures for those who are new to this topic.
- In this lecture, we look at securing your Kubernetes cluster with TLS certificates.
- In the previous lecture, we saw what public and private keys are, how a server uses public and private keys to secure connectivity.

#### Key Structural Points
- We discuss about TLS certificates and how various components within the cluster are secured using TLS certificates.
- If you are a Kubernetes administrator and you set up a cluster on your own you are bound to face challenges related to certificates, which is why we discuss these from ground up, from the absolute basics.
- I wanted to simplify some of the core concepts around certificates, which is why I've added a number of prerequisite lectures for those who are new to this topic.
- We sent out a poll while working on this section to understand your knowledge about TLS certificates, and most of you said you were absolute beginners, which is why we thought it would be good to explain some of these well.
- Especially since there are so many certificates used within the cluster between various components and it can be quite confusing for a beginner.
- Our goal is to enable you to tackle any security related or certificate related issues by the end of this section.
- These prerequisite lectures may not be for everyone, so depending on your level of expertise with certificates, feel free to skip some of these lectures as required.
- We then move on to authorization, where we look at the various authorization mechanisms and we focus specifically on role-based access controls.
- As we have seen already, the kube API server is at the center of all operations within Kubernetes.
- We interact with it through the kube control utility or by accessing the API directly.

#### Key YAML Examples
- Especially since there are so many certificates used within the cluster between various components and it can be quite confusing for a beginner.
- We then move on to authorization, where we look at the various authorization mechanisms and we focus specifically on role-based access controls.
- Authorization is implemented using role based access controls, where users are associated to groups with specific permissions.
- This is a special course to gain hands-on experience in a real exam-like environment.
- If you're planning for the CKS Kubernetes Security Specialist certification exam, then check out the CKS course on KodeKloud.
- But don't worry, use the coupon code UDEMY10 to get a special extra discount where you purchase your subscription.
- So once again, use that coupon code UDEMY10 to get a special extra discount when you purchase your KodeKloud subscription.
- Now each of the tests in this series respects the weightage of these individual knowledge areas to give you the experience of taking an actual exam. (upbeat music) And to take it up another notch, the questions that you get for this mock exam, inc...
- There are four clusters in total, some of which are dedicated to specific knowledge areas. (upbeat music) By default, the exam taker which is you, will be locked into what is known as the student-node.
- But if you want to access any of these control planes specifically, you'll have to make use of the ssh command.

#### Key Commands
- We also spent some time on working with kube control commands and Kubernetes definition files.
- And to check all the clusters that are configured, you can use the command kubectl config get-clusters.
- But if you want to access any of these control planes specifically, you'll have to make use of the ssh command.
- And if I run the same command as before, you'll see that this is a single-node cluster with just one control plane.
- So I'm going to type kubectl get secrets -n.
- So you must pass that as the command to start with nginx controller service.
- Create the ingress resource by running the kubectl create command.
- View the created ingress by running the kubectl get ingress command.
- Create the ingress resource using the kubectl create command.
- Once created, view additional details about the ingress resource by running the kubectl describe ingress command.
- So that command is gonna give us this information.
- And let's run it through the same command but we're just going to replace it with the ETCD Server Certificate.

#### Real-World Angle
- How does someone gain access to the Kubernetes cluster?
- We then start with the various authentication mechanisms available.
- We will look at the default settings in the cluster and we practice viewing configurations of an existing cluster.
- We discuss about TLS certificates and how various components within the cluster are secured using TLS certificates.
- If you are a Kubernetes administrator and you set up a cluster on your own you are bound to face challenges related to certificates, which is why we discuss these from ground up, from the absolute basics.
- Especially since there are so many certificates used within the cluster between various components and it can be quite confusing for a beginner.
- These lectures and the practice tests associated with them should help bridge that gap.
- So a lot of lectures and practice tests coming up.

#### Pitfalls
- Don't forget to tag us in your posts so we can celebrate your accomplishments with you and the rest of our community.
- But don't worry, use the coupon code UDEMY10 to get a special extra discount where you purchase your subscription.
- And by default, if you do not set any context, you should be accessing the cluster1.
- You don't have to have a high end system or access to cloud platforms or worry about cloud costs to gain practice.
- Our labs are unique, as in, we don't provide a blank environment and give you instructions to copy and paste.
- As this is a beginner's course, we do not deep dive into technical details.
- Now, you don't have to be an expert application developer for this course and there's no real coding or application development involved in either of this course or the certification itself.
- Now, you don't have to take these courses in order.
- For example, we do not want the users to have to type in the IP address every time.
- Now, you don't want your users to have to remember port number either.

#### Troubleshooting Focus
- Our goal is to enable you to tackle any security related or certificate related issues by the end of this section.
- Service networking is 20%, storage is another 10% and finally, the biggest section of them all is troubleshooting, which accounts for 30% of the questions.
- Now the sixth question as you can see, is from the troubleshooting section.
- And our AI Assistant in labs acts as your personal guide, providing feedback, troubleshooting issues, and offering insights as you tackle each task.
- We then cover probes, monitoring, logging, and debugging, key skills to keep applications healthy and resolve issues.
- The Kubernetes for administrators course focuses on advanced topics on Kubernetes, and in-depth discussions into the various concepts around deploying a high-availability cluster for production use case, understanding more about scheduling, monito...
- And finally, anything other than the ones listed here will go to the fourth rule that will simply show a 404 not found error page.
- You can do this by configuring a default back end service to display this 404 not found error page.
- So the issuer is Kubernetes, but the subject, which is what this certificate is issued to, is the common name for that is kube-apiserver.
- Now, what is the name of the CA who issued the Kube API Server Certificate?

#### Revision Points
- -: Hello and welcome to this section on security in Kubernetes.
- How does someone gain access to the Kubernetes cluster?
- If you are a Kubernetes administrator and you set up a cluster on your own you are bound to face challenges related to certificates, which is why we discuss these from ground up, from the absolute basics.
- I wanted to simplify some of the core concepts around certificates, which is why I've added a number of prerequisite lectures for those who are new to this topic.
- We sent out a poll while working on this section to understand your knowledge about TLS certificates, and most of you said you were absolute beginners, which is why we thought it would be good to explain some of these well.
- But you might have to be a bit patient with me on this.
- Our goal is to enable you to tackle any security related or certificate related issues by the end of this section.
- These prerequisite lectures may not be for everyone, so depending on your level of expertise with certificates, feel free to skip some of these lectures as required.
- We then move on to authorization, where we look at the various authorization mechanisms and we focus specifically on role-based access controls.
- We then discussed how to secure images in your environment, followed by security contacts, and finally, network policies.

#### Step-By-Step Hands-On
1. Read the normalized concept files for this lesson in the listed concept order.
2. Recreate one minimal object or workflow from the YAML examples and note which fields are essential versus optional.
3. Run the core inspection and mutation commands highlighted in the command list, then compare expected versus actual object state.
4. Intentionally trigger one common mistake from the pitfall list, then recover from it using the troubleshooting focus above.
5. End the lesson by summarizing the dependency chain: what this lesson assumes, and what later topics depend on it.

## Module: Authorization Model

### Module Overview
- This module explains how Kubernetes constrains actions after identity is established.
- Concepts in this module: authorization, rbac, cluster-roles, api-groups, service-accounts

### Lesson: Authorization Boundaries And Role-Based Access

#### Concepts Covered
- authorization
- rbac
- cluster-roles
- api-groups
- service-accounts

#### Lesson Explanation
- In this lecture we will learn about admission controllers.
- So we've been running commands from our command line using the kubectl utility to perform various kinds of operations on our Kubernetes cluster.
- And we know every time we send a request say to create a pod, the request goes to the API server.
- And then the pod is created and the information is finally persisted in the etcd database when the request hits the API server.
- And this is usually done through certificates.
- And this is when we check if the user has permission to perform that operation.
- And we have learned that this is achieved through role based access controls.
- And so if the request that came in matched any of these conditions, in this case it does.
- Otherwise it's rejected.
- So that's authorization with role based access control.
- We saw how someone can gain access to a cluster.
- We saw different ways that someone, a human or a machine can get access to the cluster.

#### Key Structural Points
- In this lecture we will learn about admission controllers.
- And we know every time we send a request say to create a pod, the request goes to the API server.
- And then the pod is created and the information is finally persisted in the etcd database when the request hits the API server.
- And this is usually done through certificates.
- If the request was sent through kubectl, we know the kubeconfig file has the certificates configured, and the authentication process is responsible for identifying the user who sent the request and making sure the user is valid.
- And we have learned that this is achieved through role based access controls.
- So in this case, if the user was assigned this particular role of a developer, the user is allowed to list, get, create, update or delete pods.
- As the request is to create a pod it is allowed to go through.
- So that's authorization with role based access control.
- Now with role based access control, you could place in different kinds of restrictions, such as to allow or deny those with a particular role to say, create, list or delete different kinds of objects like pods, deployments or services.

#### Key YAML Examples
- So we've been running commands from our command line using the kubectl utility to perform various kinds of operations on our Kubernetes cluster.
- Now with role based access control, you could place in different kinds of restrictions, such as to allow or deny those with a particular role to say, create, list or delete different kinds of objects like pods, deployments or services.
- We could even restrict access to specific resource names such as, say, a developer can only work on pods named blue or orange, or restrict access within a namespace alone.
- And what user is allowed access to what kind of API operations.
- But what if you want to do more than just define what kind of access a user has to an object?
- Only allow images from a specific internal registry, or to enforce that, we must never use the latest tag for any images.
- Or say for example, you'd like to say if the container is running as the root user, then you do not want to allow that request or allow certain capabilities only, or to enforce that the metadata always contains labels.
- The default storage class admission controller that observes the creation of PVCs and automatically adds the default storage class to them if one is not specified, the event rate limit admission controller can help set a limit on the requests with...
- So if you're in a kube ADM based setup, then update the flag within the kube API server manifest file as shown here on the right.
- Authorization is implemented using role based access controls, where users are associated to groups with specific permissions.

#### Key Commands
- So we've been running commands from our command line using the kubectl utility to perform various kinds of operations on our Kubernetes cluster.
- If the request was sent through kubectl, we know the kubeconfig file has the certificates configured, and the authentication process is responsible for identifying the user who sent the request and making sure the user is valid.
- If I run this command, it would throw an error that says the namespace blue is not found.
- First, to see a list of admission controllers enabled by default, run the cube API server command and grep for enable admission plugins.
- Note that if you're running this in a cube ADM based setup, then you must run this command within the cube API.
- Server control plane pod using the kubectl exec command first.
- Once updated, the next time we run the command to provision a pod in a namespace that does not exist yet, the request goes through authentication, then authorization, and then the namespace auto provision controller, at which point it realizes tha...
- If the request was sent through kubectl, we know the kube config file has the certificates configured, and the authentication process is responsible for identifying the user who sent the request and making sure the user is valid.
- First, to see a list of admission controllers enabled by default, run the kube API server command and grep for enable admission plugins.
- So if you have ever authenticated to an API using a curl command or something that you probably know of, the tokens that are passed through as a bearer token in the header of the call.
- So we're going do a kubectl get roles.
- So let's do a kubectl describe, role, kube-proxy dash N kube-system.

#### Real-World Angle
- So we've been running commands from our command line using the kubectl utility to perform various kinds of operations on our Kubernetes cluster.
- Now with role based access control, you could place in different kinds of restrictions, such as to allow or deny those with a particular role to say, create, list or delete different kinds of objects like pods, deployments or services.
- For example, when a pod creation request comes in, you'd like to review the configuration file and look at the image name and say that you do not want to allow images from a public Docker Hub registry.
- Or say for example, you'd like to say if the container is running as the root user, then you do not want to allow that request or allow certain capabilities only, or to enforce that the metadata always contains labels.
- Admission controllers help us implement better security measures to enforce how a cluster is used.
- We will go over some examples in the upcoming slides.
- Admission controller rejects requests to namespaces that do not exist, and there are many more admission controllers available.
- So let's take that as an example and look at it in a bit more detail.

#### Pitfalls
- For example, when a pod creation request comes in, you'd like to review the configuration file and look at the image name and say that you do not want to allow images from a public Docker Hub registry.
- Or say for example, you'd like to say if the container is running as the root user, then you do not want to allow that request or allow certain capabilities only, or to enforce that the metadata always contains labels.
- Admission controller rejects requests to namespaces that do not exist, and there are many more admission controllers available.
- Admission controllers are deprecated and is now replaced by namespace lifecycle admission controller.
- Then you do not want to allow that request or allow certain capabilities only, or to enforce that the metadata always contains labels.
- Admission controllers are deprecated and is now replaced by the namespace lifecycle admission controller.
- But we don't want all of them to have the same level of access as us.
- For example, we don't want the developers to have access to modify our cluster configuration, like adding or deleting nodes or the storage or networking configurations.
- If you don't specify this option, it is set to always allow by default.
- Now, if you don't want a token to be automatically created and mounted inside the pod for the service account, you may add the auto mount Service account token key to false like this.

#### Troubleshooting Focus
- If I run this command, it would throw an error that says the namespace blue is not found.
- In the earlier lectures, when we discussed about certificates, we discussed that the Cubelets should be part of the system nodes group and have a name prefixed with system node.
- In the earlier lectures, when we discussed about certificates, we discussed that the Cubelets should be part of the system nodes group and have a name prefixed with system node, so any requests coming from a user with the name system node and part...
- So this excerpt from the Kubernetes Enhancement Proposal for creating bound service account tokens describes this form of JWT to be having some security and scalability related issues.
- Moreover, each JWT requires a separate secret object per service account, which results in scalability issues.
- Let's apply this and hope there's no errors.
- You got to use a path type prefix route request center path slash.
- You can see it's going to use path type prefix.
- It's going to be under TLS issue a certificate.
- And it looks like there's an error.

#### Revision Points
- So we've been running commands from our command line using the kubectl utility to perform various kinds of operations on our Kubernetes cluster.
- And we know every time we send a request say to create a pod, the request goes to the API server.
- And this is when we check if the user has permission to perform that operation.
- So in this case, if the user was assigned this particular role of a developer, the user is allowed to list, get, create, update or delete pods.
- As the request is to create a pod it is allowed to go through.
- So that's authorization with role based access control.
- Now with role based access control, you could place in different kinds of restrictions, such as to allow or deny those with a particular role to say, create, list or delete different kinds of objects like pods, deployments or services.
- We could even restrict access to specific resource names such as, say, a developer can only work on pods named blue or orange, or restrict access within a namespace alone.
- And what user is allowed access to what kind of API operations.
- But what if you want to do more than just define what kind of access a user has to an object?

#### Step-By-Step Hands-On
1. Read the normalized concept files for this lesson in the listed concept order.
2. Recreate one minimal object or workflow from the YAML examples and note which fields are essential versus optional.
3. Run the core inspection and mutation commands highlighted in the command list, then compare expected versus actual object state.
4. Intentionally trigger one common mistake from the pitfall list, then recover from it using the troubleshooting focus above.
5. End the lesson by summarizing the dependency chain: what this lesson assumes, and what later topics depend on it.

## Module: Runtime And Admission Security

### Module Overview
- This module moves from access control into workload hardening and request-time policy enforcement.
- Concepts in this module: image-security, security-contexts, admission-controllers

### Lesson: Workload Hardening And Admission-Time Guardrails

#### Concepts Covered
- image-security
- security-contexts
- admission-controllers

#### Lesson Explanation
- Narrator: Okay, we will now walk through the lab on security, image security.
- So, Docker registry is the one that we're gonna use for Docker registry.
- Now, we have an application running on our cluster.
- So, let's do it.
- And we see that we have a web- An application by the name web.
- And what image is the application using?
- So, let's take a look at in full set areas.
- So, let's select that.
- Now, we decided to use a modified version of the application from an internal private registry.
- So, I'm just going to copy this, and paste it here, and also add a slash.
- Containers are encapsulated in pods.
- Let us start with a pod definition file.

#### Key Structural Points
- So, the first question is, "What secret type must we choose for Docker registry?" So, if you look at the different types of secrets that we can create. you see that we have Docker registry, generic NGLs.
- Okay, now let's take a look at the deployment web, and we see that it's using the engine X alpine image.
- So, update the image of the deployment to use a new image from my privateregistry.com/5,000.
- So, what we want to do is we want to edit the deployment, and we want it to pull the image from the private registry.
- So, let's see if- Let's see if the pods are running.
- So, if you look at it, the pod, this is the new pod that was created.
- So, the rolling update kicked in, and the deployment created a new pod with the new image, but it left the existing ones as is because only if the new pod was successful, and was in a ready state, it would kill the old pod, and then would create t...
- So- but in this case, it's not even- the new pod is not running.
- Now, create a secret object with the credentials required to access the registry.
- So let's create a secret.

#### Key YAML Examples
- So, we have a private registry, and we know that if you do not specify a registry before the image name it's going to the default- It's gonna pull it from the default location on Docker hub.
- So, under the spec for the pod, we must add the image pool secrets.
- We deployed a number of different kinds of pods hosting different kinds of applications throughout this course, like web apps and databases and Redis cache, etc..
- Since we have not specified the location where these images are to be pulled from, it is assumed to be Dockers default registry.
- You may choose to make a repository private so that it can be accessed using a set of credentials from Dockers perspective.
- We then specify the registry server name, the username to access the registry, the password, and the email address of the user.
- We then specify the secret inside our Pod definition file under the Image Pull Secrets section.
- Once done, build your image using the docker build command and specify the Docker File as input as well as a tag name for the image.
- To make it available on the public Docker Hub registry, run the docker push command and specify the name of the image you just created.
- Each of these instruct Docker to perform a specific action while creating the image.

#### Key Commands
- So, let's take a look at the help, and we see that here's a sample command.
- So, let's run this command along with the rest of it.
- To run a container using a private image, you first login to your private registry using a Docker login command.
- If I were to set it up manually, I would start with an operating system like Ubuntu, then update the source repositories using the APT command, then install dependencies using the APT command, then install Python dependencies using the pip command...
- Once done, build your image using the docker build command and specify the Docker File as input as well as a tag name for the image.
- To make it available on the public Docker Hub registry, run the docker push command and specify the name of the image you just created.
- The run instruction instructs Docker to run a particular command on those base images.
- So at this point, Docker runs the apt-get update command to fetch the updated packages and installs required dependencies on the image.
- And finally, entry point allows us to specify a command that will be run when the image is run as a container.
- You could see this information if you run the docker history command followed by the image name.
- This pod runs an ubuntu image with the sleep command to configure security context on the container.
- So if you ever wanna see what user you're logged into as on a Linux machine, you can run the command whoami.

#### Real-World Angle
- Narrator: Okay, we will now walk through the lab on security, image security.
- Now, we have an application running on our cluster.
- Oh, the deploy.
- Okay, now let's take a look at the deployment web, and we see that it's using the engine X alpine image.
- So, update the image of the deployment to use a new image from my privateregistry.com/5,000.
- So, what we want to do is we want to edit the deployment, and we want it to pull the image from the private registry.
- So, the rolling update kicked in, and the deployment created a new pod with the new image, but it left the existing ones as is because only if the new pod was successful, and was in a ready state, it would kill the old pod, and then would create t...
- Now configure the deployment to use credentials from the new secret to pull images from the private registry.

#### Pitfalls
- So, we have a private registry, and we know that if you do not specify a registry before the image name it's going to the default- It's gonna pull it from the default location on Docker hub.
- And don't worry about the status for now, because we're gonna fix that in a bit.
- So if you don't provide a user or account name, it assumes it to be library.
- This way, rebuilding your image is faster and you don't have to wait for Docker to rebuild the entire image each time.
- And when they don't anymore, get rid of it easily without having to clean up too much. (gentle upbeat music)
- Now, if you don't want a token to be automatically created and mounted inside the pod for the service account, you may add the auto mount Service account token key to false like this.
- You don't have to provide it manually.
- For example, when a pod creation request comes in, you'd like to review the configuration file and look at the image name and say that you do not want to allow images from a public Docker Hub registry.
- Then you do not want to allow that request or allow certain capabilities only, or to enforce that the metadata always contains labels.
- Admission controller rejects requests to namespaces that do not exist, and there are many more admission controllers available.

#### Troubleshooting Focus
- All the layers built are cast, so the layered architecture helps you restart docker build from that particular step in case it fails.
- So in case a particular step was to fail, for example, in this case, step three failed, and you were to fix the issue and rerun docker build, it will reuse the previous layers from cache and continue to build the remaining layers.
- So this excerpt from the Kubernetes Enhancement Proposal for creating bound service account tokens describes this form of JWT to be having some security and scalability related issues.
- Moreover, each JWT requires a separate secret object per service account, which results in scalability issues.
- If I run this command, it would throw an error that says the namespace blue is not found.
- They are very basic and prone to errors.
- And all of these come with support for YAML files, and they will help in highlighting errors in a YAML file and make making sure that you develop them right.
- But they won't natively tell you if there are errors within the Kubernetes manifest files that you are developing.
- Uh, so those, uh, tools that can first verify structure of your YAML file and the syntax, making sure that it works fine, and also, um, point out errors related to Kubernetes.
- Um, and you will notice that there is this error indicated, um, here below the name.

#### Revision Points
- Now, we decided to use a modified version of the application from an internal private registry.
- So, update the image of the deployment to use a new image from my privateregistry.com/5,000.
- So, we have a private registry, and we know that if you do not specify a registry before the image name it's going to the default- It's gonna pull it from the default location on Docker hub.
- So, what we want to do is we want to edit the deployment, and we want it to pull the image from the private registry.
- So, I'm just going to copy this, and paste it here, and also add a slash.
- Okay, so that's done.
- So, it says 'fail to pull image,' a malformed response.
- So, that's basically because it doesn't have the permissions to pull image from that repository.
- So, the answer to this question is No.
- Now, create a secret object with the credentials required to access the registry.

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
