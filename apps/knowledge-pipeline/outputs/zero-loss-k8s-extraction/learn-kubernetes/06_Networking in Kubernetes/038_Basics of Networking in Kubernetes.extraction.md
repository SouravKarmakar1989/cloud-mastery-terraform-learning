# Extraction: learn-kubernetes / 06_Networking in Kubernetes / 038_Basics of Networking in Kubernetes

---

## Entry 1
Type: Concept  

Content:
In this lecture we will discuss about networking in Kubernetes.

Source:
- Course: learn-kubernetes
- Module: 06_Networking in Kubernetes
- Lecture: 038_Basics of Networking in Kubernetes
- File: 038_Basics of Networking in Kubernetes.txt
- Topic: Basics of Networking in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
Let us look at the very basics of networking in Kubernetes.

Source:
- Course: learn-kubernetes
- Module: 06_Networking in Kubernetes
- Lecture: 038_Basics of Networking in Kubernetes
- File: 038_Basics of Networking in Kubernetes.txt
- Topic: Basics of Networking in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
We will start with a single node Kubernetes cluster.

Source:
- Course: learn-kubernetes
- Module: 06_Networking in Kubernetes
- Lecture: 038_Basics of Networking in Kubernetes
- File: 038_Basics of Networking in Kubernetes.txt
- Topic: Basics of Networking in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
The node has an IP address.

Source:
- Course: learn-kubernetes
- Module: 06_Networking in Kubernetes
- Lecture: 038_Basics of Networking in Kubernetes
- File: 038_Basics of Networking in Kubernetes.txt
- Topic: Basics of Networking in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
Say it is 192.168.1.2.

Source:
- Course: learn-kubernetes
- Module: 06_Networking in Kubernetes
- Lecture: 038_Basics of Networking in Kubernetes
- File: 038_Basics of Networking in Kubernetes.txt
- Topic: Basics of Networking in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
In this case, this is the IP address we used to access the Kubernetes node.

Source:
- Course: learn-kubernetes
- Module: 06_Networking in Kubernetes
- Lecture: 038_Basics of Networking in Kubernetes
- File: 038_Basics of Networking in Kubernetes.txt
- Topic: Basics of Networking in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
SSH into it, etc..

Source:
- Course: learn-kubernetes
- Module: 06_Networking in Kubernetes
- Lecture: 038_Basics of Networking in Kubernetes
- File: 038_Basics of Networking in Kubernetes.txt
- Topic: Basics of Networking in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Implementation Step  

Content:
On a side note, remember if you're using a minikube setup, then I'm talking about the IP address of the minikube virtual machine inside your hypervisor.

Source:
- Course: learn-kubernetes
- Module: 06_Networking in Kubernetes
- Lecture: 038_Basics of Networking in Kubernetes
- File: 038_Basics of Networking in Kubernetes.txt
- Topic: Basics of Networking in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
Your laptop may be having a different IP, like 182.168.1.1.

Source:
- Course: learn-kubernetes
- Module: 06_Networking in Kubernetes
- Lecture: 038_Basics of Networking in Kubernetes
- File: 038_Basics of Networking in Kubernetes.txt
- Topic: Basics of Networking in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
So it's important to understand how your VMs are set up.

Source:
- Course: learn-kubernetes
- Module: 06_Networking in Kubernetes
- Lecture: 038_Basics of Networking in Kubernetes
- File: 038_Basics of Networking in Kubernetes.txt
- Topic: Basics of Networking in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Implementation Step  

Content:
So on the single node Kubernetes cluster we have created a single pod.

Source:
- Course: learn-kubernetes
- Module: 06_Networking in Kubernetes
- Lecture: 038_Basics of Networking in Kubernetes
- File: 038_Basics of Networking in Kubernetes.txt
- Topic: Basics of Networking in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
As you know, a pod hosts a container.

Source:
- Course: learn-kubernetes
- Module: 06_Networking in Kubernetes
- Lecture: 038_Basics of Networking in Kubernetes
- File: 038_Basics of Networking in Kubernetes.txt
- Topic: Basics of Networking in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
Unlike in the Docker world where an IP address is always assigned to a Docker container.

