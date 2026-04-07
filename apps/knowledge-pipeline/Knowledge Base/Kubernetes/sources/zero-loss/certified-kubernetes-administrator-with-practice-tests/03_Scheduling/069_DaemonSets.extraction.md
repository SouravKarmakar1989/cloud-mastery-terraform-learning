# Extraction: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 069_DaemonSets

---

## Entry 1
Type: Concept  

Content:
In this lecture we look at Daemonsets in Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 069_DaemonSets
- File: 069_DaemonSets.txt
- Topic: DaemonSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
So far we have deployed various pods on different nodes in our cluster with the help of replica sets and deployments.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 069_DaemonSets
- File: 069_DaemonSets.txt
- Topic: DaemonSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Exam Tip  

Content:
We made sure multiple copies of our applications are made available across various different worker nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 069_DaemonSets
- File: 069_DaemonSets.txt
- Topic: DaemonSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Exam Tip  

Content:
Daemonsets are like replica sets, as in, it helps you deploy multiple instances of pods, but it runs one copy of your pod on each node in your cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 069_DaemonSets
- File: 069_DaemonSets.txt
- Topic: DaemonSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
Whenever a new node is added to the cluster, a replica of the pod is automatically added to that node, and when a node is removed, the pod is automatically removed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 069_DaemonSets
- File: 069_DaemonSets.txt
- Topic: DaemonSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
The daemonset ensures that one copy of the pod is always present in all nodes in the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 069_DaemonSets
- File: 069_DaemonSets.txt
- Topic: DaemonSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
So what are some use cases of Daemonsets?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 069_DaemonSets
- File: 069_DaemonSets.txt
- Topic: DaemonSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Implementation Step  

Content:
Say you would like to deploy a monitoring agent or log collector on each of your nodes in the cluster so you can monitor your cluster better.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 069_DaemonSets
- File: 069_DaemonSets.txt
- Topic: DaemonSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Implementation Step  

Content:
A daemonset is perfect for that, as it can deploy your monitoring agent in the form of a pod in all the nodes in your cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 069_DaemonSets
- File: 069_DaemonSets.txt
- Topic: DaemonSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Warning/Pitfall  

Content:
Then you don't have to worry about adding or removing monitoring agents from these nodes when there are changes in your cluster, as the Daemonset will take care of that for you.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 069_DaemonSets
- File: 069_DaemonSets.txt
- Topic: DaemonSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Architecture  

Content:
Earlier, while discussing the Kubernetes architecture, we learned that one of the worker node components that is required on every node in the cluster is a kube proxy.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 069_DaemonSets
- File: 069_DaemonSets.txt
- Topic: DaemonSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
That is one good use case of Daemonsets.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 069_DaemonSets
- File: 069_DaemonSets.txt
- Topic: DaemonSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Implementation Step  

Content:
The kube proxy component can be deployed as a daemonset in the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 069_DaemonSets
- File: 069_DaemonSets.txt
- Topic: DaemonSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
Another use case is for networking.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 069_DaemonSets
- File: 069_DaemonSets.txt
- Topic: DaemonSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Implementation Step  

Content:
Networking solutions like calico requires an agent to be deployed on each node in the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 069_DaemonSets
- File: 069_DaemonSets.txt
- Topic: DaemonSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
We will discuss about networking concepts in much more detail later during this course, but I just wanted to point it out here for now.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 069_DaemonSets
- File: 069_DaemonSets.txt
- Topic: DaemonSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
Creating a demon set is similar to the replica set creation process.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 069_DaemonSets
- File: 069_DaemonSets.txt
- Topic: DaemonSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
It has nested pod specification under the templates section and selectors to link the demon set to the pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 069_DaemonSets
- File: 069_DaemonSets.txt
- Topic: DaemonSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
A daemon set definition file has a similar structure.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 069_DaemonSets
- File: 069_DaemonSets.txt
- Topic: DaemonSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
We start with the API version kind metadata and spec.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 069_DaemonSets
- File: 069_DaemonSets.txt
- Topic: DaemonSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
The API version is apps v1.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 069_DaemonSets
- File: 069_DaemonSets.txt
- Topic: DaemonSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
Kind is daemon set instead of replica set.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 069_DaemonSets
- File: 069_DaemonSets.txt
- Topic: DaemonSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
We will set the name to Monitoring daemon.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 069_DaemonSets
- File: 069_DaemonSets.txt
- Topic: DaemonSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
Under spec you have a selector and a pod specification template.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 069_DaemonSets
- File: 069_DaemonSets.txt
- Topic: DaemonSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
It's almost exactly like the replica set definition, except that the kind is a daemon set.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 069_DaemonSets
- File: 069_DaemonSets.txt
- Topic: DaemonSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
Ensure the labels in the selector matches the ones in the pod template.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 069_DaemonSets
- File: 069_DaemonSets.txt
- Topic: DaemonSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Implementation Step  

Content:
Once ready, create the daemon set using the kube control.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 069_DaemonSets
- File: 069_DaemonSets.txt
- Topic: DaemonSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Implementation Step  

Content:
Create daemon.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 069_DaemonSets
- File: 069_DaemonSets.txt
- Topic: DaemonSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Implementation Step  

Content:
Set command to view the created daemon set.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 069_DaemonSets
- File: 069_DaemonSets.txt
- Topic: DaemonSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
Run the kube control, get daemon, set command and of course to view more details on the kube control, describe daemon sets command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 069_DaemonSets
- File: 069_DaemonSets.txt
- Topic: DaemonSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
So how does a demon set work?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 069_DaemonSets
- File: 069_DaemonSets.txt
- Topic: DaemonSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
How does it schedule pods on each node?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 069_DaemonSets
- File: 069_DaemonSets.txt
- Topic: DaemonSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
And how does it ensure that every node has a pod?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 069_DaemonSets
- File: 069_DaemonSets.txt
- Topic: DaemonSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
If you were asked to schedule a pod on each node in the cluster, how would you do it?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 069_DaemonSets
- File: 069_DaemonSets.txt
- Topic: DaemonSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Architecture  

Content:
In one of the previous lectures in this section, we discussed that we could set the node name property on the pod to bypass the scheduler and get the pod placed on a node directly.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 069_DaemonSets
- File: 069_DaemonSets.txt
- Topic: DaemonSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
So that's one approach.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 069_DaemonSets
- File: 069_DaemonSets.txt
- Topic: DaemonSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Implementation Step  

Content:
On each pod, set the node name property in its specification before it is created, and when they are created, they automatically land on the respective nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 069_DaemonSets
- File: 069_DaemonSets.txt
- Topic: DaemonSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
So that's how it used to be until Kubernetes version 1.12.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 069_DaemonSets
- File: 069_DaemonSets.txt
- Topic: DaemonSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Architecture  

Content:
From version 1.1 onwards, the daemon set uses the default scheduler and node affinity rules that we learned in one of the previous lectures to schedule pods on nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 069_DaemonSets
- File: 069_DaemonSets.txt
- Topic: DaemonSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
Well, that's it for this lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 069_DaemonSets
- File: 069_DaemonSets.txt
- Topic: DaemonSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 41
Type: Concept  

Content:
Head over to the Practice test and practice working with Daemon Sets.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 069_DaemonSets
- File: 069_DaemonSets.txt
- Topic: DaemonSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
