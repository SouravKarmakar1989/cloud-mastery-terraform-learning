# Extraction: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 051_Manual Scheduling

---

## Entry 1
Type: Concept  

Content:
In this lecture, we look at the different ways of manually scheduling a pod on a node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 051_Manual Scheduling
- File: 051_Manual Scheduling.txt
- Topic: Manual Scheduling
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Warning/Pitfall  

Content:
What do you do when you do not have a scheduler in your cluster?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 051_Manual Scheduling
- File: 051_Manual Scheduling.txt
- Topic: Manual Scheduling
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Warning/Pitfall  

Content:
You probably do not want to rely on the built in scheduler and instead want to schedule the pods yourself.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 051_Manual Scheduling
- File: 051_Manual Scheduling.txt
- Topic: Manual Scheduling
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Architecture  

Content:
So how exactly does a scheduler work in the backend?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 051_Manual Scheduling
- File: 051_Manual Scheduling.txt
- Topic: Manual Scheduling
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
Let's start with a simple pod definition file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 051_Manual Scheduling
- File: 051_Manual Scheduling.txt
- Topic: Manual Scheduling
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
Every pod has a field called node name that by default is not set.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 051_Manual Scheduling
- File: 051_Manual Scheduling.txt
- Topic: Manual Scheduling
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Warning/Pitfall  

Content:
You don't typically specify this field when you create the pod manifest file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 051_Manual Scheduling
- File: 051_Manual Scheduling.txt
- Topic: Manual Scheduling
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
Kubernetes adds it automatically.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 051_Manual Scheduling
- File: 051_Manual Scheduling.txt
- Topic: Manual Scheduling
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Warning/Pitfall  

Content:
The scheduler goes through all the pods and looks for those that do not have this property set.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 051_Manual Scheduling
- File: 051_Manual Scheduling.txt
- Topic: Manual Scheduling
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
Those are the candidates for scheduling.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 051_Manual Scheduling
- File: 051_Manual Scheduling.txt
- Topic: Manual Scheduling
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Implementation Step  

Content:
It then identifies the right node for the pod by running the scheduling algorithm.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 051_Manual Scheduling
- File: 051_Manual Scheduling.txt
- Topic: Manual Scheduling
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
Once identified, it schedules the pod on the node by setting the node name property to the name of the node by creating a binding object.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 051_Manual Scheduling
- File: 051_Manual Scheduling.txt
- Topic: Manual Scheduling
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Architecture  

Content:
So if there is no scheduler to monitor and schedule pods onto nodes, what happens?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 051_Manual Scheduling
- File: 051_Manual Scheduling.txt
- Topic: Manual Scheduling
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
The pods continue to be in a pending state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 051_Manual Scheduling
- File: 051_Manual Scheduling.txt
- Topic: Manual Scheduling
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
So what can you do about it?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 051_Manual Scheduling
- File: 051_Manual Scheduling.txt
- Topic: Manual Scheduling
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
You can manually assign pods to nodes yourself.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 051_Manual Scheduling
- File: 051_Manual Scheduling.txt
- Topic: Manual Scheduling
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Architecture  

Content:
Well, without a scheduler, the easiest way to schedule a pod is to simply set the node name field to the name of the node in your pod specification file while creating the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 051_Manual Scheduling
- File: 051_Manual Scheduling.txt
- Topic: Manual Scheduling
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Implementation Step  

Content:
The pod then gets assigned to the specified node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 051_Manual Scheduling
- File: 051_Manual Scheduling.txt
- Topic: Manual Scheduling
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
You can only specify the node name at creation time.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 051_Manual Scheduling
- File: 051_Manual Scheduling.txt
- Topic: Manual Scheduling
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Implementation Step  

Content:
What if the pod is already created and you want to assign the pod to a node?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 051_Manual Scheduling
- File: 051_Manual Scheduling.txt
- Topic: Manual Scheduling
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
Kubernetes won't allow you to modify the node name property of a pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 051_Manual Scheduling
- File: 051_Manual Scheduling.txt
- Topic: Manual Scheduling
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Architecture  

Content:
So another way to assign a node to an existing pod is to create a binding object and send a Post request to the pods binding API, thus mimicking what the actual scheduler does in the binding object.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 051_Manual Scheduling
- File: 051_Manual Scheduling.txt
- Topic: Manual Scheduling
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Implementation Step  

Content:
You specify a target node with the name of the node, then send a Post request to the pods binding API with the data set to the binding object in a JSON format.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 051_Manual Scheduling
- File: 051_Manual Scheduling.txt
- Topic: Manual Scheduling
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
So you must convert the YAML file into its equivalent JSON form.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 051_Manual Scheduling
- File: 051_Manual Scheduling.txt
- Topic: Manual Scheduling
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
Well, that's it for this lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 051_Manual Scheduling
- File: 051_Manual Scheduling.txt
- Topic: Manual Scheduling
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 26
Type: Concept  

Content:
Head over to the practice test and practice manually scheduling pods on nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 051_Manual Scheduling
- File: 051_Manual Scheduling.txt
- Topic: Manual Scheduling
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
