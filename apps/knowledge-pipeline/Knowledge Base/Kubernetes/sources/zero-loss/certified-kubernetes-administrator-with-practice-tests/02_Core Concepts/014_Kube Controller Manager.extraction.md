# Extraction: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 014_Kube Controller Manager

---

## Entry 1
Type: Architecture  

Content:
In this lecture we will talk about Kube Controller Manager.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 014_Kube Controller Manager
- File: 014_Kube Controller Manager.txt
- Topic: Kube Controller Manager
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Architecture  

Content:
As we discussed earlier, the Kube controller manager manages various controllers in Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 014_Kube Controller Manager
- File: 014_Kube Controller Manager.txt
- Topic: Kube Controller Manager
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
A controller is like an office or department within the master ship that have their own set of responsibilities, such as an office for the ships would be responsible for monitoring and taking necessary actions about the ships.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 014_Kube Controller Manager
- File: 014_Kube Controller Manager.txt
- Topic: Kube Controller Manager
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
Whenever a new ship arrives, or when a ship leaves or gets destroyed, another office could be one that manages the containers on the ships.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 014_Kube Controller Manager
- File: 014_Kube Controller Manager.txt
- Topic: Kube Controller Manager
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
They take care of containers that are damaged or fall off ships.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 014_Kube Controller Manager
- File: 014_Kube Controller Manager.txt
- Topic: Kube Controller Manager
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
So these offices are, number one, continuously on the lookout for the status of the ships, and two, takes necessary actions to remediate the situation.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 014_Kube Controller Manager
- File: 014_Kube Controller Manager.txt
- Topic: Kube Controller Manager
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
In the Kubernetes terms, a controller is a process that continuously monitors the state of various components within the system, and works towards bringing the whole system to the desired functioning state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 014_Kube Controller Manager
- File: 014_Kube Controller Manager.txt
- Topic: Kube Controller Manager
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Exam Tip  

Content:
For example, the node controller is responsible for monitoring the status of the notes and taking necessary actions to keep the applications running.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 014_Kube Controller Manager
- File: 014_Kube Controller Manager.txt
- Topic: Kube Controller Manager
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Architecture  

Content:
It does that through the cube API server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 014_Kube Controller Manager
- File: 014_Kube Controller Manager.txt
- Topic: Kube Controller Manager
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
The node controller checks the status of the nodes every five seconds.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 014_Kube Controller Manager
- File: 014_Kube Controller Manager.txt
- Topic: Kube Controller Manager
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
That way the node controller can monitor the health of the nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 014_Kube Controller Manager
- File: 014_Kube Controller Manager.txt
- Topic: Kube Controller Manager
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
If it stops receiving heartbeat from a node, the node is marked as unreachable, but it waits for 40s before marking it unreachable.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 014_Kube Controller Manager
- File: 014_Kube Controller Manager.txt
- Topic: Kube Controller Manager
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
After a node is marked unreachable, it gives it five minutes to come back up.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 014_Kube Controller Manager
- File: 014_Kube Controller Manager.txt
- Topic: Kube Controller Manager
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
If it doesn't, it removes the pods assigned to that node and provisions them on the healthy ones.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 014_Kube Controller Manager
- File: 014_Kube Controller Manager.txt
- Topic: Kube Controller Manager
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Implementation Step  

Content:
If the pods are part of a replica set, the next controller is the replication controller.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 014_Kube Controller Manager
- File: 014_Kube Controller Manager.txt
- Topic: Kube Controller Manager
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
It is responsible for monitoring the status of replica sets, and ensuring that the desired number of pods are available at all times within the set.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 014_Kube Controller Manager
- File: 014_Kube Controller Manager.txt
- Topic: Kube Controller Manager
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Implementation Step  

Content:
If a pod dies, it creates another one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 014_Kube Controller Manager
- File: 014_Kube Controller Manager.txt
- Topic: Kube Controller Manager
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Exam Tip  

Content:
Now those were just two examples of controllers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 014_Kube Controller Manager
- File: 014_Kube Controller Manager.txt
- Topic: Kube Controller Manager
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
There are many more such controllers available within Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 014_Kube Controller Manager
- File: 014_Kube Controller Manager.txt
- Topic: Kube Controller Manager
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Implementation Step  

