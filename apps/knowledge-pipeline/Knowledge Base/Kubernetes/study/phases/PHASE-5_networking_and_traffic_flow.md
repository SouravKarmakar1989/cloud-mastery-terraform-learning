# Phase 5: Networking And Traffic Flow

## Phase Goal
- Build the model for pod-to-pod, pod-to-service, and external traffic flow, then layer policy and entry models on top.

## Best-Fit Lens
- CKA primary, CKAD secondary, platform secondary.

## Concepts In This Phase
- networking
- cni
- pod-networking
- service-networking
- dns
- coredns
- ingress
- gateway-api
- network-policies

## Module: Cluster Networking Foundations

### Module Overview
- This module gives the learner the internal traffic model required before ingress, policy, and external exposure will make sense.
- Concepts in this module: networking, cni, pod-networking, service-networking, dns, coredns

### Lesson: Networking Model, CNI, DNS, And Service Reachability

#### Concepts Covered
- networking
- cni
- pod-networking
- service-networking
- dns
- coredns

#### Lesson Explanation
- -: And there you have it.
- We have come to the end of this incredible learning journey together.
- We sincerely hope that you've had a fantastic experience with us and that you have gained valuable knowledge and skills throughout this course.
- I have complete faith in your abilities, and I know that you're going to excel.
- And remember, hard work and dedication are the keys to success.
- I believe that you have what it takes to achieve your goals.
- When you do achieve those victories, we would be thrilled if you could share your success stories with us on social media.
- And as this requires a larger lab infrastructure to host, this is only available on KodeKloud and requires a KodeKloud paid subscription.
- All of these are exclusively available on KodeKloud, so it requires a KodeKloud subscription.
- Apart from the courses that are available here on Udemy, we have 40 plus other courses that are only available on KodeKloud, plus another 50 plus courses that are planned for the rest of the year on Linux, DevOps, and cloud technologies.
- Hello and welcome to this lecture.
- In this lecture we look at container networking interface.

#### Key Structural Points
- And our cloud learning paths help you learn the basics of popular cloud platforms and prepare you for certifications, and then deep dive into each of the services offered on the cloud platforms with a hands-on approach.
- We went through some of the concepts such as pods, replica sets, deployments and services in Kubernetes.
- And finally, we also saw how to deploy a sample microservices application on Kubernetes on Google Cloud Platform.
- The cube admin tool helps us set up a multi-node cluster following the Kubernetes best practices.
- As we discussed, the Kubernetes cluster consists of various components such as the cube API server, etcd controllers, etc. and we have seen some of the requirements around security and certificates to enable communication between these components.
- Installing all of these various components individually on different nodes, and modifying the configuration files to make sure these components point to each other, and setting up certificates to make it work is a tedious task.
- Once the systems are created, designate one node as master and others as worker nodes.
- We will be using container D, so we must install container D on all the nodes.
- The next step is to install kube admin tool on all the nodes.
- The kube admin tool helps us bootstrap the Kubernetes solution by installing and configuring all the required components in the right nodes in the right order.

#### Key YAML Examples
- This is a special course to gain hands-on experience in a real exam-like environment.
- If you're planning for the CKS Kubernetes Security Specialist certification exam, then check out the CKS course on KodeKloud.
- But don't worry, use the coupon code UDEMY10 to get a special extra discount where you purchase your subscription.
- So once again, use that coupon code UDEMY10 to get a special extra discount when you purchase your KodeKloud subscription.
- Kubernetes requires a special networking solution between the master and worker nodes, which is called as the pod network.
- So this is going to walk you through how to install kube ADM which is just using the the respective or installing the respective packages for kube adm kubelet and kubectl and so on.
- And I'm going to show you as we go through our document where each step is kind of listed in the documentation.
- So if we go to the creating a cluster with cube ADM, it's going to first give you some prerequisites like what are the specs of your machine.
- So if you go back to the documentation right it's going to give you instructions on how to specifically install container D which will you know you can you go to the GitHub page.
- And you know, cgroup is the technology or the feature that allows us to put in, you know, how much resources a specific pod or container can use.

#### Key Commands
- We also spent some time on working with kube control commands and Kubernetes definition files.
- So this is going to walk you through how to install kube ADM which is just using the the respective or installing the respective packages for kube adm kubelet and kubectl and so on.
- And you'll see that all of the commands that we run on this page here, you're going to run them on all of the nodes.
- So if you have the ability to run commands on multiple terminals, then you could just have a single command get sent to all of the terminals.
- If you look at the command here, it's basically going to do the same thing.
- Then it's going to run that container config default command that we just saw here container config default.
- That's that whole command.
- So it's doing it all in one command.
- If you want to just grab what is the latest version of Kubernetes, you can just run this command and it's going to store the latest version in a environment variable called Kube latest.
- So we're going to just do that just to simplify the commands moving forward.
- If you were doing so, what arguments and commands should it support?
- Container runtime must then invoke the plugin when a container is created using the add command, and also invoke the plugin when the container is deleted using the del command.

