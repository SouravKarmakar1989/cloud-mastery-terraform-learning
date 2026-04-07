# Extraction: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 219_CNI weave

---

## Entry 1
Type: Concept  

Content:
Instructor: Hello and welcome to this lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
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
In this lecture we will discuss about one solution based on CNI, in particular, Weaveworks, the Weaveworks Weave CNI plugin.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Implementation Step  

Content:
In the previous practice test, we saw how it is configured.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
Now we will see more details about how it works.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Architecture  

Content:
We will start where we left off in the pod networking concepts section, we had our own custom CNI script that we've built and integrated into Kubelet through CNI.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
In the previous lecture, we saw how instead of our own custom script, we integrated the Weave plugin.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
Let is now see how the Weave solution works as it is important to understand at least one solution well.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Best Practice  

Content:
You should then be able to relate this to other solutions as well.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
So the networking solution we set up manually had a routing table which mapped what networks are on what hosts.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
So when a packet is sent from one pod to the other, it goes out to the network, to the router, and finds its way to the node that hosts that pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
Now that works for a small environment and in a simple network, but in larger environments with hundreds of nodes, in a cluster and hundreds of pods on each node, this is not practical.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
The routing table may not support so many entries, and that is where you need to get creative and look for other solutions.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
Think of the Kubernetes cluster as our company and the nodes as different office sites.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
With each site, we have different departments, and within each department we have different offices.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
Someone in office one wants to send a packet to office three and hand it over to the office boy, all he knows is it needs to go to office three, and he doesn't care who or how it is transported.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Exam Tip  

Content:
The office boy takes the package, gets in his car, looks up the address for the target office in GPS, uses directions on the streets and finds his way to the destination site, delivers the package to the payroll department, who in turn forwards the package to office three.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
This works just fine for now.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
We soon expand to different regions and countries, and this process no longer works.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
It's hard for the office boy to keep track of so many routes to these large number of offices across different countries.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
And of course, he can't drive to these offices by himself.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
That's where we decide to outsource all mailing and shipping activities to a company who does it best.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Implementation Step  

Content:
Once the shipping company is engaged, the first thing that they do is place their agents in each of our company's sites.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
These agents are responsible for managing all shipping activities between sites.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
They also keep talking to each other and are well connected.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
So they all know about each other's sites, the departments in them, and the offices in them.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Exam Tip  

Content:
And so when a package is sent from, say, office 10 to office three, the shipping agent in that site intercepts the package and looks at the target office name.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Exam Tip  

Content:
He knows exactly in which site and department that office is in through his little internal network with his peers on the other sites, he then places this package into his own new package with the destination address set to the target site's location, and then sends the package through.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Exam Tip  

Content:
Once the package arrives at the destination, it is again intercepted by the agent on that site, he opens the packet, retrieves the original packet, and delivers it to the right department.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Implementation Step  

Content:
Back to our world, where the Weave CNI plugin is deployed on a cluster, it deploys an agent or service on each node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
They communicate with each other to exchange information regarding the nodes and networks and pods within them.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
Each agent or peer stores a topology of the entire setup.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
That way they know the pods and their IPs on the other nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Implementation Step  

Content:
Weave creates its own bridge on the nodes and names at Weave, then assigns IP address to each network.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Exam Tip  

Content:
The IPs shown here are just examples.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
In the upcoming practice test, you will figure out the exact range of IP addresses we've assigned on each node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Implementation Step  

Content:
We will talk about IP address management and how IP addresses are handed out to pods and containers in the next lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Exam Tip  

Content:
Remember that a single pod may be attached to multiple bridge networks.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Exam Tip  

Content:
For example, you could have a pod attached to the Weave Bridge as well as the Docker Bridge created by Docker.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Implementation Step  

Content:
What path a packet takes to reach its destination depends on the route configured on the container.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Implementation Step  

Content:
Weave makes sure that pods gets the correct route configured to reach the agent, and the agent then takes care of other pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Implementation Step  

Content:
Now, when a packet is sent from one pod to another on another node, Weave intercepts the packet and identifies that it's on a separate network, it then encapsulates this packet into a new one with new source and destination and sends it across the network.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
Once on the other side, the other Weave agent retrieves the packet, decapsulates it, and routes the packet to the right pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Implementation Step  

Content:
So how do we deploy Weave on a Kubernetes cluster?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Implementation Step  

Content:
Weave and Weave Peers can be deployed as services or daemons on each node in the cluster manually, or if Kubernetes is set up already, then an easier way to do that is to deploy it as pods in the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Implementation Step  

Content:
Once the base Kubernetes system is ready, with nodes and networking configured correctly between the nodes and the basic control plane components are deployed, Weave can be deployed in the cluster with a single kubectl apply command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Implementation Step  

Content:
This deploys all the necessary components required for Weave in the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Implementation Step  

Content:
Most importantly, the Weave peers are deployed as a daemon set.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Implementation Step  

Content:
A daemon set ensures that one pod of the given kind is deployed on all nodes in the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
This works perfectly for the Weave cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Implementation Step  

Content:
If you deployed your cluster with a Kubeadm tool and Weave plugin, you can see the Weave peers as pods deployed on each node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Troubleshooting  

Content:
For troubleshooting purpose, view the logs using the kubectl logs command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Implementation Step  

Content:
Well, that's it for this lecture, I will see you in the next.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 219_CNI weave
- File: 219_CNI weave.txt
- Topic: CNI weave
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
