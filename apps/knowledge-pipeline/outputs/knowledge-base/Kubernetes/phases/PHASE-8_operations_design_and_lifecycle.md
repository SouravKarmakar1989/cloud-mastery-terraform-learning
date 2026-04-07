# Phase 8: Operations, Design, And Lifecycle

## Phase Goal
- Teach how clusters are designed, bootstrapped, maintained, observed, and debugged under real operating conditions.

## Best-Fit Lens
- CKA primary, platform primary.

## Concepts In This Phase
- cluster-design
- high-availability
- kubeadm
- cluster-maintenance
- upgrades
- logging-and-monitoring
- troubleshooting
- jsonpath
- mock-exam-patterns

## Module: Cluster Design And Bootstrap

### Module Overview
- This module connects topology decisions to bootstrap and availability choices.
- Concepts in this module: cluster-design, high-availability, kubeadm

### Lesson: Designing And Bootstrapping Clusters

#### Concepts Covered
- cluster-design
- high-availability
- kubeadm

#### Lesson Explanation
- And when you browse through charts and blogs online, you may come across either of these versions.
- Now, let's look at a brief history of Helm.
- Now, since the initial launch in 2016, the project has matured, and it got better and better.
- The improvements were also made possible by the fact that Kubernetes itself was improving, so Helm had more tools at its disposal it could leverage right off of Kubernetes.
- In our lessons, we'll use Helm 3, which has a simpler and better design than the previous Helm 2 and is also a bit smarter.
- Since Helm 2 was around for a few years, a lot of users had already been using it, but there are several important changes made when Helm 3 was launched.
- When Helm 2 was around, Kubernetes lacked features such as role-based access control and custom resource definitions.
- To allow Helm to do its magic, an extra component called Tiller had to be installed in the Kubernetes cluster.
- So, whenever you wanted to perform a Helm specific operation, your Helm client communicated with Tiller that was running on some server.
- Tiller, in turn, communicated with Kubernetes and proceeded to take actions to make whatever you requested happen.
- In this lecture, we'll look at how to generate the certificates for the cluster to generate certificates.
- There are different tools available such as easy RSA, OpenSSL or SSL etc. or many others.

#### Key Structural Points
- Instructor: There were some significant changes when Helm 3 was released compared to Helm 2.
- Now, let's look at a brief history of Helm.
- The improvements were also made possible by the fact that Kubernetes itself was improving, so Helm had more tools at its disposal it could leverage right off of Kubernetes.
- In our lessons, we'll use Helm 3, which has a simpler and better design than the previous Helm 2 and is also a bit smarter.
- Since Helm 2 was around for a few years, a lot of users had already been using it, but there are several important changes made when Helm 3 was launched.
- When Helm 2 was around, Kubernetes lacked features such as role-based access control and custom resource definitions.
- To allow Helm to do its magic, an extra component called Tiller had to be installed in the Kubernetes cluster.
- So, whenever you wanted to perform a Helm specific operation, your Helm client communicated with Tiller that was running on some server.
- After cool stuff like role-based access control and custom resource definitions appeared in Kubernetes, the need for Tiller decreased, and so it was removed entirely in Helm 3.
- Now, there's nothing sitting between Helm and the cluster.

#### Key YAML Examples
- So, whenever you wanted to perform a Helm specific operation, your Helm client communicated with Tiller that was running on some server.
- The chart we want to revert to, and also the live state, how our Kubernetes objects currently look like their declarations in the yaml form, this is where that fancy three-way Strategic Merge Patch name comes from.
- So I'll just say enginx:1-alpine and then I could do --dry-run equals client and then I'll put it to a YAML file and I'll just set it as question one and that way we can make changes to it.
- Now, this value is kind of dynamic based off the node it gets assigned to so to do that we say, value from and you say fieldRef and then you say fieldPath spec.node name And so that will give it the name of the node and pass it into this environme...
- So to create a service for it, we can either create a YAML file or just use the command for it, The imperative command.
- And then, you specify what port and it says port 6379.
- So everything else kind of seems normal and then we have our init container and our init container, we could see that state is terminated and reason is error.
- So what we're gonna do is I'm gonna do a kubectl get pod orange -: O yaml piper two a file, call it question6.yaml.
- Then I'm gonna open question6.yaml and we're going to fix this.
- Remove two of the e's and then we can do kubectl replace -: f question6.yaml and then we do a --force.

