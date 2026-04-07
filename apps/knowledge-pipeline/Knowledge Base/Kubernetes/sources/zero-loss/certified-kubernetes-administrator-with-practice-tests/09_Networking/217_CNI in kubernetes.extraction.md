# Extraction: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 217_CNI in kubernetes

---

## Entry 1
Type: Concept  

Content:
This lecture will discuss about CNI in Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 217_CNI in kubernetes
- File: 217_CNI in kubernetes.txt
- Topic: CNI in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
In the prerequisite lectures we started all the way from the absolute basics of network namespaces.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 217_CNI in kubernetes
- File: 217_CNI in kubernetes.txt
- Topic: CNI in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Implementation Step  

Content:
Then we saw how it is done in Docker.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 217_CNI in kubernetes
- File: 217_CNI in kubernetes.txt
- Topic: CNI in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Implementation Step  

Content:
We then discussed why you need standards for networking containers and how the container network interface came to be.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 217_CNI in kubernetes
- File: 217_CNI in kubernetes.txt
- Topic: CNI in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Implementation Step  

Content:
And then we saw a list of supported plugins available with CNI.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 217_CNI in kubernetes
- File: 217_CNI in kubernetes.txt
- Topic: CNI in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Implementation Step  

Content:
In this lecture we will see how Kubernetes is configured to use these network plugins.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 217_CNI in kubernetes
- File: 217_CNI in kubernetes.txt
- Topic: CNI in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Operational Insight  

Content:
As we discussed in the prerequisite lecture, CNI defines the responsibilities of container runtime as per CNI container runtimes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 217_CNI in kubernetes
- File: 217_CNI in kubernetes.txt
- Topic: CNI in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
In our case, Kubernetes is responsible for creating container network namespaces, identifying and attaching those namespaces to the right network by calling the right network plugin.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 217_CNI in kubernetes
- File: 217_CNI in kubernetes.txt
- Topic: CNI in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
So where do we specify the CNI plugins for Kubernetes to use?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 217_CNI in kubernetes
- File: 217_CNI in kubernetes.txt
- Topic: CNI in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Implementation Step  

Content:
The CNI plugin must be invoked by the component within Kubernetes that is responsible for creating containers, because that component must then invoke the appropriate network plugin after the container is created, the component that is responsible for creating containers is the container runtime.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 217_CNI in kubernetes
- File: 217_CNI in kubernetes.txt
- Topic: CNI in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Exam Tip  

Content:
The two good examples are Containerd and Cri-o.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 217_CNI in kubernetes
- File: 217_CNI in kubernetes.txt
- Topic: CNI in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Operational Insight  

Content:
Not that Docker was the original container runtime, which was later replaced by an abstraction called container D, which we kind of explained in the beginning of this course.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 217_CNI in kubernetes
- File: 217_CNI in kubernetes.txt
- Topic: CNI in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
Now, we discussed earlier that there are many network plugins available today.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 217_CNI in kubernetes
- File: 217_CNI in kubernetes.txt
- Topic: CNI in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Implementation Step  

Content:
How do you configure these container runtimes to use a particular plugin?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 217_CNI in kubernetes
- File: 217_CNI in kubernetes.txt
- Topic: CNI in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Implementation Step  

Content:
First of all, the network plugins are all installed in the directory op cni bin.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 217_CNI in kubernetes
- File: 217_CNI in kubernetes.txt
- Topic: CNI in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Operational Insight  

Content:
So that's where the container runtimes find the plugins.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 217_CNI in kubernetes
- File: 217_CNI in kubernetes.txt
- Topic: CNI in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Implementation Step  

Content:
But which plugin to use and how to use it is configured in the directory forward slash forward slash CNI forward slash net d.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 217_CNI in kubernetes
- File: 217_CNI in kubernetes.txt
- Topic: CNI in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Exam Tip  

Content:
There may be multiple configuration files in this directory that's responsible for configuring each plugin.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 217_CNI in kubernetes
- File: 217_CNI in kubernetes.txt
- Topic: CNI in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
If you look at the CNI bin directory, you'll see that it has all the supported CNI plugins as executables such as the bridge, DHCP, flannel, etc. the CNI config directory has a set of configuration files.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 217_CNI in kubernetes
- File: 217_CNI in kubernetes.txt
- Topic: CNI in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Operational Insight  

Content:
This is where container runtime looks to find out which plugin needs to be used.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 217_CNI in kubernetes
- File: 217_CNI in kubernetes.txt
- Topic: CNI in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
In this case it finds the bridge configuration file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 217_CNI in kubernetes
- File: 217_CNI in kubernetes.txt
- Topic: CNI in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Exam Tip  

Content:
If there are multiple files here, it will choose the one in alphabetical order.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 217_CNI in kubernetes
- File: 217_CNI in kubernetes.txt
- Topic: CNI in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
If you look at the bridge conf file, it looks like this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 217_CNI in kubernetes
- File: 217_CNI in kubernetes.txt
- Topic: CNI in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
This is a format defined by the CNI standard for a plugin configuration file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 217_CNI in kubernetes
- File: 217_CNI in kubernetes.txt
- Topic: CNI in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
Its name is minute.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 217_CNI in kubernetes
- File: 217_CNI in kubernetes.txt
- Topic: CNI in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
Type is bridge.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 217_CNI in kubernetes
- File: 217_CNI in kubernetes.txt
- Topic: CNI in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
It also has a set of other configurations which we can relate to.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 217_CNI in kubernetes
- File: 217_CNI in kubernetes.txt
- Topic: CNI in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
The concepts we discussed in the prerequisite lectures on bridging, routing and masquerading in Nat.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 217_CNI in kubernetes
- File: 217_CNI in kubernetes.txt
- Topic: CNI in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Best Practice  

Content:
D is gateway defines whether the bridge interface should get an IP address assigned so it can act as a gateway.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 217_CNI in kubernetes
- File: 217_CNI in kubernetes.txt
- Topic: CNI in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Best Practice  

Content:
The IP masquerade defines if a Nat rule should be added for IP masquerading.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 217_CNI in kubernetes
- File: 217_CNI in kubernetes.txt
- Topic: CNI in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
The iPam section defines iPam configuration.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 217_CNI in kubernetes
- File: 217_CNI in kubernetes.txt
- Topic: CNI in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
This is where you specify the subnet or range of IP addresses that will be assigned to pods and any necessary routes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 217_CNI in kubernetes
- File: 217_CNI in kubernetes.txt
- Topic: CNI in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
The type host local indicates that the IP addresses are managed locally on this host, unlike a DHCP server maintaining it remotely.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 217_CNI in kubernetes
- File: 217_CNI in kubernetes.txt
- Topic: CNI in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Implementation Step  

Content:
The type can also be set to DHCP to configure an external DHCP server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 217_CNI in kubernetes
- File: 217_CNI in kubernetes.txt
- Topic: CNI in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
Well, that's it for this lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 217_CNI in kubernetes
- File: 217_CNI in kubernetes.txt
- Topic: CNI in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 36
Type: Concept  

Content:
Head over to the practice exercises and practice working with CNI in Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 217_CNI in kubernetes
- File: 217_CNI in kubernetes.txt
- Topic: CNI in kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
