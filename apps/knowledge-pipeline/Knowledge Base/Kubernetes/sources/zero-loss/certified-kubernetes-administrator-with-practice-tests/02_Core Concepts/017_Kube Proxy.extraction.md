# Extraction: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 017_Kube Proxy

---

## Entry 1
Type: Concept  

Content:
In this lecture we will talk about kube proxy within a Kubernetes cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 017_Kube Proxy
- File: 017_Kube Proxy.txt
- Topic: Kube Proxy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
Every pod can reach every other pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 017_Kube Proxy
- File: 017_Kube Proxy.txt
- Topic: Kube Proxy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Implementation Step  

Content:
This is accomplished by deploying a pod networking solution to the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 017_Kube Proxy
- File: 017_Kube Proxy.txt
- Topic: Kube Proxy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
A pod network is an internal virtual network that spans across all the nodes in the cluster, to which all the pods connect to.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 017_Kube Proxy
- File: 017_Kube Proxy.txt
- Topic: Kube Proxy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
Through this network, they're able to communicate with each other.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 017_Kube Proxy
- File: 017_Kube Proxy.txt
- Topic: Kube Proxy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Implementation Step  

Content:
There are many solutions available for deploying such a network.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 017_Kube Proxy
- File: 017_Kube Proxy.txt
- Topic: Kube Proxy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Implementation Step  

Content:
In this case, I have a web application deployed on the first node and a database application deployed on the second.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 017_Kube Proxy
- File: 017_Kube Proxy.txt
- Topic: Kube Proxy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
The web app can reach the database simply by using the IP of the pod, but there is no guarantee that the IP of the database pod will always remain the same.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 017_Kube Proxy
- File: 017_Kube Proxy.txt
- Topic: Kube Proxy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
If you've gone through the lecture on services as discussed in the beginner's course, you must know that a better way for the web application to access the database is using a service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 017_Kube Proxy
- File: 017_Kube Proxy.txt
- Topic: Kube Proxy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Implementation Step  

Content:
So we create a service to expose the database application across the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 017_Kube Proxy
- File: 017_Kube Proxy.txt
- Topic: Kube Proxy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
The web application can now access the database using the name of the service DB.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 017_Kube Proxy
- File: 017_Kube Proxy.txt
- Topic: Kube Proxy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
The service also gets an IP address assigned to it whenever a pod tries to reach the surface using its IP or name, it forwards the traffic to the backend pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 017_Kube Proxy
- File: 017_Kube Proxy.txt
- Topic: Kube Proxy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
In this case, the database.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 017_Kube Proxy
- File: 017_Kube Proxy.txt
- Topic: Kube Proxy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
But what is this service and how does it get an IP?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 017_Kube Proxy
- File: 017_Kube Proxy.txt
- Topic: Kube Proxy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
Does the service join the same pod network?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 017_Kube Proxy
- File: 017_Kube Proxy.txt
- Topic: Kube Proxy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
The service cannot join the pod network because the service is not an actual thing.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 017_Kube Proxy
- File: 017_Kube Proxy.txt
- Topic: Kube Proxy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
It is not a container like pods, so it doesn't have any interfaces or an actively listening process.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 017_Kube Proxy
- File: 017_Kube Proxy.txt
- Topic: Kube Proxy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
It is a virtual component that only lives in the Kubernetes memory.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 017_Kube Proxy
- File: 017_Kube Proxy.txt
- Topic: Kube Proxy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Best Practice  

Content:
But then we also said that the service should be accessible across the cluster from any nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 017_Kube Proxy
- File: 017_Kube Proxy.txt
- Topic: Kube Proxy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
So how is that achieved?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 017_Kube Proxy
- File: 017_Kube Proxy.txt
- Topic: Kube Proxy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
That's where kube proxy comes in.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 017_Kube Proxy
- File: 017_Kube Proxy.txt
- Topic: Kube Proxy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
Kube proxy is a process that runs on each node in the Kubernetes cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 017_Kube Proxy
- File: 017_Kube Proxy.txt
- Topic: Kube Proxy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
Its job is to look for new services.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 017_Kube Proxy
- File: 017_Kube Proxy.txt
- Topic: Kube Proxy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Implementation Step  

Content:
And every time a new service is created, it creates the appropriate rules on each node to forward traffic to those services to the backend pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 017_Kube Proxy
- File: 017_Kube Proxy.txt
- Topic: Kube Proxy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
One way it does this is using iptables rules.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 017_Kube Proxy
- File: 017_Kube Proxy.txt
- Topic: Kube Proxy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Implementation Step  

Content:
In this case, it creates an iptables rule on each node in the cluster to forward traffic heading to the IP of the service, which is 10.96.0.1.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 017_Kube Proxy
- File: 017_Kube Proxy.txt
- Topic: Kube Proxy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
To the IP of the actual port, which is 10.32.0.15.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 017_Kube Proxy
- File: 017_Kube Proxy.txt
- Topic: Kube Proxy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Implementation Step  

Content:
So that's how kube proxy configures a service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 017_Kube Proxy
- File: 017_Kube Proxy.txt
- Topic: Kube Proxy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
We discussed a lot more about networking and services and kube proxy and pod networking later in this course.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 017_Kube Proxy
- File: 017_Kube Proxy.txt
- Topic: Kube Proxy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
Again we have a large section just for networking.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 017_Kube Proxy
- File: 017_Kube Proxy.txt
- Topic: Kube Proxy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
This is a high level overview for now.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 017_Kube Proxy
- File: 017_Kube Proxy.txt
- Topic: Kube Proxy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
We will now see how to install kube proxy.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 017_Kube Proxy
- File: 017_Kube Proxy.txt
- Topic: Kube Proxy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
Download the kube proxy binary from the Kubernetes release page.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 017_Kube Proxy
- File: 017_Kube Proxy.txt
- Topic: Kube Proxy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
Extract it and run it as a service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 017_Kube Proxy
- File: 017_Kube Proxy.txt
- Topic: Kube Proxy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Implementation Step  

Content:
The kube adm tool deploys kube proxy as pods on each node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 017_Kube Proxy
- File: 017_Kube Proxy.txt
- Topic: Kube Proxy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Implementation Step  

Content:
In fact, it is deployed as a daemonset, so a single pod is always deployed on each node in the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 017_Kube Proxy
- File: 017_Kube Proxy.txt
- Topic: Kube Proxy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Warning/Pitfall  

Content:
Well, if you don't know about Daemonset yet, don't worry.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 017_Kube Proxy
- File: 017_Kube Proxy.txt
- Topic: Kube Proxy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
We have a lecture on that coming up in this course.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 017_Kube Proxy
- File: 017_Kube Proxy.txt
- Topic: Kube Proxy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
We have now covered a high level overview of the Kubernetes components, including control plane and node level components like kube proxy.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 017_Kube Proxy
- File: 017_Kube Proxy.txt
- Topic: Kube Proxy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
As mentioned, we will look at some of these in much more detail at various sections in this course.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 017_Kube Proxy
- File: 017_Kube Proxy.txt
- Topic: Kube Proxy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
Well that's it for this lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 017_Kube Proxy
- File: 017_Kube Proxy.txt
- Topic: Kube Proxy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 42
Type: Implementation Step  

Content:
I will see you in the next section.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 017_Kube Proxy
- File: 017_Kube Proxy.txt
- Topic: Kube Proxy
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