#### Key Commands
- Instructor: There were some significant changes when Helm 3 was released compared to Helm 2.
- Now, let's look at a brief history of Helm.
- The improvements were also made possible by the fact that Kubernetes itself was improving, so Helm had more tools at its disposal it could leverage right off of Kubernetes.
- In our lessons, we'll use Helm 3, which has a simpler and better design than the previous Helm 2 and is also a bit smarter.
- Since Helm 2 was around for a few years, a lot of users had already been using it, but there are several important changes made when Helm 3 was launched.
- When Helm 2 was around, Kubernetes lacked features such as role-based access control and custom resource definitions.
- To allow Helm to do its magic, an extra component called Tiller had to be installed in the Kubernetes cluster.
- So, whenever you wanted to perform a Helm specific operation, your Helm client communicated with Tiller that was running on some server.
- After cool stuff like role-based access control and custom resource definitions appeared in Kubernetes, the need for Tiller decreased, and so it was removed entirely in Helm 3.
- Now, there's nothing sitting between Helm and the cluster.
- First we create a private key using the OpenSSL command OpenSSL RSA dash out CA key.
- Then we use the OpenSSL request command along with the key we just created to generate a certificate signing request.

#### Real-World Angle
- To allow Helm to do its magic, an extra component called Tiller had to be installed in the Kubernetes cluster.
- This was good since it allowed it to make whatever changes necessary in your Kubernetes cluster to install your charts, but this was bad since it allowed any user with Tiller access to do whatever they wanted in the cluster.
- Now, there's nothing sitting between Helm and the cluster.
- As far as Kubernetes is concerned, it doesn't matter if the user is trying to make changes within the cluster with kubectl or with Helm commands, the user requesting the changes has the same RBAC-allowed permissions, whatever tool they use.
- Here's an example.
- Then if you change something, for example, you upgrade to a newer chart to upgrade your WordPress install, you will arrive at revision number 2.
- For example, when we first install a package, a revision 1 is created.
- And when a rollback command is issued, Helm compares the current chart, which is the chart that has the WordPress image 5.8 in it with the previous chart, which is the chart that has a WordPress 4.8 image in it and realizes that they're different.

#### Pitfalls
- The name might sound intimidating, but don't worry.
- So the pod should be called mc-pod, which we have, we don't really need a label because it doesn't really say anything about labels.
- So what I'm gonna do is, I'm gonna copy this and then I'm going to copy that and then, I can go to that file it told us, which is /root/vpa-crds.txt, we'll paste it in, and we don't need this information so it just wants the name so I'm just gonna...
- So we don't need to add anything else and we can just run this as is.
- So if you don't know how to create a persistent volume off the top of your head, remember you always have access to the documentation.
- So we don't actually have to change anything else.
- Okay, we don't see anything, but that's because it's in the kk-ns namespace.
- And actually I'm gonna do a, because I've lost the information, it's all the way back up and I don't feel like scrolling.
- And by default, if you do not set any context, you should be accessing the cluster1.
- When the cluster is set up, we have three nodes that do not have a leader elected.

#### Troubleshooting Focus
- And when a rollback command is issued, Helm compares the current chart, which is the chart that has the WordPress image 5.8 in it with the previous chart, which is the chart that has a WordPress 4.8 image in it and realizes that they're different.
- Okay, so for question six, a new application origin is deployed and there's something wrong with it, identify and fix the issue.
- So everything else kind of seems normal and then we have our init container and our init container, we could see that state is terminated and reason is error.
- This got terminated due to an error.
- And so as you probably expected, this is the issue with the typo, it should just be two e's.
- So let's go ahead and fix that.
- Then I'm gonna open question6.yaml and we're going to fix this.
- So we have now successfully finished fixing the orange pod, it's now up and running.
- Service networking is 20%, storage is another 10% and finally, the biggest section of them all is troubleshooting, which accounts for 30% of the questions.
- Now the sixth question as you can see, is from the troubleshooting section.

