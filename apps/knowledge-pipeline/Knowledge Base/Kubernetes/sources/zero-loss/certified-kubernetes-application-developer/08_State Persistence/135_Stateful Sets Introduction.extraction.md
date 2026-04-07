# Extraction: certified-kubernetes-application-developer / 08_State Persistence / 135_Stateful Sets Introduction

---

## Entry 1
Type: Concept  

Content:
-: In this lecture we will talk about, StatefulSets in Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 135_Stateful Sets Introduction
- File: 135_Stateful Sets Introduction.txt
- Topic: Stateful Sets Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
Now, in the previous lecture we discussed why you need a StatefulSet.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 135_Stateful Sets Introduction
- File: 135_Stateful Sets Introduction.txt
- Topic: Stateful Sets Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
Note that you might not always need a StatefulSet.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 135_Stateful Sets Introduction
- File: 135_Stateful Sets Introduction.txt
- Topic: Stateful Sets Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Implementation Step  

Content:
It really depends on the kind of application you're trying to deploy.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 135_Stateful Sets Introduction
- File: 135_Stateful Sets Introduction.txt
- Topic: Stateful Sets Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
If the instances need to come up in a particular order, if the instances need a stable name, et cetera.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 135_Stateful Sets Introduction
- File: 135_Stateful Sets Introduction.txt
- Topic: Stateful Sets Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Implementation Step  

Content:
So once you evaluate your requirements and decide that StatefulSet is the right choice for you, you can create a StatefulSet, just like how you created a deployment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 135_Stateful Sets Introduction
- File: 135_Stateful Sets Introduction.txt
- Topic: Stateful Sets Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Implementation Step  

Content:
Create a deployment definition file, with a pod definition template inside it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 135_Stateful Sets Introduction
- File: 135_Stateful Sets Introduction.txt
- Topic: Stateful Sets Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Implementation Step  

Content:
And then all you need to do, is change the kind to StatefulSet instead of deployment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 135_Stateful Sets Introduction
- File: 135_Stateful Sets Introduction.txt
- Topic: Stateful Sets Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
Note that both SS in the StatefulSet is uppercase.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 135_Stateful Sets Introduction
- File: 135_Stateful Sets Introduction.txt
- Topic: Stateful Sets Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
Apart from that, a StatefulSet also requires a service name specified.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 135_Stateful Sets Introduction
- File: 135_Stateful Sets Introduction.txt
- Topic: Stateful Sets Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
You must specify the name of a headless service, we will discuss about headless services and why you need to specify a service name here in the upcoming lecture.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 135_Stateful Sets Introduction
- File: 135_Stateful Sets Introduction.txt
- Topic: Stateful Sets Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Implementation Step  

Content:
As discussed before, when you create a StatefulSet using this definition file, it creates pods one after the other, that's ordered graceful deployment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 135_Stateful Sets Introduction
- File: 135_Stateful Sets Introduction.txt
- Topic: Stateful Sets Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
Now each pod gets a stable, unique DNS record on the network that any other application can use to access a pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 135_Stateful Sets Introduction
- File: 135_Stateful Sets Introduction.txt
- Topic: Stateful Sets Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
When you scale the StatefulSet, it scales in an ordered graceful fashion.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 135_Stateful Sets Introduction
- File: 135_Stateful Sets Introduction.txt
- Topic: Stateful Sets Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Implementation Step  

Content:
Where each pod comes up, becomes ready and only then the next one comes up.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 135_Stateful Sets Introduction
- File: 135_Stateful Sets Introduction.txt
- Topic: Stateful Sets Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
This helps when you want to scale MySQL databases, as each new instance can clone from the previous instance.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 135_Stateful Sets Introduction
- File: 135_Stateful Sets Introduction.txt
- Topic: Stateful Sets Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
It works in the reverse order when you scale it down.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 135_Stateful Sets Introduction
- File: 135_Stateful Sets Introduction.txt
- Topic: Stateful Sets Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Implementation Step  

Content:
The last instance is removed first, followed by the second last one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 135_Stateful Sets Introduction
- File: 135_Stateful Sets Introduction.txt
- Topic: Stateful Sets Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
The same is true on termination.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 135_Stateful Sets Introduction
- File: 135_Stateful Sets Introduction.txt
- Topic: Stateful Sets Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
When you delete a StatefulSet, the pods are deleted in the reverse order.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 135_Stateful Sets Introduction
- File: 135_Stateful Sets Introduction.txt
- Topic: Stateful Sets Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Operational Insight  

Content:
Now, that's the default behavior of a StatefulSet, but you can override that behavior to cause StatefulSet to not follow an ordered launch.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 135_Stateful Sets Introduction
- File: 135_Stateful Sets Introduction.txt
- Topic: Stateful Sets Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
But still have the other benefits of StatefulSet such as a stable and unique network ID.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 135_Stateful Sets Introduction
- File: 135_Stateful Sets Introduction.txt
- Topic: Stateful Sets Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
For that, you could set the pod management policy field to parallel to instruct StatefulSet to not follow an ordered approach.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 135_Stateful Sets Introduction
- File: 135_Stateful Sets Introduction.txt
- Topic: Stateful Sets Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Implementation Step  

Content:
Instead deploy all parts in parallel, the default value of this field is ordered ready.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 135_Stateful Sets Introduction
- File: 135_Stateful Sets Introduction.txt
- Topic: Stateful Sets Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
