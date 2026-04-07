# Normalized Concept: Labels And Selectors

- Concept Key: labels-and-selectors
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 703

## 1. Definition
- In this lecture we will talk about node selectors in Kubernetes.
- You have different kinds of workloads running in your cluster.
- You would like to dedicate the data processing workloads that require higher horsepower to the larger node, as that is the only node that will not run out of resources in case the job demands extra resources.
- However, in the current default setup, any pods can go to any nodes.
- So pod see in this case may very well end up on nodes 2 or 3, which is not desired.
- To solve this, we can set a limitation on the pods so that they only run on particular nodes.
- There are two ways to do this.
- To limit this pod to run on the larger node, we add a new property called node selector to the spec section and specify the size as large.
- But wait a minute, where did the size large come from?
- And how does Kubernetes know which is the large node?

## 2. First-Principles Mental Model
- You have a three node cluster of which two are smaller nodes with lower hardware resources, and one of them is a larger node configured with higher resources.
- The first is using node selectors, which is the simple and easier method for this.
- We look at the pod definition file we created earlier.
- This file has a simple definition to create a pod with a data processing image.
- The scheduler uses these labels to match and identify the right node to place the pods on.
- Labels and selectors are a topic we have seen many times throughout this Kubernetes course, such as with services, replica sets, and deployments.
- To use labels in a node selector like this, you must have first labeled your nodes prior to creating this pod.
- When the pod is now created, it is placed on node one as desired.
- For this node affinity and anti-affinity features were introduced and we will look at that next.
- Let's go back to our first scenario where we had a single pod running our application.

## 3. Why This Exists
- You would like to dedicate the data processing workloads that require higher horsepower to the larger node, as that is the only node that will not run out of resources in case the job demands extra resources.
- However, in the current default setup, any pods can go to any nodes.
- To solve this, we can set a limitation on the pods so that they only run on particular nodes.
- There are two ways to do this.
- This file has a simple definition to create a pod with a data processing image.
- To limit this pod to run on the larger node, we add a new property called node selector to the spec section and specify the size as large.
- The key value pair of size and large are in fact labels assigned to the nodes.
- The scheduler uses these labels to match and identify the right node to place the pods on.
- To use labels in a node selector like this, you must have first labeled your nodes prior to creating this pod.
- To label a node, use the command Kube cube control label nodes, followed by the name of the node and the label in a key value pair format.

## 4. Internal Working
- You have a three node cluster of which two are smaller nodes with lower hardware resources, and one of them is a larger node configured with higher resources.
- The first is using node selectors, which is the simple and easier method for this.
- We look at the pod definition file we created earlier.
- This file has a simple definition to create a pod with a data processing image.
- The scheduler uses these labels to match and identify the right node to place the pods on.
- Labels and selectors are a topic we have seen many times throughout this Kubernetes course, such as with services, replica sets, and deployments.
- To use labels in a node selector like this, you must have first labeled your nodes prior to creating this pod.
- When the pod is now created, it is placed on node one as desired.
- For this node affinity and anti-affinity features were introduced and we will look at that next.
- Let's go back to our first scenario where we had a single pod running our application.
- When the number of users increased, we deploy additional pod to balance the load across the two pods.
- If the demand further increases, and if we were to run out of resources on the first node, Snowed, we could deploy additional pods across the other nodes in the cluster.

## 5. Key Objects / Fields / Relationships
- In this lecture we will talk about node selectors in Kubernetes.
- You have a three node cluster of which two are smaller nodes with lower hardware resources, and one of them is a larger node configured with higher resources.
- You would like to dedicate the data processing workloads that require higher horsepower to the larger node, as that is the only node that will not run out of resources in case the job demands extra resources.
- However, in the current default setup, any pods can go to any nodes.
- So pod see in this case may very well end up on nodes 2 or 3, which is not desired.
- To solve this, we can set a limitation on the pods so that they only run on particular nodes.
- The first is using node selectors, which is the simple and easier method for this.
- We look at the pod definition file we created earlier.
- This file has a simple definition to create a pod with a data processing image.
- To limit this pod to run on the larger node, we add a new property called node selector to the spec section and specify the size as large.

