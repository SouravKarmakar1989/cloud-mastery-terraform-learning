# Extraction: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler

---

## Entry 1
Type: Architecture  

Content:
In this lecture we will talk about kube scheduler.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 015_Kube Scheduler
- File: 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Architecture  

Content:
Earlier we discussed that the Kubernetes Scheduler is responsible for scheduling pods and nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 015_Kube Scheduler
- File: 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Warning/Pitfall  

Content:
Now don't let the graphic mislead you.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 015_Kube Scheduler
- File: 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Architecture  

Content:
Remember the scheduler is only responsible for deciding which pod goes on which node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 015_Kube Scheduler
- File: 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
It doesn't actually place the pod on the nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 015_Kube Scheduler
- File: 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Architecture  

Content:
That's the job of the kubelet.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 015_Kube Scheduler
- File: 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Architecture  

Content:
The Kubelet or the captain on the ship is who creates the pod on the ships.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 015_Kube Scheduler
- File: 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Architecture  

Content:
The scheduler only decides which pod goes where.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 015_Kube Scheduler
- File: 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Architecture  

Content:
Let's look at how the scheduler does that in a bit more detail.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 015_Kube Scheduler
- File: 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Architecture  

Content:
First of all, why do you need scheduler when there are many ships and many containers?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 015_Kube Scheduler
- File: 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
You want to make sure that the right container ends up on the right ship.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 015_Kube Scheduler
- File: 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Exam Tip  

Content:
For example, there could be different sizes of ships and containers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 015_Kube Scheduler
- File: 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
You want to make sure the ship has sufficient capacity to accommodate those containers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 015_Kube Scheduler
- File: 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
Different ships may be going to different destinations.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 015_Kube Scheduler
- File: 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
You want to make sure your containers are placed on the right ships, so they end up in the right destination.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 015_Kube Scheduler
- File: 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Architecture  

Content:
In Kubernetes, the scheduler decides which nodes the pods are placed on.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 015_Kube Scheduler
- File: 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
Depending on certain criteria, you may have pods with different resource requirements.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 015_Kube Scheduler
- File: 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
You can have nodes in the cluster dedicated to certain applications.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 015_Kube Scheduler
- File: 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Architecture  

Content:
So how does the scheduler assign these pods?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 015_Kube Scheduler
- File: 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Architecture  

Content:
The scheduler looks at each pod and tries to find the best node for it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 015_Kube Scheduler
- File: 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Exam Tip  

Content:
For example, let's take one of these pods, the big blue one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 015_Kube Scheduler
- File: 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
It has a set of CPU and memory requirements.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 015_Kube Scheduler
- File: 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Architecture  

Content:
The scheduler goes through two phases to identify the best node for the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 015_Kube Scheduler
- File: 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Warning/Pitfall  

Content:
In the first phase, the scheduler tries to filter out the nodes that do not fit the profile for this pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 015_Kube Scheduler
- File: 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Warning/Pitfall  

Content:
For example, the nodes that do not have sufficient CPU and memory resources requested by the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 015_Kube Scheduler
- File: 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Implementation Step  

Content:
So the first two nodes are filtered out.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 015_Kube Scheduler
- File: 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
So we are now left with the two nodes on which the pod can be placed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 015_Kube Scheduler
- File: 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Architecture  

Content:
Now how does the scheduler pick one from the two?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 015_Kube Scheduler
- File: 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Architecture  

Content:
The scheduler ranks the nodes to identify the best fit for the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 015_Kube Scheduler
- File: 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
It uses a priority function to assign a score to the nodes on a scale of 0 to 10.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 015_Kube Scheduler
- File: 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Exam Tip  

Content:
For example, the scheduler calculates the amount of resources that would be free on the nodes after placing the pod on them.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 015_Kube Scheduler
- File: 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
In this case, the one on the right would have six CPUs free if the pod was placed on it, which is four more than the other one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 015_Kube Scheduler
- File: 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
So it gets a better rank.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 015_Kube Scheduler
- File: 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
And so it wins.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 015_Kube Scheduler
- File: 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Architecture  

Content:
So that's how a scheduler works at a high level.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 015_Kube Scheduler
- File: 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Architecture  

Content:
And of course these can be customized and you can write your own scheduler as well.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 015_Kube Scheduler
- File: 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
There are many more topics to look at such as resource requirements, limits taints and tolerations.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 015_Kube Scheduler
- File: 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
Node selectors, affinity rules, etc. which is why we have an entire section dedicated to scheduling coming up in this course, where we will discuss each of these in much more detail.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 015_Kube Scheduler
- File: 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Architecture  

Content:
For now, we will continue to focus on the scheduler as a process at a high level.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 015_Kube Scheduler
- File: 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Architecture  

Content:
So how do you install the scheduler?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 015_Kube Scheduler
- File: 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Architecture  

Content:
Download the kube scheduler binary from the Kubernetes release page, extract it and run it as a service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 015_Kube Scheduler
- File: 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Architecture  

Content:
When you run it as a service, you specify the scheduler configuration file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 015_Kube Scheduler
- File: 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Architecture  

Content:
So how do you view the kube scheduler server options?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 015_Kube Scheduler
- File: 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Architecture  

Content:
Again, if you set it up with the kube adm tool, the kube adm tool deploys the kube scheduler as a pod in the kube system namespace on the master node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 015_Kube Scheduler
- File: 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
You can see the options within the pod definition file located at Kubernetes manifest folder.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 015_Kube Scheduler
- File: 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Architecture  

Content:
You can also see the running process and the effective options by listing the process on the master node and searching for kube scheduler.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 015_Kube Scheduler
- File: 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
Well, that's it for this lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 015_Kube Scheduler
- File: 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 48
Type: Implementation Step  

Content:
I will see you in the next.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 015_Kube Scheduler
- File: 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---
