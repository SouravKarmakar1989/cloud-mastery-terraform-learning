# Extraction: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 243_Configure High Availability

---

## Entry 1
Type: Concept  

Content:
We now look at high availability in Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
So what happens when you lose the master node in your cluster?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
As long as the workers are up and continuous are alive, your applications are still running.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
Users can access the application until things start to fail.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Exam Tip  

Content:
For example, a container or pod on the worker node crashes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Implementation Step  

Content:
Now, if that pod was part of a replica set, then the replication controller on the master needs to instruct the worker to load a new pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Architecture  

Content:
But the master is not available and so are the controllers and schedulers on the master.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Implementation Step  

Content:
There is no one to recreate the pod and no one to schedule it on nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Exam Tip  

Content:
Similarly, since the kube API server is not available, you cannot access the cluster externally through kube control tool or through API for management purposes, which is why you must consider multiple master nodes in a high availability configuration in your production environment.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Troubleshooting  

Content:
A high availability configuration is where you have redundancy across every component in the cluster, so as to avoid a single point of failure.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
The master nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
The worker nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
The control plane components.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Exam Tip  

Content:
The application, of course, which we already have multiple copies in the form of replica sets and services.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
So our focus in this lecture is going to be on the master and control plane components.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
Let's take a better look at how it works.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
We've been looking at a three node cluster with one master and two worker nodes throughout this course.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
In this lecture we will focus on just the master node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Architecture  

Content:
As we learned already, the master node hosts the control plane components, including the API controller, manager, scheduler and etcd server in a setup with an additional master node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
You have the same components running on the new master as well.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
So how does that work?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Exam Tip  

Content:
Running multiple instances of the same components?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
Are they going to do the same thing twice?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
How do they share the work among themselves?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
Well, that differs based on what they do.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Architecture  

Content:
Now we know that the API server is responsible for receiving requests and processing them or providing information about the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
They work on one request at a time.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Architecture  

Content:
So the API servers on all cluster nodes can be alive and running at the same time in an active active mode.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Architecture  

Content:
So far in this course, we know that the kube control utility talks to the API server to get things done, and we point the kube control utility to reach the master node at port 643.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Architecture  

Content:
That's where the API server listens.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Implementation Step  

Content:
And this is configured in the kube config file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
Well now with two masters where do we point the kube control to.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
We can send the request to either one of them.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Best Practice  

Content:
But we shouldn't be sending the same request to both of them.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Architecture  

Content:
So it is better to have a load balancer of some kind configured in the front of the master nodes that split traffic between the API servers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Implementation Step  

Content:
So we then point the kube control utility to that load balancer.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
You may use nginx or HAProxy or any other load balancer for this purpose.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Architecture  

Content:
What about the scheduler and the controller manager.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
These are controllers that watch the state of the cluster and take actions.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Troubleshooting  

Content:
For example, the controller manager consists of controllers like the replication controller that is constantly watching the state of pots and taking necessary actions like creating a new pot when one fails, etc..

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Exam Tip  

Content:
If multiple instances of these run in parallel, then they might duplicate actions resulting in more pots than actually needed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Architecture  

Content:
The same is true with scheduler.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
As such, they must not run in parallel.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
They run in an active standby mode.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Implementation Step  

Content:
So then who decides which among the two is active and which is passive?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
This is achieved through a leader election process.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
So how does that work?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Architecture  

Content:
Let's look at controller manager for instance.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Architecture  

Content:
When a controller manager process is configured, you may specify the leader elect option, which is by default set to true.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Architecture  

Content:
With this option, when the controller manager process starts, it tries to gain a lease or a lock on an endpoint object in Kubernetes named as Kube Controller Manager endpoint.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Implementation Step  

Content:
Whichever process first updates the endpoint with its information, gains the lease, and becomes the active of the two.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Concept  

Content:
The other becomes passive.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Concept  

Content:
It holds the lock for the lease duration specified using the lease duration option, which is by default set to 15 seconds.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Implementation Step  

Content:
The active process then renews the lease every 10s, which is the default value for the option.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Concept  

Content:
Leader elect.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
Renew deadline.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Concept  

Content:
Both the processes try to become the leader every two seconds set by the leader elect retry period option.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Troubleshooting  

Content:
That way, if one process fails, maybe because the first master crashes, then the second process can acquire the lock and become the leader.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Architecture  

Content:
The scheduler follows a similar approach and has the same command line options.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Architecture  

Content:
Next up etcd.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Architecture  

Content:
We discussed about etcd earlier in this course.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Concept  

Content:
It's a good idea to go through that again.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Architecture  

Content:
Now, just to quickly refresh your memory as we're going to discuss some more related topics to how etcd works.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Architecture  

Content:
In this lecture with etcd, There are two topologies that you can configure in Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Architecture  

Content:
One is as it looks here, and the same architecture that we've been following throughout this course where etcd is part of the Kubernetes master nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Concept  

Content:
It's called as a stacked control plane nodes topology.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Concept  

Content:
This is easier to set up and easier to manage and requires fewer nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Architecture  

Content:
But if one node goes down, both an etcd member and the control plane instances are lost and redundancy is compromised.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Architecture  

Content:
The other is where etcd is separated from the control plane nodes and run on its own set of servers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Comparison  

Content:
This is a topology with external etcd servers compared to the previous topology.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Architecture  

Content:
This is less risky, as a failed control plane node does not impact the etcd cluster and the data it stores.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Architecture  

Content:
However, it is harder to set up and requires twice the number of servers for the external etcd nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Architecture  

Content:
So remember, the API server is the only component that talks to the etcd server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Architecture  

Content:
And if you look into the API service configuration options, we have a set of options specifying where the etcd server is.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Architecture  

Content:
So regardless of the topology we use and wherever we configure etcd servers, whether on the same server or on a separate server, ultimately we need to make sure that the API server is pointing to the right address of the etcd servers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Architecture  

Content:
Now remember etcd is a distributed system, so the API server or any other component that wishes to talk to it can reach etcd server at any of its instances.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Architecture  

Content:
You can read and write data to any of the available etcd server instances.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Architecture  

Content:
This is why we specify a list of etcd servers in the kube API server configuration.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Best Practice  

Content:
In the next lecture, we discuss more about how etcd server works in a cluster setup and the best practices around the number of recommended nodes in a cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Concept  

Content:
So back to our design.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 81
Type: Concept  

Content:
We had originally planned for a single master node in our cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Exam Tip  

Content:
Now with Ha, we decided to configure multiple masters.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Architecture  

Content:
We also mentioned about a load balancer for the API server, so we will have that as well.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 84
Type: Concept  

Content:
So we now have a total of five nodes in our cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 243_Configure High Availability
- File: 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
