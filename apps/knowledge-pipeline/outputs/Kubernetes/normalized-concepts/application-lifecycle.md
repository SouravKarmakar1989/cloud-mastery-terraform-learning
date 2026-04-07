# Normalized Concept: Application Lifecycle

- Concept Key: application-lifecycle
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 460

## 1. Definition
- -: Hello, my name is Mumshad Mannambeth and we are going through the certified Kubernetes Administrator's Course.
- In this section, we discuss about application life cycle management.
- We discuss a lot of these in the certified Kubernetes Application Developers Course.
- So if you have attended that already, some of these may be repetitive for you.
- If these topics seem familiar to you, skip them or simply go through the practice desk.
- We will start with rolling updates and rollbacks.
- In this lecture we will learn about admission controllers.
- So we've been running commands from our command line using the kubectl utility to perform various kinds of operations on our Kubernetes cluster.
- And we know every time we send a request say to create a pod, the request goes to the API server.
- And then the pod is created and the information is finally persisted in the etcd database when the request hits the API server.

## 2. First-Principles Mental Model
- We start at rolling updates and rollbacks, the different ways to configure applications, scale applications, before finally looking at the primitives office health healing application.
- And we know every time we send a request say to create a pod, the request goes to the API server.
- And then the pod is created and the information is finally persisted in the etcd database when the request hits the API server.
- We've learned that it goes through an authentication process.
- If the request was sent through kubectl, we know the kubeconfig file has the certificates configured, and the authentication process is responsible for identifying the user who sent the request and making sure the user is valid.
- And then the request goes through an authorization process.
- So in this case, if the user was assigned this particular role of a developer, the user is allowed to list, get, create, update or delete pods.
- As the request is to create a pod it is allowed to go through.
- Now with role based access control, you could place in different kinds of restrictions, such as to allow or deny those with a particular role to say, create, list or delete different kinds of objects like pods, deployments or services.
- Now, as you can see, most of these rules that you can create with role based access control is at the Kubernetes API level.

## 3. Why This Exists
- We start at rolling updates and rollbacks, the different ways to configure applications, scale applications, before finally looking at the primitives office health healing application.
- If these topics seem familiar to you, skip them or simply go through the practice desk.
- So we've been running commands from our command line using the kubectl utility to perform various kinds of operations on our Kubernetes cluster.
- And we know every time we send a request say to create a pod, the request goes to the API server.
- And this is when we check if the user has permission to perform that operation.
- So in this case, if the user was assigned this particular role of a developer, the user is allowed to list, get, create, update or delete pods.
- As the request is to create a pod it is allowed to go through.
- So that's authorization with role based access control.
- Now with role based access control, you could place in different kinds of restrictions, such as to allow or deny those with a particular role to say, create, list or delete different kinds of objects like pods, deployments or services.
- We could even restrict access to specific resource names such as, say, a developer can only work on pods named blue or orange, or restrict access within a namespace alone.

## 4. Internal Working
- We start at rolling updates and rollbacks, the different ways to configure applications, scale applications, before finally looking at the primitives office health healing application.
- And we know every time we send a request say to create a pod, the request goes to the API server.
- And then the pod is created and the information is finally persisted in the etcd database when the request hits the API server.
- We've learned that it goes through an authentication process.
- If the request was sent through kubectl, we know the kubeconfig file has the certificates configured, and the authentication process is responsible for identifying the user who sent the request and making sure the user is valid.
- And then the request goes through an authorization process.
- So in this case, if the user was assigned this particular role of a developer, the user is allowed to list, get, create, update or delete pods.
- As the request is to create a pod it is allowed to go through.
- Now with role based access control, you could place in different kinds of restrictions, such as to allow or deny those with a particular role to say, create, list or delete different kinds of objects like pods, deployments or services.
- Now, as you can see, most of these rules that you can create with role based access control is at the Kubernetes API level.
- Apart from simply validating configuration, admission controllers can do a lot more, such as change the request itself or perform additional operations before the pod gets created.
- That ensures that every time a pod is created, the images are always pulled.

## 5. Key Objects / Fields / Relationships
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

