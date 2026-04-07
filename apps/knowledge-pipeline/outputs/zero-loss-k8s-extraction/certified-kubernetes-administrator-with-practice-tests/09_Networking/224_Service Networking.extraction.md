# Extraction: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 224_Service Networking

---

## Entry 1
Type: Concept  

Content:
In this lecture we will discuss about service networking.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
In the previous lectures we talked about pod networking, how bridge networks are created within each node, and how pods get a namespace created for them, and how interfaces are attached to those namespaces, and how pods get an IP address assigned to them within the subnet assigned for that node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
And we also saw through routes or other overlay techniques, we can get the pods in different nodes to talk to each other, forming a large virtual network where all pods can reach each other.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Implementation Step  

Content:
Now, you would rarely configure your pods to communicate directly with each other.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
If you want a pod to access services hosted on another pod, you would always use a service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
Let's quickly recap the different kinds of services to make the orange pod accessible to the blue pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Implementation Step  

Content:
We create an orange service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
The orange service gets an IP address and a name assigned to it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
The blue pod can now access the orange pod through the Orange Services IP or its name.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
We'll talk about name resolution in the upcoming lectures.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
For now, let's just focus on IP addresses.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
The blue and orange pod are on the same node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
What about access from the other pods on other nodes?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Implementation Step  

Content:
When a service is created, it is accessible from all pods on the cluster, irrespective of what nodes the pods are on.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
While a pod is hosted on a node, a service is hosted across the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
It is not bound to a specific node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
But remember the service is only accessible from within the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
This type of service is known as cluster IP.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 19
Type: Implementation Step  

Content:
If the orange pod was hosting a database application that is to be only accessed from within the cluster, then this type of service works just fine.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
Say, for instance, the purple pod was hosting a web application to make the application on the pod accessible.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Implementation Step  

Content:
Outside the cluster, we create another service of type node port.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
This service also gets an IP address assigned to it and works just like cluster IP.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
As in all the other pods can access this service using its IP.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
But in addition, it also exposes the application on a port on all nodes in the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
That way, external users or applications have access to the service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
So that's the topic of our discussion for this lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
Our focus is more on services and less on pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
How are the services getting these IP addresses and how were they made available across all the nodes in the cluster?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
How is the service made available to external users through a port on each node?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
Who is doing that and how and where do we see it?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
So let's get started.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 32
Type: Concept  

Content:
Let's start on a clean slate.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
We have a three node cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Architecture  

Content:
No pods or services yet we know that every Kubernetes node runs a kubelet process which is responsible for creating pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Architecture  

Content:
Each kubelet service on each node watches the changes in the cluster through the kube API server, and every time a new pod is to be created, it creates the pod on the nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Implementation Step  

Content:
It then invokes the CNI plugin to configure networking for that pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
Similarly, each node runs another component known as kube proxy.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Architecture  

Content:
Kube proxy watches the changes in the cluster through kube API server, and every time a new service is to be created, kube proxy gets into action.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Implementation Step  

Content:
Unlike pods, services are not created on each node or assigned to each node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
Services are a cluster wide concept.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
They exist across all the nodes in the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Warning/Pitfall  

Content:
As a matter of fact, they don't exist at all.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
There is no server or service really listening on the IP of the service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
We have seen that pods have containers, and containers have namespaces with interfaces and IPS assigned to those interfaces with services.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
Nothing like that exists.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
There are no processes or namespaces or interfaces for a service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
It's just a virtual object.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Implementation Step  

Content:
Then how do they get an IP address, and how were we able to access the application on the pod through service?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Implementation Step  

Content:
When we create a service object in Kubernetes, it is assigned an IP address from a predefined range.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Best Practice  

Content:
The kube proxy components running on each node gets that IP address and creates forwarding rules on each node in the cluster, saying any traffic coming to this IP, the IP of the service should go to the IP of the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
Once that is in place, whenever a pod tries to reach the IP of the service, it is forwarded to the pods IP address, which is accessible from any node in the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Concept  

Content:
Now remember, it's not just the IP, it's an IP and port combination.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Implementation Step  

Content:
Whenever services are created or deleted, the kube proxy component creates or deletes these rules.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Implementation Step  

Content:
So how are these rules created?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Comparison  

Content:
Kube proxy supports different ways, such as user space, where kube proxy listens on a port for each service, and proxies connections to the pods by creating ipvs rules.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
Or the third and the default option, and the one familiar to us is using iptables.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Concept  

Content:
The proxy mode can be set using the proxy mode option while configuring the kube proxy service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Concept  

Content:
If this is not set, it defaults to iptables.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Implementation Step  

Content:
So we'll see how iptables are configured by kube proxy and how you can view them on the nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Implementation Step  

Content:
We have a pod named DB deployed on node one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
It has IP address 10.244.1.2.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Implementation Step  

Content:
We create a service of type cluster IP to make this pod available within the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Implementation Step  

Content:
When the service is created, Kubernetes assigns an IP address to it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Concept  

Content:
It is set to 10.103.132.104.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Architecture  

Content:
This range is specified in the kube API servers option called Service Cluster IP range, which is by default set to 10.0.0.0 slash 24.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Architecture  

Content:
In my case, if I look at my kube API server option, I see it is set to 10.96.0.0 slash 12.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Concept  

Content:
That gives my services IP anywhere from 10.96.0.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Concept  

Content:
0 to 1 0.111.255.255.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Concept  

Content:
A relative point to mention here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Concept  

Content:
When I set up my pod networking, I provided a Pod network Cidr range of 10.244.0.0 16, which gives my pod's IP addresses from 10 to 40 40.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Concept  

Content:
0 to 1 244.255.255.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Best Practice  

Content:
The reason I brought this up here is because whatever range you specify for each of these networks, it shouldn't overlap, which it doesn't in this case.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Best Practice  

Content:
Both of these should have its own dedicated range of IPS to work with.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Best Practice  

Content:
There shouldn't be a case where a pod and a service are assigned the same IP address.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Concept  

Content:
So getting back to services, that's how my service got an IP address of 10.103.132.104.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Implementation Step  

Content:
You can see the rules created by kube proxy in the iptables Nat table.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Concept  

Content:
Output.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 78
Type: Implementation Step  

Content:
Search for the name of the service as all rules created by kube proxy have a comment with the name of the service on it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Concept  

Content:
These rules mean any traffic going to the IP address.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Best Practice  

Content:
Ten 103132.104 on port 3306, which is the IP of the service, should have its destination address changed to 10 to 44 .1.2 and port 3306, which is the IP of the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 81
Type: Concept  

Content:
This is done by adding a Nat rule to iptables.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Implementation Step  

Content:
Similarly, when you create a service of type node port, kube proxy creates iptables rules to forward all traffic coming on a port on all nodes to the respective backend ports.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Implementation Step  

Content:
You can also see kube proxy create these entries in the kube proxy logs itself.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 84
Type: Concept  

Content:
In the logs you will find what proxy it uses.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 85
Type: Implementation Step  

Content:
In this case it's iptables and then adds an entry when it added a new service for the database.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 86
Type: Concept  

Content:
Note that the location of this file might vary depending on your installation.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 87
Type: Warning/Pitfall  

Content:
If you don't see these entries, you must also check the verbosity level of the process as well.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 88
Type: Concept  

Content:
Well, that's it about service networking.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 89
Type: Implementation Step  

Content:
I will see you in the next lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 224_Service Networking
- File: 224_Service Networking.txt
- Topic: Service Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---
