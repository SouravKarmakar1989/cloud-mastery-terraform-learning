# Normalized Concept: Kubeconfig

- Concept Key: kubeconfig
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 1137

## 1. Definition
- -: Let us now talk about installing Helm.
- Now Helm can be installed on Linux, Windows, or MAC OS systems.
- We will go over the instructions on installing Helm on Linux systems for now.
- The systems with the snap utility can install Helm using the nap install Helm command.
- Use the classic parameter while installing to install a more relaxed sandbox that gives the app a bit more access to the host system, rather than strictly isolating it to its separate environment.
- This way, Helm can easily access the kubeconfig file in our home directory.
- So it knows how to connect to our Kubernetes cluster.
- For apt-based systems, such as Debian or Ubuntu, follow the instructions to add the key and sources list before installing Helm.
- In this lecture we will learn about admission controllers.
- So we've been running commands from our command line using the kubectl utility to perform various kinds of operations on our Kubernetes cluster.

## 2. First-Principles Mental Model
- Now, before installing Helm, you must first have a functional Kubernetes cluster and the kubectl utility installed and configured on your local computer with the right credentials or login details set-up in the kubeconfig file to work with the int...
- Well, that basically means you must have the kubectl utility configured to work with whichever cluster you're targeting.
- And we know every time we send a request say to create a pod, the request goes to the API server.
- And then the pod is created and the information is finally persisted in the etcd database when the request hits the API server.
- We've learned that it goes through an authentication process.
- If the request was sent through kubectl, we know the kubeconfig file has the certificates configured, and the authentication process is responsible for identifying the user who sent the request and making sure the user is valid.
- And then the request goes through an authorization process.
- So in this case, if the user was assigned this particular role of a developer, the user is allowed to list, get, create, update or delete pods.
- As the request is to create a pod it is allowed to go through.
- Now with role based access control, you could place in different kinds of restrictions, such as to allow or deny those with a particular role to say, create, list or delete different kinds of objects like pods, deployments or services.

## 3. Why This Exists
- Now, before installing Helm, you must first have a functional Kubernetes cluster and the kubectl utility installed and configured on your local computer with the right credentials or login details set-up in the kubeconfig file to work with the int...
- Well, that basically means you must have the kubectl utility configured to work with whichever cluster you're targeting.
- Use the classic parameter while installing to install a more relaxed sandbox that gives the app a bit more access to the host system, rather than strictly isolating it to its separate environment.
- So it knows how to connect to our Kubernetes cluster.
- For apt-based systems, such as Debian or Ubuntu, follow the instructions to add the key and sources list before installing Helm.
- And for package-based systems, run the package install Helm command and always refer to the latest instructions from the documentation pages to install Helm for your version of operating system.
- So we've been running commands from our command line using the kubectl utility to perform various kinds of operations on our Kubernetes cluster.
- And we know every time we send a request say to create a pod, the request goes to the API server.
- And this is when we check if the user has permission to perform that operation.
- So in this case, if the user was assigned this particular role of a developer, the user is allowed to list, get, create, update or delete pods.

## 4. Internal Working
- Now, before installing Helm, you must first have a functional Kubernetes cluster and the kubectl utility installed and configured on your local computer with the right credentials or login details set-up in the kubeconfig file to work with the int...
- Well, that basically means you must have the kubectl utility configured to work with whichever cluster you're targeting.
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

## 5. Key Objects / Fields / Relationships
- -: Let us now talk about installing Helm.
- Now, before installing Helm, you must first have a functional Kubernetes cluster and the kubectl utility installed and configured on your local computer with the right credentials or login details set-up in the kubeconfig file to work with the int...
- Now Helm can be installed on Linux, Windows, or MAC OS systems.
- We will go over the instructions on installing Helm on Linux systems for now.
- The systems with the snap utility can install Helm using the nap install Helm command.
- Use the classic parameter while installing to install a more relaxed sandbox that gives the app a bit more access to the host system, rather than strictly isolating it to its separate environment.
- This way, Helm can easily access the kubeconfig file in our home directory.
- For apt-based systems, such as Debian or Ubuntu, follow the instructions to add the key and sources list before installing Helm.
- And for package-based systems, run the package install Helm command and always refer to the latest instructions from the documentation pages to install Helm for your version of operating system.
- In this lecture we will learn about admission controllers.

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
- Now, we don't want to have to specify the cube config file option, on each command.