#### Revision Points
- Instructor: There were some significant changes when Helm 3 was released compared to Helm 2.
- So, it is important to understand the differences between them.
- To allow Helm to do its magic, an extra component called Tiller had to be installed in the Kubernetes cluster.
- So, whenever you wanted to perform a Helm specific operation, your Helm client communicated with Tiller that was running on some server.
- Tiller, in turn, communicated with Kubernetes and proceeded to take actions to make whatever you requested happen.
- So, Tiller was the middleman, so to speak.
- By default, Tiller was running in God mode or otherwise said, it had the privileges to do anything that it wanted.
- This was good since it allowed it to make whatever changes necessary in your Kubernetes cluster to install your charts, but this was bad since it allowed any user with Tiller access to do whatever they wanted in the cluster.
- And before, you had to set these limits in Tiller and that was not the best option, but with RBAC built from ground up to fine-tune user permissions in Kubernetes, it's now straightforward to do.
- As far as Kubernetes is concerned, it doesn't matter if the user is trying to make changes within the cluster with kubectl or with Helm commands, the user requesting the changes has the same RBAC-allowed permissions, whatever tool they use.

#### Step-By-Step Hands-On
1. Read the normalized concept files for this lesson in the listed concept order.
2. Recreate one minimal object or workflow from the YAML examples and note which fields are essential versus optional.
3. Run the core inspection and mutation commands highlighted in the command list, then compare expected versus actual object state.
4. Intentionally trigger one common mistake from the pitfall list, then recover from it using the troubleshooting focus above.
5. End the lesson by summarizing the dependency chain: what this lesson assumes, and what later topics depend on it.

## Module: Maintenance And Observability

### Module Overview
- This module teaches safe lifecycle management and the feedback systems that make operations repeatable.
- Concepts in this module: cluster-maintenance, upgrades, logging-and-monitoring

### Lesson: Keep The Cluster Running Safely

#### Concepts Covered
- cluster-maintenance
- upgrades
- logging-and-monitoring

#### Lesson Explanation
- -: Hello, this is (indistinct) and we are going through the certified Kubernetes Administrator's course.
- In this lecture, we discuss about cluster maintenance related topics.
- We start by looking at operating system upgrades.
- Once you learn the upgrade procedure, you are asked to upgrade a cluster by yourself.
- You will perform an end-to-end upgrade of a cluster yourself with live applications running on them.
- And finally, we look at some of the backup and restore methodologies.
- Well, fun stuff coming up.
- So let's get started.
- -: Hello everyone.
- The architecture, installation and maintenance section consists of 25% of the questions.
- Instructor: Let's look at the different components of Helm.
- So we have the Helm command line utility on our local system that we will be using to perform Helm actions such as installing a chart, upgrading, rollback, et cetera.

#### Key Structural Points
- We see the implications of losing a node from the cluster or when you take a note out of the cluster on purpose like for applying patches or upgrades on the OS itself.
- Service networking is 20%, storage is another 10% and finally, the biggest section of them all is troubleshooting, which accounts for 30% of the questions.
- There are four clusters in total, some of which are dedicated to specific knowledge areas. (upbeat music) By default, the exam taker which is you, will be locked into what is known as the student-node.
- And from here, you'll be able to access all the other Kubernetes clusters and also be able to ssh your individual nodes of these clusters. (upbeat music) In total, there are 20 random questions generated for the entire Lab.
- And if you remember, it accounts for 25% of the questions.
- As you can see, we are currently on the student-node.
- So as you can see, cluster1 which has got two worker nodes, which is cluster1-node01 and node02.
- So I'm going to copy this text here and paste it in the student-node.
- So remember, student-node itself is just a client where you'll find that you log in, if you open a new terminal, you'll also log into student-node.
- And if I run the same command as before, you'll see that this is a single-node cluster with just one control plane.

