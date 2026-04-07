# Extraction: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 064_Taints and Tolerations vs Node Affinity

---

## Entry 1
Type: Concept  

Content:
Now that we have learned about taints and tolerations and node affinity, let us tie together the two concepts through a fun exercise.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 064_Taints and Tolerations vs Node Affinity
- File: 064_Taints and Tolerations vs Node Affinity.txt
- Topic: Taints and Tolerations vs Node Affinity
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 2
Type: Concept  

Content:
We have three nodes and three pods, each in three colors blue, red, and green.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 064_Taints and Tolerations vs Node Affinity
- File: 064_Taints and Tolerations vs Node Affinity.txt
- Topic: Taints and Tolerations vs Node Affinity
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 3
Type: Concept  

Content:
The ultimate aim is to place the blue pod in the blue node, the red pod in the red node, and likewise for green.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 064_Taints and Tolerations vs Node Affinity
- File: 064_Taints and Tolerations vs Node Affinity.txt
- Topic: Taints and Tolerations vs Node Affinity
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 4
Type: Concept  

Content:
We are sharing the same Kubernetes cluster with other teams, so there are other pods in the cluster as well as other nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 064_Taints and Tolerations vs Node Affinity
- File: 064_Taints and Tolerations vs Node Affinity.txt
- Topic: Taints and Tolerations vs Node Affinity
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 5
Type: Warning/Pitfall  

Content:
We do not want any other pod to be placed on our node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 064_Taints and Tolerations vs Node Affinity
- File: 064_Taints and Tolerations vs Node Affinity.txt
- Topic: Taints and Tolerations vs Node Affinity
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 6
Type: Concept  

Content:
Neither do we want our pods to be placed on their nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 064_Taints and Tolerations vs Node Affinity
- File: 064_Taints and Tolerations vs Node Affinity.txt
- Topic: Taints and Tolerations vs Node Affinity
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 7
Type: Implementation Step  

Content:
Let us first try to solve this problem using taints and tolerations.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 064_Taints and Tolerations vs Node Affinity
- File: 064_Taints and Tolerations vs Node Affinity.txt
- Topic: Taints and Tolerations vs Node Affinity
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 8
Type: Implementation Step  

Content:
We apply a taint to the nodes, marking them with their colors blue, red and green, and we then set a toleration on the pods to tolerate the respective colors.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 064_Taints and Tolerations vs Node Affinity
- File: 064_Taints and Tolerations vs Node Affinity.txt
- Topic: Taints and Tolerations vs Node Affinity
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 9
Type: Implementation Step  

Content:
When the pods are now created, the nodes ensure they only accept the pods with the right toleration.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 064_Taints and Tolerations vs Node Affinity
- File: 064_Taints and Tolerations vs Node Affinity.txt
- Topic: Taints and Tolerations vs Node Affinity
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
So the green pod ends up on the green node and the blue pod ends up on the blue node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 064_Taints and Tolerations vs Node Affinity
- File: 064_Taints and Tolerations vs Node Affinity.txt
- Topic: Taints and Tolerations vs Node Affinity
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Warning/Pitfall  

Content:
However, taints and tolerations does not guarantee that the pods will only prefer these nodes, so the red pods ends up on one of the other nodes that do not have a taint or toleration set.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 064_Taints and Tolerations vs Node Affinity
- File: 064_Taints and Tolerations vs Node Affinity.txt
- Topic: Taints and Tolerations vs Node Affinity
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 12
Type: Concept  

Content:
This is not desired.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 064_Taints and Tolerations vs Node Affinity
- File: 064_Taints and Tolerations vs Node Affinity.txt
- Topic: Taints and Tolerations vs Node Affinity
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 13
Type: Concept  

Content:
Let us try to solve the same problem with node affinity.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 064_Taints and Tolerations vs Node Affinity
- File: 064_Taints and Tolerations vs Node Affinity.txt
- Topic: Taints and Tolerations vs Node Affinity
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 14
Type: Implementation Step  

Content:
With node affinity, we first label the nodes with their respective colors blue, red, and green.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 064_Taints and Tolerations vs Node Affinity
- File: 064_Taints and Tolerations vs Node Affinity.txt
- Topic: Taints and Tolerations vs Node Affinity
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Implementation Step  

Content:
We then set node selectors on the pods to tie the pods to the nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 064_Taints and Tolerations vs Node Affinity
- File: 064_Taints and Tolerations vs Node Affinity.txt
- Topic: Taints and Tolerations vs Node Affinity
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 16
Type: Concept  

Content:
As such, the pods end up on the right nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 064_Taints and Tolerations vs Node Affinity
- File: 064_Taints and Tolerations vs Node Affinity.txt
- Topic: Taints and Tolerations vs Node Affinity
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 17
Type: Concept  

Content:
However, that does not guarantee that other pods are not placed on these nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 064_Taints and Tolerations vs Node Affinity
- File: 064_Taints and Tolerations vs Node Affinity.txt
- Topic: Taints and Tolerations vs Node Affinity
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 18
Type: Concept  

Content:
In this case, there is a chance that one of the other pods may end up on our nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 064_Taints and Tolerations vs Node Affinity
- File: 064_Taints and Tolerations vs Node Affinity.txt
- Topic: Taints and Tolerations vs Node Affinity
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 19
Type: Concept  

Content:
This is not something we desire.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 064_Taints and Tolerations vs Node Affinity
- File: 064_Taints and Tolerations vs Node Affinity.txt
- Topic: Taints and Tolerations vs Node Affinity
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 20
Type: Concept  

Content:
As such, a combination of taints and tolerations and node affinity rules can be used together to completely dedicate nodes for specific pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 064_Taints and Tolerations vs Node Affinity
- File: 064_Taints and Tolerations vs Node Affinity.txt
- Topic: Taints and Tolerations vs Node Affinity
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 21
Type: Implementation Step  

Content:
We first use taints and tolerations to prevent other pods from being placed on our nodes, and then we use node affinity to prevent our pods from being placed on their nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 064_Taints and Tolerations vs Node Affinity
- File: 064_Taints and Tolerations vs Node Affinity.txt
- Topic: Taints and Tolerations vs Node Affinity
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 22
Type: Concept  

Content:
Well, that's it for this lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 064_Taints and Tolerations vs Node Affinity
- File: 064_Taints and Tolerations vs Node Affinity.txt
- Topic: Taints and Tolerations vs Node Affinity
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---