## 6. YAML Deep Dive
- You have different kinds of workloads running in your cluster.
- To limit this pod to run on the larger node, we add a new property called node selector to the spec section and specify the size as large.
- Thus, the replication controller ensures that the specified number of pods are running at all times, even if it's just 1 or 100.
- We will name it rc definition dot YAML.
- As with any Kubernetes definition file, we have four sections the API, version, kind, metadata, and spec.
- The API version is specific to what we are creating.
- The kind as we know is replication controller.
- Under metadata we will add a name and we will call it Myapp dash RC.
- The next is the most crucial part of the definition file, and that is the specification written as spec for any Kubernetes definition file.
- The spec section defines what's inside the object we are creating.

## 7. kubectl / command usage
- To label a node, use the command Kube cube control label nodes, followed by the name of the node and the label in a key value pair format.
- Once the file is ready, run the kubectl create command and input the file using the f parameter.
- To view the list of created replication controllers, run the kubectl get replication controller command and you will see the replication Controller listed.
- If you would like to see the pods that were created by the replication controller, run the kubectl get pods command and you will see three pods running.
- And as always, to create a replica set, run the kubectl create command, providing the definition file as input and to see the created replicas run the kubectl get replica set command to get list of pods.
- Simply run the kube control get pods command.
- The first is to update the number of replicas in the definition file to six, then run the kubectl apply command to specify the same file using the f parameter, and that will update the replica set to have six replicas.
- The second way to do it is to run the kube control scale command.
- In other words, the number of replicas in the replica set definition file will still be three, even though you scaled your replica set to have six replicas using the Kube control scale command and the file as input.
- Let us now review the commands real quick.

## 8. Real-world scenarios
- Let us start with a simple example.
- You have a three node cluster of which two are smaller nodes with lower hardware resources, and one of them is a larger node configured with higher resources.
- You have different kinds of workloads running in your cluster.
- The key value pair of size and large are in fact labels assigned to the nodes.
- The scheduler uses these labels to match and identify the right node to place the pods on.
- Labels and selectors are a topic we have seen many times throughout this Kubernetes course, such as with services, replica sets, and deployments.
- To use labels in a node selector like this, you must have first labeled your nodes prior to creating this pod.
- So let us go back and see how we can label the nodes.
- To label a node, use the command Kube cube control label nodes, followed by the name of the node and the label in a key value pair format.
- In this case it would be cube control label nodes node one, followed by the label in a key value format such as size equals large.

## 9. Pitfalls and misunderstandings
- So we don't know if it's a pod or deployment, so let's find that out first.
- And then we have, it's the default namespace, so we don't have to specify the namespace.
- So we don't need to worry about the web pod or its port, as we don't want to allow any traffic from any other sources other than the EPA poured, so let's get rid of that.
- We can also forget about the port on the API pod to which the web server connects, as we don't care about that either.
- We don't need a separate rule for that.
- And you don't need to worry about the response, which is denoted by a solid line here.
- So we don't need to worry about the web pod on or its port, as we don't want to allow any traffic from any other sources other than the API port.
- And you don't need to worry about the response, which is denoted by solid line here.
- The response back to the user, denoted by the dotted lines, do not really matter.
- What if we do not want the front end web server to be able to communicate with the database server directly?

## 10. Troubleshooting angle
- What if for some reason our application crashes and the pod fails, users will no longer be able to access our application?
- That way, if one fails, we still have our application running on the other one.
- Even if you have a single pod, replication controller can help by automatically bringing up a new pod when the existing one fails.
- If you get this wrong, you are likely to get an error that looks like this.
- So there's a file called replica set definition file and the request is to create the replica set and but there's an issue with it, so we've got to fix it.
- So the error message is that this does not match this.
- So that's the validation error here.
- So we're gonna fix this by changing this to the value below.
- You will not get an error message saying the network solution does not support network policies.

