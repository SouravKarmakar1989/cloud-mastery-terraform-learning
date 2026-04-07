# Extraction: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface

---

## Entry 1
Type: Concept  

Content:
Let us now look at the container storage interface.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 192_Container Storage Interface
- File: 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Operational Insight  

Content:
In the past, Kubernetes used container D alone as the container runtime engine, and all the code to work with container D was embedded within the Kubernetes source code, with other container runtimes coming in, such as rocket and Cri-o.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 192_Container Storage Interface
- File: 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Operational Insight  

Content:
It was important to open up and extend support to work with different container runtimes, and not be dependent on the Kubernetes source code.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 192_Container Storage Interface
- File: 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Operational Insight  

Content:
And that's how Container Runtime Interface came to be.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 192_Container Storage Interface
- File: 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Operational Insight  

Content:
The container runtime interface is a standard that defines how an orchestration solution like Kubernetes would communicate with container runtimes like Docker.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 192_Container Storage Interface
- File: 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Operational Insight  

Content:
So in the future, if any new container runtime interface is developed, they can simply follow the CRI standards, and that new container runtime would work with Kubernetes without really having to work with Kubernetes team of developers, or touch the Kubernetes source code.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 192_Container Storage Interface
- File: 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
Similarly, as we saw in the networking lectures to extend support for different networking solutions, the container networking interface was introduced now.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 192_Container Storage Interface
- File: 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
Any new networking vendors could simply develop their plugin based on the CNI standards and make their solution work with Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 192_Container Storage Interface
- File: 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Exam Tip  

Content:
And as you can guess, the container storage interface was developed to support multiple storage solutions with CSI.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 192_Container Storage Interface
- File: 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
You can now write your own drivers for your own storage to work with.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 192_Container Storage Interface
- File: 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 192_Container Storage Interface
- File: 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
Portworx.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 192_Container Storage Interface
- File: 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
Amazon EBS.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 192_Container Storage Interface
- File: 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
Azure disk.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 192_Container Storage Interface
- File: 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
Dell EMC Isilon Powermax.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 192_Container Storage Interface
- File: 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
Unity.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 192_Container Storage Interface
- File: 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
Xtremio NetApp.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 192_Container Storage Interface
- File: 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
Nutanix HPE Hitachi.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 192_Container Storage Interface
- File: 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
Pure Storage.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 192_Container Storage Interface
- File: 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
Everyone's got their own CSI drivers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 192_Container Storage Interface
- File: 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
Note that CSI is not a Kubernetes specific standard.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 192_Container Storage Interface
- File: 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
It is meant to be a universal standard and if implemented, allows any container orchestration tool to work with any storage vendor with a supported plugin.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 192_Container Storage Interface
- File: 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
Currently, Kubernetes, Cloud Foundry, and Mesos are on board with CSI.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 192_Container Storage Interface
- File: 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
So here's what the CSI kind of looks like.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 192_Container Storage Interface
- File: 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
It defines a set of rpcs, or remote procedure calls that will be called by the container orchestrator, and these must be implemented by the storage drivers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 192_Container Storage Interface
- File: 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Best Practice  

Content:
For example, CSI says that when a pod is created and requires a volume, the container orchestrator in this case Kubernetes should call the create volume RPC and pass a set of details such as the volume name.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 192_Container Storage Interface
- File: 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Best Practice  

Content:
The storage driver should implement this RPC and handle that request, and provision a new volume on the storage array and return the results of the operation.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 192_Container Storage Interface
- File: 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Best Practice  

Content:
Similarly, container orchestrator should call the delete volume RPC when a volume is to be deleted, and the storage driver should implement the code to decommission the volume from the array when that call is made.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 192_Container Storage Interface
- File: 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Troubleshooting  

Content:
And the specification details exactly what parameters should be sent by the caller, what should be received by the solution, and what error codes should be exchanged.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 192_Container Storage Interface
- File: 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
If you're interested, you can view all these details in the CSI specification on GitHub at this URL.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 192_Container Storage Interface
- File: 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
So that's about it for now.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 192_Container Storage Interface
- File: 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
About container storage interface.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 192_Container Storage Interface
- File: 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Implementation Step  

Content:
I'll see you in the next lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 192_Container Storage Interface
- File: 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