#### Real-World Angle
- If you're looking to gain more practice before attending the CKA exam, check out the ultimate CKA mock exam series that we have recently released on KodeKloud.
- This is a special course to gain hands-on experience in a real exam-like environment.
- This series replicates the exam environment closely with multiple clusters and patterns of questions.
- And as this requires a larger lab infrastructure to host, this is only available on KodeKloud and requires a KodeKloud paid subscription.
- We cover all the topics needed to help you clear your CKS certification exam, and of course, along with hands-on labs and mock exams.
- All of these are exclusively available on KodeKloud, so it requires a KodeKloud subscription.
- Apart from the courses that are available here on Udemy, we have 40 plus other courses that are only available on KodeKloud, plus another 50 plus courses that are planned for the rest of the year on Linux, DevOps, and cloud technologies.
- We looked at various options available to set up Kubernetes.

#### Pitfalls
- Don't forget to tag us in your posts so we can celebrate your accomplishments with you and the rest of our community.
- But don't worry, use the coupon code UDEMY10 to get a special extra discount where you purchase your subscription.
- So you don't have to change anything for kubelet.
- If you're using even somewhat modern version of Kubelet or Kubernetes, it's going to be using systemd already, so you don't have to configure anything, but you do have to configure the systemd cgroup driver for your container runtime.
- So you don't have to manually go in and change it.
- Um, let's just make sure we don't copy that again.
- Technically you don't need to install kubectl on all of the nodes if you don't want to have the tool on all of the nodes, you would just you would at least need it on the control plane node.
- You don't need to install this, but we're going to go ahead and install it anyways.
- Which we don't want.
- And that's important because we don't want it to use the first interface.

#### Troubleshooting Focus
- So that's why we get an error.
- Um that's going to be in like troubleshooting scenarios where the kube API server is down and you want to be able to check if a container is running you.
- For those specific troubleshooting scenarios.
- Now the last step here is very specific to our environment, and I want to explain the issue that we're going.
- And this is to help avoid certain issues that you may.
- And it's going to help avoid any potential issues.
- Service networking is 20%, storage is another 10% and finally, the biggest section of them all is troubleshooting, which accounts for 30% of the questions.
- Now the sixth question as you can see, is from the troubleshooting section.
- The Kubernetes for administrators course focuses on advanced topics on Kubernetes, and in-depth discussions into the various concepts around deploying a high-availability cluster for production use case, understanding more about scheduling, monito...
- And our AI Assistant in labs acts as your personal guide, providing feedback, troubleshooting issues, and offering insights as you tackle each task.

#### Revision Points
- We have come to the end of this incredible learning journey together.
- I have complete faith in your abilities, and I know that you're going to excel.
- And remember, hard work and dedication are the keys to success.
- I believe that you have what it takes to achieve your goals.
- Don't forget to tag us in your posts so we can celebrate your accomplishments with you and the rest of our community.
- If you're looking to gain more practice before attending the CKA exam, check out the ultimate CKA mock exam series that we have recently released on KodeKloud.
- This is a special course to gain hands-on experience in a real exam-like environment.
- This is a perfect addition to the mock exams that you already have in this course.
- And as this requires a larger lab infrastructure to host, this is only available on KodeKloud and requires a KodeKloud paid subscription.
- We cover all the topics needed to help you clear your CKS certification exam, and of course, along with hands-on labs and mock exams.

#### Step-By-Step Hands-On
1. Read the normalized concept files for this lesson in the listed concept order.
2. Recreate one minimal object or workflow from the YAML examples and note which fields are essential versus optional.
3. Run the core inspection and mutation commands highlighted in the command list, then compare expected versus actual object state.
4. Intentionally trigger one common mistake from the pitfall list, then recover from it using the troubleshooting focus above.
5. End the lesson by summarizing the dependency chain: what this lesson assumes, and what later topics depend on it.

## Module: Traffic Exposure And Policy

### Module Overview
- This module covers north-south traffic entry and east-west traffic restriction.
- Concepts in this module: ingress, gateway-api, network-policies

### Lesson: North-South Exposure And East-West Restrictions

#### Concepts Covered
- ingress
- gateway-api
- network-policies

