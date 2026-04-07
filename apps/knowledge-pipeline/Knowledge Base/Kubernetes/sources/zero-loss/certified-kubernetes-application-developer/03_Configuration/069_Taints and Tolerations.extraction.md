# Extraction: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations

---

## Entry 1
Type: Concept  

Content:
In this lecture, we will discuss about the pod to node relationship and how you can restrict what pods are placed on what nodes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
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
The concept of taints and tolerations can be a bit confusing for beginners, so we will try to understand what they are using an analogy of a bug approaching a person.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
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
Now my apologies in advance, but this is the best I could come up with.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
To prevent the bug from landing on the person, we spray the person with repellent spray or taint as we will call it in this lecture.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
The bug is intolerant to the smell, so on approaching the person, the taint applied on the person throws the bug off.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
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
However, there could be other bugs that are tolerant to this smell and so the taints doesn't really affect them and so they end up landing on the person.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Implementation Step  

Content:
So there are two things that decide if a bug can land on a person first, the taint on the person, and second the bug's toleration level to that particular taint.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
Getting back to Kubernetes, the person is a node and the bugs are pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
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
Now, taints and tolerations have nothing to do with security or intrusion on the cluster.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
Taints and tolerations are used to set restrictions on what pods can be scheduled on a node.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 11
Type: Concept  

Content:
Let us start with a simple cluster with three worker nodes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
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
The nodes are named one, two, and three.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 13
Type: Implementation Step  

Content:
We also have a set of pods that are to be deployed on these nodes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
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
Let's call them A, B, C, and D.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 15
Type: Architecture  

Content:
When the pods are created, Kubernetes Scheduler tries to place these pods on the worker nodes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 16
Type: Architecture  

Content:
As of now, there are no restrictions or limitations, and as such, the scheduler places the pods across all of the nodes to balance them out equally.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
Now let us assume that we have dedicated resources on node one for a particular use case or application.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
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
So we would like only those parts that belong to this application to be placed on node one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 19
Type: Implementation Step  

Content:
First, we prevent all parts from being placed on the node by placing a taint on the node.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
Let's call it blue by default.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
Pods have no tolerations, which means unless specified otherwise, none of the pods can tolerate any taint.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
So in this case, none of the pods can be placed on node one, as none of them can tolerate the taint.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
Blue.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
This solves half of our requirement.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 25
Type: Concept  

Content:
No unwanted pods are going to be placed on this node.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 26
Type: Concept  

Content:
The other half is to enable certain pods to be placed on this node.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
For this, we must specify which pods are tolerant to this particular taint.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
In our case, we would like to allow only part D to be placed on this node.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
So we add a toleration to part D.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
Part D is now tolerant to blue.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Architecture  

Content:
So when the scheduler tries to place this part on node one it goes through node one can now only accept pods that can tolerate the taint blue.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
So with all the chains and tolerations in place, this is how the pods would be scheduled.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 33
Type: Architecture  

Content:
The scheduler tries to place pod A on node one, but due to the time it is thrown off and it goes to node two, the scheduler then tries to place pod B on node one, but again due to the taint, it is thrown off and is placed on node three, which happens to be the next free node.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Architecture  

Content:
The scheduler then tries to place pod C to the node one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 35
Type: Concept  

Content:
It is thrown off again and ends up on node two.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 36
Type: Architecture  

Content:
And finally the scheduler tries to place pod D on node one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 37
Type: Concept  

Content:
Since the pod is tolerant to node one, it goes through.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 38
Type: Concept  

Content:
So remember chains Things are set on nodes and tolerations are set on pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
So how do you do this?

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 40
Type: Concept  

Content:
Use the kube control nodes command to taint a node.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
Specify the name of the node to taint followed by the taint itself, which is a key value pair.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 42
Type: Exam Tip  

Content:
For example, if you would like to dedicate the node to pods in application blue, then the key value pair would be app equals blue.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Warning/Pitfall  

Content:
The taint effect defines what would happen to the pods if they do not tolerate the taint.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 44
Type: Concept  

