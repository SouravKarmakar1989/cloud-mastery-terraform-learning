# Normalized Concept: Replicasets

- Concept Key: replicasets
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 1023

## 1. Definition
- Controllers are the brain behind Kubernetes.
- They are the processes that monitor Kubernetes objects and respond accordingly.
- In this lecture, we will discuss about one controller in particular and that is the replication controller.
- So what is a replica and why do we need a replication controller?
- To prevent users from losing access to our application, we would like to have more than one instance or pod running at the same time.
- So does that mean you can't use a replication controller if you plan to have a single pod?
- No.
- Thus, the replication controller ensures that the specified number of pods are running at all times, even if it's just 1 or 100.
- It's important to note that there are two similar terms replication controller and replica set.
- Both have the same purpose, but they are not the same.

## 2. First-Principles Mental Model
- Let's go back to our first scenario where we had a single pod running our application.
- When the number of users increased, we deploy additional pod to balance the load across the two pods.
- If the demand further increases, and if we were to run out of resources on the first node, Snowed, we could deploy additional pods across the other nodes in the cluster.
- Let us now look at how we create a replication controller.
- So far, it has been very similar to how we created a pod in the previous section.
- The next is the most crucial part of the definition file, and that is the specification written as spec for any Kubernetes definition file.
- We create a template section under spec to provide a pod template to be used by the replication controller to create replicas.
- Remember we created a Pod definition file in the previous exercise, we could reuse the contents of the file.
- To populate the templates section, move all the contents of the Pod definition file into the templates section of the replication controller, except for the first few lines which are API version and kind.
- Once the file is ready, run the kubectl create command and input the file using the f parameter.

## 3. Why This Exists
- Let's go back to our first scenario where we had a single pod running our application.
- What if for some reason our application crashes and the pod fails, users will no longer be able to access our application?
- To prevent users from losing access to our application, we would like to have more than one instance or pod running at the same time.
- The replication controller helps us run multiple instances of a single pod in the Kubernetes cluster, After, thus providing high availability.
- So does that mean you can't use a replication controller if you plan to have a single pod?
- Another reason we need replication controller is to create multiple pods to share the load across them.
- When the number of users increased, we deploy additional pod to balance the load across the two pods.
- If the demand further increases, and if we were to run out of resources on the first node, Snowed, we could deploy additional pods across the other nodes in the cluster.
- It helps us balance the load across multiple pods on different nodes, as well as scale our application when the demand increases.
- It's important to note that there are two similar terms replication controller and replica set.

## 4. Internal Working
- Let's go back to our first scenario where we had a single pod running our application.
- When the number of users increased, we deploy additional pod to balance the load across the two pods.
- If the demand further increases, and if we were to run out of resources on the first node, Snowed, we could deploy additional pods across the other nodes in the cluster.
- Let us now look at how we create a replication controller.
- So far, it has been very similar to how we created a pod in the previous section.
- The next is the most crucial part of the definition file, and that is the specification written as spec for any Kubernetes definition file.
- We create a template section under spec to provide a pod template to be used by the replication controller to create replicas.
- Remember we created a Pod definition file in the previous exercise, we could reuse the contents of the file.
- To populate the templates section, move all the contents of the Pod definition file into the templates section of the replication controller, except for the first few lines which are API version and kind.
- Once the file is ready, run the kubectl create command and input the file using the f parameter.
- The replication controller is created when the replication controller is created.
- It first creates the pods using the pod definition template as many as required, which is three in this case.

## 5. Key Objects / Fields / Relationships
- Controllers are the brain behind Kubernetes.
- In this lecture, we will discuss about one controller in particular and that is the replication controller.
- So what is a replica and why do we need a replication controller?
- Let's go back to our first scenario where we had a single pod running our application.
- What if for some reason our application crashes and the pod fails, users will no longer be able to access our application?
- To prevent users from losing access to our application, we would like to have more than one instance or pod running at the same time.
- The replication controller helps us run multiple instances of a single pod in the Kubernetes cluster, After, thus providing high availability.
- So does that mean you can't use a replication controller if you plan to have a single pod?
- Even if you have a single pod, replication controller can help by automatically bringing up a new pod when the existing one fails.
- Thus, the replication controller ensures that the specified number of pods are running at all times, even if it's just 1 or 100.

