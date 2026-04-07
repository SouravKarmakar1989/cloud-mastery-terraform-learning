# Extraction: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 013_Kube-API Server

---

## Entry 1
Type: Architecture  

Content:
In this lecture we will talk about the cube API server in Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 013_Kube-API Server
- File: 013_Kube-API Server.txt
- Topic: Kube-API Server
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Architecture  

Content:
Earlier we discussed that the cube API server is the primary management component in Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 013_Kube-API Server
- File: 013_Kube-API Server.txt
- Topic: Kube-API Server
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Architecture  

Content:
When you run a cube control command, the cube control utility is in fact reaching to the cube API server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 013_Kube-API Server
- File: 013_Kube-API Server.txt
- Topic: Kube-API Server
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Architecture  

Content:
The cube API server first authenticates the request and validates it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 013_Kube-API Server
- File: 013_Kube-API Server.txt
- Topic: Kube-API Server
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Architecture  

Content:
It then retrieves the data from the etcd cluster and responds back with the requested information.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 013_Kube-API Server
- File: 013_Kube-API Server.txt
- Topic: Kube-API Server
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Warning/Pitfall  

Content:
You don't really need to use the cube control command line instead.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 013_Kube-API Server
- File: 013_Kube-API Server.txt
- Topic: Kube-API Server
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
You could also invoke the APIs directly by sending a Post request like this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 013_Kube-API Server
- File: 013_Kube-API Server.txt
- Topic: Kube-API Server
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Exam Tip  

Content:
Let's look at an example of creating a pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 013_Kube-API Server
- File: 013_Kube-API Server.txt
- Topic: Kube-API Server
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Implementation Step  

Content:
When you do that, as before, the request is authenticated first and then validated.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 013_Kube-API Server
- File: 013_Kube-API Server.txt
- Topic: Kube-API Server
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Architecture  

Content:
In this case, the API server creates a Pod object without assigning it to a node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 013_Kube-API Server
- File: 013_Kube-API Server.txt
- Topic: Kube-API Server
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Architecture  

Content:
Updates the information in the etcd server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 013_Kube-API Server
- File: 013_Kube-API Server.txt
- Topic: Kube-API Server
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Implementation Step  

Content:
Updates the user that the pod has been created.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 013_Kube-API Server
- File: 013_Kube-API Server.txt
- Topic: Kube-API Server
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Architecture  

Content:
The scheduler continuously monitors the API server and realizes that there is a new pod with no node assigned.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 013_Kube-API Server
- File: 013_Kube-API Server.txt
- Topic: Kube-API Server
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Architecture  

Content:
The scheduler identifies the right node to place the new pod part on and communicates that back to the cube API server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 013_Kube-API Server
- File: 013_Kube-API Server.txt
- Topic: Kube-API Server
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Architecture  

Content:
The API server then updates the information in the etcd cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 013_Kube-API Server
- File: 013_Kube-API Server.txt
- Topic: Kube-API Server
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Architecture  

Content:
The API server then passes that information to the Kubelet in the appropriate worker node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 013_Kube-API Server
- File: 013_Kube-API Server.txt
- Topic: Kube-API Server
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Architecture  

Content:
The Kubelet then creates the pod on the node and instructs the container runtime engine to deploy the application image.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 013_Kube-API Server
- File: 013_Kube-API Server.txt
- Topic: Kube-API Server
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Architecture  

Content:
Once done, the Kubelet updates the status back to the API server, and the API server then updates the data back in the etcd cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 013_Kube-API Server
- File: 013_Kube-API Server.txt
- Topic: Kube-API Server
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
A similar pattern is followed every time a change is requested.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 013_Kube-API Server
- File: 013_Kube-API Server.txt
- Topic: Kube-API Server
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Architecture  

Content:
The kube API server is at the center of all the different tasks that needs to be performed to make a change in the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 013_Kube-API Server
- File: 013_Kube-API Server.txt
- Topic: Kube-API Server
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Architecture  

Content:
To summarize, the kube API server is responsible for authenticating and validating requests, retrieving and updating data in the etcd data store.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 013_Kube-API Server
- File: 013_Kube-API Server.txt
- Topic: Kube-API Server
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Architecture  

Content:
In fact, kube API server is the only component that interacts directly with the etcd data store.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 013_Kube-API Server
- File: 013_Kube-API Server.txt
- Topic: Kube-API Server
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Architecture  

Content:
The other components, such as the scheduler, kube, controller, manager, and Kubelet uses the API server to perform updates in the cluster in their respective areas.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 013_Kube-API Server
- File: 013_Kube-API Server.txt
- Topic: Kube-API Server
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Warning/Pitfall  

