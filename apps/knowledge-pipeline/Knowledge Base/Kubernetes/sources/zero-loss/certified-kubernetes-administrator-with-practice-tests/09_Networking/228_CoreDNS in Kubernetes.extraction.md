# Extraction: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 228_CoreDNS in Kubernetes

---

## Entry 1
Type: Concept  

Content:
In this lecture we will discuss how Kubernetes implements DNS in the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
In the previous lecture, we saw how you can address a service or pod from another pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
In this lecture we will see how Kubernetes makes that possible.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
Say you were given two pods with two IP addresses.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
How would you do it?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
Based on what we learned in the prerequisite lectures on DNS?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Implementation Step  

Content:
An easy way to get them to resolve each other is to add an entry into each of their Etsy hosts file on the first pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
I would say the second pod web is at 10.244.2.5.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
And on the second pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Implementation Step  

Content:
I would say the first pod test is at 10.244 .1.5.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Implementation Step  

Content:
But of course, when you have thousands of pods in the cluster and hundreds of them being created and deleted every minute, this is not a suitable solution.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
So we moved these entries into a central DNS server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Implementation Step  

Content:
We then point these pods to the DNS server by adding an entry into their Etsy resolv.conf file, specifying that the Nameserver is at the IP address of the DNS server, which happens to be 1.96.0.1.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Implementation Step  

Content:
In this case, every time a new pod is created, we add a record in the DNS server for that pod so that other pods can access the new pod and configure the resolv.conf file in the pod to point to the DNS server, so that the new pod can resolve other pods in the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Implementation Step  

Content:
This is kind of how Kubernetes does it, except that it does not create similar entries for pods to map pod name to its IP address, as we have seen in the previous lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
It does that for services for pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
It forms hostnames by replacing dots with dashes in the IP address of the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Implementation Step  

Content:
Kubernetes implements DNS in the same way it deploys a DNS server within the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
Prior to version 1.12, the DNS server implemented by Kubernetes was known as kube DNS.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
With Kubernetes version 1.12, the DNS server is called DNS.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
We took a brief look at DNS in one of the prerequisite lectures.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
So how is the DNS setup in the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Implementation Step  

Content:
The DNS server is deployed as a pod in the kube system namespace in the Kubernetes cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Implementation Step  

Content:
Well, they are deployed as two pods for redundancy as part of a replica set.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Implementation Step  

Content:
They're actually a replica set within a deployment, but it doesn't really matter.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
But we'll just see.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
Core DNS as a pod in this lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Implementation Step  

Content:
This pod runs the core DNS executable, the same executable that we ran when we deployed core DNS ourselves.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
Core DNS requires a configuration file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
In our case we used a file named core file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
So does Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
It uses a file named Core file located at Etsy core DNS.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Implementation Step  

Content:
Within this file you have a number of plugins configured.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Troubleshooting  

Content:
The ones highlighted in orange plugins are configured for handling errors, reporting, health monitoring, metrics, cache, etc. the plugin that makes core DNS work with Kubernetes is the Kubernetes plugin, and that is where the top level domain name of the cluster is set.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
In this case cluster dot local. so every record in the core DNS DNS server falls under this domain.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Exam Tip  

Content:
With the Kubernetes plugin, there are multiple options.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
The pods option you can see here is what is responsible for creating a record for pods in the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Implementation Step  

Content:
Remember we talked about a record being created for each pod by converting the IPS into the format.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
That's disabled by default, but it can be enabled with this entry here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
Any record that the DNS server console.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Exam Tip  

Content:
For example, say a pod tries to reach w-w-w-what google.com, it is forwarded to the nameserver specified in the DNS pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
Etsy Resolv.conf file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
The Etsy resolv.conf file is set to use the nameserver from the Kubernetes node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
Also note that this core file is passed in to the pod as a config map object.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
That way, if you need to modify this configuration, you can edit the config map object.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
We now have the core DNS pod up and running using the appropriate Kubernetes plugin.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Implementation Step  

Content:
It watches the Kubernetes cluster for new pods or services, and every time a pod or service is created, it adds a record for it in its database.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Implementation Step  

Content:
Next step is for the pods to point to the core DNS server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
What address do the pods use to reach the DNS server?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Implementation Step  

Content:
When we deploy the DNS solution, it also creates a service to make it available to other components within the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
The service is named as kube DNS.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Implementation Step  

Content:
By default, the IP address of this service is configured as the Nameserver on pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Warning/Pitfall  

Content:
Now you don't have to configure this yourself.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Implementation Step  

Content:
The DNS configurations on pods are done by Kubernetes automatically when the pods are created.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Concept  

Content:
Want to guess which Kubernetes component is responsible for that?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Architecture  

Content:
The Kubelet.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Architecture  

Content:
If you look at the config file of the Kubelet, you will see the IP of the DNS server and domain in it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Implementation Step  

Content:
Once the pods are configured with the right name server, you can now resolve other pods and services.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Concept  

Content:
You can access the web service using just web service or web service default or web service default or web service default SVC cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Concept  

Content:
If you try to manually look up the web service using Nslookup or the Host Web Service command, it will return the fully qualified domain name of the web service, which happens to be Web Service default SVC cluster local.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
But you didn't ask for that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Concept  

Content:
You just set web service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Concept  

Content:
So how did it look up for the full name?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Concept  

Content:
It so happens the Resolv.conf file also has a search entry which is set to default cluster local as well as SVC local and cluster dot local.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Concept  

Content:
This allows you to find the service using any name, web service or web service default or web service default.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Concept  

Content:
However, note that it only has search entries for service, so you won't be able to reach a pod the same way.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Concept  

Content:
For that, you need to specify the full FQDN of the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Concept  

Content:
Well, that's it for this lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 69
Type: Concept  

Content:
Head over to the practice test and practice working with DNS on a Kubernetes cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Implementation Step  

Content:
I will see you in the next lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 228_CoreDNS in Kubernetes
- File: 228_CoreDNS in Kubernetes.txt
- Topic: CoreDNS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---
