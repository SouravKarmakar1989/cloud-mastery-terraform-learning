# Normalized Concept: Storage Class

- Concept Key: storage-class
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 1085

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
- So we could do this either using the imperative command like kubectl create, or we can create a YAML file.
- I'm gonna just create a file and I'll just call this one question2.yaml and let's create the spec for a pod.

## 7. kubectl / command usage
- So I do a kubectl get pods -: ncube-system.
- So I'm gonna do a kubectl exec-it.
- Then I'm gonna run a specific command.
- So let's copy this command which is going to create that pod.
- We're gonna run the same command.
- So if I do a kubectl get namespace, we can now see that the blue namespace was created seven seconds ago.
- So if we just copy this command this is going to list out all of the enabled and disabled plug-ins with this command.
- Now for question one, you can see that it says that you are an administrator preparing your environment to deploy a Kubernetes cluster using kubeadm.
- To do this, what I always recommend is remembering that since we are in the process of creating a new cluster, using kubeadm, most likely to figure out where we would get the information to do this inside the documentation, which remember, you hav...
- Let's go ahead and search kubeadm, and there's going to be a guide on how to create a cluster with kubeadm.

## 8. Real-world scenarios
- -: In this video, I'm gonna walk you through the solutions for the admission controllers lab.
- The next question is asking which admission controller is enabled in this cluster, which is normally disabled.
- And that's going to wrap up the admission controllers lab.
- Now for question one, you can see that it says that you are an administrator preparing your environment to deploy a Kubernetes cluster using kubeadm.
- And so you'll, anytime you are deploying or essentially provisioning a new cluster, you're gonna have to enable these two functionalities on all of your servers.
- To do this, what I always recommend is remembering that since we are in the process of creating a new cluster, using kubeadm, most likely to figure out where we would get the information to do this inside the documentation, which remember, you hav...
- Let's go ahead and search kubeadm, and there's going to be a guide on how to create a cluster with kubeadm.
- So to get there you go, under Production environment, installing Kubernetes deployment tools, boots driving a cluster, and then creating a cluster with kubeadm.
- So this is the first step that you need to perform when you are creating a Kubernetes cluster before you do anything else.
- And we need to grant this service account access to all persistent volumes in the cluster by creating an appropriate cluster role called pvviewer-role and a ClusterroleBinding called pvviewer-role-binding.

## 9. Pitfalls and misunderstandings
- However, we don't see NamespaceAutoProvision in this list.
- And if you don't wanna go into vi we can always just grep for this.
- Now the reason this ultimately failed and it threw that error was because Kubernetes has a NamespaceExist admission controller enabled which rejects requests and namespaces that do not exist.
- And this next question is just pointing out that the namespace exists in the namespace auto provision and mission controllers are deprecated and are now replaced by the namespace lifecycle admission controller.
- So for this, if you don't remember how to create a storageclass off the top of your head, we can always just go to the documentation and just search for storageclass.
- I mean it's set to false so it doesn't matter, but we don't really need this configuration.
- We don't need that.
- Now I don't know how to do that off the top of my head, so it's always best to just consult the documentation.
- It's not gonna really make a difference 'cause the instructions don't say anything specifically about that, but we'll just say, "This is a lower priority class." So we can then save that.
- So we don't need anything that's egress related.

## 10. Troubleshooting angle
- And we can see that it throws an error because the namespace blue was not found.
- And you could see that it deleted the old one, but then we got an error.
- So this error is expected and I recommend you read this error 'cause it tells us everything we need to know.
- So what is the issue?
- And now if we do kubectl apply question5-pod.yaml, we can see it's created, we'll do kubectl get pod -n low- priority and we can see it's running with no issues.
- All right, so it says that we've deployed a new pod called np-test-1 and a service called np-test-services, incoming connections to the service are not working, troubleshoot and fix it.
- And it tells us basically what we need to do to fix it, which is create a network policy by the name of ingress-nptest that allows incoming connections to this service over port 80.
- So we've now successfully fixed the issue.
- Okay, so for this question it says that there's a kubeconfig file called super.kubeconfig in the following location and it says there's something wrong with this con configuration, troubleshoot and fix it.
- Whenever there's a question where it says there's an issue and we need to fix it, always verify the issue first.

## 11. CKA / CKAD relevance
- Instructor: In this video we're gonna walk through these solutions for all of the questions in mock exam three.
- To do this, what I always recommend is remembering that since we are in the process of creating a new cluster, using kubeadm, most likely to figure out where we would get the information to do this inside the documentation, which remember, you hav...
- And one little tip, I always recommend that you guys copy anytime it gives you a name, whether it's a name for a pod or a deployment, always copy it from the instructions because when you go to take the exam and it performs validation, it's going ...
- It's going to give us an example configuration.
- But you could, for these mock exams or for the actual exam, you can always just do kubectl, get deployment -o yaml, print it out and make whatever changes and then apply that.
- So we can get an example one.
- CKA/super.kubeconfig.
- So you wanna make sure you know where in the documentation you can get an example configuration so that you could just copy and paste it.
- And that's going to wrap up this mock exam.
- Now, that is possible if that is what is desired as in you really want multiple pods or multiple instances of your application to share and access the same storage.

## 12. Source Contributions
- Matched Global Concepts:
  - Solution_ Admission Controllers (match score: 2, notes: 68)
  - Mock Exam - 3 - Solution _ (Optional) (match score: 2, notes: 485)
  - Storage in StatefulSets (match score: 1, notes: 41)
  - Storage Classes (match score: 1, notes: 27)
  - Solution_ Lightning Lab1 (match score: 1, notes: 181)
  - Validating and Mutating Admission Controllers (match score: 1, notes: 96)
  - Admission Controllers (match score: 1, notes: 66)
  - Solution Cluster Roles (match score: 1, notes: 121)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams: 485 note entries
  - certified-kubernetes-application-developer / 08_State Persistence: 68 note entries
  - certified-kubernetes-application-developer / 09_Security: 351 note entries
  - certified-kubernetes-application-developer / 14_Lightning Labs: 181 note entries
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

