# Extraction: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 212_Cluster Networking

---

## Entry 1
Type: Concept  

Content:
In this lecture, we look at the networking configurations required on the master and worker nodes in a Kubernetes cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 212_Cluster Networking
- File: 212_Cluster Networking.txt
- Topic: Cluster Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
The Kubernetes cluster consists of master and worker nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 212_Cluster Networking
- File: 212_Cluster Networking.txt
- Topic: Cluster Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
Each node must have at least one interface connected to a network.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 212_Cluster Networking
- File: 212_Cluster Networking.txt
- Topic: Cluster Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Implementation Step  

Content:
Each interface must have an address configured.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 212_Cluster Networking
- File: 212_Cluster Networking.txt
- Topic: Cluster Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
The hosts must have a unique hostname set as well as a unique Mac address.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 212_Cluster Networking
- File: 212_Cluster Networking.txt
- Topic: Cluster Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Best Practice  

Content:
You should note this especially if you created the VMs by cloning from existing ones.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 212_Cluster Networking
- File: 212_Cluster Networking.txt
- Topic: Cluster Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
There are some ports that needs to be opened as well.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 212_Cluster Networking
- File: 212_Cluster Networking.txt
- Topic: Cluster Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
These are used by the various components in the control plane.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 212_Cluster Networking
- File: 212_Cluster Networking.txt
- Topic: Cluster Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Best Practice  

Content:
The master should accept connections on 6443 for the API server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 212_Cluster Networking
- File: 212_Cluster Networking.txt
- Topic: Cluster Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
The worker nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 212_Cluster Networking
- File: 212_Cluster Networking.txt
- Topic: Cluster Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
Kube control tool.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 212_Cluster Networking
- File: 212_Cluster Networking.txt
- Topic: Cluster Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
External users and all other control plane components.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 212_Cluster Networking
- File: 212_Cluster Networking.txt
- Topic: Cluster Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Architecture  

Content:
Access the kube API server via this port.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 212_Cluster Networking
- File: 212_Cluster Networking.txt
- Topic: Cluster Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Architecture  

Content:
The Kubelets on the master and worker nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 212_Cluster Networking
- File: 212_Cluster Networking.txt
- Topic: Cluster Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
Listen on port 10250.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 212_Cluster Networking
- File: 212_Cluster Networking.txt
- Topic: Cluster Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
Yes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 212_Cluster Networking
- File: 212_Cluster Networking.txt
- Topic: Cluster Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 17
Type: Architecture  

Content:
In case we didn't discuss this, the Kubelets can be present on the master node as well.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 212_Cluster Networking
- File: 212_Cluster Networking.txt
- Topic: Cluster Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Architecture  

Content:
The kube scheduler requires port 10259 to be open.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 212_Cluster Networking
- File: 212_Cluster Networking.txt
- Topic: Cluster Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Architecture  

Content:
The kube controller manager requires port 10257 to be open.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 212_Cluster Networking
- File: 212_Cluster Networking.txt
- Topic: Cluster Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Best Practice  

Content:
The worker nodes expose services for external access on port 30,000 to 32,767, so this should be open as well.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 212_Cluster Networking
- File: 212_Cluster Networking.txt
- Topic: Cluster Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Exam Tip  

Content:
Finally, the etcd server listens on port 2379 if you have multiple master nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 212_Cluster Networking
- File: 212_Cluster Networking.txt
- Topic: Cluster Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
All of these ports need to be open on those as well.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 212_Cluster Networking
- File: 212_Cluster Networking.txt
- Topic: Cluster Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Architecture  

Content:
And you also need an additional port 2380 open so the etcd clients can communicate with each other.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 212_Cluster Networking
- File: 212_Cluster Networking.txt
- Topic: Cluster Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
The list of ports to be opened are also available in the Kubernetes documentation page.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 212_Cluster Networking
- File: 212_Cluster Networking.txt
- Topic: Cluster Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
So consider this when you set up networking for your nodes and your firewalls or iptables rules or network security group in a cloud environment such as GCP or Azure or AWS.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 212_Cluster Networking
- File: 212_Cluster Networking.txt
- Topic: Cluster Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
And if things are not working, this is one place to look for while you're investigating.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 212_Cluster Networking
- File: 212_Cluster Networking.txt
- Topic: Cluster Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
Head over to the practice session and explore the networking setup in the existing environment.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 212_Cluster Networking
- File: 212_Cluster Networking.txt
- Topic: Cluster Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
Keep these commands handy while you look for information.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 212_Cluster Networking
- File: 212_Cluster Networking.txt
- Topic: Cluster Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
We will start with simple exercises where you will explore an existing Kubernetes cluster and view information about the interfaces, IPS, hostnames, ports, etc. this will help you familiarize with the environment and look for information in the future sections.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 212_Cluster Networking
- File: 212_Cluster Networking.txt
- Topic: Cluster Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
Going forward, we will get into more challenging exercises.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 212_Cluster Networking
- File: 212_Cluster Networking.txt
- Topic: Cluster Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
For now, let's start slow.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 212_Cluster Networking
- File: 212_Cluster Networking.txt
- Topic: Cluster Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