Source:
- Course: learn-kubernetes
- Module: 06_Networking in Kubernetes
- Lecture: 038_Basics of Networking in Kubernetes
- File: 038_Basics of Networking in Kubernetes.txt
- Topic: Basics of Networking in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
In the Kubernetes world, the IP address is assigned to a pod.

Source:
- Course: learn-kubernetes
- Module: 06_Networking in Kubernetes
- Lecture: 038_Basics of Networking in Kubernetes
- File: 038_Basics of Networking in Kubernetes.txt
- Topic: Basics of Networking in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
Each pod in the Kubernetes gets its own internal IP address.

Source:
- Course: learn-kubernetes
- Module: 06_Networking in Kubernetes
- Lecture: 038_Basics of Networking in Kubernetes
- File: 038_Basics of Networking in Kubernetes.txt
- Topic: Basics of Networking in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
In this case, it's in the range 10.244 series, and the IP assigned to the pod is 10.244.0.2.

Source:
- Course: learn-kubernetes
- Module: 06_Networking in Kubernetes
- Lecture: 038_Basics of Networking in Kubernetes
- File: 038_Basics of Networking in Kubernetes.txt
- Topic: Basics of Networking in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Implementation Step  

Content:
So how is it getting this IP address when Kubernetes is initially configured?

Source:
- Course: learn-kubernetes
- Module: 06_Networking in Kubernetes
- Lecture: 038_Basics of Networking in Kubernetes
- File: 038_Basics of Networking in Kubernetes.txt
- Topic: Basics of Networking in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Implementation Step  

Content:
We create an internal private network with the address 10.244.0.0, and all the pods are attached to it.

Source:
- Course: learn-kubernetes
- Module: 06_Networking in Kubernetes
- Lecture: 038_Basics of Networking in Kubernetes
- File: 038_Basics of Networking in Kubernetes.txt
- Topic: Basics of Networking in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Exam Tip  

Content:
When you deploy multiple ports, they all get a separate IP assigned from this network.

Source:
- Course: learn-kubernetes
- Module: 06_Networking in Kubernetes
- Lecture: 038_Basics of Networking in Kubernetes
- File: 038_Basics of Networking in Kubernetes.txt
- Topic: Basics of Networking in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Implementation Step  

Content:
The pods can communicate to each other through this IP, but accessing the other pods using this internal IP address may not be a good idea, as it's subject to change when pods are recreated.

Source:
- Course: learn-kubernetes
- Module: 06_Networking in Kubernetes
- Lecture: 038_Basics of Networking in Kubernetes
- File: 038_Basics of Networking in Kubernetes.txt
- Topic: Basics of Networking in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
We will see better ways to establish communication between pods in a while.

Source:
- Course: learn-kubernetes
- Module: 06_Networking in Kubernetes
- Lecture: 038_Basics of Networking in Kubernetes
- File: 038_Basics of Networking in Kubernetes.txt
- Topic: Basics of Networking in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
For now, it's important to understand how the internal networking works in Kubernetes.

Source:
- Course: learn-kubernetes
- Module: 06_Networking in Kubernetes
- Lecture: 038_Basics of Networking in Kubernetes
- File: 038_Basics of Networking in Kubernetes.txt
- Topic: Basics of Networking in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
So it's all easy and simple to understand when it comes to networking on a single node.

Source:
- Course: learn-kubernetes
- Module: 06_Networking in Kubernetes
- Lecture: 038_Basics of Networking in Kubernetes
- File: 038_Basics of Networking in Kubernetes.txt
- Topic: Basics of Networking in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Exam Tip  

Content:
But how does it work when you have multiple nodes in your cluster?

Source:
- Course: learn-kubernetes
- Module: 06_Networking in Kubernetes
- Lecture: 038_Basics of Networking in Kubernetes
- File: 038_Basics of Networking in Kubernetes.txt
- Topic: Basics of Networking in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
In this case, we have two nodes running Kubernetes and they have IP addresses one nine, two, 168, 1.2 and 1.3 assigned to them.

