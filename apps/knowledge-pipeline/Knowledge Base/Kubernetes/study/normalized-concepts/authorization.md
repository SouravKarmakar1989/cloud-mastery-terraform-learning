# Normalized Concept: Authorization

- Concept Key: authorization
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 1390

## 1. Definition
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

## 2. First-Principles Mental Model
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

## 3. Why This Exists
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

## 4. Internal Working
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
- The default storage class admission controller that observes the creation of PVCs and automatically adds the default storage class to them if one is not specified, the event rate limit admission controller can help set a limit on the requests with...

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
- Authorization is implemented using role based access controls, where users are associated to groups with specific permissions.

## 7. kubectl / command usage
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

## 8. Real-world scenarios
- So we've been running commands from our command line using the kubectl utility to perform various kinds of operations on our Kubernetes cluster.
- Now with role based access control, you could place in different kinds of restrictions, such as to allow or deny those with a particular role to say, create, list or delete different kinds of objects like pods, deployments or services.
- For example, when a pod creation request comes in, you'd like to review the configuration file and look at the image name and say that you do not want to allow images from a public Docker Hub registry.
- Or say for example, you'd like to say if the container is running as the root user, then you do not want to allow that request or allow certain capabilities only, or to enforce that the metadata always contains labels.
- Admission controllers help us implement better security measures to enforce how a cluster is used.
- We will go over some examples in the upcoming slides.
- Admission controller rejects requests to namespaces that do not exist, and there are many more admission controllers available.
- So let's take that as an example and look at it in a bit more detail.
- That mission controller handles the request and checks if the namespace is available.
- Once updated, the next time we run the command to provision a pod in a namespace that does not exist yet, the request goes through authentication, then authorization, and then the namespace auto provision controller, at which point it realizes tha...

## 9. Pitfalls and misunderstandings
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

## 10. Troubleshooting angle
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

## 11. CKA / CKAD relevance
- We will go over some examples in the upcoming slides.
- So let's take that as an example and look at it in a bit more detail.
- So that's one example of how an admission controller works.
- Or say for example, you'd like to say if the container is running as the root user.
- If you do have multiple ones configured, the modes are set using the authorization mode option on the kube API server.
- You may provide a comma separated list of multiple modes that you wish to use.
- When you have multiple modes configured, your request is authorized using each one in the order it is specified.
- For example, when a user sends a request, it's first handled by the node authorizer.
- How does authorization work if you do have multiple ones configured?
- For example, a monitoring application like Prometheus uses a service account to poll the Kubernetes API for performance metrics.

## 12. Source Contributions
- Matched Global Concepts:
  - Admission Controllers (match score: 2, notes: 66)
  - Kubernetes Security Primitives (match score: 2, notes: 63)
  - (2025 Updates)Admission Controllers (match score: 2, notes: 65)
  - Authorization (match score: 2, notes: 143)
  - Service Accounts (match score: 1, notes: 181)
  - Mock Exam - 2 - Solution _ (Optional) (match score: 1, notes: 624)
  - Cluster Roles (match score: 1, notes: 98)
  - Solution Role Based Access Controls (match score: 1, notes: 150)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 03_Scheduling: 65 note entries
  - certified-kubernetes-administrator-with-practice-tests / 07_Security: 228 note entries
  - certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams: 624 note entries
  - certified-kubernetes-application-developer / 03_Configuration: 105 note entries
  - certified-kubernetes-application-developer / 09_Security: 368 note entries
- Explicit Source Reference Samples:
  - ../../../../build/intermediate/section-maps/BATCH-026_section_concept_map.md | 153_Admission Controllers.extraction.md | Entry 1 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-026_section_concept_map.md | 153_Admission Controllers.extraction.md | Entry 2 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-026_section_concept_map.md | 153_Admission Controllers.extraction.md | Entry 3 | Type Architecture
  - ../../../../build/intermediate/section-maps/BATCH-026_section_concept_map.md | 153_Admission Controllers.extraction.md | Entry 4 | Type Architecture
  - ../../../../build/intermediate/section-maps/BATCH-026_section_concept_map.md | 153_Admission Controllers.extraction.md | Entry 5 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-026_section_concept_map.md | 153_Admission Controllers.extraction.md | Entry 6 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-026_section_concept_map.md | 153_Admission Controllers.extraction.md | Entry 7 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-026_section_concept_map.md | 153_Admission Controllers.extraction.md | Entry 8 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-026_section_concept_map.md | 153_Admission Controllers.extraction.md | Entry 9 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-026_section_concept_map.md | 153_Admission Controllers.extraction.md | Entry 10 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-026_section_concept_map.md | 153_Admission Controllers.extraction.md | Entry 11 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-026_section_concept_map.md | 153_Admission Controllers.extraction.md | Entry 12 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-026_section_concept_map.md | 153_Admission Controllers.extraction.md | Entry 13 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-026_section_concept_map.md | 153_Admission Controllers.extraction.md | Entry 14 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-026_section_concept_map.md | 153_Admission Controllers.extraction.md | Entry 15 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-026_section_concept_map.md | 153_Admission Controllers.extraction.md | Entry 16 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-026_section_concept_map.md | 153_Admission Controllers.extraction.md | Entry 17 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-026_section_concept_map.md | 153_Admission Controllers.extraction.md | Entry 18 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-026_section_concept_map.md | 153_Admission Controllers.extraction.md | Entry 19 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-026_section_concept_map.md | 153_Admission Controllers.extraction.md | Entry 20 | Type Concept