#### Key YAML Examples
- Now each of the tests in this series respects the weightage of these individual knowledge areas to give you the experience of taking an actual exam. (upbeat music) And to take it up another notch, the questions that you get for this mock exam, inc...
- There are four clusters in total, some of which are dedicated to specific knowledge areas. (upbeat music) By default, the exam taker which is you, will be locked into what is known as the student-node.
- But if you want to access any of these control planes specifically, you'll have to make use of the ssh command.
- So let me get it in a YAML format, so that we can see the data.
- Ingress is implemented by Kubernetes in kind of the same way you first deploy a supported solution, which happens to be any of these listed here, and then specify a set of rules to configure ingress.
- This is a special build of index.
- Built specifically to be used as an ingress controller in Kubernetes, so it has its own set of requirements within the image.
- The nginx service requires these to read the configuration data within the pod, and finally specify the ports used by the ingress controller, which happens to be 80 and 443.
- In this case, ingress dot YAML.
- As with any other object, we have API version kind metadata and spec.

#### Key Commands
- And to check all the clusters that are configured, you can use the command kubectl config get-clusters.
- But if you want to access any of these control planes specifically, you'll have to make use of the ssh command.
- And if I run the same command as before, you'll see that this is a single-node cluster with just one control plane.
- So I'm going to type kubectl get secrets -n.
- So you must pass that as the command to start with nginx controller service.
- Create the ingress resource by running the kubectl create command.
- View the created ingress by running the kubectl get ingress command.
- Create the ingress resource using the kubectl create command.
- Once created, view additional details about the ingress resource by running the kubectl describe ingress command.
- Now if you look closely in the output of this command, you see that there is something about a default backend. end.
- Instructor: Let's look at the different components of Helm.
- So we have the Helm command line utility on our local system that we will be using to perform Helm actions such as installing a chart, upgrading, rollback, et cetera.

#### Real-World Angle
- In this lecture, we discuss about cluster maintenance related topics.
- We see the implications of losing a node from the cluster or when you take a note out of the cluster on purpose like for applying patches or upgrades on the OS itself.
- We then look at the cluster upgrade process.
- But before we do that, we need to know a little bit about Kubernetes releases and versions and the best practices around upgrading, when to upgrade, what version to upgrade to, et cetera.
- Once you learn the upgrade procedure, you are asked to upgrade a cluster by yourself.
- You will perform an end-to-end upgrade of a cluster yourself with live applications running on them.
- You will practice a disaster recovery scenario where you take a backup of the Kubernetes cluster then go through a simulated disaster and then you're asked to recover from that disaster and bring the cluster back to the previous state.
- Now since you're watching this video, I'm assuming that your CKA exam is right around the corner and that you have already completed, the CKA preparation course with the included mock exams and the Lightning Labs.

#### Pitfalls
- And by default, if you do not set any context, you should be accessing the cluster1.
- For example, we do not want the users to have to type in the IP address every time.
- Now, you don't want your users to have to remember port number either.
- But now you don't want your developers to implement it in their applications, as they would do it in different ways, and it's an additional burden for them to develop additional code to handle that.
- As I mentioned, you do not have an ingress controller on Kubernetes by default, so you must deploy one.
- So if it's a single backend then you don't really have any rules.
- Now back in your application, say a user visits the URL, my online store or com slash listen or slash eat and you don't have an audio streaming or a food delivery service.
- However, you do not for sure know if a node is going to be back online in five minutes.
- Now remember, the pods that were moved to the other nodes don't automatically fall back.
- And you don't have to go to each of these repositories to search for charts.