#### Lesson Explanation
- -: Okay, so let's go through this lab on the Ingress controller.
- So explore the setup.
- So let's look at the nodes.
- There's a single node.
- Let's check all namespaces.
- Let's look at the Ingress controller which is usually in kube-system namespace.
- Let me see.
- Nope, it's in the Ingress namespace, which is, sorry, it's given here, so it's Ingress-NGINX.
- And yeah, well, so we see the Ingress controller and the other parts right here.
- So if you wanna get pods -a command, and we see all the parts and we see the Ingress controller here and we see that as part of the Ingress-NGINX namespace.
- Let's now look at an introduction to gateway API.
- Earlier when we spoke about ingress, we spoke about two services sharing the same ingress resource.

#### Key Structural Points
- -: Okay, so let's go through this lab on the Ingress controller.
- So we have deployed Ingress controller resources and applications.
- So let's look at the nodes.
- There's a single node.
- Let's look at the deployments.
- So there are no deployments.
- Let's check all namespaces.
- So there are deployments in other namespaces.
- So there are deployments in the appspace, The Ingress-NGINX space, the kube-system space.
- Let's look at the Ingress controller which is usually in kube-system namespace.

#### Key YAML Examples
- So I inspect the new deployments in the appspace namespace.
- So annotations go in metadata section here, and we are gonna set the rewrite target.
- Line 36 looks like a YAML issue.
- So if you look here, the namespace is not properly specified.
- All right, and, and also there are some specifications given here.
- You can also specify the port.
- So that's kind of the easiest way to do that.
- So let's clear my screen and we're going to specify the port.
- We'll name it Ingress and then we've specified these.
- We can also specify the type, so we'll say --type, going to be NodePort, that what's given here.

#### Key Commands
- So if you wanna get pods -a command, and we see all the parts and we see the Ingress controller here and we see that as part of the Ingress-NGINX namespace.
- So we'll do a kubectl get Ingress and we'll look at all namespaces.
- So we have a command for that already: kubectl edit Ingress, the name of the Ingress resource in the appspace.
- Okay, so let's do kubectl create ingress.
- And so we do have an imperative command for that.
- So kubectl create Ingress, the name and then the role.
- So we'll do a kubectl create ConfigMap in this and the name should be as given here and generic configuration, and the Namespace is Ingress space.
- So we're going to create a service using the expose command.
- So we have the expose command and then we have the deployment, the deployment name.
- If you want a name for the service, you can use --name.
- And it should run the following command to simulate writing logs.
- And then we have to add a sidecar container name log agent that also uses the BusyBox image and runs the command that's listed here.

#### Real-World Angle
- -: Okay, so let's go through this lab on the Ingress controller.
- So we have deployed Ingress controller resources and applications.
- Let's look at the deployments.
- So there are no deployments.
- So there are deployments in other namespaces.
- So there are deployments in the appspace, The Ingress-NGINX space, the kube-system space.
- Okay, so which namespace is the Ingress controller deployed in?
- Now, what is the name of the Ingress controller deployment?

#### Pitfalls
- So there's nothing called eat here, but we don't know if it is there in another space.
- And we don't have any certs for now, so let's just get rid of this.
- So if you look at this, right, the watch, wear or even the pay service, they're just available at this, they don't have a /watch or /wear at the end.
- We don't need the certificate stuff, so we'll remove that.
- Then we need to add the annotations, so the annotations for the rewrite target, because as we discussed earlier we don't want it to go to a wear and watch URL and then this is, so to prevent the redirect, SSL redirect we have to add the false, the...
- For example, we do not want the users to have to type in the IP address every time.
- Now, you don't want your users to have to remember port number either.
- But now you don't want your developers to implement it in their applications, as they would do it in different ways, and it's an additional burden for them to develop additional code to handle that.
- As I mentioned, you do not have an ingress controller on Kubernetes by default, so you must deploy one.
- So if it's a single backend then you don't really have any rules.

#### Troubleshooting Focus
- And if you look at it, it gives us a 404 not found error.
- So we see a 404 error page.
- So it's immediately replaced, if we refresh the watch path, now we get 404 error.
- So it doesn't, there's nothing, so it's a 404 error.
- So there's a 404 error Now due to increased demand, your business decides to take on an adventure.
- But you see that it's still it's not working as expected, still gives the 404 error.
- So that's why the error.
- There are just, there are some issues.
- So it looks like there are some issues.
- So there's, there's an issue.

#### Revision Points
- So that's three applications.
- So it's set to star.
- So that's in the appspace namespace.
- Just so the wear path is configured to the wear service, that's the wear service.
- So we know that if the requirement, if it does not match any of these is going to go to the default backend.
- Now view the applications by appending the wear and watch to the URL that you opened.
- You're requested to change the URLs at which the applications are made available.
- So all we have to do is replace this with stream, and let's save that.
- So that's successful.
- Now a user is trying to view the Eat URL on the Ingress service, which paid would he see?

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