## 6. YAML Deep Dive
- So we've been running commands from our command line using the kubectl utility to perform various kinds of operations on our Kubernetes cluster.
- Now with role based access control, you could place in different kinds of restrictions, such as to allow or deny those with a particular role to say, create, list or delete different kinds of objects like pods, deployments or services.
- We could even restrict access to specific resource names such as, say, a developer can only work on pods named blue or orange, or restrict access within a namespace alone.
- And what user is allowed access to what kind of API operations.
- But what if you want to do more than just define what kind of access a user has to an object?
- Only allow images from a specific internal registry, or to enforce that, we must never use the latest tag for any images.
- Or say for example, you'd like to say if the container is running as the root user, then you do not want to allow that request or allow certain capabilities only, or to enforce that the metadata always contains labels.
- The default storage class admission controller that observes the creation of PVCs and automatically adds the default storage class to them if one is not specified, the event rate limit admission controller can help set a limit on the requests with...
- So if you're in a kube ADM based setup, then update the flag within the kube API server manifest file as shown here on the right.
- Then I'm gonna run a specific command.

## 7. kubectl / command usage
- So we've been running commands from our command line using the kubectl utility to perform various kinds of operations on our Kubernetes cluster.
- If the request was sent through kubectl, we know the kubeconfig file has the certificates configured, and the authentication process is responsible for identifying the user who sent the request and making sure the user is valid.
- If I run this command, it would throw an error that says the namespace blue is not found.
- First, to see a list of admission controllers enabled by default, run the cube API server command and grep for enable admission plugins.
- Note that if you're running this in a cube ADM based setup, then you must run this command within the cube API.
- Server control plane pod using the kubectl exec command first.
- Once updated, the next time we run the command to provision a pod in a namespace that does not exist yet, the request goes through authentication, then authorization, and then the namespace auto provision controller, at which point it realizes tha...
- So I do a kubectl get pods -: ncube-system.
- So I'm gonna do a kubectl exec-it.
- Then I'm gonna run a specific command.

## 8. Real-world scenarios
- If these topics seem familiar to you, skip them or simply go through the practice desk.
- So we've been running commands from our command line using the kubectl utility to perform various kinds of operations on our Kubernetes cluster.
- Now with role based access control, you could place in different kinds of restrictions, such as to allow or deny those with a particular role to say, create, list or delete different kinds of objects like pods, deployments or services.
- For example, when a pod creation request comes in, you'd like to review the configuration file and look at the image name and say that you do not want to allow images from a public Docker Hub registry.
- Or say for example, you'd like to say if the container is running as the root user, then you do not want to allow that request or allow certain capabilities only, or to enforce that the metadata always contains labels.
- Admission controllers help us implement better security measures to enforce how a cluster is used.
- We will go over some examples in the upcoming slides.
- Admission controller rejects requests to namespaces that do not exist, and there are many more admission controllers available.
- So let's take that as an example and look at it in a bit more detail.
- That mission controller handles the request and checks if the namespace is available.

## 9. Pitfalls and misunderstandings
- For example, when a pod creation request comes in, you'd like to review the configuration file and look at the image name and say that you do not want to allow images from a public Docker Hub registry.
- Or say for example, you'd like to say if the container is running as the root user, then you do not want to allow that request or allow certain capabilities only, or to enforce that the metadata always contains labels.
- Admission controller rejects requests to namespaces that do not exist, and there are many more admission controllers available.
- Admission controllers are deprecated and is now replaced by namespace lifecycle admission controller.
- However, we don't see NamespaceAutoProvision in this list.
- And if you don't wanna go into vi we can always just grep for this.
- Now the reason this ultimately failed and it threw that error was because Kubernetes has a NamespaceExist admission controller enabled which rejects requests and namespaces that do not exist.
- And this next question is just pointing out that the namespace exists in the namespace auto provision and mission controllers are deprecated and are now replaced by the namespace lifecycle admission controller.
- Fortunately, as we said, Helm keeps track of everything associated with a release, so we don't have to upgrade our objects one by one.
- Now let's assume this upgrade did something that we don't like.

## 10. Troubleshooting angle
- If I run this command, it would throw an error that says the namespace blue is not found.
- And we can see that it throws an error because the namespace blue was not found.
- If you'd like to make more attempts, use the failure threshold option.
- If you tried to create a flight ticket resource now on your Kubernetes cluster, you will see that it fails with the error message that says there is.
- If the value is entered by the user does not fall within this range, the resource will not be created and will return an error message.
- So Kubernetes operators do what a human operator typically will do to manage a specific application such as installing it, maintaining it, by taking backups, and restoring backups in case of disasters, fixing any issues that may come across the ap...

