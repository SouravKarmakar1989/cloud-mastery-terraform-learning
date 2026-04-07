# Extraction: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 131_OS Upgrades

---

## Entry 1
Type: Implementation Step  

Content:
In this lecture, we will discuss about scenarios where you might have to take down nodes as part of your cluster, say for maintenance purposes, like upgrading a base software or applying patches like security patches, et cetera, on your cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 131_OS Upgrades
- File: 131_OS Upgrades.txt
- Topic: OS Upgrades
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
In this lecture, we will see the options available to handle such cases.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 131_OS Upgrades
- File: 131_OS Upgrades.txt
- Topic: OS Upgrades
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
So you have a cluster with a few nodes and pods serving applications.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 131_OS Upgrades
- File: 131_OS Upgrades.txt
- Topic: OS Upgrades
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
What happens when one of these nodes go down?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 131_OS Upgrades
- File: 131_OS Upgrades.txt
- Topic: OS Upgrades
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
Of course, the pods on them are not accessible.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 131_OS Upgrades
- File: 131_OS Upgrades.txt
- Topic: OS Upgrades
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Implementation Step  

Content:
Now, depending upon how you deploy those pods, your users may be impacted.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 131_OS Upgrades
- File: 131_OS Upgrades.txt
- Topic: OS Upgrades
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Exam Tip  

Content:
For example, since you have multiple replicas of the blue pod, the users accessing the blue application are not impacted as they're being served through the other blue pod that's online.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 131_OS Upgrades
- File: 131_OS Upgrades.txt
- Topic: OS Upgrades
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
However, users accessing the green pod are impacted as that was the only pod running the green application.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 131_OS Upgrades
- File: 131_OS Upgrades.txt
- Topic: OS Upgrades
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
Now, what does Kubernetes do in this case?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 131_OS Upgrades
- File: 131_OS Upgrades.txt
- Topic: OS Upgrades
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Implementation Step  

Content:
If the node came back online immediately, then the cube control process starts and the pods come back online.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 131_OS Upgrades
- File: 131_OS Upgrades.txt
- Topic: OS Upgrades
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Implementation Step  

Content:
However, if the node was down for more than five minutes, then the pods are terminated from that node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 131_OS Upgrades
- File: 131_OS Upgrades.txt
- Topic: OS Upgrades
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
Well, Kubernetes considers them as dead.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 131_OS Upgrades
- File: 131_OS Upgrades.txt
- Topic: OS Upgrades
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Implementation Step  

Content:
If the pods were part of a replica set, then they're recreated on other nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 131_OS Upgrades
- File: 131_OS Upgrades.txt
- Topic: OS Upgrades
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Architecture  

Content:
The time it waits for a pod to come back online is known as the pod eviction timeout and is set on the controller manager with a default value of five minutes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 131_OS Upgrades
- File: 131_OS Upgrades.txt
- Topic: OS Upgrades
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
In modern Kubernetes, pod eviction is handled through node taints and pod tolerations.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 131_OS Upgrades
- File: 131_OS Upgrades.txt
- Topic: OS Upgrades
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
When a node becomes not ready or unreachable, Kubernetes applies no execute taints and pods are evicted after a grace period unless they tolerate those taints.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 131_OS Upgrades
- File: 131_OS Upgrades.txt
- Topic: OS Upgrades
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
So whenever a node goes offline, the master node waits for up to five minutes before considering the node dead.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 131_OS Upgrades
- File: 131_OS Upgrades.txt
- Topic: OS Upgrades
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
When the node comes back online after the pod eviction timeout, it comes up blank without any pod scheduled on it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 131_OS Upgrades
- File: 131_OS Upgrades.txt
- Topic: OS Upgrades
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Implementation Step  