## 6. YAML Deep Dive
- Thus, the replication controller ensures that the specified number of pods are running at all times, even if it's just 1 or 100.
- We will name it rc definition dot YAML.
- As with any Kubernetes definition file, we have four sections the API, version, kind, metadata, and spec.
- The API version is specific to what we are creating.
- The kind as we know is replication controller.
- Under metadata we will add a name and we will call it Myapp dash RC.
- The next is the most crucial part of the definition file, and that is the specification written as spec for any Kubernetes definition file.
- The spec section defines what's inside the object we are creating.
- We create a template section under spec to provide a pod template to be used by the replication controller to create replicas.
- To populate the templates section, move all the contents of the Pod definition file into the templates section of the replication controller, except for the first few lines which are API version and kind.

## 7. kubectl / command usage
- Once the file is ready, run the kubectl create command and input the file using the f parameter.
- To view the list of created replication controllers, run the kubectl get replication controller command and you will see the replication Controller listed.
- If you would like to see the pods that were created by the replication controller, run the kubectl get pods command and you will see three pods running.
- And as always, to create a replica set, run the kubectl create command, providing the definition file as input and to see the created replicas run the kubectl get replica set command to get list of pods.
- Simply run the kube control get pods command.
- The first is to update the number of replicas in the definition file to six, then run the kubectl apply command to specify the same file using the f parameter, and that will update the replica set to have six replicas.
- The second way to do it is to run the kube control scale command.
- In other words, the number of replicas in the replica set definition file will still be three, even though you scaled your replica set to have six replicas using the Kube control scale command and the file as input.
- Let us now review the commands real quick.
- The cube control create command as we know, is used to create a replica, set or basically any object in Kubernetes depending on the file we are providing as input.

## 8. Real-world scenarios
- The replication controller helps us run multiple instances of a single pod in the Kubernetes cluster, After, thus providing high availability.
- For example, in this simple scenario, we have a single pod serving a set of users.
- When the number of users increased, we deploy additional pod to balance the load across the two pods.
- If the demand further increases, and if we were to run out of resources on the first node, Snowed, we could deploy additional pods across the other nodes in the cluster.
- As you can see, the replication controller spans across multiple nodes in the cluster.
- And we will also add a few labels app and type and assign values to them.
- The kind would be replica set and we add name and labels in the metadata.
- Say for example, the reports created before the creation of the replica set that matched labels specified in the selector.
- I will elaborate this in the next slide, but before we get into that, I would like to mention that the selector is one of the major differences between replication controller and replica set.
- The selector is not a required field in case of a replication controller, but it is still available when you skip it, as we did in the previous slide, it assumes it to be the same as the labels provided in the Pod definition file.

## 9. Pitfalls and misunderstandings
- Do not increase the replicas of the frontend deployment." So if we do a kubectl get deployments, we can see that the frontend, the original version one has five pods, and then frontend v2 has two pods.
- The response back to the user, denoted by the dotted lines, do not really matter.
- What if we do not want the front end web server to be able to communicate with the database server directly?

## 10. Troubleshooting angle
- What if for some reason our application crashes and the pod fails, users will no longer be able to access our application?
- That way, if one fails, we still have our application running on the other one.
- Even if you have a single pod, replication controller can help by automatically bringing up a new pod when the existing one fails.
- If you get this wrong, you are likely to get an error that looks like this.
- So in order to fix this, um, one easy way to do it is to select the, the whole section that we just pasted, except for the the first line and then press tab twice and then or until, um, you know, um, it fixes, uh, the, the, the indentation.
- So for now, we will just stick to the manual way of fixing it.
- Um, so, uh, now the the format is corrected and there are no more errors in the file.
- So this is, um, a handy tool and command if you would like to inspect, um, what happened to a replica set in case, you know, you're troubleshooting something or you're just looking for more information on what's happening with the replica set, um,...
- Of course, it's obvious, but I'm just I just want to show you, if you're not sure what the error is, then you've got to look at one of these parts in a bit more detail.
- So there's one here and there's an issue with the file, so we have to try and fix it.

