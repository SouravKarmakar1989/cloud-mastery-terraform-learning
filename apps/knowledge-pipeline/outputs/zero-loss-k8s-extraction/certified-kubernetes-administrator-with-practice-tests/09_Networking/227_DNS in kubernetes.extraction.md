# Extraction: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 227_DNS in kubernetes

---

## Entry 1
Type: Concept  

Content:
In this lecture we will discuss about DNS in the Kubernetes cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
If you are new to DNS, make sure you go through the prerequisites section on DNS where we discuss what DNS is, what are the tools used for working with DNS, such as host Nslookup and the Dig utility, and the different types of DNS records like a, CNAME, etc. and we also saw how to set up our own DNS server using DNS.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
In this lecture we will see what names are assigned to what objects.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
What are service DNS records, pod DNS records?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
What are the different ways you can reach one pod from another?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Implementation Step  

Content:
And in the next lecture we will see how Kubernetes implements DNS in the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Implementation Step  

Content:
So we have a three node Kubernetes cluster with some pods and services deployed on them.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
Each node has a node name and IP address assigned to it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
The node names and IP addresses of the cluster are probably registered in a DNS server in your organization.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
Now how that is managed, who accesses them are not of concern in this lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
In this lecture, we discuss about DNS resolution within the cluster between the different components in the cluster, such as pods and services.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Implementation Step  

Content:
Kubernetes deploys a built in DNS server by default when you set up a cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Implementation Step  

Content:
If you set up Kubernetes manually, then you do it by yourself.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Implementation Step  

Content:
We will see how that is done and how it is configured in the next lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
As far as this lecture is concerned, we will see how it helps pods resolve other parts and services within the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Warning/Pitfall  

Content:
So we don't really care about nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
We focus purely on pods and services within the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
As long as our cluster networking is set up correctly.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Best Practice  

Content:
Following the best practices we learned so far in this section, and all pods and services can get their own IP address and can reach each other, which should be good.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
Let's start with just two pods and a service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
I have a test pod on the left with the IP set to 1234.1.5, and I have a web pod on the right with the IP set to 1244.2.5.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
Looking at their IPS, you can guess that they're probably hosted on two different nodes, but that doesn't really matter as far as DNS is concerned.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
We assume that all ports and services can reach each other using their IP addresses.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Implementation Step  

Content:
To make the web server accessible to the test port, we create a service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
Rename it Web Service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
The service gets an IP ten 10737.188.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Implementation Step  

Content:
Whenever a service is created, the Kubernetes DNS service creates a record for the service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
It maps the service name to the IP address.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
So within the cluster, any pod can now reach this service using its service name.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Implementation Step  

Content:
Remember, we talked about namespaces earlier that everyone within the namespace address each other just with their first names, and to address anyone in another namespace, you use their full names.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
In this case, since the test pod and the web pod and its associated service are all in the same namespace, the default namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
You are able to simply reach the web service from the test pod using just the service name web service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
Let's assume the web service was in a separate namespace named apps.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Implementation Step  

Content:
Then to refer to it from the default namespace, you would have to say WebService dot apps.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
The last name of the service is now the name of the namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
So here WebService is the name of the service, and apps is the name of the namespace for each namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Implementation Step  

Content:
The DNS server creates a subdomain.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
All the services are grouped together into another subdomain called SVC.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
So what was that about?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
Let's take a closer look.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
Web service is the name of the service, and apps is the name of the namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
For each namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Implementation Step  

Content:
The DNS server creates a subdomain with its name.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
All pods and services for a namespace are thus grouped together within a subdomain in the name of the namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
All the services are further grouped together into another subdomain called SVC.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
So you can reach your application with the name Web service SVC.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
Finally, all the services and pods are grouped together into a root domain for the cluster, which is set to cluster dot local by default, so you can access the service using the URL web service dot svc cluster local.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
And that's the fully qualified domain name for the service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
So that's how services are resolved within the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Concept  

Content:
What about pods?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Implementation Step  

Content:
Records for pods are not created by default, but we can enable that explicitly.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Implementation Step  

Content:
We will see that in the next lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Implementation Step  

Content:
Once enabled, records are created for pods as well.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Concept  

Content:
It does not use the pod name though.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Concept  

Content:
For each pod, Kubernetes generates a name by replacing the dots in the IP address with dashes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
The namespace remains the same and type is set to pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Concept  

Content:
The root domain is always cluster dot, local.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Concept  

Content:
Similarly, the pod in the default namespace gets a record in the DNS server with its IP converted to a hostname.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Concept  

Content:
Ten 240 415 and namespace set to default type is pod and the root is cluster dot local.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Concept  

Content:
This resolves to the IP address of the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 227_DNS in kubernetes
- File: 227_DNS in kubernetes.txt
- Topic: DNS in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