Content:
If you bootstrapped your cluster using kube admin tool, Then you don't need to know this, but if you are setting up the hard way, then the cube API server is available as a binary in the Kubernetes release page.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 013_Kube-API Server
- File: 013_Kube-API Server.txt
- Topic: Kube-API Server
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Implementation Step  

Content:
Download it and configure it to run as a service on your Kubernetes master node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 013_Kube-API Server
- File: 013_Kube-API Server.txt
- Topic: Kube-API Server
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Architecture  

Content:
The cube API server is run with a lot of parameters, as you can see here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 013_Kube-API Server
- File: 013_Kube-API Server.txt
- Topic: Kube-API Server
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Architecture  

Content:
Throughout this section, we're going to take a peek at how to install and configure these individual components of the Kubernetes architecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 013_Kube-API Server
- File: 013_Kube-API Server.txt
- Topic: Kube-API Server
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Warning/Pitfall  

Content:
You don't have to understand all of the options right now, but I think having a high level understanding on some of these now will make it easier later when we configure the whole cluster and all of its components from scratch.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 013_Kube-API Server
- File: 013_Kube-API Server.txt
- Topic: Kube-API Server
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Architecture  

Content:
The Kubernetes architecture consists of a lot of different components working with each other, talking to each other in many different ways.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 013_Kube-API Server
- File: 013_Kube-API Server.txt
- Topic: Kube-API Server
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
So they all need to know where the other components are.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 013_Kube-API Server
- File: 013_Kube-API Server.txt
- Topic: Kube-API Server
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Implementation Step  

Content:
There are different modes of authentication, authorization, encryption, and security, and that's why you have so many options.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 013_Kube-API Server
- File: 013_Kube-API Server.txt
- Topic: Kube-API Server
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
When we go through the relevant section in the course, we will pull up this file and look at the relevant options.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 013_Kube-API Server
- File: 013_Kube-API Server.txt
- Topic: Kube-API Server
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
For now, we will look at a few important ones.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 013_Kube-API Server
- File: 013_Kube-API Server.txt
- Topic: Kube-API Server
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
A lot of them are certificates that are used to secure the connectivity between different components.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 013_Kube-API Server
- File: 013_Kube-API Server.txt
- Topic: Kube-API Server
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
We look at these certificates in more detail when we go through the SSL TLS certificates lecture later in this course.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 013_Kube-API Server
- File: 013_Kube-API Server.txt
- Topic: Kube-API Server
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
There is a whole section just for it, so we will get rid of them for now.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 013_Kube-API Server
- File: 013_Kube-API Server.txt
- Topic: Kube-API Server
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
But just remember all of the various components we are going to look at in this section will have certificates associated with them.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 013_Kube-API Server
- File: 013_Kube-API Server.txt
- Topic: Kube-API Server
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Architecture  

Content:
The option etcd servers is where you specify the location of the etcd servers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 013_Kube-API Server
- File: 013_Kube-API Server.txt
- Topic: Kube-API Server
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Architecture  

Content:
This is how the kube API server connects to the etcd servers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 013_Kube-API Server
- File: 013_Kube-API Server.txt
- Topic: Kube-API Server
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Architecture  

Content:
So how do you view the kube API server options in an existing cluster?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 013_Kube-API Server
- File: 013_Kube-API Server.txt
- Topic: Kube-API Server
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
It depends on how you set up your cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 013_Kube-API Server
- File: 013_Kube-API Server.txt
- Topic: Kube-API Server
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Architecture  

Content:
If you set it up with a kube admin tool, the kube admin deploys the kube API server as a pod in the kube system namespace on the master node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 013_Kube-API Server
- File: 013_Kube-API Server.txt
- Topic: Kube-API Server
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
You can see the options within the pod definition file located at Etsy Kubernetes manifest folder in a non kube admin setup.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 013_Kube-API Server
- File: 013_Kube-API Server.txt
- Topic: Kube-API Server
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Architecture  

Content:
You can inspect the options by viewing the kube API server service located at Etsy systemd system Kube apiserver dot service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 013_Kube-API Server
- File: 013_Kube-API Server.txt
- Topic: Kube-API Server
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Architecture  

Content:
You can also see the running process and the effective options by listing the process on the master node and searching for kube API server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 013_Kube-API Server
- File: 013_Kube-API Server.txt
- Topic: Kube-API Server
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
Well, that's it for this lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 013_Kube-API Server
- File: 013_Kube-API Server.txt
- Topic: Kube-API Server
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---
