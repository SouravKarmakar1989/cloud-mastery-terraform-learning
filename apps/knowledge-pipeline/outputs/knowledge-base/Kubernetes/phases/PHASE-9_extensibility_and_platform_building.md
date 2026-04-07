# Phase 9: Extensibility And Platform Building

## Phase Goal
- Show how Kubernetes becomes a programmable control platform through custom APIs, controllers, and operator-style automation.

## Best-Fit Lens
- Platform/architect primary, CKA secondary.

## Concepts In This Phase
- crd
- custom-controllers
- operator-framework

## Module: Custom APIs And Controllers

### Module Overview
- This module is the capstone: it only makes sense after the learner already understands the native reconciliation model and object lifecycle.
- Concepts in this module: crd, custom-controllers, operator-framework

### Lesson: Extending Kubernetes Into A Platform

#### Concepts Covered
- crd
- custom-controllers
- operator-framework

#### Lesson Explanation
- Let's look at custom resource definitions in Kubernetes.
- And when we create a deployment Kubernetes creates a deployment and stores its information in the etcd data store.
- Now all of this is simply going to create list and modify the deployment object or resource in the etcd data store.
- So who or what is responsible for that?
- So that's the job of a controller.
- And here is how it looks in code.
- For now I'm just showing this so you can see what a controller actually looks like.
- Okay.
- Now let's do something fun.
- I'm just picking this use case to show that this could be really anything like literally anything.
- In this lecture we will look at developing custom controllers.
- And the data about the ticket is stored in etcd.

#### Key Structural Points
- So here's a deployment definition file.
- And when we create a deployment Kubernetes creates a deployment and stores its information in the etcd data store.
- Now we can create this deployment and then list the deployments and see the status.
- And we can run the delete command to delete the deployment.
- Now all of this is simply going to create list and modify the deployment object or resource in the etcd data store.
- But we know that when we create deployments it creates pods equal to the number of replicas defined in the deployment, in this case three.
- And that's the job of a controller in this case the deployment controller.
- Now we don't have to create a controller because the deployment controller is built in to the Kubernetes and is already available.
- So the controller is a process that runs in the background, and its job is to continuously monitor the status of resources that it's supposed to manage, in this case, the deployment that we created.
- And when we create, update or delete the deployment, it makes the necessary changes on the cluster to match what we have done.

#### Key YAML Examples
- In this case, when we create a deployment object, the controller creates a replica set, which in turn creates as many pods as we have specified in the deployment definition file.
- The kind is flight ticket.
- The spec section will have some properties required to book the ticket, such as from airport which we will set to Mumbai, and the two address which we will set to London, and also another property called number to specify the number of tickets tha...
- There are no matches for the kind flight ticket in version flights.com/v1.
- We're going to use CRD to tell Kubernetes that we would like to create objects of kind flight ticket going forward.
- So the CRD is a similar object with API version kind metadata and spec.
- Kind is custom resource definition.
- Metadata has name set to flight tickets, dot flights.com, let's say.
- And under the spec section we will specify a scope.
- And then we specify the names of the resource.

#### Key Commands
- And we can run the delete command to delete the deployment.
- So the singular name here is just the flight ticket, which is used to display the resource type in the output of the kubectl commands.
- And if you run the Kubernetes, the kubectl API resources command.
- When we run the kubectl commands.
- We can now create the custom resource definition by running the kubectl create command, and once the custom resource definition is created, you can now create the flight ticket object and then get or delete it.
- To get the short names we can run a kubectl API dash resources.
- To get that information we can run a kubectl, explain job and then just scroll to the top.
- So I'm gonna say kubectl, proxy and then I'll do port 8,001.
- And then when I do the &amp; symbol this is gonna run this command in the background.
- And now I'm gonna open up the original file and then I'm gonna move down to this command section.
- So I'm just gonna copy this or if you wanted to, you could also do kubectl run and then you could do mc-pod and then provide some random image.
- So I'll just say enginx:1-alpine and then I could do --dry-run equals client and then I'll put it to a YAML file and I'll just set it as question one and that way we can make changes to it.

#### Real-World Angle
- So here's a deployment definition file.
- And when we create a deployment Kubernetes creates a deployment and stores its information in the etcd data store.
- Now we can create this deployment and then list the deployments and see the status.
- And we can run the delete command to delete the deployment.
- Now all of this is simply going to create list and modify the deployment object or resource in the etcd data store.
- But we know that when we create deployments it creates pods equal to the number of replicas defined in the deployment, in this case three.
- And that's the job of a controller in this case the deployment controller.
- Now we don't have to create a controller because the deployment controller is built in to the Kubernetes and is already available.

#### Pitfalls
- Now we don't have to create a controller because the deployment controller is built in to the Kubernetes and is already available.
- You don't have to understand go or understand this code.
- It's not actually going to do anything about these resources because we don't yet have a controller for it.
- And with the help of the kubectl convert command we need to change the deprecated API version to the networking .k8.io/v1.
- For now I do not anticipate any questions on operators itself in the exam.
- So you don't have to change anything for kubelet.
- If you're using even somewhat modern version of Kubelet or Kubernetes, it's going to be using systemd already, so you don't have to configure anything, but you do have to configure the systemd cgroup driver for your container runtime.
- So you don't have to manually go in and change it.
- Um, let's just make sure we don't copy that again.
- Technically you don't need to install kubectl on all of the nodes if you don't want to have the tool on all of the nodes, you would just you would at least need it on the control plane node.

#### Troubleshooting Focus
- If you tried to create a flight ticket resource now on your Kubernetes cluster, you will see that it fails with the error message that says there is.
- If the value is entered by the user does not fall within this range, the resource will not be created and will return an error message.
- So Kubernetes operators do what a human operator typically would do to manage a specific application, such as installing it, maintaining it by taking backups, and restoring backups in case of disasters, uh, fixing any issues that may come across t...
- So Kubernetes operators do what a human operator typically will do to manage a specific application such as installing it, maintaining it, by taking backups, and restoring backups in case of disasters, fixing any issues that may come across the ap...
- So that's why we get an error.
- Um that's going to be in like troubleshooting scenarios where the kube API server is down and you want to be able to check if a container is running you.
- For those specific troubleshooting scenarios.
- Now the last step here is very specific to our environment, and I want to explain the issue that we're going.
- And this is to help avoid certain issues that you may.
- And it's going to help avoid any potential issues.

#### Revision Points
- And we can run the delete command to delete the deployment.
- Now all of this is simply going to create list and modify the deployment object or resource in the etcd data store.
- But we know that when we create deployments it creates pods equal to the number of replicas defined in the deployment, in this case three.
- Now we don't have to create a controller because the deployment controller is built in to the Kubernetes and is already available.
- So the controller is a process that runs in the background, and its job is to continuously monitor the status of resources that it's supposed to manage, in this case, the deployment that we created.
- And when we create, update or delete the deployment, it makes the necessary changes on the cluster to match what we have done.
- So that's the job of a controller.
- You don't have to understand go or understand this code.
- Let's just like how we created the deployment to deploy multiple pods in a cluster.
- We would like to create, say, a flight ticket object to book a flight ticket.

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
