# Normalized Concept: Node Selectors

- Concept Key: node-selectors
- Matched Global Concept Blocks: 5
- Source-backed Note Entries Used: 279

## 1. Definition
- Now that we have learned about taints and tolerations and node affinity, let us tie together the two concepts through a fun exercise.
- We have three nodes and three pods, each in three colors blue, red, and green.
- The ultimate aim is to place the blue pod in the blue node, the red pod in the red node, and likewise for green.
- We are sharing the same Kubernetes cluster with other teams, so there are other pods in the cluster as well as other nodes.
- Neither do we want our pods to be placed on their nodes.
- So the green pod ends up on the green node and the blue pod ends up on the blue node.
- This is not desired.
- Let us try to solve the same problem with node affinity.
- As such, the pods end up on the right nodes.
- However, that does not guarantee that other pods are not placed on these nodes.

## 2. First-Principles Mental Model
- Let us first try to solve this problem using taints and tolerations.
- We apply a taint to the nodes, marking them with their colors blue, red and green, and we then set a toleration on the pods to tolerate the respective colors.
- When the pods are now created, the nodes ensure they only accept the pods with the right toleration.
- With node affinity, we first label the nodes with their respective colors blue, red, and green.
- We then set node selectors on the pods to tie the pods to the nodes.
- We first use taints and tolerations to prevent other pods from being placed on our nodes, and then we use node affinity to prevent our pods from being placed on their nodes.
- When the pods are now created, the nodes ensure they only accept the pods with the right toleration, so the green pod ends up on the green node and the blue pod ends up on the blue node.
- We first label the nodes with their respective colors blue, red, and green.
- You have a three node cluster of which two are smaller nodes with lower hardware resources, and one of them is a larger node configured with higher resources.
- The first is using node selectors, which is the simple and easier method.

## 3. Why This Exists
- The ultimate aim is to place the blue pod in the blue node, the red pod in the red node, and likewise for green.
- We do not want any other pod to be placed on our node.
- Neither do we want our pods to be placed on their nodes.
- Let us first try to solve this problem using taints and tolerations.
- We apply a taint to the nodes, marking them with their colors blue, red and green, and we then set a toleration on the pods to tolerate the respective colors.
- Let us try to solve the same problem with node affinity.
- We then set node selectors on the pods to tie the pods to the nodes.
- As such, a combination of taints and tolerations and node affinity rules can be used together to completely dedicate nodes for specific pods.
- We first use taints and tolerations to prevent other pods from being placed on our nodes, and then we use node affinity to prevent our pods from being placed on their nodes.
- You would like to dedicate the data processing workloads that require higher horsepower to the larger node, as that is the only node that will not run out of resources in case the job demands extra resources.

## 4. Internal Working
- Let us first try to solve this problem using taints and tolerations.
- We apply a taint to the nodes, marking them with their colors blue, red and green, and we then set a toleration on the pods to tolerate the respective colors.
- When the pods are now created, the nodes ensure they only accept the pods with the right toleration.
- With node affinity, we first label the nodes with their respective colors blue, red, and green.
- We then set node selectors on the pods to tie the pods to the nodes.
- We first use taints and tolerations to prevent other pods from being placed on our nodes, and then we use node affinity to prevent our pods from being placed on their nodes.
- When the pods are now created, the nodes ensure they only accept the pods with the right toleration, so the green pod ends up on the green node and the blue pod ends up on the blue node.
- We first label the nodes with their respective colors blue, red, and green.
- You have a three node cluster of which two are smaller nodes with lower hardware resources, and one of them is a larger node configured with higher resources.
- The first is using node selectors, which is the simple and easier method.
- For this we look at the pod definition file we created earlier.
- This file has a simple definition to create a pod with a data processing image.

## 5. Key Objects / Fields / Relationships
- Now that we have learned about taints and tolerations and node affinity, let us tie together the two concepts through a fun exercise.
- We have three nodes and three pods, each in three colors blue, red, and green.
- The ultimate aim is to place the blue pod in the blue node, the red pod in the red node, and likewise for green.
- We are sharing the same Kubernetes cluster with other teams, so there are other pods in the cluster as well as other nodes.
- We do not want any other pod to be placed on our node.
- Neither do we want our pods to be placed on their nodes.
- We apply a taint to the nodes, marking them with their colors blue, red and green, and we then set a toleration on the pods to tolerate the respective colors.
- When the pods are now created, the nodes ensure they only accept the pods with the right toleration.
- So the green pod ends up on the green node and the blue pod ends up on the blue node.
- However, taints and tolerations does not guarantee that the pods will only prefer these nodes, so the red pods ends up on one of the other nodes that do not have a taint or toleration set.

## 6. YAML Deep Dive
- We apply a taint to the nodes, marking them with their colors blue, red and green, and we then set a toleration on the pods to tolerate the respective colors.
- With node affinity, we first label the nodes with their respective colors blue, red, and green.
- As such, a combination of taints and tolerations and node affinity rules can be used together to completely dedicate nodes for specific pods.
- We first label the nodes with their respective colors blue, red, and green.
- You have different kinds of workloads running in your cluster.
- To limit this pod to run on the larger node, we add a new property called node selector to the spec section and specify the size as large.
- The node affinity feature provides us with advanced capabilities to limit pod placement on specific nodes.
- So the simple node selector specification will now look like this with node affinity.
- Under spec you have affinity and then node affinity under that.
- And that is where you will specify the key and value pairs.

## 7. kubectl / command usage
- Use the command Kube cube control.
- To label a node, use the command Kube cube control label nodes, followed by the name of the node and the label in a key value pair format.

