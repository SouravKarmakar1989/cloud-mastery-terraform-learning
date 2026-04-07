# Normalized Concept: Admission Controllers

- Concept Key: admission-controllers
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 597

## 1. Definition
- -: In this video, I'm gonna walk you through the solutions for the admission controllers lab.
- And so the way we can get this information is by checking the enable admission plugins in the kubeapi server help options.
- So I do a kubectl get pods -: ncube-system.
- You'll see that we have the kubeapi server control plane.
- So I'm gonna do a kubectl exec-it.
- And I'm gonna grab this pod -: n kube system.
- And what I wanna do is I wanna grep for enable admission plugins and the output we're looking for is right here.
- So this list right here is going to be the list of all of the default enabled plugins.
- And so we could see namespace lifecycle is enabled by default.
- So that's not the answer.

## 2. First-Principles Mental Model
- And for the first question it's asking, what is not a function of admission controllers?
- And the correct answer is authenticate users.
- The admission controllers doesn't handle any of the authentication side of things, that actually takes place after the authentication.
- The next question is asking which admission controller is not enabled by default?
- And so the way we can get this information is by checking the enable admission plugins in the kubeapi server help options.
- You'll see that we have the kubeapi server control plane.
- Then I'm gonna run a specific command.
- I'm gonna run the kube-apiserver and then we're passing the -h flag.
- So here's mutating admission webhook then we have validating admission webhook.
- The next question is asking which admission controller is enabled in this cluster, which is normally disabled.

## 3. Why This Exists
- So it says admission plugins that should be enabled in addition to the default enabled ones.
- So this list right here is going to be the list of all of the default enabled plugins.
- So that's not the answer.
- And so we have to go to the kube-apiserver.yaml config.
- So this is going to be in /etc/kubernetes/manifests/kube-apiserver.yaml.
- So I can say grep enable-admission-plugins and then pass the path to that specific file.
- The next question is telling us to create an engine X pod in the blue namespace.
- And it points out that the blue namespace has not been created yet and it explicitly tells us to not create the namespace beforehand.
- So let's copy this command which is going to create that pod.
- So if you wanted it to automatically create a namespace for you, you could enable the namespace auto provision admission controller.

## 4. Internal Working
- And for the first question it's asking, what is not a function of admission controllers?
- And the correct answer is authenticate users.
- The admission controllers doesn't handle any of the authentication side of things, that actually takes place after the authentication.
- The next question is asking which admission controller is not enabled by default?
- And so the way we can get this information is by checking the enable admission plugins in the kubeapi server help options.
- You'll see that we have the kubeapi server control plane.
- Then I'm gonna run a specific command.
- I'm gonna run the kube-apiserver and then we're passing the -h flag.
- So here's mutating admission webhook then we have validating admission webhook.
- The next question is asking which admission controller is enabled in this cluster, which is normally disabled.
- And what we wanna do is we can search for something by doing a forward slash and then searching for enable-admission-plugin.
- So I can say grep enable-admission-plugins and then pass the path to that specific file.

## 5. Key Objects / Fields / Relationships
- -: In this video, I'm gonna walk you through the solutions for the admission controllers lab.
- And for the first question it's asking, what is not a function of admission controllers?
- The admission controllers doesn't handle any of the authentication side of things, that actually takes place after the authentication.
- The next question is asking which admission controller is not enabled by default?
- And so the way we can get this information is by checking the enable admission plugins in the kubeapi server help options.
- So I do a kubectl get pods -: ncube-system.
- You'll see that we have the kubeapi server control plane.
- And I'm gonna grab this pod -: n kube system.
- I'm gonna run the kube-apiserver and then we're passing the -h flag.
- And so we could see namespace lifecycle is enabled by default.

## 6. YAML Deep Dive
- Then I'm gonna run a specific command.
- And so we have to go to the kube-apiserver.yaml config.
- So this is going to be in /etc/kubernetes/manifests/kube-apiserver.yaml.
- So I can say grep enable-admission-plugins and then pass the path to that specific file.
- We have to enable that specific admission controller.
- And so to do that, we wanna go back into that same file the /etc/kubernetes/manifests/kube-apiserver.
- So once again, we're gonna go into the kubeapi server yaml manifest.
- So I'm gonna do vi/etc/kubernetes/manifests/kube-apiserver.
- So we've been running commands from our command line using the kubectl utility to perform various kinds of operations on our Kubernetes cluster.
- Now with role based access control, you could place in different kinds of restrictions, such as to allow or deny those with a particular role to say, create, list or delete different kinds of objects like pods, deployments or services.