#### Troubleshooting Focus
- Service networking is 20%, storage is another 10% and finally, the biggest section of them all is troubleshooting, which accounts for 30% of the questions.
- Now the sixth question as you can see, is from the troubleshooting section.
- And finally, anything other than the ones listed here will go to the fourth rule that will simply show a 404 not found error page.
- You can do this by configuring a default back end service to display this 404 not found error page.
- So the plan command is just gonna walk us through the different versions that we can upgrade our cluster to and it's gonna make sure that there aren't some sort of like, compatibility issues.
- And when a rollback command is issued, Helm compares the current chart, which is the chart that has the WordPress image 5.8 in it with the previous chart, which is the chart that has a WordPress 4.8 image in it and realizes that they're different.
- Suppose one of the upgrades you performed resulted in an unexpected error, and you're asked to undo the recent change You would like to be able to roll back the changes that were recently carried out.
- If you'd like to make more attempts, use the failure threshold option.
- And our AI Assistant in labs acts as your personal guide, providing feedback, troubleshooting issues, and offering insights as you tackle each task.
- We then cover probes, monitoring, logging, and debugging, key skills to keep applications healthy and resolve issues.

#### Revision Points
- We see the implications of losing a node from the cluster or when you take a note out of the cluster on purpose like for applying patches or upgrades on the OS itself.
- But before we do that, we need to know a little bit about Kubernetes releases and versions and the best practices around upgrading, when to upgrade, what version to upgrade to, et cetera.
- Once you learn the upgrade procedure, you are asked to upgrade a cluster by yourself.
- You will practice a disaster recovery scenario where you take a backup of the Kubernetes cluster then go through a simulated disaster and then you're asked to recover from that disaster and bring the cluster back to the previous state.
- This is Vijin Palazhi from KodeKloud and welcome to the ultimate CKA mock exam series. (air whooshing) (gentle music) (air whooshing) Now before we begin, I wanted to talk to you about some of the prerequisites to consider before attempting this c...
- Now if this assumption is incorrect, I would highly recommend that you complete the CKA preparation course first and then come back to this series of Labs.
- Now this course consists of a series of comprehensive and challenging mock exams intended to give you more hands-on practice before you attend the actual exam. (upbeat music) And each test is quite unique as compared to the regular mock exams and ...
- Now each of the tests in this series respects the weightage of these individual knowledge areas to give you the experience of taking an actual exam. (upbeat music) And to take it up another notch, the questions that you get for this mock exam, inc...
- There are four clusters in total, some of which are dedicated to specific knowledge areas. (upbeat music) By default, the exam taker which is you, will be locked into what is known as the student-node.
- And from here, you'll be able to access all the other Kubernetes clusters and also be able to ssh your individual nodes of these clusters. (upbeat music) In total, there are 20 random questions generated for the entire Lab.

#### Step-By-Step Hands-On
1. Read the normalized concept files for this lesson in the listed concept order.
2. Recreate one minimal object or workflow from the YAML examples and note which fields are essential versus optional.
3. Run the core inspection and mutation commands highlighted in the command list, then compare expected versus actual object state.
4. Intentionally trigger one common mistake from the pitfall list, then recover from it using the troubleshooting focus above.
5. End the lesson by summarizing the dependency chain: what this lesson assumes, and what later topics depend on it.

## Module: Troubleshooting And Exam Execution

### Module Overview
- This module converts broad knowledge into fast inspection habits and reliable execution under time pressure.
- Concepts in this module: troubleshooting, jsonpath, mock-exam-patterns

### Lesson: Failure Isolation And Fast Inspection

#### Concepts Covered
- troubleshooting
- jsonpath

#### Lesson Explanation
- So let's copy and let's run that.
- And this basically gives you auto completion.
- Okay, so we're gonna look at the status of the cluster.
- So let's do a kubectl, get nodes and we see that the nodes seems to be in a ready state.
- So that's good.
- So let's take a look at it.
- So here it says scale that replica set to one.
- So let's take a look at the replica set, get rs, we have one replica set.
- Let's take a look at that.
- Describe replica set app.
- In this video, we will look at how to use Jsonpath in Kubernetes with the kube control utility.
- Once done, you will go through a set of practice tests where you get to practice what you learned through some fun and challenging exercises.