## 11. CKA / CKAD relevance
- Let us start with a simple example.
- For example, we would like to say something like place the pod on a large or medium node or something like place the pod on any nodes that are not small.
- The replication controller helps us run multiple instances of a single pod in the Kubernetes cluster, After, thus providing high availability.
- Another reason we need replication controller is to create multiple pods to share the load across them.
- For example, in this simple scenario, we have a single pod serving a set of users.
- As you can see, the replication controller spans across multiple nodes in the cluster.
- It helps us balance the load across multiple pods on different nodes, as well as scale our application when the demand increases.
- In this case, we note that the replication controller creates multiple instances of a pod.
- Say for example, the reports created before the creation of the replica set that matched labels specified in the selector.
- You can use it to monitor existing pods if you have them already created as it is in this example.

## 12. Source Contributions
- Matched Global Concepts:
  - Node Selectors (match score: 3, notes: 30)
  - Replication Controllers and ReplicaSets (match score: 3, notes: 137)
  - Lab Solution _ Labels and Selectors _ (Optional) (match score: 3, notes: 55)
  - Scheduling - Section Introduction (match score: 3, notes: 8)
  - Labels and Selectors (match score: 3, notes: 47)
  - Solution - Imperative Commands (optional) (match score: 3, notes: 137)
  - Developing network policies (match score: 3, notes: 223)
  - Network Policy (match score: 3, notes: 66)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 03_Scheduling: 140 note entries
  - certified-kubernetes-administrator-with-practice-tests / 07_Security: 180 note entries
  - certified-kubernetes-application-developer / 02_Core Concepts: 137 note entries
  - certified-kubernetes-application-developer / 07_Services & Networking: 109 note entries
  - learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments: 137 note entries
- Explicit Source Reference Samples:
  - section-maps/BATCH-003_section_concept_map.md | 060_Node Selectors.extraction.md | Entry 1 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 060_Node Selectors.extraction.md | Entry 2 | Type Exam Tip
  - section-maps/BATCH-003_section_concept_map.md | 060_Node Selectors.extraction.md | Entry 3 | Type Implementation Step
  - section-maps/BATCH-003_section_concept_map.md | 060_Node Selectors.extraction.md | Entry 4 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 060_Node Selectors.extraction.md | Entry 5 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 060_Node Selectors.extraction.md | Entry 6 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 060_Node Selectors.extraction.md | Entry 7 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 060_Node Selectors.extraction.md | Entry 8 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 060_Node Selectors.extraction.md | Entry 9 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 060_Node Selectors.extraction.md | Entry 10 | Type Implementation Step
  - section-maps/BATCH-003_section_concept_map.md | 060_Node Selectors.extraction.md | Entry 11 | Type Implementation Step
  - section-maps/BATCH-003_section_concept_map.md | 060_Node Selectors.extraction.md | Entry 12 | Type Implementation Step
  - section-maps/BATCH-003_section_concept_map.md | 060_Node Selectors.extraction.md | Entry 13 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 060_Node Selectors.extraction.md | Entry 14 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 060_Node Selectors.extraction.md | Entry 15 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 060_Node Selectors.extraction.md | Entry 16 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 060_Node Selectors.extraction.md | Entry 17 | Type Architecture
  - section-maps/BATCH-003_section_concept_map.md | 060_Node Selectors.extraction.md | Entry 18 | Type Implementation Step
  - section-maps/BATCH-003_section_concept_map.md | 060_Node Selectors.extraction.md | Entry 19 | Type Implementation Step
  - section-maps/BATCH-003_section_concept_map.md | 060_Node Selectors.extraction.md | Entry 20 | Type Concept