Content:
Since the blue pod was part of a replica set, it had a new pod created on another node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 131_OS Upgrades
- File: 131_OS Upgrades.txt
- Topic: OS Upgrades
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
However, since the green pod was not part of a replica set, it's just gone.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 131_OS Upgrades
- File: 131_OS Upgrades.txt
- Topic: OS Upgrades
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
Thus, if you have maintenance tasks to be performed on a node, if you know that the workloads running on the node have other replicas, and if it's okay that they go down for a short period of time, and if you're sure the node will come back online within five minutes, you can make a quick upgrade and reboot.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 131_OS Upgrades
- File: 131_OS Upgrades.txt
- Topic: OS Upgrades
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Warning/Pitfall  

Content:
However, you do not for sure know if a node is going to be back online in five minutes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 131_OS Upgrades
- File: 131_OS Upgrades.txt
- Topic: OS Upgrades
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
Well, you cannot for sure say it is going to be back at all.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 131_OS Upgrades
- File: 131_OS Upgrades.txt
- Topic: OS Upgrades
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
So there is a safer way to do it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 131_OS Upgrades
- File: 131_OS Upgrades.txt
- Topic: OS Upgrades
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
You can purposefully drain the node of all the workloads so that the workloads are moved to other nodes in the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 131_OS Upgrades
- File: 131_OS Upgrades.txt
- Topic: OS Upgrades
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
Well, technically, they're not moved.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 131_OS Upgrades
- File: 131_OS Upgrades.txt
- Topic: OS Upgrades
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Implementation Step  

Content:
When you drain a node, the pods are gracefully terminated from the node that they're on and recreated on another.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 131_OS Upgrades
- File: 131_OS Upgrades.txt
- Topic: OS Upgrades
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
The node is also cordoned or marked as unschedulable, meaning no pods can be scheduled on this node until you specifically remove the restriction.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 131_OS Upgrades
- File: 131_OS Upgrades.txt
- Topic: OS Upgrades
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Implementation Step  

Content:
Now that the pods are safe on the other nodes, you can reboot the first node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 131_OS Upgrades
- File: 131_OS Upgrades.txt
- Topic: OS Upgrades
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
When it comes back online, it is still unschedulable.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 131_OS Upgrades
- File: 131_OS Upgrades.txt
- Topic: OS Upgrades
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Implementation Step  

Content:
You then need to uncoordinated so that the pods can be scheduled on it again.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 131_OS Upgrades
- File: 131_OS Upgrades.txt
- Topic: OS Upgrades
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Warning/Pitfall  

Content:
Now remember, the pods that were moved to the other nodes don't automatically fall back.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 131_OS Upgrades
- File: 131_OS Upgrades.txt
- Topic: OS Upgrades
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Implementation Step  

Content:
If any of those pods were deleted or if new pods were created in the cluster, then they would be created on this node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 131_OS Upgrades
- File: 131_OS Upgrades.txt
- Topic: OS Upgrades
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
Apart from drain and uncordon, there is also another command called cordon.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 131_OS Upgrades
- File: 131_OS Upgrades.txt
- Topic: OS Upgrades
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
Cordon simply marks a node unschedulable.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 131_OS Upgrades
- File: 131_OS Upgrades.txt
- Topic: OS Upgrades
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
Unlike drain, it does not terminate or move the pods on an existing node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 131_OS Upgrades
- File: 131_OS Upgrades.txt
- Topic: OS Upgrades
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
It simply makes sure that new pods are not scheduled on that node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 131_OS Upgrades
- File: 131_OS Upgrades.txt
- Topic: OS Upgrades
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
Well, the set for this lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 131_OS Upgrades
- File: 131_OS Upgrades.txt
- Topic: OS Upgrades
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Implementation Step  

Content:
Head over to the practice test and practice training, coordinating and then coordinating a note.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 131_OS Upgrades
- File: 131_OS Upgrades.txt
- Topic: OS Upgrades
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Implementation Step  

Content:
I will see you in the next lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 131_OS Upgrades
- File: 131_OS Upgrades.txt
- Topic: OS Upgrades
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---
