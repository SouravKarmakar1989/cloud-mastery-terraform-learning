# Extraction: certified-kubernetes-application-developer / 02_Core Concepts / 010_Recap - Pods

---

## Entry 1
Type: Concept  

Content:
Before we head into understanding pods, we would like to assume that the following have been set up already.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 2
Type: Concept  

Content:
At this point, we assume that the application is already developed and built into Docker images, and it is available on Docker repository like Docker Hub, so Kubernetes can pull it down.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 3
Type: Concept  

Content:
We also assume that the Kubernetes cluster has already been set up and is working.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 4
Type: Concept  

Content:
This could be a single node setup or a multi-node setup.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
Doesn't matter.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 6
Type: Concept  

Content:
All the services need to be in a running state.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Implementation Step  

Content:
As we discussed before with Kubernetes, our ultimate aim is to deploy our application in the form of containers on a set of machines that are configured as worker nodes in a cluster.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Implementation Step  

Content:
However, Kubernetes does not deploy containers directly on the worker nodes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 9
Type: Concept  

Content:
The containers are encapsulated into a Kubernetes object known as pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 10
Type: Concept  

Content:
A pod is a single instance of an application.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 11
Type: Implementation Step  

Content:
A pod is the smallest object that you can create in Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 12
Type: Concept  

Content:
Here we see the simplest of simplest cases, where you have a single node Kubernetes cluster with a single instance of your application running in a single Docker container encapsulated in a pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 13
Type: Concept  

Content:
What if the number of users accessing your application increase and you need to scale your application?

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 14
Type: Concept  

Content:
You need to add additional instances of your web application to share the load.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 15
Type: Concept  

Content:
Now where would you spin up additional instances?

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 16
Type: Concept  

Content:
Do we bring up new container instance within the same pod?

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
No.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 18
Type: Implementation Step  

Content:
We create new pod altogether with a new instance of the same application.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 19
Type: Concept  

Content:
As you can see, we now have two instances of our web application running on two separate pods on the same Kubernetes system or node.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 20
Type: Concept  

Content:
What is the user base further increases and your current node has no sufficient capacity.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Implementation Step  

Content:
Well, then you can always deploy additional pods on a new node in the cluster.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 22
Type: Concept  

Content:
You will have a new node added to the cluster to expand the cluster's physical capacity.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 23
Type: Concept  

Content:
So what I'm trying to illustrate in this slide is that pods usually have a 1 to 1 relationship, with containers running your application.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 24
Type: Implementation Step  

Content:
To scale up, you create new pods, and to scale down you delete existing pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 25
Type: Warning/Pitfall  

Content:
You do not add additional containers to an existing pod to scale your application.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 26
Type: Concept  

Content:
Also, if you're wondering how we implement all of this and how we achieve load balancing between the containers, etc., we will get into all of that in a later lecture.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
For now, we are only trying to understand the basic concepts.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 28
Type: Concept  

Content:
We just said that pods usually have a 1 to 1 relationship with the containers.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 29
Type: Concept  

Content:
But are we restricted to having a single container in a single pod?

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 30
Type: Concept  

Content:
No.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 31
Type: Exam Tip  

Content:
A single pod can have multiple containers, except for the fact that they're usually not multiple containers of the same kind.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 32
Type: Implementation Step  

Content:
As we discussed in the previous slide, if our intention was to scale our application, then we would need to create additional pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 33
Type: Concept  

Content:
But sometimes you might have a scenario where you have a helper container that might be doing some kind of supporting task for our web application, such as processing a user entered data, processing a file uploaded by the user, etc. and you want these helper containers to live alongside your application container.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 34
Type: Implementation Step  

Content:
In that case, you can have both of these containers part of the same pod, so that when a new application container is created.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 35
Type: Implementation Step  

Content:
The helper is also created and when it dies, the helper also dies.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 36
Type: Concept  

Content:
Since they are part of the same pod, the two containers can also communicate with each other directly by referring to each other as localhost, since they share the same network space.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
Plus, they can easily share the same storage space as well.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 38
Type: Concept  

Content:
If you still have doubts in this topic, I would understand if you did, because I did.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 39
Type: Implementation Step  

Content:
The first time I learned these concepts, we could take another shot at understanding pods from a different angle.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 40
Type: Concept  