#### Key Structural Points
- So let's do a kubectl, get nodes and we see that the nodes seems to be in a ready state.
- There is, it says there are deployments.
- So let's take a look at the deployments.
- So there is one container or one pod in the deployment but that pod is not ready.
- Let's do a describe, so you describe deployment app and we see that it's one desired, zero available, so there's, that's one unavailable and there isn't anything here that's really helpful.
- And here you have the events and it says creating pod.
- So let's take a look at the pod and we see that there is a pod created, but it's in a pending state.
- Let's take a closer look at that pod.
- So when a pod is in a pending state, it's most likely, that indicates that it has not been assigned a node.
- So if you look at the node here, it's set to none.

#### Key YAML Examples
- So the file is in TTC Kubernetes manifests and we have the kube-scheduler.yaml file here.
- So this is the manifest file for kube-scheduler and within that there's a wrong command.
- So let's check, let's check where this file is specified in the kube controller manager.
- So that means it must be in the slash ADC Kubernetes manifests directory.
- And here we have it specified.
- So we're going to edit the controller manager manifest file to fix that issue.
- So that's set up in the manifest file.
- So let's take a look at the manifest file and we're gonna look at your controller manager.
- Throughout this course, we've actually worked on a number of troubleshooting exercises with respect to the topic we were going through at that point in time.
- So this is going to walk you through how to install kube ADM which is just using the the respective or installing the respective packages for kube adm kubelet and kubectl and so on.

#### Key Commands
- So before we begin, a quick tip if you don't have the alias set already on your prompt so you could do a alias, k equals kubectl.
- And also if you don't have auto completion then one thing you could do is you could go to the Kubernetes documentation pages search for kubectl cheat sheet and then the first thing that comes here is the kubectl completion bash.
- So you do a kubectl get and then it automatically gives you the options.
- The other thing is, so if you're setting an alias you should do this as well to get the alias for the short form for kubectl.
- So I'm gonna set this as well, that way I can just do kubectl get and then yeah, order completion for the short form.
- So let's do a kubectl, get nodes and we see that the nodes seems to be in a ready state.
- So let's take a look at the options or the command that are used to run this pod.
- So here we can see that there is an incorrect command that's wrong and that's the reason.
- So this is the manifest file for kube-scheduler and within that there's a wrong command.
- Let's do a kubectl.
- In this video, we will look at how to use Jsonpath in Kubernetes with the kube control utility.
- We will start by discussing why you might want to use Jsonpath in the first place.

#### Real-World Angle
- So the first question is, the cluster is broken.
- We tried deploying an application, but it's not working troubleshoot and fix the issue.
- Okay, so we're gonna look at the status of the cluster.
- There is, it says there are deployments.
- So let's take a look at the deployments.
- And we see that there is a app deployed, but it's not ready.
- So there is one container or one pod in the deployment but that pod is not ready.
- Let's do a describe, so you describe deployment app and we see that it's one desired, zero available, so there's, that's one unavailable and there isn't anything here that's really helpful.

#### Pitfalls
- So before we begin, a quick tip if you don't have the alias set already on your prompt so you could do a alias, k equals kubectl.
- And also if you don't have auto completion then one thing you could do is you could go to the Kubernetes documentation pages search for kubectl cheat sheet and then the first thing that comes here is the kubectl completion bash.
- We don't see anything useful here in the events.
- So you don't have to change anything for kubelet.
- If you're using even somewhat modern version of Kubelet or Kubernetes, it's going to be using systemd already, so you don't have to configure anything, but you do have to configure the systemd cgroup driver for your container runtime.
- So you don't have to manually go in and change it.
- Um, let's just make sure we don't copy that again.
- Technically you don't need to install kubectl on all of the nodes if you don't want to have the tool on all of the nodes, you would just you would at least need it on the control plane node.
- You don't need to install this, but we're going to go ahead and install it anyways.
- Which we don't want.

