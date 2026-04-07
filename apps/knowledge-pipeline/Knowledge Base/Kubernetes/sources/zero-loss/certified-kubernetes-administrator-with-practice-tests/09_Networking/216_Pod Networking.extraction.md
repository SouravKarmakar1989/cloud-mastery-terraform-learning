# Extraction: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 216_Pod Networking

---

## Entry 1
Type: Concept  

Content:
In this lecture we discuss about pod networking in Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
So far, we have set up several Kubernetes master and worker nodes and configured networking between them.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
So they are all on a network that can reach each other.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Implementation Step  

Content:
We also make sure the firewall and network security groups are configured correctly to allow for the Kubernetes control plane components to reach each other.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Architecture  

Content:
Assume that we have also set up all the Kubernetes control plane components, such as the cube API server, the etcd servers, kubelets, etc. and we are finally ready to deploy our applications.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
But before we can do that, there is something that we must address.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
We talked about the network that connects the nodes together, but there's also another layer of networking that is crucial to the clusters functioning, and that is the networking at the pod layer.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
Our Kubernetes cluster is soon going to have a large number of pods and services running on it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
How are the pods addressed?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
How do they communicate with each other?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Operational Insight  

Content:
How do you access the services running on these parts internally from within the cluster, as well as externally from outside the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
These are challenges that Kubernetes expects you to solve.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
As of today, Kubernetes does not come with a built in solution for this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
It expects you to implement a networking solution that solves these challenges.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
However, Kubernetes has laid out clearly the requirements for pod networking.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
Let's take a look at what they are.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Best Practice  

Content:
Kubernetes expects every pod to get its own unique IP address, and that every pod should be able to reach every other pod within the same node using that IP address.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Best Practice  

Content:
And every pod should be able to reach every other pod on other nodes as well, using the same IP address.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
It doesn't care what IP address that is and what range or subnet it belongs to.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Implementation Step  

Content:
As long as you can implement a solution that takes care of automatically assigning IP addresses and establish connectivity between the pods in a node as well as pods on different nodes, you're good without having to configure any Nat rules.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
So how do you implement a model that solves these requirements?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
Now there are many networking solutions available out there that does this, but we have already learned about networking concepts routing, IP address management, namespaces and CNI.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Implementation Step  

Content:
So let's try to use that knowledge to solve this problem by ourselves first.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
This will help in understanding how other solutions work.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
I know there is a bit of repetition, but I'm trying to relate the same concept and approach all the way from plain network namespaces on Linux all the way to Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
So we have a three node cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
It doesn't matter which one is master or worker.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
They all run pods either for management or workload purposes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
As far as networking is concerned, we're going to consider all of them as the same.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Implementation Step  

Content:
So first let's plan what we're going to do.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
The nodes are part of an external network and has IP addresses in the 192.168.1. series, node one is assigned 11, node two is 12, and node three is 13.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Implementation Step  

Content:
Next step.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Implementation Step  

Content:
When containers are created, Kubernetes creates network namespaces for them to enable communication between them.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
We attach these namespaces to a network.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
But what network?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Implementation Step  

Content:
We've learned about networks that can be created within nodes to attach namespaces.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Implementation Step  

Content:
So we create a bridge network on each node and then bring them up.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
It's time to assign an IP address to the bridge interfaces or networks.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
But what IP address.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
We decide that each person network will be on its own subnet.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
Choose any private address range, say ten 244.11244.2 and ten 244.3.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Implementation Step  

Content:
Next we set the IP address for the bridge interface.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
So we have built our base.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Implementation Step  

Content:
The remaining steps are to be performed for each container and every time a new container is created.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
So we write a script for it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Warning/Pitfall  

Content:
Now, you don't have to know any kind of complicated scripting.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Exam Tip  

Content:
It's just a file that has all commands we will be using, and we can run this multiple times for each container.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
Going forward.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
To attach a container to the network, we need a pipe or virtual network cable.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Implementation Step  

Content:
We create that using the IP link add command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Warning/Pitfall  

Content:
Don't focus on the options as they are similar to what we saw in our previous lectures.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Concept  

Content:
Assume that they vary depending on the inputs.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Implementation Step  

Content:
We then attach one end to the container and another end to the bridge.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Concept  

Content:
Using the IP link, set command with an assigned IP address using the IP addr command, and add a route to the default gateway.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Concept  

