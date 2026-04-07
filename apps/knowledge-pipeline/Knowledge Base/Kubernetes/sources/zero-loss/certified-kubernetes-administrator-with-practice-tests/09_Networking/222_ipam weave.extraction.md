# Extraction: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 222_ipam weave

---

## Entry 1
Type: Concept  

Content:
Hello and welcome to this lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 222_ipam weave
- File: 222_ipam weave.txt
- Topic: ipam weave
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
In this lecture we discussed about IP address management.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 222_ipam weave
- File: 222_ipam weave.txt
- Topic: ipam weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
So how does IP address management work in Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 222_ipam weave
- File: 222_ipam weave.txt
- Topic: ipam weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
This section does not concern the IP address assigned to the nodes in the network.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 222_ipam weave
- File: 222_ipam weave.txt
- Topic: ipam weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
We can manage that on your own or with your own external iPam solutions.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 222_ipam weave
- File: 222_ipam weave.txt
- Topic: ipam weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
What this section covers is how are the virtual bridge networks in the nodes assigned an IP subnet, and how are the pods assigned an IP?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 222_ipam weave
- File: 222_ipam weave.txt
- Topic: ipam weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
Where is this information stored and who is responsible for ensuring there are no duplicate IPS assigned?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 222_ipam weave
- File: 222_ipam weave.txt
- Topic: ipam weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
Let's start with the Who.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 222_ipam weave
- File: 222_ipam weave.txt
- Topic: ipam weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
Let's ask CNI as they are the ones who define the standards.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 222_ipam weave
- File: 222_ipam weave.txt
- Topic: ipam weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
CNI says it is the responsibility of the CNI plugin, the network solution provider, to take care of assigning IPS to the containers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 222_ipam weave
- File: 222_ipam weave.txt
- Topic: ipam weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
Remember the basic plugin we built earlier?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 222_ipam weave
- File: 222_ipam weave.txt
- Topic: ipam weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
We actually took care of assigning IP addresses within this plugin.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 222_ipam weave
- File: 222_ipam weave.txt
- Topic: ipam weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
There was a section for assigning IP to the container network namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 222_ipam weave
- File: 222_ipam weave.txt
- Topic: ipam weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
But how do we manage these IPS?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 222_ipam weave
- File: 222_ipam weave.txt
- Topic: ipam weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
Now?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 222_ipam weave
- File: 222_ipam weave.txt
- Topic: ipam weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Warning/Pitfall  

Content:
Kubernetes doesn't care how we do it, we just need to do it by making sure we don't assign any duplicate IPS and manage it properly.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 222_ipam weave
- File: 222_ipam weave.txt
- Topic: ipam weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
An easy way to do it is to store the list of IPS in a file, and make sure we have necessary code in our script to manage this file properly.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 222_ipam weave
- File: 222_ipam weave.txt
- Topic: ipam weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
This file would be placed on each host and manages the IPS of pods on those nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 222_ipam weave
- File: 222_ipam weave.txt
- Topic: ipam weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
Instead of coding that ourselves in our script, CNI comes with two built in plugins to which you can outsource this task to.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 222_ipam weave
- File: 222_ipam weave.txt
- Topic: ipam weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
In this case, the plugin that implements the approach that we followed for managing the IP addresses locally on each host is the host local plugin, but it is still our responsibility to invoke that plugin in our script.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 222_ipam weave
- File: 222_ipam weave.txt
- Topic: ipam weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
Or we can make our script dynamic to support different kinds of plugins.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 222_ipam weave
- File: 222_ipam weave.txt
- Topic: ipam weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
The CNI configuration file has a section called iPam, in which we can specify the type of plugin to be used, the subnet and route to be used.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 222_ipam weave
- File: 222_ipam weave.txt
- Topic: ipam weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
These details can be read from our script to invoke the appropriate plugin, instead of hard coding it to use host local every time.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 222_ipam weave
- File: 222_ipam weave.txt
- Topic: ipam weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
Well, for this lecture, head over to the Practice Test and explore iPam in the CNI plugin.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 222_ipam weave
- File: 222_ipam weave.txt
- Topic: ipam weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