#### Troubleshooting Focus
- -: Okay, so in this video we're going to work on troubleshooting control plane failure.
- We tried deploying an application, but it's not working troubleshoot and fix the issue.
- And then it says fail to start container kube-scheduler error response from daemon, OCI runtime create failed, starting container process kube-scheduler, executable file not found.
- And we're gonna save that and we'll see if we have we'll see the status of the pod and its in a creating container config error state.
- Okay, even though the deployment was scaled to two the number of pods does not seem to increase investigate and fix the issue.
- So here it says crash loop back off terminated error.
- So we're going to edit the controller manager manifest file to fix that issue.
- In this lecture we will see different ways of troubleshooting worker node failures.
- Check the Cubelet logs for possible issues.
- Check the Kubelet certificates, ensure they're not expired and they are part of the right group, and that the certificates are issued by the right CA.

#### Revision Points
- -: Okay, so in this video we're going to work on troubleshooting control plane failure.
- And also if you don't have auto completion then one thing you could do is you could go to the Kubernetes documentation pages search for kubectl cheat sheet and then the first thing that comes here is the kubectl completion bash.
- The other thing is, so if you're setting an alias you should do this as well to get the alias for the short form for kubectl.
- So let's do a kubectl, get nodes and we see that the nodes seems to be in a ready state.
- So that's good.
- So here it says scale that replica set to one.
- So if you look at the node here, it's set to none.
- That means the pod has not been assigned to a node and the job of assigning a pod to a node is scheduler's job, right?
- So we have to look at the status of the scheduler.
- So that means it's a static pod and its status is crash loop back off.

#### Step-By-Step Hands-On
1. Read the normalized concept files for this lesson in the listed concept order.
2. Recreate one minimal object or workflow from the YAML examples and note which fields are essential versus optional.
3. Run the core inspection and mutation commands highlighted in the command list, then compare expected versus actual object state.
4. Intentionally trigger one common mistake from the pitfall list, then recover from it using the troubleshooting focus above.
5. End the lesson by summarizing the dependency chain: what this lesson assumes, and what later topics depend on it.

### Lesson: Exam Pattern Recognition And Practice Strategy

#### Concepts Covered
- mock-exam-patterns

#### Lesson Explanation
- Before you head into a practice test which follows this video, I wanted to spend a few minutes on walking you through the practice test portal.
- Following this lecture, you'll be taken to the labs.
- Click the start button to load the lab.
- You must be accessing the practice test on a laptop or a desktop system, as you will require a keyboard to work hands on.
- Allow some time for the labs to load.
- It usually loads in less than 30s and in rare scenarios it might take a few minutes.
- So I request you to be patient when it takes a long time.
- Now, once the lab is loaded, you will find the quiz portal on the left and a terminal on the right.
- The terminal on the right is a live terminal for you to work on.
- This could be a Linux terminal if you are learning Linux shell scripting or git, and this could be a Docker host if you are learning Docker or Kubernetes control plane.
- One is this terminal on the right where you'll be working, and you'll run commands to view and configure the Kubernetes cluster.
- At other times, you will perform changes to the environment, such as deploy a set of pods or services and ask you to look for information within them.

#### Key Structural Points
- At other times, you will perform changes to the environment, such as deploy a set of pods or services and ask you to look for information within them.
- In this lecture we will see different ways of troubleshooting worker node failures.
- Again, we start by checking the status of the nodes in the cluster.
- If they're reported as not ready, check details about the nodes using the cube control.
- Describe node command.
- Each node has a set of conditions that can point us in a direction as to why a node might have failed.
- When the node is out of disk space, the out of disk flag is set to true.
- When a node is out of memory, the memory pressure flag is set to true.
- And finally, if the node as a whole is healthy, the ready flag is set to true.
- When a worker node stops communicating with the master, maybe due to a crash, these statuses are set to unknown.

