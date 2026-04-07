# Normalized Concept: CRD

- Concept Key: crd
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 828

## 1. Definition
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

## 2. First-Principles Mental Model
- Before we talk about custom resources, let's first talk about resources.
- So here's a deployment definition file.
- And when we create a deployment Kubernetes creates a deployment and stores its information in the etcd data store.
- Now we can create this deployment and then list the deployments and see the status.
- And we can run the delete command to delete the deployment.
- Now all of this is simply going to create list and modify the deployment object or resource in the etcd data store.
- But we know that when we create deployments it creates pods equal to the number of replicas defined in the deployment, in this case three.
- And that's the job of a controller in this case the deployment controller.
- So the controller is a process that runs in the background, and its job is to continuously monitor the status of resources that it's supposed to manage, in this case, the deployment that we created.
- And when we create, update or delete the deployment, it makes the necessary changes on the cluster to match what we have done.

## 3. Why This Exists
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

## 4. Internal Working
- Before we talk about custom resources, let's first talk about resources.
- So here's a deployment definition file.
- And when we create a deployment Kubernetes creates a deployment and stores its information in the etcd data store.
- Now we can create this deployment and then list the deployments and see the status.
- And we can run the delete command to delete the deployment.
- Now all of this is simply going to create list and modify the deployment object or resource in the etcd data store.
- But we know that when we create deployments it creates pods equal to the number of replicas defined in the deployment, in this case three.
- And that's the job of a controller in this case the deployment controller.
- So the controller is a process that runs in the background, and its job is to continuously monitor the status of resources that it's supposed to manage, in this case, the deployment that we created.
- And when we create, update or delete the deployment, it makes the necessary changes on the cluster to match what we have done.
- In this case, when we create a deployment object, the controller creates a replica set, which in turn creates as many pods as we have specified in the deployment definition file.
- So the deployment controller is written in go and is part of the Kubernetes source code.

## 5. Key Objects / Fields / Relationships
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

## 6. YAML Deep Dive
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

## 7. kubectl / command usage
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

## 8. Real-world scenarios
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

## 9. Pitfalls and misunderstandings
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

## 10. Troubleshooting angle
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

## 11. CKA / CKAD relevance
- Let's just like how we created the deployment to deploy multiple pods in a cluster.
- And we know that there are Namespaced and non namespaced scopes in Kubernetes for example, pods, replica sets, deployments are all scoped, whereas persistent volumes, nodes and namespace itself are non Unknown non scoped objects.
- Each resource can be configured with multiple versions as it passes through the various phases of its lifecycle.
- For example, if it's a new resource type then we're going to introduce it.
- And with multiple versions configured for the same resource, we must choose which ones are served through the API server.
- If you have multiple versions, only one version can be marked as the storage version.
- However, these two entities can be packaged together to be deployed as a single entity using the operator framework.
- Now if you are going to be creating a cluster with multiple control plane nodes, there's going to be a separate document which is creating a highly available cluster with kube ADM.
- It's going to show you how to set up a cluster with multiple control plane nodes.
- So this is going to walk you through how to install kube ADM which is just using the the respective or installing the respective packages for kube adm kubelet and kubectl and so on.

## 12. Source Contributions
- Matched Global Concepts:
  - Custom Resource Definition (match score: 2, notes: 119)
  - Solution_ API Versions_Deprecations (match score: 2, notes: 82)
  - (2025 Updates) Operator Framework (match score: 2, notes: 32)
  - (2025 Updates)Custorm Resource Definition (CRD) (match score: 2, notes: 119)
  - Operator Framework (match score: 1, notes: 22)
  - Demo - Kubeadm - Configuring Cluster With Kubeadm (match score: 1, notes: 377)
  - Custom Controllers (match score: 1, notes: 38)
  - (2025 Updates) Custom Controllers (match score: 1, notes: 39)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 07_Security: 190 note entries
  - certified-kubernetes-application-developer / 09_Security: 261 note entries
  - learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm: 377 note entries
- Explicit Source Reference Samples:
  - section-maps/BATCH-026_section_concept_map.md | 163_Custom Resource Definition.extraction.md | Entry 1 | Type Concept
  - section-maps/BATCH-026_section_concept_map.md | 163_Custom Resource Definition.extraction.md | Entry 2 | Type Implementation Step
  - section-maps/BATCH-026_section_concept_map.md | 163_Custom Resource Definition.extraction.md | Entry 3 | Type Implementation Step
  - section-maps/BATCH-026_section_concept_map.md | 163_Custom Resource Definition.extraction.md | Entry 4 | Type Architecture
  - section-maps/BATCH-026_section_concept_map.md | 163_Custom Resource Definition.extraction.md | Entry 5 | Type Implementation Step
  - section-maps/BATCH-026_section_concept_map.md | 163_Custom Resource Definition.extraction.md | Entry 6 | Type Implementation Step
  - section-maps/BATCH-026_section_concept_map.md | 163_Custom Resource Definition.extraction.md | Entry 7 | Type Architecture
  - section-maps/BATCH-026_section_concept_map.md | 163_Custom Resource Definition.extraction.md | Entry 8 | Type Implementation Step
  - section-maps/BATCH-026_section_concept_map.md | 163_Custom Resource Definition.extraction.md | Entry 9 | Type Concept
  - section-maps/BATCH-026_section_concept_map.md | 163_Custom Resource Definition.extraction.md | Entry 10 | Type Implementation Step
  - section-maps/BATCH-026_section_concept_map.md | 163_Custom Resource Definition.extraction.md | Entry 11 | Type Warning/Pitfall
  - section-maps/BATCH-026_section_concept_map.md | 163_Custom Resource Definition.extraction.md | Entry 12 | Type Implementation Step
  - section-maps/BATCH-026_section_concept_map.md | 163_Custom Resource Definition.extraction.md | Entry 13 | Type Implementation Step
  - section-maps/BATCH-026_section_concept_map.md | 163_Custom Resource Definition.extraction.md | Entry 14 | Type Implementation Step
  - section-maps/BATCH-026_section_concept_map.md | 163_Custom Resource Definition.extraction.md | Entry 15 | Type Concept
  - section-maps/BATCH-026_section_concept_map.md | 163_Custom Resource Definition.extraction.md | Entry 16 | Type Concept
  - section-maps/BATCH-026_section_concept_map.md | 163_Custom Resource Definition.extraction.md | Entry 17 | Type Implementation Step
  - section-maps/BATCH-026_section_concept_map.md | 163_Custom Resource Definition.extraction.md | Entry 18 | Type Warning/Pitfall
  - section-maps/BATCH-026_section_concept_map.md | 163_Custom Resource Definition.extraction.md | Entry 19 | Type Concept
  - section-maps/BATCH-026_section_concept_map.md | 163_Custom Resource Definition.extraction.md | Entry 20 | Type Concept