Content:
Whatever concepts we have seen so far in Kubernetes, such as deployments, services, namespaces, or persistent volumes and whatever intelligence is built into these constructs, it is implemented through these various controllers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 014_Kube Controller Manager
- File: 014_Kube Controller Manager.txt
- Topic: Kube Controller Manager
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
As you can imagine, this is kind of the brain behind a lot of things in Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 014_Kube Controller Manager
- File: 014_Kube Controller Manager.txt
- Topic: Kube Controller Manager
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
Now, how do you see these controllers and where are they located in your cluster?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 014_Kube Controller Manager
- File: 014_Kube Controller Manager.txt
- Topic: Kube Controller Manager
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Exam Tip  

Content:
They are all packaged into a single process known as the Kubernetes Controller manager.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 014_Kube Controller Manager
- File: 014_Kube Controller Manager.txt
- Topic: Kube Controller Manager
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Architecture  

Content:
When you install the Kubernetes controller manager, the different controllers get installed as well.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 014_Kube Controller Manager
- File: 014_Kube Controller Manager.txt
- Topic: Kube Controller Manager
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Architecture  

Content:
So how do you install and view the Kubernetes Controller manager?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 014_Kube Controller Manager
- File: 014_Kube Controller Manager.txt
- Topic: Kube Controller Manager
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Architecture  

Content:
Download the Kube controller manager from Kubernetes release page.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 014_Kube Controller Manager
- File: 014_Kube Controller Manager.txt
- Topic: Kube Controller Manager
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
Extract it and run it as a service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 014_Kube Controller Manager
- File: 014_Kube Controller Manager.txt
- Topic: Kube Controller Manager
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
When you run it, as you can see, there are a list of options provided.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 014_Kube Controller Manager
- File: 014_Kube Controller Manager.txt
- Topic: Kube Controller Manager
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
This is where you provide additional options to customize your controller.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 014_Kube Controller Manager
- File: 014_Kube Controller Manager.txt
- Topic: Kube Controller Manager
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
Remember some of the default settings for node controller we discussed earlier, such as the node monitor period, the grace period, and the eviction timeout.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 014_Kube Controller Manager
- File: 014_Kube Controller Manager.txt
- Topic: Kube Controller Manager
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
These go in here as options.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 014_Kube Controller Manager
- File: 014_Kube Controller Manager.txt
- Topic: Kube Controller Manager
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
There is an additional option called controllers that you can use to specify which controllers to enable.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 014_Kube Controller Manager
- File: 014_Kube Controller Manager.txt
- Topic: Kube Controller Manager
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
By default, all of them are enabled, but you can choose to enable a select few.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 014_Kube Controller Manager
- File: 014_Kube Controller Manager.txt
- Topic: Kube Controller Manager
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Warning/Pitfall  

Content:
So in case any of your controllers don't seem to work or exist, this would be a good starting point to look at.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 014_Kube Controller Manager
- File: 014_Kube Controller Manager.txt
- Topic: Kube Controller Manager
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Architecture  

Content:
So how do you view the Kube Controller Manager server options?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 014_Kube Controller Manager
- File: 014_Kube Controller Manager.txt
- Topic: Kube Controller Manager
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
Again, it depends on how you set up your cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 014_Kube Controller Manager
- File: 014_Kube Controller Manager.txt
- Topic: Kube Controller Manager
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Architecture  

Content:
If you set it up with the kube admin tool, kube admin deploys the kube controller manager as a pod in the kube system namespace on the master node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 014_Kube Controller Manager
- File: 014_Kube Controller Manager.txt
- Topic: Kube Controller Manager
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
You can see the options within the pod definition file located at Etsy Kubernetes manifest folder in a non kube admin setup.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 014_Kube Controller Manager
- File: 014_Kube Controller Manager.txt
- Topic: Kube Controller Manager
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Architecture  

Content:
You can inspect the options by viewing the Kube Controller Manager service located at the services directory.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 014_Kube Controller Manager
- File: 014_Kube Controller Manager.txt
- Topic: Kube Controller Manager
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Architecture  

Content:
You can also see the running process and the effective options by listing the process on the master node and searching for Kube Controller manager.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 014_Kube Controller Manager
- File: 014_Kube Controller Manager.txt
- Topic: Kube Controller Manager
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Implementation Step  

Content:
Well, that's it for this lecture and I will see you in the next.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 014_Kube Controller Manager
- File: 014_Kube Controller Manager.txt
- Topic: Kube Controller Manager
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---