## 8. Real-world scenarios
- We are sharing the same Kubernetes cluster with other teams, so there are other pods in the cluster as well as other nodes.
- With node affinity, we first label the nodes with their respective colors blue, red, and green.
- We first label the nodes with their respective colors blue, red, and green.
- Let us start with a simple example.
- You have a three node cluster of which two are smaller nodes with lower hardware resources, and one of them is a larger node configured with higher resources.
- You have different kinds of workloads running in your cluster.
- The key value pair of size and large are in fact labels assigned to the nodes.
- The scheduler uses these labels to match and identify the right node to place the pods on.
- Labels and selectors are a topic we have seen many times throughout this Kubernetes course, such as with services, replica sets and deployments.
- To use labels in a node selector like this, you must have first labeled your nodes prior to creating this pod.

## 9. Pitfalls and misunderstandings
- We do not want any other pod to be placed on our node.
- However, taints and tolerations does not guarantee that the pods will only prefer these nodes, so the red pods ends up on one of the other nodes that do not have a taint or toleration set.
- The smaller notes don't even have the label set, so we don't really have to even check the value of the label, as long as we are sure we don't set a label size to the smaller notes.
- The operator will simply check if the label size exists on the notes, and you don't need the values section for that, as it does not compare the values.
- We know that we have only set the label size to large and medium nodes, The smaller nodes don't even have the label set, so we don't really have to even check the value of the label, as long as we are sure we don't set a label size to the smaller ...
- The excess operator will simply check if the label size exists on the nodes, and you don't need the values section for that, as it does not compare the values.
- Now don't let the graphic mislead you.
- In the first phase, the scheduler tries to filter out the nodes that do not fit the profile for this pod.
- For example, the nodes that do not have sufficient CPU and memory resources requested by the pod.

## 10. Troubleshooting angle
- No direct source-supported coverage found for this concept in the current merged map.

## 11. CKA / CKAD relevance
- Let us start with a simple example.
- For example, we would like to say something like place the pod on a large or medium node or something like place the pod on any nodes that are not small.
- For example, we forgot to label the node as large.
- For example, say an administrator removed the label we set earlier called size equals large from the node.
- For example, there could be different sizes of ships and containers.
- For example, let's take one of these pods, the big blue one.
- For example, the scheduler calculates the amount of resources that would be free on the nodes after placing the pod on them.

## 12. Source Contributions
- Matched Global Concepts:
  - Taints and Tolerations vs Node Affinity (match score: 2, notes: 44)
  - Node Selectors Logging (match score: 2, notes: 32)
  - Node Affinity (match score: 2, notes: 125)
  - Kube Scheduler (match score: 2, notes: 48)
  - Node Selectors (match score: 2, notes: 30)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts: 48 note entries
  - certified-kubernetes-administrator-with-practice-tests / 03_Scheduling: 114 note entries
  - certified-kubernetes-application-developer / 03_Configuration: 117 note entries
- Explicit Source Reference Samples:
  - ../../../../build/intermediate/section-maps/BATCH-003_section_concept_map.md | 064_Taints and Tolerations vs Node Affinity.extraction.md | Entry 1 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-003_section_concept_map.md | 064_Taints and Tolerations vs Node Affinity.extraction.md | Entry 2 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-003_section_concept_map.md | 064_Taints and Tolerations vs Node Affinity.extraction.md | Entry 3 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-003_section_concept_map.md | 064_Taints and Tolerations vs Node Affinity.extraction.md | Entry 4 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-003_section_concept_map.md | 064_Taints and Tolerations vs Node Affinity.extraction.md | Entry 5 | Type Warning/Pitfall
  - ../../../../build/intermediate/section-maps/BATCH-003_section_concept_map.md | 064_Taints and Tolerations vs Node Affinity.extraction.md | Entry 6 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-003_section_concept_map.md | 064_Taints and Tolerations vs Node Affinity.extraction.md | Entry 7 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-003_section_concept_map.md | 064_Taints and Tolerations vs Node Affinity.extraction.md | Entry 8 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-003_section_concept_map.md | 064_Taints and Tolerations vs Node Affinity.extraction.md | Entry 9 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-003_section_concept_map.md | 064_Taints and Tolerations vs Node Affinity.extraction.md | Entry 10 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-003_section_concept_map.md | 064_Taints and Tolerations vs Node Affinity.extraction.md | Entry 11 | Type Warning/Pitfall
  - ../../../../build/intermediate/section-maps/BATCH-003_section_concept_map.md | 064_Taints and Tolerations vs Node Affinity.extraction.md | Entry 12 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-003_section_concept_map.md | 064_Taints and Tolerations vs Node Affinity.extraction.md | Entry 13 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-003_section_concept_map.md | 064_Taints and Tolerations vs Node Affinity.extraction.md | Entry 14 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-003_section_concept_map.md | 064_Taints and Tolerations vs Node Affinity.extraction.md | Entry 15 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-003_section_concept_map.md | 064_Taints and Tolerations vs Node Affinity.extraction.md | Entry 16 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-003_section_concept_map.md | 064_Taints and Tolerations vs Node Affinity.extraction.md | Entry 17 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-003_section_concept_map.md | 064_Taints and Tolerations vs Node Affinity.extraction.md | Entry 18 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-003_section_concept_map.md | 064_Taints and Tolerations vs Node Affinity.extraction.md | Entry 19 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-003_section_concept_map.md | 064_Taints and Tolerations vs Node Affinity.extraction.md | Entry 20 | Type Concept

