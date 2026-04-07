# Normalized Concept: Custom Controllers

- Concept Key: custom-controllers
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 779

## 1. Definition
- In this lecture we will look at developing custom controllers.
- And the data about the ticket is stored in etcd.
- Now what we need to do is monitor the status of the objects in etcd and perform actions such as making calls to the flight booking API to book, edit, or cancel flight tickets.
- And that's why we need a custom controller.
- So a controller is any process or code that runs in a loop and is continuously monitoring the Kubernetes cluster and listening to events of specific objects being changed, in this case, the flight ticket object.
- And now we could do that in any way we can.
- Of course you need to write some code.
- So say I know Python well, so I could write a code in Python that would query the Kubernetes API server for objects in the Kubernetes API.
- Developing in go with the Kubernetes Go client provides support for other libraries like shared informers, that provide caching and queuing mechanisms that can help build controllers easily and in the right way.
- So how do you start building a custom controller?

## 2. First-Principles Mental Model
- So to pick up from where we left off, we have created a custom resource definition.
- And we are able to create our flight ticket objects.
- And the data about the ticket is stored in etcd.
- Now what we need to do is monitor the status of the objects in etcd and perform actions such as making calls to the flight booking API to book, edit, or cancel flight tickets.
- So say I know Python well, so I could write a code in Python that would query the Kubernetes API server for objects in the Kubernetes API.
- And then I could watch for changes and make a further call to the API to make changes to the system.
- However, developing a controller in Python may be challenging as the calls made to the APIs may become expensive and we will need to create our own queuing and caching mechanisms.
- So first clone this repo and then we modify the controller.
- Then we build and run it.
- And then clone the GitHub repo of the sample controller.

## 3. Why This Exists
- So to pick up from where we left off, we have created a custom resource definition.
- And we are able to create our flight ticket objects.
- Now what we need to do is monitor the status of the objects in etcd and perform actions such as making calls to the flight booking API to book, edit, or cancel flight tickets.
- So a controller is any process or code that runs in a loop and is continuously monitoring the Kubernetes cluster and listening to events of specific objects being changed, in this case, the flight ticket object.
- Of course you need to write some code.
- And then I could watch for changes and make a further call to the API to make changes to the system.
- However, developing a controller in Python may be challenging as the calls made to the APIs may become expensive and we will need to create our own queuing and caching mechanisms.
- And we're not going to get into the details about the code itself at this point.
- And somewhere within the code, we're making a call to the flight booking API and to book flight tickets.
- And when we run it, we specify the kubeconfig file that the controller can use to authenticate to the Kubernetes API, and then the control process starts locally, and it then watches for the creation of the flight ticket objects and make the makes...

## 4. Internal Working
- So to pick up from where we left off, we have created a custom resource definition.
- And we are able to create our flight ticket objects.
- And the data about the ticket is stored in etcd.
- Now what we need to do is monitor the status of the objects in etcd and perform actions such as making calls to the flight booking API to book, edit, or cancel flight tickets.
- So say I know Python well, so I could write a code in Python that would query the Kubernetes API server for objects in the Kubernetes API.
- And then I could watch for changes and make a further call to the API to make changes to the system.
- However, developing a controller in Python may be challenging as the calls made to the APIs may become expensive and we will need to create our own queuing and caching mechanisms.
- So first clone this repo and then we modify the controller.
- Then we build and run it.
- And then clone the GitHub repo of the sample controller.
- We then CD into the sample controller directory, and then we customize the controller dot go with our custom logic.
- And then once we do that, we then build the code and then we run it.

## 5. Key Objects / Fields / Relationships
- In this lecture we will look at developing custom controllers.
- Now what we need to do is monitor the status of the objects in etcd and perform actions such as making calls to the flight booking API to book, edit, or cancel flight tickets.
- And that's why we need a custom controller.
- So a controller is any process or code that runs in a loop and is continuously monitoring the Kubernetes cluster and listening to events of specific objects being changed, in this case, the flight ticket object.
- So say I know Python well, so I could write a code in Python that would query the Kubernetes API server for objects in the Kubernetes API.
- And then I could watch for changes and make a further call to the API to make changes to the system.
- However, developing a controller in Python may be challenging as the calls made to the APIs may become expensive and we will need to create our own queuing and caching mechanisms.
- Developing in go with the Kubernetes Go client provides support for other libraries like shared informers, that provide caching and queuing mechanisms that can help build controllers easily and in the right way.
- So how do you start building a custom controller?
- So there's a GitHub repo named Sample controller.