Source:
- Course: learn-kubernetes
- Module: 06_Networking in Kubernetes
- Lecture: 038_Basics of Networking in Kubernetes
- File: 038_Basics of Networking in Kubernetes.txt
- Topic: Basics of Networking in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Implementation Step  

Content:
Note that they are not part of the cluster yet each of them has a single pod deployed.

Source:
- Course: learn-kubernetes
- Module: 06_Networking in Kubernetes
- Lecture: 038_Basics of Networking in Kubernetes
- File: 038_Basics of Networking in Kubernetes.txt
- Topic: Basics of Networking in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
As discussed in the previous slide, these pods are attached to an internal network and they have their own IP addresses assigned.

Source:
- Course: learn-kubernetes
- Module: 06_Networking in Kubernetes
- Lecture: 038_Basics of Networking in Kubernetes
- File: 038_Basics of Networking in Kubernetes.txt
- Topic: Basics of Networking in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
However, if you look at the internal network addresses, you can see that they are the same.

Source:
- Course: learn-kubernetes
- Module: 06_Networking in Kubernetes
- Lecture: 038_Basics of Networking in Kubernetes
- File: 038_Basics of Networking in Kubernetes.txt
- Topic: Basics of Networking in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Implementation Step  

Content:
The two networks have an address 10.244.0.0, and the pods deployed have the same address two.

Source:
- Course: learn-kubernetes
- Module: 06_Networking in Kubernetes
- Lecture: 038_Basics of Networking in Kubernetes
- File: 038_Basics of Networking in Kubernetes.txt
- Topic: Basics of Networking in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
This is not going to work well when the nodes are part of the same cluster.

Source:
- Course: learn-kubernetes
- Module: 06_Networking in Kubernetes
- Lecture: 038_Basics of Networking in Kubernetes
- File: 038_Basics of Networking in Kubernetes.txt
- Topic: Basics of Networking in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
The pods have the same IP addresses assigned to them and that will lead to IP conflicts in the network.

Source:
- Course: learn-kubernetes
- Module: 06_Networking in Kubernetes
- Lecture: 038_Basics of Networking in Kubernetes
- File: 038_Basics of Networking in Kubernetes.txt
- Topic: Basics of Networking in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
Now that's one problem.

Source:
- Course: learn-kubernetes
- Module: 06_Networking in Kubernetes
- Lecture: 038_Basics of Networking in Kubernetes
- File: 038_Basics of Networking in Kubernetes.txt
- Topic: Basics of Networking in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Troubleshooting  

Content:
When a Kubernetes cluster is setup, Kubernetes does not automatically set up any kind of networking to handle these issues.

Source:
- Course: learn-kubernetes
- Module: 06_Networking in Kubernetes
- Lecture: 038_Basics of Networking in Kubernetes
- File: 038_Basics of Networking in Kubernetes.txt
- Topic: Basics of Networking in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
As a matter of fact, Kubernetes expects us to set up networking to meet certain fundamental requirements.

Source:
- Course: learn-kubernetes
- Module: 06_Networking in Kubernetes
- Lecture: 038_Basics of Networking in Kubernetes
- File: 038_Basics of Networking in Kubernetes.txt
- Topic: Basics of Networking in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Implementation Step  

Content:
Some of these are that all the containers or pods in a Kubernetes cluster must be able to communicate with one another without having to configure Nat.

Source:
- Course: learn-kubernetes
- Module: 06_Networking in Kubernetes
- Lecture: 038_Basics of Networking in Kubernetes
- File: 038_Basics of Networking in Kubernetes.txt
- Topic: Basics of Networking in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
All nodes must be able to communicate with containers, and all containers must be able to communicate with the nodes in the cluster.