#### Key YAML Examples
- The questions are of different kind.
- Or, you may be asked to perform a configuration task using a given spec.
- When you're given a spec, remember to create a configuration that matches it exactly.
- You will want to view specific fields of all resources, query data about the resources based on different criteria, etc..
- Once you identify the command, inspect its output in JSON format for this.
- So if you're a beginner to jsonpath and to this kind of logic, then I would recommend strictly following this approach where you first view the JSON version of the output, copy the output to a Jsonpath query evaluator like jsonpath Dccom.
- A Jsonpath query of items of star dot metadata dot name with the cube control get nodes command gives us the names of the nodes in the cluster, a query of items dot status dot node info dot architecture returns me the hardware architecture of the ...
- This will get me the results in the format I want to specify the for each statement.
- Dot metadata dot name.
- The jsonpath corresponding to the node name is dot metadata dot name.

#### Key Commands
- If you're learning Kubernetes, you can run commands here and interact with the system and perform your tasks.
- One is this terminal on the right where you'll be working, and you'll run commands to view and configure the Kubernetes cluster.
- Describe node command.
- In this video, we will look at how to use Jsonpath in Kubernetes with the kube control utility.
- We will start by discussing why you might want to use Jsonpath in the first place.
- We will then look at viewing and interpreting kube control output in JSON format post, which we look at the different steps involved in using Jsonpath with the kube control utility.
- We then look at several jsonpath examples, and then go through loops, before finally looking at custom columns and sort functionality of kube control.
- Now, before you begin, you must know how to work with Jsonpath, so that's a prerequisite.
- If you have never worked with Jsonpath queries before.
- Also, it's good to first practice jsonpath on Kubernetes dataset so that you know how to navigate through it before actually working on Jsonpath with kube control utility.

#### Real-World Angle
- Before you head into a practice test which follows this video, I wanted to spend a few minutes on walking you through the practice test portal.
- Following this lecture, you'll be taken to the labs.
- Click the start button to load the lab.
- You must be accessing the practice test on a laptop or a desktop system, as you will require a keyboard to work hands on.
- Allow some time for the labs to load.
- Now, once the lab is loaded, you will find the quiz portal on the left and a terminal on the right.
- There are two parts to the labs.
- One is this terminal on the right where you'll be working, and you'll run commands to view and configure the Kubernetes cluster.

#### Pitfalls
- Now, don't be too worried about the exam interface itself.
- Don't stress too much about it.
- If you if you don't know anything you have, you must go through the documentation pages and try to find the answers.
- If you if you don't know anything, you you have, you must go through the documentation pages and try to find the answers.
- This may be a bit advanced for some users, so don't worry if you don't fully get it from a certification and exam standpoint.
- We don't need that.
- And let me just copy the whole thing and just delete what I don't need.
- But since this is a scratch data and we don't actually need the data to persist, we just need it to be available during the lifetime of the pod.
- And I don't know why it always moves over I don't want it to do that.
- Now we don't need to do this because this is the default one.

#### Troubleshooting Focus
- In this lecture we will see different ways of troubleshooting worker node failures.
- Check the Cubelet logs for possible issues.
- Check the Kubelet certificates, ensure they're not expired and they are part of the right group, and that the certificates are issued by the right CA.
- Head over to the practice test and practice fixing broken clusters.
- Let's apply this and hope there's no errors.
- You got to use a path type prefix route request center path slash.
- You can see it's going to use path type prefix.
- It's going to be under TLS issue a certificate.
- And it looks like there's an error.
- Make sure that it's recreated restarted automatically in case of failures.

#### Revision Points
- Before you head into a practice test which follows this video, I wanted to spend a few minutes on walking you through the practice test portal.
- Following this lecture, you'll be taken to the labs.
- Click the start button to load the lab.
- You must be accessing the practice test on a laptop or a desktop system, as you will require a keyboard to work hands on.
- Allow some time for the labs to load.
- So I request you to be patient when it takes a long time.
- The terminal on the right is a live terminal for you to work on.
- There are two parts to the labs.
- One is this terminal on the right where you'll be working, and you'll run commands to view and configure the Kubernetes cluster.
- Each topic covered in the lecture has a practice test associated with it that consists anywhere from 5 to 15 questions.

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