## 11. CKA / CKAD relevance
- The replication controller helps us run multiple instances of a single pod in the Kubernetes cluster, After, thus providing high availability.
- Another reason we need replication controller is to create multiple pods to share the load across them.
- For example, in this simple scenario, we have a single pod serving a set of users.
- As you can see, the replication controller spans across multiple nodes in the cluster.
- It helps us balance the load across multiple pods on different nodes, as well as scale our application when the demand increases.
- In this case, we note that the replication controller creates multiple instances of a pod.
- Say for example, the reports created before the creation of the replica set that matched labels specified in the selector.
- You can use it to monitor existing pods if you have them already created as it is in this example.
- Well, there are multiple ways to do it.
- So for this example let's make use of three replicas.

## 12. Source Contributions
- Matched Global Concepts:
  - Replication Controllers and ReplicaSets (match score: 2, notes: 137)
  - Demo - ReplicaSets (match score: 2, notes: 150)
  - Solution - ReplicaSets (match score: 2, notes: 199)
  - Recap - ReplicaSets (match score: 2, notes: 271)
  - Solution - Labels and Selectors (optional) (match score: 2, notes: 64)
  - Solution_ Deployment strategies (match score: 1, notes: 47)
  - Network Policies (match score: 1, notes: 69)
  - Jobs (match score: 1, notes: 86)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts: 140 note entries
  - certified-kubernetes-application-developer / 02_Core Concepts: 131 note entries
  - certified-kubernetes-application-developer / 06_POD Design: 197 note entries
  - certified-kubernetes-application-developer / 07_Services & Networking: 69 note entries
  - learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments: 486 note entries
- Explicit Source Reference Samples:
  - ../../../../build/intermediate/section-maps/BATCH-036_section_concept_map.md | 026_Replication Controllers and ReplicaSets.extraction.md | Entry 1 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-036_section_concept_map.md | 026_Replication Controllers and ReplicaSets.extraction.md | Entry 2 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-036_section_concept_map.md | 026_Replication Controllers and ReplicaSets.extraction.md | Entry 3 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-036_section_concept_map.md | 026_Replication Controllers and ReplicaSets.extraction.md | Entry 4 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-036_section_concept_map.md | 026_Replication Controllers and ReplicaSets.extraction.md | Entry 5 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-036_section_concept_map.md | 026_Replication Controllers and ReplicaSets.extraction.md | Entry 6 | Type Troubleshooting
  - ../../../../build/intermediate/section-maps/BATCH-036_section_concept_map.md | 026_Replication Controllers and ReplicaSets.extraction.md | Entry 7 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-036_section_concept_map.md | 026_Replication Controllers and ReplicaSets.extraction.md | Entry 8 | Type Troubleshooting
  - ../../../../build/intermediate/section-maps/BATCH-036_section_concept_map.md | 026_Replication Controllers and ReplicaSets.extraction.md | Entry 9 | Type Exam Tip
  - ../../../../build/intermediate/section-maps/BATCH-036_section_concept_map.md | 026_Replication Controllers and ReplicaSets.extraction.md | Entry 10 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-036_section_concept_map.md | 026_Replication Controllers and ReplicaSets.extraction.md | Entry 11 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-036_section_concept_map.md | 026_Replication Controllers and ReplicaSets.extraction.md | Entry 12 | Type Troubleshooting
  - ../../../../build/intermediate/section-maps/BATCH-036_section_concept_map.md | 026_Replication Controllers and ReplicaSets.extraction.md | Entry 13 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-036_section_concept_map.md | 026_Replication Controllers and ReplicaSets.extraction.md | Entry 14 | Type Exam Tip
  - ../../../../build/intermediate/section-maps/BATCH-036_section_concept_map.md | 026_Replication Controllers and ReplicaSets.extraction.md | Entry 15 | Type Exam Tip
  - ../../../../build/intermediate/section-maps/BATCH-036_section_concept_map.md | 026_Replication Controllers and ReplicaSets.extraction.md | Entry 16 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-036_section_concept_map.md | 026_Replication Controllers and ReplicaSets.extraction.md | Entry 17 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-036_section_concept_map.md | 026_Replication Controllers and ReplicaSets.extraction.md | Entry 18 | Type Exam Tip
  - ../../../../build/intermediate/section-maps/BATCH-036_section_concept_map.md | 026_Replication Controllers and ReplicaSets.extraction.md | Entry 19 | Type Exam Tip
  - ../../../../build/intermediate/section-maps/BATCH-036_section_concept_map.md | 026_Replication Controllers and ReplicaSets.extraction.md | Entry 20 | Type Concept