## 7. kubectl / command usage
- So I do a kubectl get pods -: ncube-system.
- So I'm gonna do a kubectl exec-it.
- Then I'm gonna run a specific command.
- So let's copy this command which is going to create that pod.
- We're gonna run the same command.
- So if I do a kubectl get namespace, we can now see that the blue namespace was created seven seconds ago.
- So if we just copy this command this is going to list out all of the enabled and disabled plug-ins with this command.
- So we've been running commands from our command line using the kubectl utility to perform various kinds of operations on our Kubernetes cluster.
- If the request was sent through kubectl, we know the kubeconfig file has the certificates configured, and the authentication process is responsible for identifying the user who sent the request and making sure the user is valid.
- If I run this command, it would throw an error that says the namespace blue is not found.

## 8. Real-world scenarios
- -: In this video, I'm gonna walk you through the solutions for the admission controllers lab.
- The next question is asking which admission controller is enabled in this cluster, which is normally disabled.
- And that's going to wrap up the admission controllers lab.
- So we've been running commands from our command line using the kubectl utility to perform various kinds of operations on our Kubernetes cluster.
- Now with role based access control, you could place in different kinds of restrictions, such as to allow or deny those with a particular role to say, create, list or delete different kinds of objects like pods, deployments or services.
- For example, when a pod creation request comes in, you'd like to review the configuration file and look at the image name and say that you do not want to allow images from a public Docker Hub registry.
- Or say for example, you'd like to say if the container is running as the root user, then you do not want to allow that request or allow certain capabilities only, or to enforce that the metadata always contains labels.
- Admission controllers help us implement better security measures to enforce how a cluster is used.
- We will go over some examples in the upcoming slides.
- Admission controller rejects requests to namespaces that do not exist, and there are many more admission controllers available.

## 9. Pitfalls and misunderstandings
- However, we don't see NamespaceAutoProvision in this list.
- And if you don't wanna go into vi we can always just grep for this.
- Now the reason this ultimately failed and it threw that error was because Kubernetes has a NamespaceExist admission controller enabled which rejects requests and namespaces that do not exist.
- And this next question is just pointing out that the namespace exists in the namespace auto provision and mission controllers are deprecated and are now replaced by the namespace lifecycle admission controller.
- For example, when a pod creation request comes in, you'd like to review the configuration file and look at the image name and say that you do not want to allow images from a public Docker Hub registry.
- Or say for example, you'd like to say if the container is running as the root user, then you do not want to allow that request or allow certain capabilities only, or to enforce that the metadata always contains labels.
- Admission controller rejects requests to namespaces that do not exist, and there are many more admission controllers available.
- Admission controllers are deprecated and is now replaced by namespace lifecycle admission controller.
- So don't worry if you don't fully understand this piece of code.
- Now of course we don't wanna do it manually.

## 10. Troubleshooting angle
- And we can see that it throws an error because the namespace blue was not found.
- If I run this command, it would throw an error that says the namespace blue is not found.
- And when a request goes through these admission controllers, if any admission controller rejects the request, the request is rejected and an error message is shown to the user.
- So let's copy this command, which is going to create that pod, and we can see that it throws an error, because the namespace blue was not found.

## 11. CKA / CKAD relevance
- We will go over some examples in the upcoming slides.
- So let's take that as an example and look at it in a bit more detail.
- So that's one example of how an admission controller works.
- Say for example, you're submitting a request to create a PVC.
- In this example, the namespace auto provisioning admission controller, which is a mutating admission controller, is run first, followed by the validating controller namespace exists.
- An example code of a webhook server written in go can be found here in the Kubernetes documentation pages.
- The validate call receives the validation webhook request, and in this example compares the name of the object and the name of the user who sent the request and rejects the request.
- On a side note, from an exam point of view, you will not be asked to develop any code like this.
- So this is just a simple example to show what kind of things that you can do or what what what kind of things that you can code and implement in the webhook server that you deploy.
- So the name we set it to pod policy dot example.com.

