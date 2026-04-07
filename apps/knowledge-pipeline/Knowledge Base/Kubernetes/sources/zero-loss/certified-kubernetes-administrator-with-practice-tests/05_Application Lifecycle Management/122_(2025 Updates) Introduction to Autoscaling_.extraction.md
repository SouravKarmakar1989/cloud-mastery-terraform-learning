# Extraction: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 122_(2025 Updates) Introduction to Autoscaling_

---

## Entry 1
Type: Exam Tip  

Content:
In the next few videos, we will talk about auto scaling from an exam point of view.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
We're going to talk about horizontal pod auto scaling or HPA vertical pod auto scaling or VPA.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Exam Tip  

Content:
And because this is only one of the topics for the exam, we're going to keep it as light as possible.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
However, note that this is a vast topic and we have an entire course just for it on code cloud called as Kubernetes Auto Scaling.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
So I highly recommend you check that out.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Implementation Step  

Content:
Okay, now before we begin to look at auto scaling, let's look at what scaling means in the first place.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
So let's forget about Kubernetes and containers for a second and go back to the plain old servers and apps hosted on physical servers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
And so if you go back in time, millions and millions of years ago, when we used to host applications on physical servers with a predefined CPU and memory capacity.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
And what happens when the load increases and we run out of existing resources on the server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
Now we need to scale up the server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Implementation Step  

Content:
So we took down the application and added more CPU or memory resources to it and then powered it back up.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
And that's referred to as vertical scaling.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
So as you just saw we basically increase the size of the existing server vertically.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
We added more resources to our existing server by adding more CPU and memory components to it vertically.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Exam Tip  

Content:
And so that's vertical scaling if the application supported running in multiple instances.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Best Practice  

Content:
Another thing we could have done is that we could have avoided having to shut down the server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
Instead, we could have added more servers to it and shared load between them.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
So running more instances of the application by adding more servers is known as horizontal scaling.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
So that's the basics of scaling.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
Vertical scaling refers to adding more resources to existing application, and horizontal scaling refers to adding more instances or more servers to your system.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
Now let's look at how that relates to Kubernetes and the container world.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Implementation Step  

Content:
When we first introduced Kubernetes, we mentioned that one of the major purposes of a container orchestrator like Kubernetes is to host applications in the form of containers and scale up and down based on demand.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
So there are two types of scaling in Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
What we just spoke about, uh, is scaling workloads.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
So you can scale the workloads by adding or removing containers or pods onto the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
Another approach to scaling is scaling the underlying cluster itself.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
So that's adding or removing more servers or infrastructure to your cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
So there's scaling workloads and scaling the cluster infra.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
So let's look at what these mean.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
So there are two ways of scaling these individually.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
So there's horizontal and vertical scaling.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
So when it comes to the cluster horizontal scaling refers to adding more nodes to the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
Vertical scaling would mean increasing the resources on existing nodes in the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
When it comes to scaling workloads, horizontal scaling would mean creating more pods and vertical scaling would mean increasing the resources allocated to existing pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
Now let's talk about the how.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
So there are two ways of scaling.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
There's the manual way and the automated way.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Implementation Step  

Content:
The manual approach of horizontally scaling cluster infra would be to manually provision new nodes and then use the kube adm join command to add new nodes to the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Warning/Pitfall  

Content:
When it comes to vertical scaling, I don't think that's a common approach used for Kubernetes, because it would result in having to take down the server and applications running on them, and then add more resources to the servers and bring it back up, which is not something that we would want to do.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
So since most of the infra these days are virtual machines, you could easily provision a server with higher resources, add it to the cluster and remove the older server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Warning/Pitfall  

Content:
So I don't think vertical scaling is that common of an approach.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
Now when it comes to horizontal scaling Rescaling workloads.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
The manual approach would be to run the kubectl scale command on the workload, to scale up or down the number of pods, and to vertically scale resources associated to a pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Implementation Step  

Content:
You would usually run the kubectl edit command to go in to that deployment or stateful set or replica set, and change the resource limits and requests associated with the pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
Now we will dive into more details about each of these in the upcoming lectures, but I'm just giving you a high level overview right now.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
Now, now that we have discussed all of this, finally let's look at the automated approach.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
So for horizontally scaling the infra we have what is known as the Kubernetes cluster autoscaler.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
For horizontally scaling the workloads we have what is known as the horizontal pod autoscaler or HPA.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
And for vertically scaling workloads we have the vertical Pod autoscaler.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Concept  

Content:
So that, my friends, are the topic of discussion for the rest of this section.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Implementation Step  

Content:
I'll see you in the next video.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 122_(2025 Updates) Introduction to Autoscaling_
- File: 122_(2025 Updates) Introduction to Autoscaling_.txt
- Topic: (2025 Updates) Introduction to Autoscaling_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