Content:
There are three taint effects.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
No schedule, which means the pods will not be scheduled on the node, which is what we have been discussing.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Best Practice  

Content:
Preferred no schedule, which means the system will try to avoid placing a pod on the node, but that is not guaranteed.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Warning/Pitfall  

Content:
And third is no execute, which means that new pods will not be scheduled on the node and existing pods on the node, if any will be evicted if they do not tolerate the taint.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 48
Type: Concept  

Content:
These pods may have been scheduled on the node before the taint was applied to the node.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Exam Tip  

Content:
An example command would be to taint node node one with the key value pair app blue, and an effect of no schedule.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Concept  

Content:
Tolerations are added to pods to add a toleration to a pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Implementation Step  

Content:
First, pull up the pod definition file in the spec section of the Pod definition file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 52
Type: Concept  

Content:
Add a section called Tolerations.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 53
Type: Concept  

Content:
Move the same values used while creating the taint under this section.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 54
Type: Concept  

Content:
The key is app operator is equal, value is blue and the effect is no schedule.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 55
Type: Concept  

Content:
And remember all of these values need to be encoded in double quotes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 56
Type: Implementation Step  

Content:
When the pods are now created or updated with the new tolerations, they are either not scheduled on nodes or evicted from the existing nodes depending on the effect set.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 57
Type: Concept  

Content:
Let us try to understand the no execute change effect in a bit more depth.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 58
Type: Exam Tip  

Content:
In this example we have three nodes running some workload.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 59
Type: Warning/Pitfall  

Content:
We do not have any teams or tolerations at this point, so they are scheduled this way.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Implementation Step  

Content:
We then decided to dedicate node one for a special application, and as such, we change the node with the application name and add a toleration to the pod that belongs to the application, which happens to be pod D in this case, while tending the node, we set the taint effect to no execute, and as such, once the taint on the node takes effect, it evicts pod C from the node, which simply means that the pod is killed.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
The pod D continues to run on the node as it has a toleration to the tank blue.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Implementation Step  

Content:
Now, going back to our original scenario where we have taints and tolerations configured, remember taints and tolerations are only meant to restrict nodes from accepting certain paths.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 63
Type: Concept  

Content:
In this case, node one can only accept pod D, but it does not guarantee that pod D will always be placed on node one, since there are no taints or restrictions applied on the other two nodes, pod D may very well be placed on any of the other two nodes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Concept  

Content:
So remember taints and Tolerations does not tell the pod to go to a particular node.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Concept  

Content:
Instead, it tells the node to only accept pods with certain tolerations.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 66
Type: Implementation Step  

Content:
If your requirement is to restrict a pod to certain nodes, it is achieved through another concept called as node affinity, which we will discuss in the next lecture.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 67
Type: Concept  

Content:
Finally, while we are on this topic, let us also take a look at an interesting fact.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 68
Type: Concept  

Content:
So far we have only been referring to the worker nodes, but we also have master nodes in the cluster, which is technically just another node that has all the capabilities of hosting a pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 69
Type: Concept  

Content:
Plus it runs all the management software.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 70
Type: Architecture  

Content:
Now, I'm not sure if you noticed the scheduler does not schedule any pods on the master node.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 71
Type: Concept  

Content:
Why is that?

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 72
Type: Implementation Step  

Content:
When the Kubernetes cluster is first set up, a tent is set on the master node automatically that prevents any pods from being scheduled on this node.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Operational Insight  

Content:
You can see this as well as modify this behavior if required.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 74
Type: Best Practice  

Content:
However, a best practice is to not deploy application workloads on a master server.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 75
Type: Concept  

Content:
To see this tent run a cube control, describe node command with cube Master as the node name and look for the tent section.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Concept  

Content:
You will see a tent set to not schedule any pods on the master node.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Concept  

Content:
Well, that's it for this lecture.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 78
Type: Concept  

Content:
Head over to the Coding Exercises section and practice working with Taints and Tolerations.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 069_Taints and Tolerations
- File: 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---