## 7. kubectl / command usage
- -: Let us now talk about installing Helm.
- Now, before installing Helm, you must first have a functional Kubernetes cluster and the kubectl utility installed and configured on your local computer with the right credentials or login details set-up in the kubeconfig file to work with the int...
- Well, that basically means you must have the kubectl utility configured to work with whichever cluster you're targeting.
- Now Helm can be installed on Linux, Windows, or MAC OS systems.
- We will go over the instructions on installing Helm on Linux systems for now.
- The systems with the snap utility can install Helm using the nap install Helm command.
- This way, Helm can easily access the kubeconfig file in our home directory.
- For apt-based systems, such as Debian or Ubuntu, follow the instructions to add the key and sources list before installing Helm.
- And for package-based systems, run the package install Helm command and always refer to the latest instructions from the documentation pages to install Helm for your version of operating system.
- So we've been running commands from our command line using the kubectl utility to perform various kinds of operations on our Kubernetes cluster.

## 8. Real-world scenarios
- Now, before installing Helm, you must first have a functional Kubernetes cluster and the kubectl utility installed and configured on your local computer with the right credentials or login details set-up in the kubeconfig file to work with the int...
- Well, that basically means you must have the kubectl utility configured to work with whichever cluster you're targeting.
- So it knows how to connect to our Kubernetes cluster.
- So we've been running commands from our command line using the kubectl utility to perform various kinds of operations on our Kubernetes cluster.
- Now with role based access control, you could place in different kinds of restrictions, such as to allow or deny those with a particular role to say, create, list or delete different kinds of objects like pods, deployments or services.
- For example, when a pod creation request comes in, you'd like to review the configuration file and look at the image name and say that you do not want to allow images from a public Docker Hub registry.
- Or say for example, you'd like to say if the container is running as the root user, then you do not want to allow that request or allow certain capabilities only, or to enforce that the metadata always contains labels.
- Admission controllers help us implement better security measures to enforce how a cluster is used.
- We will go over some examples in the upcoming slides.
- Admission controller rejects requests to namespaces that do not exist, and there are many more admission controllers available.

## 9. Pitfalls and misunderstandings
- For example, when a pod creation request comes in, you'd like to review the configuration file and look at the image name and say that you do not want to allow images from a public Docker Hub registry.
- Or say for example, you'd like to say if the container is running as the root user, then you do not want to allow that request or allow certain capabilities only, or to enforce that the metadata always contains labels.
- Admission controller rejects requests to namespaces that do not exist, and there are many more admission controllers available.
- Admission controllers are deprecated and is now replaced by namespace lifecycle admission controller.
- Now, we don't want to have to specify the cube config file option, on each command.
- So, going forward, we don't have to...
- And you don't have to enable it specifically from the Bios.
- However, note that as you can see here in the documentation page, um, there's a warning that says it can result in security or data loss issues.
- So right now we don't have any virtual machines running.
- So apart from just installing VirtualBox, you don't really have to do anything directly with it.

## 10. Troubleshooting angle
- If I run this command, it would throw an error that says the namespace blue is not found.
- However, something seems to be wrong, identify and fix the issue.
- So that's fixed.
- Uh, if you run into issues with the installation anytime, feel free to run this command and check the status.
- And you could see that it deleted the old one, but then we got an error.
- So this error is expected and I recommend you read this error 'cause it tells us everything we need to know.
- So what is the issue?
- And now if we do kubectl apply question5-pod.yaml, we can see it's created, we'll do kubectl get pod -n low- priority and we can see it's running with no issues.
- All right, so it says that we've deployed a new pod called np-test-1 and a service called np-test-services, incoming connections to the service are not working, troubleshoot and fix it.
- And it tells us basically what we need to do to fix it, which is create a network policy by the name of ingress-nptest that allows incoming connections to this service over port 80.