## 12. Source Contributions
- Matched Global Concepts:
  - Solution_ Admission Controllers (match score: 2, notes: 68)
  - Admission Controllers (match score: 2, notes: 66)
  - Solution_ Validating and Mutating Admission Controllers (match score: 2, notes: 67)
  - Validating and Mutating Admission Controllers (match score: 2, notes: 96)
  - (2025 Updates) Vertical Pod Autoscaling (VPA)_ (match score: 2, notes: 88)
  - (2025 Updates)Admission Controllers (match score: 2, notes: 65)
  - (2025 Updates)Lab Solution_ Admission Controllers (match score: 2, notes: 54)
  - (2025 Updates)Validating and Mutating Admission Controllers (match score: 2, notes: 93)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 03_Scheduling: 212 note entries
  - certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management: 88 note entries
  - certified-kubernetes-application-developer / 09_Security: 297 note entries
- Explicit Source Reference Samples:
  - section-maps/BATCH-026_section_concept_map.md | 155_Solution_ Admission Controllers.extraction.md | Entry 1 | Type Concept
  - section-maps/BATCH-026_section_concept_map.md | 155_Solution_ Admission Controllers.extraction.md | Entry 2 | Type Implementation Step
  - section-maps/BATCH-026_section_concept_map.md | 155_Solution_ Admission Controllers.extraction.md | Entry 3 | Type Implementation Step
  - section-maps/BATCH-026_section_concept_map.md | 155_Solution_ Admission Controllers.extraction.md | Entry 4 | Type Implementation Step
  - section-maps/BATCH-026_section_concept_map.md | 155_Solution_ Admission Controllers.extraction.md | Entry 5 | Type Implementation Step
  - section-maps/BATCH-026_section_concept_map.md | 155_Solution_ Admission Controllers.extraction.md | Entry 6 | Type Architecture
  - section-maps/BATCH-026_section_concept_map.md | 155_Solution_ Admission Controllers.extraction.md | Entry 7 | Type Concept
  - section-maps/BATCH-026_section_concept_map.md | 155_Solution_ Admission Controllers.extraction.md | Entry 8 | Type Architecture
  - section-maps/BATCH-026_section_concept_map.md | 155_Solution_ Admission Controllers.extraction.md | Entry 9 | Type Concept
  - section-maps/BATCH-026_section_concept_map.md | 155_Solution_ Admission Controllers.extraction.md | Entry 10 | Type Concept
  - section-maps/BATCH-026_section_concept_map.md | 155_Solution_ Admission Controllers.extraction.md | Entry 11 | Type Implementation Step
  - section-maps/BATCH-026_section_concept_map.md | 155_Solution_ Admission Controllers.extraction.md | Entry 12 | Type Implementation Step
  - section-maps/BATCH-026_section_concept_map.md | 155_Solution_ Admission Controllers.extraction.md | Entry 13 | Type Concept
  - section-maps/BATCH-026_section_concept_map.md | 155_Solution_ Admission Controllers.extraction.md | Entry 14 | Type Best Practice
  - section-maps/BATCH-026_section_concept_map.md | 155_Solution_ Admission Controllers.extraction.md | Entry 15 | Type Concept
  - section-maps/BATCH-026_section_concept_map.md | 155_Solution_ Admission Controllers.extraction.md | Entry 16 | Type Concept
  - section-maps/BATCH-026_section_concept_map.md | 155_Solution_ Admission Controllers.extraction.md | Entry 17 | Type Concept
  - section-maps/BATCH-026_section_concept_map.md | 155_Solution_ Admission Controllers.extraction.md | Entry 18 | Type Concept
  - section-maps/BATCH-026_section_concept_map.md | 155_Solution_ Admission Controllers.extraction.md | Entry 19 | Type Concept
  - section-maps/BATCH-026_section_concept_map.md | 155_Solution_ Admission Controllers.extraction.md | Entry 20 | Type Implementation Step