## 6. YAML Deep Dive
- So a controller is any process or code that runs in a loop and is continuously monitoring the Kubernetes cluster and listening to events of specific objects being changed, in this case, the flight ticket object.
- And when we run it, we specify the kubeconfig file that the controller can use to authenticate to the Kubernetes API, and then the control process starts locally, and it then watches for the creation of the flight ticket objects and make the makes...
- And when we run it, we specify the cube config file that the controller can use to authenticate to the Kubernetes API.
- So Kubernetes operators do what a human operator typically will do to manage a specific application such as installing it, maintaining it, by taking backups, and restoring backups in case of disasters, fixing any issues that may come across the ap...
- In this case, when we create a deployment object, the controller creates a replica set, which in turn creates as many pods as we have specified in the deployment definition file.
- The kind is flight ticket.
- The spec section will have some properties required to book the ticket, such as from airport which we will set to Mumbai, and the two address which we will set to London, and also another property called number to specify the number of tickets tha...
- There are no matches for the kind flight ticket in version flights.com/v1.
- We're going to use CRD to tell Kubernetes that we would like to create objects of kind flight ticket going forward.
- So the CRD is a similar object with API version kind metadata and spec.

## 7. kubectl / command usage
- And we can run the delete command to delete the deployment.
- So the singular name here is just the flight ticket, which is used to display the resource type in the output of the kubectl commands.
- And if you run the Kubernetes, the kubectl API resources command.
- When we run the kubectl commands.
- We can now create the custom resource definition by running the kubectl create command, and once the custom resource definition is created, you can now create the flight ticket object and then get or delete it.
- So I'm just gonna copy this or if you wanted to, you could also do kubectl run and then you could do mc-pod and then provide some random image.
- So I'll just say enginx:1-alpine and then I could do --dry-run equals client and then I'll put it to a YAML file and I'll just set it as question one and that way we can make changes to it.
- The image should be busybox:1 and what it should do is it should continuously log the output of the date command to the following file every second.
- And so to do that we'll say command.
- And so we have to change what the command is going to run within the container.

## 8. Real-world scenarios
- So a controller is any process or code that runs in a loop and is continuously monitoring the Kubernetes cluster and listening to events of specific objects being changed, in this case, the flight ticket object.
- Now you don't want to build and run it each time, so you may package the custom controller in a Docker image and then choose to run it inside your Kubernetes cluster as a pod or a deployment.
- So you may package the Custom Controller in a Docker image and then choose to run it inside your Kubernetes cluster as a pod or a deployment.
- And currently, these are separate entities and we have to manually create the C-R-D and the resources using the C-R-D and then we deploy the controller as a pod or a deployment.
- However, these two entities can be packaged together to be deployed as a single entity using the operator framework.
- So by deploying the flight operator, it internally creates the custom resource definition and the resources and also deploys the custom controller as a deployment.
- Now, the operator framework does much more than just deploying these two components.
- So let's look at a real life use case of an operator and one of the most popular operator is the S-C-D operator.
- It is used to deploy and manage and S-C-D cluster within Kubernetes, but it has an S-C-D cluster, C-R-D, and a custom controller that watches for the S-C-D cluster resource and deploys S-C-D within the Kubernetes cluster.
- However, it can do much more such as take a backup of the S-C-D cluster as well as restore a backup to the S-C-D cluster by simply creating a C-R-D.

## 9. Pitfalls and misunderstandings
- Now you don't want to build and run it each time, so you may package the custom controller in a Docker image and then choose to run it inside your Kubernetes cluster as a pod or a deployment.
- Now, in the exam, I don't expect them to ask a question about building a custom controller as it requires more coding knowledge.
- So I don't anticipate a question on this.
- Now you don't want to build and run it each time.
- For now, I do not anticipate any questions on operators itself in the exam.
- Now we don't have to create a controller because the deployment controller is built in to the Kubernetes and is already available.
- You don't have to understand go or understand this code.
- It's not actually going to do anything about these resources because we don't yet have a controller for it.
- So the pod should be called mc-pod, which we have, we don't really need a label because it doesn't really say anything about labels.
- So what I'm gonna do is, I'm gonna copy this and then I'm going to copy that and then, I can go to that file it told us, which is /root/vpa-crds.txt, we'll paste it in, and we don't need this information so it just wants the name so I'm just gonna...

## 10. Troubleshooting angle
- So Kubernetes operators do what a human operator typically will do to manage a specific application such as installing it, maintaining it, by taking backups, and restoring backups in case of disasters, fixing any issues that may come across the ap...
- If you tried to create a flight ticket resource now on your Kubernetes cluster, you will see that it fails with the error message that says there is.
- If the value is entered by the user does not fall within this range, the resource will not be created and will return an error message.
- So Kubernetes operators do what a human operator typically would do to manage a specific application, such as installing it, maintaining it by taking backups, and restoring backups in case of disasters, uh, fixing any issues that may come across t...
- Okay, so for question six, a new application origin is deployed and there's something wrong with it, identify and fix the issue.
- So everything else kind of seems normal and then we have our init container and our init container, we could see that state is terminated and reason is error.
- This got terminated due to an error.
- And so as you probably expected, this is the issue with the typo, it should just be two e's.
- So let's go ahead and fix that.
- Then I'm gonna open question6.yaml and we're going to fix this.