Source:
- Course: learn-kubernetes
- Module: 06_Networking in Kubernetes
- Lecture: 038_Basics of Networking in Kubernetes
- File: 038_Basics of Networking in Kubernetes.txt
- Topic: Basics of Networking in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
Kubernetes expects us to set up a networking solution that meets these criteria.

Source:
- Course: learn-kubernetes
- Module: 06_Networking in Kubernetes
- Lecture: 038_Basics of Networking in Kubernetes
- File: 038_Basics of Networking in Kubernetes.txt
- Topic: Basics of Networking in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Warning/Pitfall  

Content:
Fortunately, we don't have to set it up all on our own as there are multiple pre-built solutions available.

Source:
- Course: learn-kubernetes
- Module: 06_Networking in Kubernetes
- Lecture: 038_Basics of Networking in Kubernetes
- File: 038_Basics of Networking in Kubernetes.txt
- Topic: Basics of Networking in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
Some of them are the Cisco ACI networks, cilium, Big Cloud Fabric, flannel, VMware, NZXT, and calico.

Source:
- Course: learn-kubernetes
- Module: 06_Networking in Kubernetes
- Lecture: 038_Basics of Networking in Kubernetes
- File: 038_Basics of Networking in Kubernetes.txt
- Topic: Basics of Networking in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Implementation Step  

Content:
Depending on the platform you're deploying your Kubernetes cluster on, you may use one of these solutions.

Source:
- Course: learn-kubernetes
- Module: 06_Networking in Kubernetes
- Lecture: 038_Basics of Networking in Kubernetes
- File: 038_Basics of Networking in Kubernetes.txt
- Topic: Basics of Networking in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Exam Tip  

Content:
For example, if you were setting up a Kubernetes cluster from scratch on your own systems, you may use any of the solutions like calico or flannel, etc..

Source:
- Course: learn-kubernetes
- Module: 06_Networking in Kubernetes
- Lecture: 038_Basics of Networking in Kubernetes
- File: 038_Basics of Networking in Kubernetes.txt
- Topic: Basics of Networking in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Implementation Step  

Content:
If you were deploying on a VMware environment, NZXT may be a good option.

Source:
- Course: learn-kubernetes
- Module: 06_Networking in Kubernetes
- Lecture: 038_Basics of Networking in Kubernetes
- File: 038_Basics of Networking in Kubernetes.txt
- Topic: Basics of Networking in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
If you look at the play with K8's labs, they use WaveNet as their networking solution.

Source:
- Course: learn-kubernetes
- Module: 06_Networking in Kubernetes
- Lecture: 038_Basics of Networking in Kubernetes
- File: 038_Basics of Networking in Kubernetes.txt
- Topic: Basics of Networking in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
So back to our cluster with the custom networking either Flannel or Calico setup.

Source:
- Course: learn-kubernetes
- Module: 06_Networking in Kubernetes
- Lecture: 038_Basics of Networking in Kubernetes
- File: 038_Basics of Networking in Kubernetes.txt
- Topic: Basics of Networking in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
It now manages the networks and IPS in my nodes, and assigns a different network address for each network in the node.

Source:
- Course: learn-kubernetes
- Module: 06_Networking in Kubernetes
- Lecture: 038_Basics of Networking in Kubernetes
- File: 038_Basics of Networking in Kubernetes.txt
- Topic: Basics of Networking in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Implementation Step  

Content:
This creates a virtual network of all pods and nodes, where they are all assigned a unique IP address, and by using simple routing techniques, the cluster networking enables communication between the different pods or nodes to meet the networking requirements of Kubernetes.

Source:
- Course: learn-kubernetes
- Module: 06_Networking in Kubernetes
- Lecture: 038_Basics of Networking in Kubernetes
- File: 038_Basics of Networking in Kubernetes.txt
- Topic: Basics of Networking in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
Thus, all the pods now can communicate to each other using the assigned IP address.

Source:
- Course: learn-kubernetes
- Module: 06_Networking in Kubernetes
- Lecture: 038_Basics of Networking in Kubernetes
- File: 038_Basics of Networking in Kubernetes.txt
- Topic: Basics of Networking in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