## 11. CKA / CKAD relevance
- We will go over some examples in the upcoming slides.
- So let's take that as an example and look at it in a bit more detail.
- So that's one example of how an admission controller works.
- So let's translate it into plain English by taking a look at some practical examples.
- A release is somewhat similar to an app, but more specifically, it represents a package or a collection of Kubernetes objects.
- For example, the newer version of Nginx may require a new environment variable to be set, or new secret to be created, which requires changing configuration objects and other files, part of the manifest files.
- It's worth mentioning that we chose Nginx here as it's simple to upgrade, but there will be Kubernetes packages that may require a few extra steps to upgrade.
- For example, if we had have tried to upgrade the previous WordPress release that we created, we would've got this output.
- For example, imagine you rollback MySQL database server.
- We know that a pod has multiple containers.

## 12. Source Contributions
- Matched Global Concepts:
  - Application Lifecycle Management - Section Introduction (match score: 2, notes: 7)
  - Admission Controllers (match score: 1, notes: 66)
  - Solution_ Admission Controllers (match score: 1, notes: 68)
  - Lifecycle Management With Helm (match score: 1, notes: 78)
  - Readiness and Liveness Probes (match score: 1, notes: 78)
  - Custom Resource Definition (match score: 1, notes: 119)
  - Operator Framework (match score: 1, notes: 22)
  - Kubernetes on Cloud - Introduction (match score: 1, notes: 22)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management: 7 note entries
  - certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics: 78 note entries
  - certified-kubernetes-application-developer / 05_Observability: 78 note entries
  - certified-kubernetes-application-developer / 09_Security: 275 note entries
  - learn-kubernetes / 09_Kubernetes on Cloud: 22 note entries
- Explicit Source Reference Samples:
  - section-maps/BATCH-005_section_concept_map.md | 095_Application Lifecycle Management - Section Introduction.extraction.md | Entry 1 | Type Concept
  - section-maps/BATCH-005_section_concept_map.md | 095_Application Lifecycle Management - Section Introduction.extraction.md | Entry 2 | Type Concept
  - section-maps/BATCH-005_section_concept_map.md | 095_Application Lifecycle Management - Section Introduction.extraction.md | Entry 3 | Type Implementation Step
  - section-maps/BATCH-005_section_concept_map.md | 095_Application Lifecycle Management - Section Introduction.extraction.md | Entry 4 | Type Concept
  - section-maps/BATCH-005_section_concept_map.md | 095_Application Lifecycle Management - Section Introduction.extraction.md | Entry 5 | Type Concept
  - section-maps/BATCH-005_section_concept_map.md | 095_Application Lifecycle Management - Section Introduction.extraction.md | Entry 6 | Type Concept
  - section-maps/BATCH-005_section_concept_map.md | 095_Application Lifecycle Management - Section Introduction.extraction.md | Entry 7 | Type Concept
  - section-maps/BATCH-026_section_concept_map.md | 153_Admission Controllers.extraction.md | Entry 1 | Type Concept
  - section-maps/BATCH-026_section_concept_map.md | 153_Admission Controllers.extraction.md | Entry 2 | Type Concept
  - section-maps/BATCH-026_section_concept_map.md | 153_Admission Controllers.extraction.md | Entry 3 | Type Architecture
  - section-maps/BATCH-026_section_concept_map.md | 153_Admission Controllers.extraction.md | Entry 4 | Type Architecture
  - section-maps/BATCH-026_section_concept_map.md | 153_Admission Controllers.extraction.md | Entry 5 | Type Implementation Step
  - section-maps/BATCH-026_section_concept_map.md | 153_Admission Controllers.extraction.md | Entry 6 | Type Concept
  - section-maps/BATCH-026_section_concept_map.md | 153_Admission Controllers.extraction.md | Entry 7 | Type Implementation Step
  - section-maps/BATCH-026_section_concept_map.md | 153_Admission Controllers.extraction.md | Entry 8 | Type Implementation Step
  - section-maps/BATCH-026_section_concept_map.md | 153_Admission Controllers.extraction.md | Entry 9 | Type Concept
  - section-maps/BATCH-026_section_concept_map.md | 153_Admission Controllers.extraction.md | Entry 10 | Type Concept
  - section-maps/BATCH-026_section_concept_map.md | 153_Admission Controllers.extraction.md | Entry 11 | Type Implementation Step
  - section-maps/BATCH-026_section_concept_map.md | 153_Admission Controllers.extraction.md | Entry 12 | Type Concept
  - section-maps/BATCH-026_section_concept_map.md | 153_Admission Controllers.extraction.md | Entry 13 | Type Implementation Step