Content:
Let's for a moment keep Kubernetes out of our discussion and talk about simple Docker containers.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 41
Type: Implementation Step  

Content:
Let's assume we were developing a process or a script to deploy our application on a Docker host.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 42
Type: Implementation Step  

Content:
Then we would first simply deploy our application using a simple Docker run Python app command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 43
Type: Concept  

Content:
And the application runs fine and our users are able to access it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 44
Type: Implementation Step  

Content:
When the load increases, we deploy more instances of our application by running the Docker run commands many more times.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 45
Type: Concept  

Content:
This works fine and we're all happy.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 46
Type: Concept  

Content:
Now, sometime in the future, our application is further developed, undergoes architectural changes, and grows and gets complex.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 47
Type: Concept  

Content:
We now have a new helper container that helps our web application by processing or fetching data from elsewhere.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 48
Type: Concept  

Content:
These helper containers maintain a 1 to 1 relationship with our application container, and thus needs to communicate with the application containers directly and access data from those containers.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 49
Type: Concept  

Content:
For this, we need to maintain a map of what app and helper containers are connected to each other.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 50
Type: Concept  

Content:
We would need to establish network connectivity between these containers ourselves using links and custom networks.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 51
Type: Implementation Step  

Content:
We would need to create shareable volumes and share it among the containers.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 52
Type: Concept  

Content:
We would need to maintain a map of that as well.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 53
Type: Concept  

Content:
And most importantly, we would need to monitor the state of the application container.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Concept  

Content:
And when it dies, manually kill the container as well as it's no longer required.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Implementation Step  

Content:
When a new container is deployed, we would need to deploy the new container as well.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
With pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Concept  

Content:
Kubernetes does all of this for us automatically.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 58
Type: Concept  

Content:
We just need to define what containers a pod consists of.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Implementation Step  

Content:
And the containers in a pod by default will have access to the same storage, the same network namespace, and same fate as in they will be created together and destroyed together.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Implementation Step  

Content:
Even if our application didn't happen to be so complex and we could live with a single container, Kubernetes still requires you to create pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
But this is good in the long run as your application is now equipped for architectural changes and scale in the future.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Concept  

Content:
However, also note that multi-part containers are a rare use case, and we're going to stick to single containers per pod in this course.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 63
Type: Implementation Step  

Content:
Let us now look at how to deploy pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 64
Type: Concept  

Content:
Earlier we learned about the Kube control run command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 65
Type: Implementation Step  

Content:
What this command really does is it deploys a Docker container by creating a pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 66
Type: Implementation Step  

Content:
So it first creates a pod automatically and deploys an instance of the nginx docker image.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 67
Type: Concept  

Content:
But where does it get the application image from?

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 68
Type: Concept  

Content:
For that you need to specify the image name using the image parameter.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
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
The application image.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 70
Type: Concept  

Content:
In this case the nginx image is downloaded from the Docker Hub repository.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 71
Type: Command  

Command:
```bash
Docker hub, as we discussed, is a public repository where latest Docker images of various applications are stored.
```

Explanation:
- Command preserved exactly as transcript evidence.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Implementation Step  

Content:
You could configure Kubernetes to pull the image from the public Docker hub or a private repository within the organization.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 73
Type: Implementation Step  

Content:
Now that we have a pod created, how do we see the list of pods available?

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 74
Type: Concept  

Content:
The Kube control get pods command helps us see the list of pods in our cluster.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 75
Type: Concept  

Content:
In this case, we see the pod is in a container creating state and soon changes to a running state when it is actually running.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 76
Type: Concept  

Content:
Also, remember that we haven't really talked about the concepts on how a user can access the nginx web server, and so in the current state, we haven't made the web server accessible to external users.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 77
Type: Operational Insight  

Content:
You can access it internally from the node.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 78
Type: Implementation Step  

Content:
But for now we will just see how to deploy a pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 79
Type: Concept  

Content:
And later in a later lecture, once we learn about networking and services, we will get to know how to make the service accessible to end users.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Concept  

Content:
Well, that's it for this lecture.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 81
Type: Implementation Step  

Content:
Head over to a demo and I will see you in the next one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 010_Recap - Pods
- File: 010_Recap - Pods.txt
- Topic: Recap - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---