## 11. CKA / CKAD relevance
- And for package-based systems, run the package install Helm command and always refer to the latest instructions from the documentation pages to install Helm for your version of operating system.
- We will go over some examples in the upcoming slides.
- So let's take that as an example and look at it in a bit more detail.
- So that's one example of how an admission controller works.
- So the kubectl utility can work with multiple clusters, local or remote clusters at the same time.
- You can install it using a package.
- It has downloaded the Debian package, so I'm just going to install it directly.
- Either use the package manager and install it as a package, or we can do it using a direct download approach.
- And just like we did with the kubectl utility I'm going to curl the package and then install it on my machine.
- And here we have some examples that could be used to test our setup.

## 12. Source Contributions
- Matched Global Concepts:
  - Install Helm (match score: 1, notes: 11)
  - Admission Controllers (match score: 1, notes: 66)
  - Solution KubeConfig (match score: 1, notes: 103)
  - Demo - Minikube-Setup (match score: 1, notes: 160)
  - Kubernetes on Azure (AKS) (match score: 1, notes: 91)
  - Kubernetes on AWS (EKS) (match score: 1, notes: 125)
  - Kubernetes on GCP (GKE) (match score: 1, notes: 96)
  - Mock Exam - 3 - Solution _ (Optional) (match score: 1, notes: 485)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams: 485 note entries
  - certified-kubernetes-application-developer / 09_Security: 169 note entries
  - certified-kubernetes-application-developer / 10_Helm Fundamentals: 11 note entries
  - learn-kubernetes / 03_Kubernetes Concepts: 160 note entries
  - learn-kubernetes / 09_Kubernetes on Cloud: 312 note entries
- Explicit Source Reference Samples:
  - ../../../../build/intermediate/section-maps/BATCH-027_section_concept_map.md | 168_Install Helm.extraction.md | Entry 1 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-027_section_concept_map.md | 168_Install Helm.extraction.md | Entry 2 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-027_section_concept_map.md | 168_Install Helm.extraction.md | Entry 3 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-027_section_concept_map.md | 168_Install Helm.extraction.md | Entry 4 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-027_section_concept_map.md | 168_Install Helm.extraction.md | Entry 5 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-027_section_concept_map.md | 168_Install Helm.extraction.md | Entry 6 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-027_section_concept_map.md | 168_Install Helm.extraction.md | Entry 7 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-027_section_concept_map.md | 168_Install Helm.extraction.md | Entry 8 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-027_section_concept_map.md | 168_Install Helm.extraction.md | Entry 9 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-027_section_concept_map.md | 168_Install Helm.extraction.md | Entry 10 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-027_section_concept_map.md | 168_Install Helm.extraction.md | Entry 11 | Type Exam Tip
  - ../../../../build/intermediate/section-maps/BATCH-026_section_concept_map.md | 153_Admission Controllers.extraction.md | Entry 1 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-026_section_concept_map.md | 153_Admission Controllers.extraction.md | Entry 2 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-026_section_concept_map.md | 153_Admission Controllers.extraction.md | Entry 3 | Type Architecture
  - ../../../../build/intermediate/section-maps/BATCH-026_section_concept_map.md | 153_Admission Controllers.extraction.md | Entry 4 | Type Architecture
  - ../../../../build/intermediate/section-maps/BATCH-026_section_concept_map.md | 153_Admission Controllers.extraction.md | Entry 5 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-026_section_concept_map.md | 153_Admission Controllers.extraction.md | Entry 6 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-026_section_concept_map.md | 153_Admission Controllers.extraction.md | Entry 7 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-026_section_concept_map.md | 153_Admission Controllers.extraction.md | Entry 8 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-026_section_concept_map.md | 153_Admission Controllers.extraction.md | Entry 9 | Type Concept

