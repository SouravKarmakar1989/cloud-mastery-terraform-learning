# Extraction: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging

---

## Entry 1
Type: Concept  

Content:
In this lecture we will talk about node selectors in Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 072_Node Selectors Logging
- File: 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 2
Type: Exam Tip  

Content:
Let us start with a simple example.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 072_Node Selectors Logging
- File: 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 3
Type: Implementation Step  

Content:
You have a three node cluster of which two are smaller nodes with lower hardware resources, and one of them is a larger node configured with higher resources.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 072_Node Selectors Logging
- File: 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
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
You have different kinds of workloads running in your cluster.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 072_Node Selectors Logging
- File: 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 5
Type: Concept  

Content:
You would like to dedicate the data processing workloads that require higher horsepower to the larger node, as that is the only node that will not run out of resources in case the job demands extra resources.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 072_Node Selectors Logging
- File: 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
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
However, in the current default setup, any pods can go to any nodes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 072_Node Selectors Logging
- File: 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 7
Type: Concept  

Content:
So pod C in this case may very well end up on nodes 2 or 3, which is not desired.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 072_Node Selectors Logging
- File: 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
To solve this, we can set a limitation on the pods so that they only run on particular nodes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 072_Node Selectors Logging
- File: 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 9
Type: Concept  

Content:
There are two ways to do this.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 072_Node Selectors Logging
- File: 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 10
Type: Implementation Step  

Content:
The first is using node selectors, which is the simple and easier method.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 072_Node Selectors Logging
- File: 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Implementation Step  

Content:
For this we look at the pod definition file we created earlier.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 072_Node Selectors Logging
- File: 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Implementation Step  

Content:
This file has a simple definition to create a pod with a data processing image.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 072_Node Selectors Logging
- File: 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
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
To limit this pod to run on the larger node, we add a new property called node selector to the spec section and specify the size as large.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 072_Node Selectors Logging
- File: 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 14
Type: Concept  

Content:
But wait a minute, where did the size large come from?

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 072_Node Selectors Logging
- File: 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 15
Type: Concept  

Content:
And how does Kubernetes know which is the large node?

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 072_Node Selectors Logging
- File: 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
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
The key value pair of size and large are in fact labels assigned to the nodes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 072_Node Selectors Logging
- File: 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 17
Type: Architecture  

Content:
The scheduler uses these labels to match and identify the right node to place the pods on.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 072_Node Selectors Logging
- File: 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 18
Type: Implementation Step  

Content:
Labels and selectors are a topic we have seen many times throughout this Kubernetes course, such as with services, replica sets and deployments.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 072_Node Selectors Logging
- File: 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Implementation Step  

Content:
To use labels in a node selector like this, you must have first labeled your nodes prior to creating this pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 072_Node Selectors Logging
- File: 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
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
So let us go back and see how we can label the nodes to label a node.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 072_Node Selectors Logging
- File: 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
Use the command Kube cube control.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 072_Node Selectors Logging
- File: 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
Label nodes followed by the name of the node and the label in a key value pair format.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 072_Node Selectors Logging
- File: 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
In this case it would be cube control label nodes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 072_Node Selectors Logging
- File: 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
Node one, followed by the label in a key value format such as size equals large.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 072_Node Selectors Logging
- File: 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
Now that we have labeled the node, we can get back to creating the pod, this time with the node selector set to a size of large.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 072_Node Selectors Logging
- File: 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 26
Type: Implementation Step  

Content:
When the pod is now created, it is placed on node one as desired.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 072_Node Selectors Logging
- File: 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 27
Type: Concept  

Content:
Node selector served our purpose, but it has limitations.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 072_Node Selectors Logging
- File: 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 28
Type: Concept  

Content:
We used a single label and selector to achieve our goal here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 072_Node Selectors Logging
- File: 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 29
Type: Concept  

Content:
But what if our requirement is much more complex?

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 072_Node Selectors Logging
- File: 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 30
Type: Exam Tip  

Content:
For example, we would like to say something like place the pod on a large or medium node or something like place the pod on any nodes that are not small.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 072_Node Selectors Logging
- File: 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 31
Type: Concept  

Content:
You cannot achieve this using node selectors.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 072_Node Selectors Logging
- File: 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 32
Type: Implementation Step  

Content:
For this node affinity and anti-affinity features were introduced and we will look at that next.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 072_Node Selectors Logging
- File: 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---