Content:
But what IP do we add?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
We either manage that ourselves or store that information in some kind of database.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Concept  

Content:
For now, we will assume it is 10.244 .1.2, which is a free IP in the subnet.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Concept  

Content:
We discuss about IP address management in detail in one of the upcoming lectures.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Concept  

Content:
Finally, we bring up the interface.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Implementation Step  

Content:
We then run the same script, this time for the second container with its information, and gets the container connected to the network.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
The two containers can now communicate with each other.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Concept  

Content:
We copy the script to the other nodes and run the script on them to assign IP address and connect those containers to their own internal networks.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Implementation Step  

Content:
So we have solved the first part of the challenge.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Concept  

Content:
The pods all get their own unique IP address and are able to communicate with each other on their own nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Implementation Step  

Content:
The next part is to enable them to reach other pods on other nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Exam Tip  

Content:
Say for example, the pod at ten 244 1.2 on node one wants to ping pod 10 to 4 4.2.2 on node two.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Implementation Step  

Content:
As of now, the first has no idea where the address ten 244.2.2 is because it is on a different network than its own, so it routes to node one IP as it is said to be the default gateway.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Concept  

Content:
Node one doesn't know either, since 10 to 44 .2.2 is a private network on node two.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Concept  

Content:
Add a root to node ones routing table to route traffic to 10 to 44 .2.2 via the second node's IP at 192.168.1.12.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Concept  

Content:
Once the root is added, the blue pod is able to ping across.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Implementation Step  

Content:
Similarly, we configure root on all hosts to all the other hosts with information regarding the respective networks within them.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Architecture  

Content:
Now this works fine in this simple setup, but this will require a lot more configuration as and when your underlying network architecture gets complicated.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Implementation Step  

Content:
Instead of having to configure routes on each server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Concept  

Content:
A better solution is to do that on a router if you have one in your network, and point all hosts to use that as the default gateway.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Concept  

Content:
That way, you can easily manage routes to all networks in the routing table on the router.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Implementation Step  

Content:
With that, the individual virtual networks we created with the address ten .244.1.0 slash 24.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Concept  

Content:
On each node now form a single large network with the address 10.244.0.0 slash 16.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Concept  

Content:
It's time to tie everything together.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Implementation Step  

Content:
We performed a number of manual steps to get the environment ready with the bridged networks and routing tables.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Implementation Step  

Content:
We then wrote a script that can be run for each container that performs the necessary steps required to connect each container to the network.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 81
Type: Concept  

Content:
And we executed the script manually.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Warning/Pitfall  

Content:
Of course, we don't want to do that, as in large environments where thousands of pods are created every minute.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Implementation Step  

Content:
So how do we run this script automatically when a pod is created on Kubernetes?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 84
Type: Concept  

Content:
That's where CNI comes in.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 85
Type: Concept  

Content:
Acting as the middleman.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 86
Type: Best Practice  

Content:
CNI tells Kubernetes that this is how you should call a script as soon as you create a container, and CNI tells us this is how your script should look like.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 87
Type: Concept  

Content:
So we need to modify the script a little bit to meet CNI standards.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 88
Type: Best Practice  

Content:
It should have an add section that will take care of adding a container to the network, and a delete section that will take care of deleting container interfaces from the network and freeing the IP address, etc..

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 89
Type: Concept  

Content:
So our script is ready.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 90
Type: Operational Insight  

Content:
The container runtime on each node is responsible for creating containers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 91
Type: Implementation Step  

Content:
Whenever a container is created, the container runtime looks at the CNI configuration passed as a command line argument when it was run, and identifies our scripts name.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 92
Type: Implementation Step  

Content:
It then looks in the CNI bin directory to find our script, and then executes the script with the add command and the name and namespace ID of the container, and then our script takes care of the rest.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 93
Type: Implementation Step  

Content:
We will look at how and where the CNI is configured in Kubernetes in the next lecture, along with practice tests.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 94
Type: Concept  

Content:
For now, let's set from the Pod Networking Concepts lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 95
Type: Best Practice  

Content:
Hopefully that should give you enough knowledge on inspecting networking within pods in a Kubernetes cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 96
Type: Concept  

Content:
We will see how other solutions do the same thing that we did in the upcoming lectures.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 216_Pod Networking
- File: 216_Pod Networking.txt
- Topic: Pod Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