## 11. CKA / CKAD relevance
- So you may package the Custom Controller in a Docker image and then choose to run it inside your Kubernetes cluster as a pod or a deployment.
- However, these two entities can be packaged together to be deployed as a single entity using the operator framework.
- Let's just like how we created the deployment to deploy multiple pods in a cluster.
- And we know that there are Namespaced and non namespaced scopes in Kubernetes for example, pods, replica sets, deployments are all scoped, whereas persistent volumes, nodes and namespace itself are non Unknown non scoped objects.
- Each resource can be configured with multiple versions as it passes through the various phases of its lifecycle.
- For example, if it's a new resource type then we're going to introduce it.
- And with multiple versions configured for the same resource, we must choose which ones are served through the API server.
- If you have multiple versions, only one version can be marked as the storage version.
- Instructor: Okay, so what we're gonna do is we're gonna walk through the solutions for the mock exam one.
- Now, if you want you can go to the documentation, you can search for pod to see an example configuration and it's gonna give you one.

## 12. Source Contributions
- Matched Global Concepts:
  - (2025 Updates) Custom Controllers (match score: 3, notes: 39)
  - Custom Controllers (match score: 3, notes: 38)
  - Operator Framework (match score: 2, notes: 22)
  - (2025 Updates)Custorm Resource Definition (CRD) (match score: 2, notes: 119)
  - (2025 Updates) Operator Framework (match score: 2, notes: 32)
  - Custom Resource Definition (match score: 2, notes: 119)
  - Solution - Mock Exam -1 (Optional) (match score: 1, notes: 344)
  - Recap - Kubernetes Architecture (match score: 1, notes: 66)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 07_Security: 190 note entries
  - certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams: 344 note entries
  - certified-kubernetes-application-developer / 02_Core Concepts: 66 note entries
  - certified-kubernetes-application-developer / 09_Security: 179 note entries
- Explicit Source Reference Samples:
  - section-maps/BATCH-007_section_concept_map.md | 186_(2025 Updates) Custom Controllers.extraction.md | Entry 1 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 186_(2025 Updates) Custom Controllers.extraction.md | Entry 2 | Type Implementation Step
  - section-maps/BATCH-007_section_concept_map.md | 186_(2025 Updates) Custom Controllers.extraction.md | Entry 3 | Type Implementation Step
  - section-maps/BATCH-007_section_concept_map.md | 186_(2025 Updates) Custom Controllers.extraction.md | Entry 4 | Type Architecture
  - section-maps/BATCH-007_section_concept_map.md | 186_(2025 Updates) Custom Controllers.extraction.md | Entry 5 | Type Architecture
  - section-maps/BATCH-007_section_concept_map.md | 186_(2025 Updates) Custom Controllers.extraction.md | Entry 6 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 186_(2025 Updates) Custom Controllers.extraction.md | Entry 7 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 186_(2025 Updates) Custom Controllers.extraction.md | Entry 8 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 186_(2025 Updates) Custom Controllers.extraction.md | Entry 9 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 186_(2025 Updates) Custom Controllers.extraction.md | Entry 10 | Type Architecture
  - section-maps/BATCH-007_section_concept_map.md | 186_(2025 Updates) Custom Controllers.extraction.md | Entry 11 | Type Implementation Step
  - section-maps/BATCH-007_section_concept_map.md | 186_(2025 Updates) Custom Controllers.extraction.md | Entry 12 | Type Implementation Step
  - section-maps/BATCH-007_section_concept_map.md | 186_(2025 Updates) Custom Controllers.extraction.md | Entry 13 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 186_(2025 Updates) Custom Controllers.extraction.md | Entry 14 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 186_(2025 Updates) Custom Controllers.extraction.md | Entry 15 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 186_(2025 Updates) Custom Controllers.extraction.md | Entry 16 | Type Implementation Step
  - section-maps/BATCH-007_section_concept_map.md | 186_(2025 Updates) Custom Controllers.extraction.md | Entry 17 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 186_(2025 Updates) Custom Controllers.extraction.md | Entry 18 | Type Implementation Step
  - section-maps/BATCH-007_section_concept_map.md | 186_(2025 Updates) Custom Controllers.extraction.md | Entry 19 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 186_(2025 Updates) Custom Controllers.extraction.md | Entry 20 | Type Concept

