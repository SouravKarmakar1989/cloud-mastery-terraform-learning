# KB Concept Scheduling

## Normalized Concept View: Scheduling

Scheduling হলো right Pod কে right node-এ বসানোর policy engine। Bengali mental model: filter + score pipeline resource fit, policy fit, এবং availability balance করে।

### Definition
Transcript-derived definition set নিচের Source Contributions section-এ zero-loss আকারে রাখা হয়েছে।

### First-Principles Explanation
Control loop, desired state, এবং runtime behavior এর সম্পর্ক ধরে concept ব্যাখ্যা করতে হবে; প্রতিটি claim transcript evidence mapped।

### Mental Model
Concept কে system boundary + control responsibility + failure behavior হিসেবে ধরলে implementation decisions সহজ হয়।

### Why It Exists
Manual operations কমানো, reliability বাড়ানো, এবং scale-aware orchestration নিশ্চিত করার জন্য Kubernetes abstractions introduced।

### Internal Working
API server state গ্রহণ করে, etcd truth store করে, controllers reconcile করে, scheduler placement দেয়, kubelet node-level enactment করে।

### YAML or Command Usage
এই section-এ relevant YAML/command evidence transcript থেকে raw আকারে preserved রাখা হয়েছে।

### Real-World Use Cases
Lab scenarios, demo deployments, এবং certification tasks থেকে extracted usage patterns include করা হয়েছে।

### Edge Cases
Version drift, API mismatch, controller timing, node/resource constraints, এবং configuration precedence edge cases capture করা হয়েছে।

### Pitfalls
Common pitfalls transcript warning lines থেকে সরাসরি retain করা হয়েছে।

### Troubleshooting Angle
Symptom -> cause -> fix decision flow transcript troubleshooting entries থেকে traced।

### Exam Relevance (CKA or CKAD)
Exam-oriented entries explicitly tagged and preserved; speed, imperative vs declarative fluency, debug workflow emphasized।

### Source Contributions (Zero-Loss Evidence)

#### Evidence 1: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/007_Cluster Architecture.extraction.md::E30
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 007_Cluster Architecture / 007_Cluster Architecture.txt
- Topic: Cluster Architecture
- Line Context: Lines 1-1 from transcript
- Content: It identifies the right ship based on its size, its capacity, the number of containers already on the ship, and any other conditions such as the destination of the ship, the type of containers it is allowed to carry, etc. so those are schedulers.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 2: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/007_Cluster Architecture.extraction.md::E31
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 007_Cluster Architecture / 007_Cluster Architecture.txt
- Topic: Cluster Architecture
- Line Context: Lines 1-1 from transcript
- Content: In a Kubernetes cluster, a scheduler identifies the right node to place a container on based on the containers resource requirements, the worker nodes capacity, or any other policies or constraints such as taints and tolerations or node affinity rules that are on them.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 3: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/007_Cluster Architecture.extraction.md::E77
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 007_Cluster Architecture / 007_Cluster Architecture.txt
- Topic: Cluster Architecture
- Line Context: Lines 1-1 from transcript
- Content: We have the kube scheduler that is responsible for scheduling applications or containers on nodes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 4: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/013_Kube-API Server.extraction.md::E23
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 013_Kube-API Server / 013_Kube-API Server.txt
- Topic: Kube-API Server
- Line Context: Lines 1-1 from transcript
- Content: The other components, such as the scheduler, kube, controller, manager, and Kubelet uses the API server to perform updates in the cluster in their respective areas.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 5: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/014_Kube Controller Manager.extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 014_Kube Controller Manager / 014_Kube Controller Manager.txt
- Topic: Kube Controller Manager
- Line Context: Lines 1-1 from transcript
- Content: Remember some of the default settings for node controller we discussed earlier, such as the node monitor period, the grace period, and the eviction timeout.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 6: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E1
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler / 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript
- Content: In this lecture we will talk about kube scheduler.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 7: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E3
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler / 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript
- Content: Now don't let the graphic mislead you.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 8: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E6
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler / 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript
- Content: That's the job of the kubelet.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 9: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E9
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler / 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript
- Content: Let's look at how the scheduler does that in a bit more detail.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 10: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E10
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler / 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript
- Content: First of all, why do you need scheduler when there are many ships and many containers?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 11: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler / 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript
- Content: You want to make sure that the right container ends up on the right ship.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 12: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E12
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler / 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript
- Content: For example, there could be different sizes of ships and containers.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 13: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler / 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript
- Content: You want to make sure the ship has sufficient capacity to accommodate those containers.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 14: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler / 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript
- Content: Different ships may be going to different destinations.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 15: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler / 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript
- Content: You want to make sure your containers are placed on the right ships, so they end up in the right destination.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 16: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler / 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript
- Content: You can have nodes in the cluster dedicated to certain applications.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 17: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler / 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript
- Content: It has a set of CPU and memory requirements.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 18: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E26
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler / 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript
- Content: So the first two nodes are filtered out.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 19: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E28
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler / 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript
- Content: Now how does the scheduler pick one from the two?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 20: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler / 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript
- Content: It uses a priority function to assign a score to the nodes on a scale of 0 to 10.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 21: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E33
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler / 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript
- Content: So it gets a better rank.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 22: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler / 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript
- Content: And so it wins.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 23: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E35
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler / 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript
- Content: So that's how a scheduler works at a high level.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 24: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E36
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler / 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript
- Content: And of course these can be customized and you can write your own scheduler as well.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 25: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E37
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler / 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript
- Content: There are many more topics to look at such as resource requirements, limits taints and tolerations.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 26: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E38
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler / 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript
- Content: Node selectors, affinity rules, etc. which is why we have an entire section dedicated to scheduling coming up in this course, where we will discuss each of these in much more detail.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 27: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E39
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler / 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript
- Content: For now, we will continue to focus on the scheduler as a process at a high level.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 28: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E40
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler / 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript
- Content: So how do you install the scheduler?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 29: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E43
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler / 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript
- Content: So how do you view the kube scheduler server options?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 30: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E46
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler / 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript
- Content: You can also see the running process and the effective options by listing the process on the master node and searching for kube scheduler.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 31: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E47
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler / 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript
- Content: Well, that's it for this lecture.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 32: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E48
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler / 015_Kube Scheduler.txt
- Topic: Kube Scheduler
- Line Context: Lines 1-1 from transcript
- Content: I will see you in the next.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 33: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/016_Kubelet.extraction.md::E6
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 016_Kubelet / 016_Kubelet.txt
- Topic: Kubelet
- Line Context: Lines 1-1 from transcript
- Content: They load or unload containers on the ship as instructed by the scheduler on the master.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 34: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/045_Lab Solution - Imperative Commands (optional).extraction.md::E35
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 045_Lab Solution - Imperative Commands (optional) / 045_Lab Solution - Imperative Commands (optional).txt
- Topic: Lab Solution - Imperative Commands (optional)
- Line Context: Lines 1-1 from transcript
- Content: So with this command, there's no way to specify a selector.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 35: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/045_Lab Solution - Imperative Commands (optional).extraction.md::E48
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 045_Lab Solution - Imperative Commands (optional) / 045_Lab Solution - Imperative Commands (optional).txt
- Topic: Lab Solution - Imperative Commands (optional)
- Line Context: Lines 1-1 from transcript
- Content: Or if you go the other approach, then there's you cannot specify the selector.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 36: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/045_Lab Solution - Imperative Commands (optional).extraction.md::E73
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 045_Lab Solution - Imperative Commands (optional) / 045_Lab Solution - Imperative Commands (optional).txt
- Topic: Lab Solution - Imperative Commands (optional)
- Line Context: Lines 1-1 from transcript
- Content: Let's see if it's got the right labels and selectors, and also the endpoint.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 37: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/050_Scheduling - Section Introduction.extraction.md::E3
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 050_Scheduling - Section Introduction / 050_Scheduling - Section Introduction.txt
- Topic: Scheduling - Section Introduction
- Line Context: Lines 1-1 from transcript
- Content: We saw how to install and configure a scheduler briefly in the previous section.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 38: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/050_Scheduling - Section Introduction.extraction.md::E4
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 050_Scheduling - Section Introduction / 050_Scheduling - Section Introduction.txt
- Topic: Scheduling - Section Introduction
- Line Context: Lines 1-1 from transcript
- Content: Here we take a closer look at the various options available for customizing and configuring the way the scheduler behaves through a set of fun and challenging practice exercises.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 39: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/050_Scheduling - Section Introduction.extraction.md::E7
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 050_Scheduling - Section Introduction / 050_Scheduling - Section Introduction.txt
- Topic: Scheduling - Section Introduction
- Line Context: Lines 1-1 from transcript
- Content: We also see how to configure multiple schedulers and how to view the scheduler events.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 40: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/051_Manual Scheduling.extraction.md::E2
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 051_Manual Scheduling / 051_Manual Scheduling.txt
- Topic: Manual Scheduling
- Line Context: Lines 1-1 from transcript
- Content: What do you do when you do not have a scheduler in your cluster?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 41: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/051_Manual Scheduling.extraction.md::E4
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 051_Manual Scheduling / 051_Manual Scheduling.txt
- Topic: Manual Scheduling
- Line Context: Lines 1-1 from transcript
- Content: So how exactly does a scheduler work in the backend?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 42: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/053_Lab Solution - Manual Scheduling (optional).extraction.md::E21
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 053_Lab Solution - Manual Scheduling (optional) / 053_Lab Solution - Manual Scheduling (optional).txt
- Topic: Lab Solution - Manual Scheduling (optional)
- Line Context: Lines 1-1 from transcript
- Content: So let's look at the scheduler.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 43: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/053_Lab Solution - Manual Scheduling (optional).extraction.md::E23
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 053_Lab Solution - Manual Scheduling (optional) / 053_Lab Solution - Manual Scheduling (optional).txt
- Topic: Lab Solution - Manual Scheduling (optional)
- Line Context: Lines 1-1 from transcript
- Content: And we see that you have the API server, the controller manager, the proxy, the ETCD control plane, but there is no scheduler running.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 44: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/053_Lab Solution - Manual Scheduling (optional).extraction.md::E25
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 053_Lab Solution - Manual Scheduling (optional) / 053_Lab Solution - Manual Scheduling (optional).txt
- Topic: Lab Solution - Manual Scheduling (optional)
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna say that there's no scheduler present.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 45: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/053_Lab Solution - Manual Scheduling (optional).extraction.md::E67
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 053_Lab Solution - Manual Scheduling (optional) / 053_Lab Solution - Manual Scheduling (optional).txt
- Topic: Lab Solution - Manual Scheduling (optional)
- Line Context: Lines 1-1 from transcript
- Content: See it's running, if you do a wide option then we'll get to see on which node it is scheduled so we can see that it's on the control plane node.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 46: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors / 054_Labels and Selectors.txt
- Topic: Labels and Selectors
- Line Context: Lines 1-1 from transcript
- Content: What do we know about labels and selectors already?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 47: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E2
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors / 054_Labels and Selectors.txt
- Topic: Labels and Selectors
- Line Context: Lines 1-1 from transcript
- Content: Labels and selectors are a standard method to group things together.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 48: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors / 054_Labels and Selectors.txt
- Topic: Labels and Selectors
- Line Context: Lines 1-1 from transcript
- Content: Say you have a set of different species.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 49: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E4
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors / 054_Labels and Selectors.txt
- Topic: Labels and Selectors
- Line Context: Lines 1-1 from transcript
- Content: A user wants to be able to filter them based on different criteria, such as based on their class or kind, if they are domestic or wild, or say by their color and not just group, you want to be able to filter them based on a criteria such as all green animals or with multiple criteria such as everything green that is also a bird.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 50: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors / 054_Labels and Selectors.txt
- Topic: Labels and Selectors
- Line Context: Lines 1-1 from transcript
- Content: Whatever that classification may be, you need the ability to group things together and filter them based on your needs.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 51: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors / 054_Labels and Selectors.txt
- Topic: Labels and Selectors
- Line Context: Lines 1-1 from transcript
- Content: And the best way to do that is with labels.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 52: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors / 054_Labels and Selectors.txt
- Topic: Labels and Selectors
- Line Context: Lines 1-1 from transcript
- Content: Labels are properties attached to each item, so you add properties to each item for their class.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 53: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors / 054_Labels and Selectors.txt
- Topic: Labels and Selectors
- Line Context: Lines 1-1 from transcript
- Content: Kind and color selectors help you filter these items.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 54: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E9
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors / 054_Labels and Selectors.txt
- Topic: Labels and Selectors
- Line Context: Lines 1-1 from transcript
- Content: For example, when you say class equals mammal, we get a list of mammals.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 55: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors / 054_Labels and Selectors.txt
- Topic: Labels and Selectors
- Line Context: Lines 1-1 from transcript
- Content: And when you say color equals green, we get the green mammals.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 56: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors / 054_Labels and Selectors.txt
- Topic: Labels and Selectors
- Line Context: Lines 1-1 from transcript
- Content: We see labels and selectors used everywhere, such as the keywords you tag to YouTube videos or blogs that help users filter and find the right content.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 57: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors / 054_Labels and Selectors.txt
- Topic: Labels and Selectors
- Line Context: Lines 1-1 from transcript
- Content: We see labels added to items in an online store that help you add different kinds of filters to view your products.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 58: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors / 054_Labels and Selectors.txt
- Topic: Labels and Selectors
- Line Context: Lines 1-1 from transcript
- Content: So how are labels and selectors used in Kubernetes?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 59: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors / 054_Labels and Selectors.txt
- Topic: Labels and Selectors
- Line Context: Lines 1-1 from transcript
- Content: All of these are different objects.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 60: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors / 054_Labels and Selectors.txt
- Topic: Labels and Selectors
- Line Context: Lines 1-1 from transcript
- Content: Over time, you may end up having hundreds or thousands of these objects in your cluster.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 61: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E17
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors / 054_Labels and Selectors.txt
- Topic: Labels and Selectors
- Line Context: Lines 1-1 from transcript
- Content: Then you will need a way to filter and view different objects by different categories, such as to group objects by their type or view objects by application or by their functionality, whatever it may be.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 62: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors / 054_Labels and Selectors.txt
- Topic: Labels and Selectors
- Line Context: Lines 1-1 from transcript
- Content: You can group and select objects using labels and selectors for each object.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 63: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors / 054_Labels and Selectors.txt
- Topic: Labels and Selectors
- Line Context: Lines 1-1 from transcript
- Content: Attach labels as per your needs like app, function, etc..
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 64: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E20
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors / 054_Labels and Selectors.txt
- Topic: Labels and Selectors
- Line Context: Lines 1-1 from transcript
- Content: Then, while selecting specify a condition to filter specific objects.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 65: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E21
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors / 054_Labels and Selectors.txt
- Topic: Labels and Selectors
- Line Context: Lines 1-1 from transcript
- Content: For example, app equals app one.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 66: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors / 054_Labels and Selectors.txt
- Topic: Labels and Selectors
- Line Context: Lines 1-1 from transcript
- Content: So how exactly do you specify labels in Kubernetes?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 67: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors / 054_Labels and Selectors.txt
- Topic: Labels and Selectors
- Line Context: Lines 1-1 from transcript
- Content: Under that, add the labels in a key value format like this.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 68: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors / 054_Labels and Selectors.txt
- Topic: Labels and Selectors
- Line Context: Lines 1-1 from transcript
- Content: You can add as many labels as you like.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 69: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors / 054_Labels and Selectors.txt
- Topic: Labels and Selectors
- Line Context: Lines 1-1 from transcript
- Content: Now this is one use case of labels and selectors.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 70: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E28
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors / 054_Labels and Selectors.txt
- Topic: Labels and Selectors
- Line Context: Lines 1-1 from transcript
- Content: Kubernetes objects use labels and selectors internally to connect different objects together.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 71: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E29
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors / 054_Labels and Selectors.txt
- Topic: Labels and Selectors
- Line Context: Lines 1-1 from transcript
- Content: For example, to create a replica set consisting of three different parts, we first label the part definition and use selector in a replica set to group the parts in a replica set definition file.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 72: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors / 054_Labels and Selectors.txt
- Topic: Labels and Selectors
- Line Context: Lines 1-1 from transcript
- Content: You will see labels defined in two places.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 73: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E31
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors / 054_Labels and Selectors.txt
- Topic: Labels and Selectors
- Line Context: Lines 1-1 from transcript
- Content: Note that this is an area where beginners tend to make a mistake.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 74: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E33
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors / 054_Labels and Selectors.txt
- Topic: Labels and Selectors
- Line Context: Lines 1-1 from transcript
- Content: The labels you see at the top are the labels of the replica set itself.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 75: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E35
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors / 054_Labels and Selectors.txt
- Topic: Labels and Selectors
- Line Context: Lines 1-1 from transcript
- Content: The labels on the replica set will be used.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 76: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E36
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors / 054_Labels and Selectors.txt
- Topic: Labels and Selectors
- Line Context: Lines 1-1 from transcript
- Content: If you were to configure some other object to discover the replica set.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 77: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E38
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors / 054_Labels and Selectors.txt
- Topic: Labels and Selectors
- Line Context: Lines 1-1 from transcript
- Content: A single label will do if it matches correctly.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 78: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E40
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors / 054_Labels and Selectors.txt
- Topic: Labels and Selectors
- Line Context: Lines 1-1 from transcript
- Content: Then you could specify both the labels to ensure that the right parts are discovered by the replica set on creation.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 79: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E41
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors / 054_Labels and Selectors.txt
- Topic: Labels and Selectors
- Line Context: Lines 1-1 from transcript
- Content: If the labels match, the replica set is created successfully.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 80: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E44
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors / 054_Labels and Selectors.txt
- Topic: Labels and Selectors
- Line Context: Lines 1-1 from transcript
- Content: Finally, let's look at annotations.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 81: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E45
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors / 054_Labels and Selectors.txt
- Topic: Labels and Selectors
- Line Context: Lines 1-1 from transcript
- Content: While labels and selectors are used to group and select objects, annotations are used to record other details for informatory purpose.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 82: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E46
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors / 054_Labels and Selectors.txt
- Topic: Labels and Selectors
- Line Context: Lines 1-1 from transcript
- Content: For example, tool details like name version, build information, etc. or contact details, phone numbers, email IDs, etc. that may be used for some kind of integration purpose.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 83: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E47
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors / 054_Labels and Selectors.txt
- Topic: Labels and Selectors
- Line Context: Lines 1-1 from transcript
- Content: Well, that's it for this lecture on labels and selectors and annotations, head over to the Coding Exercises section and practice working with labels and selectors.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 84: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional) / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Topic: Lab Solution _ Labels and Selectors _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: -: Hey, in this video, we're gonna walk through the practice test for labels and selectors.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 85: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional) / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Topic: Lab Solution _ Labels and Selectors _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we have to use selectors.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 86: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional) / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Topic: Lab Solution _ Labels and Selectors _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So I'm assuming ENV is for environment.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 87: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional) / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Topic: Lab Solution _ Labels and Selectors _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So that's the label.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 88: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional) / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Topic: Lab Solution _ Labels and Selectors _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And the, so this is the key and this is the value.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 89: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional) / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Topic: Lab Solution _ Labels and Selectors _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So that's 1, 2, 3, 4, 5, 6, 7, 7 of them.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 90: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional) / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Topic: Lab Solution _ Labels and Selectors _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: If you want to find, so now let's say since there are just seven, it's easy to for us to just count.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 91: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional) / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Topic: Lab Solution _ Labels and Selectors _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: But let's say there are a lot of them there that now where it becomes difficult to count manually one thing you could do is just do a word count, right?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 92: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional) / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Topic: Lab Solution _ Labels and Selectors _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So you could do a word count dash L.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 93: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional) / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Topic: Lab Solution _ Labels and Selectors _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Now the problem with this is this also counts this top line which is the header.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 94: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional) / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Topic: Lab Solution _ Labels and Selectors _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So there's a way to print this without the headers and that's using the no header's option.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 95: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional) / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Topic: Lab Solution _ Labels and Selectors _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And when you run that you just get the output without the header.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 96: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E19
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional) / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Topic: Lab Solution _ Labels and Selectors _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And then we can do a word count on that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 97: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional) / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Topic: Lab Solution _ Labels and Selectors _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And that's seven, so seven is the answer here.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 98: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional) / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Topic: Lab Solution _ Labels and Selectors _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, we saw that the that label key is the, UA so, for business unit.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 99: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional) / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Topic: Lab Solution _ Labels and Selectors _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And the business unit we are looking at IT finance.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 100: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional) / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Topic: Lab Solution _ Labels and Selectors _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And we'll just use same command for this.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 101: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional) / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Topic: Lab Solution _ Labels and Selectors _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And this time is six.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 102: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional) / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Topic: Lab Solution _ Labels and Selectors _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay, and how many objects are in the prod environment including pause, replica sets, and any other objects?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 103: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional) / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Topic: Lab Solution _ Labels and Selectors _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So let's use the same command and change the labels.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 104: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional) / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Topic: Lab Solution _ Labels and Selectors _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So all lists, all the objects in that name space.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 105: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional) / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Topic: Lab Solution _ Labels and Selectors _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So if you count this, that's, let's do a word count.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 106: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E33
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional) / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Topic: Lab Solution _ Labels and Selectors _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And so that's number seven.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 107: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional) / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Topic: Lab Solution _ Labels and Selectors _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So there are seven objects.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 108: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E36
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional) / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Topic: Lab Solution _ Labels and Selectors _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So one that has all of it.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 109: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E37
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional) / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Topic: Lab Solution _ Labels and Selectors _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So the environment is prod.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 110: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E38
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional) / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Topic: Lab Solution _ Labels and Selectors _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Then we can just add additional labels separated by a coma will BU equals finance and tier is front end.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 111: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E40
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional) / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Topic: Lab Solution _ Labels and Selectors _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay, the final question is about, again labels.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 112: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E41
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional) / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Topic: Lab Solution _ Labels and Selectors _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So there's a file called replica set definition file and the request is to create the replica set and but there's an issue with it, so we've got to fix it.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 113: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E42
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional) / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Topic: Lab Solution _ Labels and Selectors _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So let's try creating it.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 114: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E43
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional) / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Topic: Lab Solution _ Labels and Selectors _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay, and it says the replica set is invalid.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 115: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E44
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional) / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Topic: Lab Solution _ Labels and Selectors _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Invalid value selector does not match template labels.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 116: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E45
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional) / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Topic: Lab Solution _ Labels and Selectors _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So selector is this and template labels.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 117: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E46
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional) / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Topic: Lab Solution _ Labels and Selectors _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So this template and template labels is this.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 118: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E47
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional) / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Topic: Lab Solution _ Labels and Selectors _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So the error message is that this does not match this.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 119: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E50
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional) / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Topic: Lab Solution _ Labels and Selectors _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So that's the validation error here.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 120: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E51
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional) / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Topic: Lab Solution _ Labels and Selectors _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna fix this by changing this to the value below.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 121: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E53
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional) / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Topic: Lab Solution _ Labels and Selectors _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And it's created, let's verify creation.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 122: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E54
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional) / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Topic: Lab Solution _ Labels and Selectors _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Yep, that's working.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 123: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E55
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional) / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Topic: Lab Solution _ Labels and Selectors _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay, so that's the end of this lab.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 124: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E2
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations / 057_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: The concept of taints and tolerations can be a bit confusing for beginners, so we will try to understand what they are using an analogy of a bug approaching a person.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 125: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations / 057_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: Now my apologies in advance, but this is the best I could come up with to prevent the bug from landing on the person.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 126: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations / 057_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: We spray the person with repellent spray or a taint as we will call it in this lecture.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 127: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations / 057_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: The bug is intolerant to the smell, so on approaching the person, the taint applied on the person throws the bug off.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 128: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations / 057_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: However, there could be other bugs that are tolerant to this smell, and so the taint doesn't really affect them and so they end up landing on the person.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 129: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E7
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations / 057_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: So there are two things that decide if a bug can land on a person. first, the taint on the person, and second the bugs toleration level to that particular taint.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 130: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations / 057_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: Now taints and tolerations have nothing to do with security or intrusion on the cluster.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 131: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations / 057_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: Let us start with a simple cluster with three worker nodes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 132: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations / 057_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: The nodes are named one, two, and three.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 133: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations / 057_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: Let's call them A, B, C, and D.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 134: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations / 057_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: Now let us assume that we have dedicated resources on node one for a particular use case or application.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 135: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations / 057_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: So we would like only those parts that belong to this application to be placed on node one.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 136: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations / 057_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: Let's call it blue.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 137: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations / 057_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: This solves half of our requirement.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 138: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations / 057_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: The other half is to enable certain parts to be placed on this node.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 139: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations / 057_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: It is thrown off again and ends up on node two.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 140: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E38
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations / 057_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: So how do you do this?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 141: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E39
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations / 057_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: Use the kube control taint nodes command to taint a node.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 142: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E40
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations / 057_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: Specify the name of the node to taint followed by the taint itself, which is a key value pair.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 143: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E46
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations / 057_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: These parts may have been scheduled on the node before the taint was applied to the node.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 144: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E49
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations / 057_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: Add a section called Tolerations.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 145: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E50
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations / 057_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: Move the same values used while creating the taint under this section.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 146: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E51
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations / 057_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: The key is app operator is equal, value is blue and the effect is no schedule.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 147: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E52
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations / 057_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: And remember all of these values need to be encoded in double quotes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 148: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E54
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations / 057_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: Let us try to understand the no execute change effect in a bit more depth.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 149: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E55
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations / 057_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: In this example we have three nodes running some workload.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 150: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E56
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations / 057_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: We do not have any chains or tolerations at this point, so they are scheduled this way.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 151: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E60
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations / 057_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: Now, going back to our original scenario where we have taints and tolerations configured, remember taints and tolerations are only meant to restrict nodes from accepting certain paths.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 152: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E65
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations / 057_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: Finally, while we are on this topic, let us also take a look at an interesting fact.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 153: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E67
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations / 057_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: Plus it runs all the management software.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 154: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E69
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations / 057_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: Why is that?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 155: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E70
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations / 057_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: When the Kubernetes cluster is first set up, a tent is set on the master node automatically.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 156: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E72
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations / 057_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: You can see this as well as modify this behavior if required.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 157: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E73
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations / 057_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: However, a best practice is to not deploy application workloads on a master server.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 158: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E74
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations / 057_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: To see this taint, run a cube control, describe node command with cube master as the node name and look for the taint section.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 159: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E76
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations / 057_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: Well, that's it for this lecture.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 160: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E77
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations / 057_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: Head over to the Coding Exercises section and practice working with Taints and Tolerations.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 161: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Instructor: Okay, so let's go over the lab for practicing taints and tolerations.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 162: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E2
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So let's start with the first question.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 163: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: How many nodes exist on the system?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 164: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Including the control plane?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 165: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So let's look at the number of nodes and we see that there are two nodes, control plane and node zero one.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 166: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So the answer is two.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 167: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E7
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay, so the next question is, do any taints exist on node zero one node?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 168: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So for that we're gonna have to take a closer look at node zero one.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 169: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we do a kubectl, describe node, node zero one and we see taints right here.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 170: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And we see that there are none.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 171: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So there are no taints on this particular node.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 172: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So I'm gonna select, no.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 173: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: It's going to clear my screen.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 174: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E14
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay, so the next question is to create a taint on node zero one with key of spray value of martin and effect of NoSchedule.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 175: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E15
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna continue with the, the silly example that we used in the lecture of the spray and martin, and mosquito and B.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 176: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E16
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So here the task is to create a taint.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 177: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna do kubectl taint and let's quickly look at the help.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 178: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E18
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So the command is kubectl taint, and then nodes then the name of the node, and then followed by these values, which are the key has to be spray, and then the value is martin.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 179: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E19
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And then the effect is NoSchedule.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 180: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So let's do that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 181: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E21
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So it's kubectl paint, node, and it's node zero one, and then the key is spray and the value is obtain, and the effect is NoSchedule.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 182: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 183: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay, let's confirm that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 184: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we have the spray equals martin and the NoSchedule effect, right?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 185: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So that's, that's done.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 186: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we now have attained on node zero one.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 187: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Image equals engine X.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 188: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Let's do...
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 189: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E32
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And we see that, it's created.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 190: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E33
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Ignore the, the, the status for now.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 191: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E35
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So it seems to be in a pending state.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 192: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E36
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So select pending.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 193: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E38
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Is it because image is not available?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 194: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E39
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Is there an error?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 195: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And here you'll see the, the reason why it's in a pending state.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 196: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E44
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna select that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 197: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E46
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Which has a toleration set to the taint martin.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 198: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E48
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: The name is going to be B, and the image is going to be engine X.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 199: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E49
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And basically, now we have to add toleration to it, but you cannot specify toleration in the command lane.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 200: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E51
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So that's the AMO file and we're gonna redirect that to B.AMO.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 201: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E52
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we have this in, in B.AMO, we're going to edit B.AMO file, and we're going to add in tolerations.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 202: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E53
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So add a section called tolerations.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 203: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E54
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Now if you're not sure of the, the format check out the Kubernetes documentation pages, and search for chains tolerations.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 204: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E55
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And that's the first result.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 205: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E56
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And these are, this is the command for taint, and this is, this is the format for tolerations.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 206: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E57
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So dash key operator value and effect.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 207: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E58
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So that's key.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 208: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E59
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So key is going to be spray, operator, value, and effect.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 209: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E60
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So the value is going to be seen, effect is going to be audio, finally we have operator just to be equal, operator set to equal.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 210: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E61
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: You save that...
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 211: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E62
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And let's create image.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 212: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E63
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay, so it's now in a container creating state.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 213: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E64
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Let's watch the creation process and we can see that it's now in a running state.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 214: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E65
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So this part is now running.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 215: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E66
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay, so that's, that's correct.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 216: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E68
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So let's see where it was scheduled.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 217: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E70
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So basically, now this B was able to tolerate the taint set on node zero one.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 218: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E71
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Now do you see any taints on control plane node?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 219: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E72
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So let's look at the control plane node and let's look at taints.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 220: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E73
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And we see that yes, there is a taint set on the control plane node and it's set to NoSchedule.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 221: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E74
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: That's the effect.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 222: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E75
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So yes, it's set, it's set to NoSchedule.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 223: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E76
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay, now remove the taint on control plane, which currently has the taint effect of NoSchedule.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 224: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E77
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we've got to remove that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 225: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E78
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So first let's get that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 226: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E79
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So this is the taint, so let's copy that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 227: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E80
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And the command to remove it is the same kubecolor taint.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 228: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E81
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And you just specify the node, that's control point node.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 229: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E82
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Specify the 10 that we wanna remove and at the end you've got to put a dash or a minus for it to remove that 10.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 230: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E83
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So it says it's untainted.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 231: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E84
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So let's confirm that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 232: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E85
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Go back to taints and see it's, nothing is set.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 233: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E86
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Just click on check.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 234: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E90
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And then we have to...
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 235: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E91
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Let's check at what, on what node is it placed.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 236: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E92
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So as you can see it's now placed on the control plane node.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 237: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E94
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And so it was not placed on any of the nodes because both of them had a taint then.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 238: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E98
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So it's, the answer to this is control plane.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 239: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E99
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional) / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay, So that's the end of this lab.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 240: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/060_Node Selectors.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 060_Node Selectors / 060_Node Selectors.txt
- Topic: Node Selectors
- Line Context: Lines 1-1 from transcript
- Content: In this lecture we will talk about node selectors in Kubernetes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 241: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/060_Node Selectors.extraction.md::E2
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 060_Node Selectors / 060_Node Selectors.txt
- Topic: Node Selectors
- Line Context: Lines 1-1 from transcript
- Content: Let us start with a simple example.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 242: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/060_Node Selectors.extraction.md::E3
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 060_Node Selectors / 060_Node Selectors.txt
- Topic: Node Selectors
- Line Context: Lines 1-1 from transcript
- Content: You have a three node cluster of which two are smaller nodes with lower hardware resources, and one of them is a larger node configured with higher resources.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 243: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/060_Node Selectors.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 060_Node Selectors / 060_Node Selectors.txt
- Topic: Node Selectors
- Line Context: Lines 1-1 from transcript
- Content: You have different kinds of workloads running in your cluster.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 244: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/060_Node Selectors.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 060_Node Selectors / 060_Node Selectors.txt
- Topic: Node Selectors
- Line Context: Lines 1-1 from transcript
- Content: You would like to dedicate the data processing workloads that require higher horsepower to the larger node, as that is the only node that will not run out of resources in case the job demands extra resources.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 245: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/060_Node Selectors.extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 060_Node Selectors / 060_Node Selectors.txt
- Topic: Node Selectors
- Line Context: Lines 1-1 from transcript
- Content: There are two ways to do this.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 246: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/060_Node Selectors.extraction.md::E10
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 060_Node Selectors / 060_Node Selectors.txt
- Topic: Node Selectors
- Line Context: Lines 1-1 from transcript
- Content: The first is using node selectors, which is the simple and easier method for this.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 247: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/060_Node Selectors.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 060_Node Selectors / 060_Node Selectors.txt
- Topic: Node Selectors
- Line Context: Lines 1-1 from transcript
- Content: But wait a minute, where did the size large come from?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 248: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/060_Node Selectors.extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 060_Node Selectors / 060_Node Selectors.txt
- Topic: Node Selectors
- Line Context: Lines 1-1 from transcript
- Content: And how does Kubernetes know which is the large node?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 249: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/060_Node Selectors.extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 060_Node Selectors / 060_Node Selectors.txt
- Topic: Node Selectors
- Line Context: Lines 1-1 from transcript
- Content: The key value pair of size and large are in fact labels assigned to the nodes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 250: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/060_Node Selectors.extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 060_Node Selectors / 060_Node Selectors.txt
- Topic: Node Selectors
- Line Context: Lines 1-1 from transcript
- Content: So let us go back and see how we can label the nodes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 251: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/060_Node Selectors.extraction.md::E21
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 060_Node Selectors / 060_Node Selectors.txt
- Topic: Node Selectors
- Line Context: Lines 1-1 from transcript
- Content: To label a node, use the command Kube cube control label nodes, followed by the name of the node and the label in a key value pair format.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 252: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/060_Node Selectors.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 060_Node Selectors / 060_Node Selectors.txt
- Topic: Node Selectors
- Line Context: Lines 1-1 from transcript
- Content: In this case it would be cube control label nodes node one, followed by the label in a key value format such as size equals large.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 253: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/060_Node Selectors.extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 060_Node Selectors / 060_Node Selectors.txt
- Topic: Node Selectors
- Line Context: Lines 1-1 from transcript
- Content: Node selector served our purpose, but it has limitations.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 254: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/060_Node Selectors.extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 060_Node Selectors / 060_Node Selectors.txt
- Topic: Node Selectors
- Line Context: Lines 1-1 from transcript
- Content: We used a single label and selector to achieve our goal here.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 255: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/060_Node Selectors.extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 060_Node Selectors / 060_Node Selectors.txt
- Topic: Node Selectors
- Line Context: Lines 1-1 from transcript
- Content: But what if our requirement is much more complex?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 256: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/060_Node Selectors.extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 060_Node Selectors / 060_Node Selectors.txt
- Topic: Node Selectors
- Line Context: Lines 1-1 from transcript
- Content: You cannot achieve this using node selectors.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 257: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/060_Node Selectors.extraction.md::E30
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 060_Node Selectors / 060_Node Selectors.txt
- Topic: Node Selectors
- Line Context: Lines 1-1 from transcript
- Content: For this node affinity and anti-affinity features were introduced and we will look at that next.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 258: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity / 061_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: In this lecture we will talk about node affinity feature in Kubernetes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 259: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity / 061_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: In the previous lecture, we did this easily using node selectors.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 260: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity / 061_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: We discussed that you cannot provide advanced expressions like or or not with node selectors.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 261: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity / 061_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: With great power comes great complexity.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 262: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity / 061_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: So the simple node selector specification will now look like this with node affinity.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 263: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity / 061_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: Let us look at it a bit closer.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 264: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E11
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity / 061_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: Under spec you have affinity and then node affinity under that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 265: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E12
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity / 061_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: And then you have a property that looks like a sentence called required during scheduling.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 266: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity / 061_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: Ignored during execution.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 267: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity / 061_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: No description needed for that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 268: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E15
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity / 061_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: And then you have the node selector terms.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 269: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity / 061_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: That is an array.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 270: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity / 061_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: And that is where you will specify the key and value pairs.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 271: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity / 061_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: In this case, it is just one called large.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 272: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E21
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity / 061_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: You could use the not in operator to say something like size, not n small, where node affinity will match the nodes with a size not set to small.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 273: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity / 061_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: We know that we have only set the label size to large and medium nodes, Notes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 274: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E23
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity / 061_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: The smaller notes don't even have the label set, so we don't really have to even check the value of the label, as long as we are sure we don't set a label size to the smaller notes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 275: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity / 061_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: Using the exists operator will give us the same result.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 276: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E25
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity / 061_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: The operator will simply check if the label size exists on the notes, and you don't need the values section for that, as it does not compare the values.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 277: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity / 061_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: There are a number of other operators as well.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 278: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity / 061_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: Check the documentation for specific details.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 279: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity / 061_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: But what if node affinity could not match a node with a given expression?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 280: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E31
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity / 061_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: In this case, what if there are no nodes with the label called size?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 281: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E33
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity / 061_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: What if someone changes the label on the node at a future point in time.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 282: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E35
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity / 061_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: All of this is answered by the long sentence like property under node affinity, which happens to be the type of node affinity.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 283: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E37
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity / 061_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: There are currently two types of node affinity available required during scheduling, ignored during execution, and preferred during scheduling.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 284: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E38
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity / 061_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: Ignored during execution, and there are additional types of node affinity planned as of this recording.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 285: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E39
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity / 061_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: Required during scheduling.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 286: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E40
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity / 061_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: Required during execution.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 287: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity / 061_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: We will now break this down to understand further.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 288: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E42
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity / 061_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: We will start by looking at the two available affinity types.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 289: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E46
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity / 061_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: Now, what if the nodes with matching labels are not available?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 290: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E47
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity / 061_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: For example, we forgot to label the node as large.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 291: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E48
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity / 061_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: That is where the type of node affinity used comes into play.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 292: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E54
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity / 061_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: In that case, you could set it to preferred.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 293: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E57
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity / 061_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: The second part of the property or the other state is during execution.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 294: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E59
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity / 061_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: For example, say an administrator removed the label we set earlier called size equals large from the node.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 295: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E62
- Type: Comparison
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity / 061_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: In the next lecture, we will compare taints and Tolerations and node affinity.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 296: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: -: Okay in this video, we will go over the practice test for node affinity.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 297: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E2
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So the first question is to identify the labels on node, node 01, so to count the number of labels on node 01.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 298: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So let's do kubectl, describe node, node 01 and let's look at the labels.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 299: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we have 1, 2, 3, 4, 5, 5 labels.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 300: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna select five.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 301: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E6
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And then the next question is, what is the value set to the label at beta.kubernetes.io/arc?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 302: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So on node 01, so we are already on node 01 and it is AMD 64.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 303: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: That's this one.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 304: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 305: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E10
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So the next question is to apply a label called color equals blue to node 01.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 306: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So for that we're going to use the kubectl label command.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 307: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So let's take a look at the help.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 308: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E13
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And here we have some examples.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 309: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E15
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: What is the object that we wanna apply the label to?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 310: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E16
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And then the node name, and then just the label.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 311: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So it's pretty straightforward.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 312: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E18
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna do kubectl, label, node, node 01 and then color equals blue.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 313: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Let's verify that it's set correctly.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 314: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: We're gonna go back, cause the labels and we see the color equals blue.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 315: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E21
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 316: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: The name is blue, image is nginx, and replicas is three.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 317: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we, we've gotta check the tense on, on both the nodes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 318: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So let's do that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 319: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Let's check the tense on each one.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 320: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna do a, we've gotta describe node Let's check node 01.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 321: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And let's check for tense.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 322: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E31
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So there are no tense set on, node 01 and the other node which I believe is the control plane node.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 323: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Let's check that too.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 324: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E33
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So...
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 325: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So the node plane.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 326: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E40
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we, we have to use the required during scheduling, ignore during execution then use the color and the values to close.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 327: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So for this, let's go to the Kubernetes documentation page and search for affinity.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 328: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E42
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And let's get this.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 329: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E43
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And here, let's look for the affinity spec.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 330: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E44
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we going to copy this and paste it here.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 331: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E46
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And so all of these are kind of aligned bit more to the left.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 332: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E48
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we have to move it all a little bit to the right.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 333: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E49
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So for this, what I'm gonna do here is the first one is, okay, first line is okay but all these remaining lines we need to move it one step inside.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 334: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E50
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So press capital V and then select all the lines.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 335: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E51
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Then I'm gonna do a greater than symbol.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 336: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E52
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So that's shift dot on the keyboard that I'm using.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 337: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E53
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: It moves everything to the, to the right.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 338: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E54
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So it's not, not very pretty but I think that will do the job for now.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 339: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E55
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And I'm just going to set the key to color and the value to low.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 340: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E56
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So there, there are ways that we can set the VIM settings so that this always, it gets intended with spaces as opposed to multiple spaces at a time that you can see here.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 341: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E57
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, we're gonna save that and let's give this a shot.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 342: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E58
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay, so that's done.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 343: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E59
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Now the question is to find out which nodes the ports are placed on.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 344: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E61
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So they're all on node 01.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 345: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E63
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And the recommendation is to use the label node kubernetes .io/master which is already set on the control plane node.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 346: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E64
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So if you look at the control plane node we see that there is this label, right?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 347: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E65
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: It doesn't have a value set, right?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 348: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E67
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And the label does not have a value.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 349: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E68
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: But if this label exists then that's where it should be placed on.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 350: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E69
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So let's try and do that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 351: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E71
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Sorry, red.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 352: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E72
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Image is nginx and replicas =2.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 353: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E73
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 354: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E74
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: But we're not gonna create it.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 355: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E75
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna do a dry run because we need to get the yaml file to input the node affinity rules.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 356: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E76
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna do a dry run=client and then -o yaml that's gonna give us the yaml output.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 357: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E77
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Then we're going to put it to a file named red.yaml.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 358: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E78
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Now we're going to edit that file.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 359: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E79
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And within the spec section we're gonna do the same as we did before.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 360: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E80
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna copy this node affinity rule and paste it.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 361: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E81
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Now we've got to select all of these lines.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 362: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E82
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: I'm gonna do a shift dot shift dot on my keyboard which is gonna, and that's basically the, the greater than symbol and it's gonna move to the right.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 363: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E83
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Now we're gonna change this to the key is the label which is this.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 364: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E84
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: I'm gonna copy and paste.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 365: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E85
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And as we realize that this label does not have value so there's no point in checking the value here.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 366: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E86
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna get rid of this and all, all we are gonna do is say if the label exists so the operator would be Exists with the capital E, lets save that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 367: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E88
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: There seems to be some error.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 368: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E89
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So let's go back, see what the error is.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 369: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E90
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: It's on line 26 Do not find expected key.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 370: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E91
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So line is this.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 371: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E92
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay, actually it's this line here.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 372: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E93
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So this is not currently intended, that's the problem.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 373: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E94
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: We're going to move it two characters before.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 374: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E95
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay, So we're going to save that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 375: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E96
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Let's try that again.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 376: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E97
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 377: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E98
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So even though here it's said line 26 the issue was a few lines above okay so let's check our solution.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 378: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E99
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: All right, So that works.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 379: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E101
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 380: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E102
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional) / 063_Lab Solution - Node Affinity (Optional).txt
- Topic: Lab Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay, that's the end of this lab.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 381: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/064_Taints and Tolerations vs Node Affinity.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 064_Taints and Tolerations vs Node Affinity / 064_Taints and Tolerations vs Node Affinity.txt
- Topic: Taints and Tolerations vs Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: Now that we have learned about taints and tolerations and node affinity, let us tie together the two concepts through a fun exercise.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 382: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/064_Taints and Tolerations vs Node Affinity.extraction.md::E7
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 064_Taints and Tolerations vs Node Affinity / 064_Taints and Tolerations vs Node Affinity.txt
- Topic: Taints and Tolerations vs Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: Let us first try to solve this problem using taints and tolerations.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 383: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/064_Taints and Tolerations vs Node Affinity.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 064_Taints and Tolerations vs Node Affinity / 064_Taints and Tolerations vs Node Affinity.txt
- Topic: Taints and Tolerations vs Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: This is not desired.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 384: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/064_Taints and Tolerations vs Node Affinity.extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 064_Taints and Tolerations vs Node Affinity / 064_Taints and Tolerations vs Node Affinity.txt
- Topic: Taints and Tolerations vs Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: Let us try to solve the same problem with node affinity.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 385: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/064_Taints and Tolerations vs Node Affinity.extraction.md::E14
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 064_Taints and Tolerations vs Node Affinity / 064_Taints and Tolerations vs Node Affinity.txt
- Topic: Taints and Tolerations vs Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: With node affinity, we first label the nodes with their respective colors blue, red, and green.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 386: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/064_Taints and Tolerations vs Node Affinity.extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 064_Taints and Tolerations vs Node Affinity / 064_Taints and Tolerations vs Node Affinity.txt
- Topic: Taints and Tolerations vs Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: This is not something we desire.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 387: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/064_Taints and Tolerations vs Node Affinity.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 064_Taints and Tolerations vs Node Affinity / 064_Taints and Tolerations vs Node Affinity.txt
- Topic: Taints and Tolerations vs Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: Well, that's it for this lecture.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 388: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Let's look at resource requirements.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 389: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E2
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Let us start by looking at a three node Kubernetes cluster.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 390: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Each node has a set of CPU and memory resources available.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 391: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: If nodes have no sufficient resources available.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 392: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So what are these blocks and what are their values.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 393: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E16
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: For example, it could be one CPU and one GB of memory and this is known as the resource request for a container.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 394: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So the minimum amount of CPU or memory requested by the container.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 395: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: In this case, I set it to four gigabyte of memory and two counts of CPU.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 396: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So what does one count of CPU really mean?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 397: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Now you can specify any value as low as 0.1.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 398: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So 0.1 CPU can also be expressed as 100 M, where M stands for milli, and you can go as low as one M, but not lower than that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 399: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Uh, now one count of CPU is equivalent to one Vcpu so that's one vcpu in AWS.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 400: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So if you're looking at the AWS cloud, or it could be referred to as one core in GCP or Azure or one Hyperthread, um, on other other systems, and you could request a higher number of CPUs for the container provided your nodes are sufficiently funded.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 401: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E28
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: In this example, I have set it to five.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 402: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E29
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Now, similarly with memory, you could specify 256 mebibyte using the mi suffix, or specify the same value in memory like this.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 403: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: That's the um, the full number, the whole number, and or specify the same value in memory like this as m.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 404: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E31
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So um or use the suffix g for uh gigabyte.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 405: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E32
- Type: Comparison
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So note the difference between g and g.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 406: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E33
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So g is gigabyte and it refers to 1000MB, whereas g refers to GB byte.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 407: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: And that that would be equivalent to 1024MB.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 408: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E35
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So the same applies to megabyte and maybe byte in kilobyte and kibibyte.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 409: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E36
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Now let's look at a container running on a node, and by default, a container has no limit to the resources it can consume on a node.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 410: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E38
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: It can go up and consume as much resources as it requires.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 411: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E39
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: And and that suffocates the native processes on the node or other containers of resources.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 412: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E41
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: For example, if you set a limit of one vcpu to um, the containers, a container will be limited to consume only one vcpu uh, from that node.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 413: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E42
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So the same goes with memory.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 414: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E43
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: For example, you can set a limit of 512 megabyte on containers.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 415: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E44
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Um, like this.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 416: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E45
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Now you can specify the limits under the limits section.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 417: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E47
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So here specify the new limits for memory and CPU.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 418: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E48
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Like this.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 419: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E51
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So if there are multiple containers, then each container can have a request or limit set for its own.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 420: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E53
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: In case of the CPU, the system throttles the CPU so that it does not go beyond the specified limit.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 421: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E54
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: A container cannot use more CPU resources than its limit.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 422: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E55
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: However, this is not the case with memory.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 423: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E58
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: When you run it.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 424: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E59
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So that's what is Om refers to out of memory kill.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 425: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E61
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So by default Kubernetes does not have a CPU or memory request or limit set.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 426: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E63
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So this is very, very important to note.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 427: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E64
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So let's just look at how CPU requests and limits work.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 428: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E67
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Right.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 429: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E68
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So just keep that in mind.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 430: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E70
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So of course this is not ideal.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 431: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E71
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Now let's look at another case where we have no request specified.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 432: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E72
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: But we do have limits specified.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 433: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E73
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: In this case, Kubernetes automatically sets requests to the same as limits.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 434: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E75
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: The next one is where requests and limits are set.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 435: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E77
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So this might look to be the most ideal scenario.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 436: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E81
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Right?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 437: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E82
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So we don't want to unnecessarily limit resources of CPU cycles.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 438: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E83
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So, uh, that's uh, that is not really the ideal scenario.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 439: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E84
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: And that's where the last, um, scenario comes in.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 440: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E88
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: It has requested, then it will be guaranteed its requested CPU cycle.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 441: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E89
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So this is the most ideal setup.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 442: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E91
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: For example, a good use case for setting limits is our labs themselves, where, um, all the labs that you've been, you guys have been going through and accessing, um, as part of this course, they are hosted as containers, um, on a cluster.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 443: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E92
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Right.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 444: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E93
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: And since it's made accessible to public and um, users, uh, can run any kind of workload that they want, we set limits to prevent the user from misusing the infrastructure to, let's say, perform Bitcoin mining or, um, other resource consuming activities.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 445: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E94
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So that works for us in that case.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 446: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E95
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: But in your case, if you don't want to restrict your application to consume additional CPU, uh, if needed, then you could consider not setting limits.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 447: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E97
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Right.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 448: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E99
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So just make sure that you have set requests for all the nodes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 449: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E100
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So a couple of things to note.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 450: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E102
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Right?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 451: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E104
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So also note that these recommendations are just for CPU.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 452: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E105
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So let's look at how it works for memory next.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 453: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E106
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So it's kind of similar.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 454: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E107
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So if you look at the memory let's say there are two.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 455: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E110
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So this is not ideal.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 456: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E111
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Now let's look at the case where we have no requests specified.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 457: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E112
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: But we do have limits specified.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 458: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E113
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: And in this case Kubernetes automatically sets requests to the same as limits.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 459: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E114
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So for example requests and limits are assumed to be three gigabytes in this case.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 460: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E116
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: The next one is where requests and limits are set.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 461: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E118
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: And the last one is setting requests, but no limits.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 462: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E122
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Okay.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 463: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E125
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Um, set.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 464: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E126
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Now this is possible with limit ranges.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 465: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E128
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: This is applicable at the namespace level.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 466: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E129
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So remember that and this is an object.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 467: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E130
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So you create a definition file with the API version set to v1 kind set to limit range.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 468: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E131
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: And we'll give it a name CPU resource constraint.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 469: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E132
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: We then set the default limit to 500 M.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 470: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E133
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Default request to the same as well.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 471: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E134
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Um.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 472: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E136
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So these are of course some example values, not a recommendation or anything.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 473: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E137
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So you must set whatever is best for your applications.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 474: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E138
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Um so the same goes for memory.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 475: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E139
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Uh, use memory instead of CPU and specify the defaults and max and min values in this in this form.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 476: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E143
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: And finally, is there any way to restrict the total amount of resources that can be consumed by applications deployed in a Kubernetes cluster.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 477: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E145
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: What we could do is create quotas at a namespace level.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 478: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E146
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So a resource quota is a namespace level object that can be created to set hard limits for requests and limits.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 479: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E147
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: In this example, this resource limits the total requested CPU and the current namespace to four and memory to four GB, and it defines a maximum limit of CPU consumed by all the parts together to be ten, and memory to be up ten gigabyte as well.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 480: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E148
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Right.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 481: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E149
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So that's um, that's another option, uh, that can be explored.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 482: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E150
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Well, uh, that's all for now.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 483: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E151
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements / 065_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Uh, refer to these pages on the Kubernetes documentation site for more information, and head over to the labs, and I'll see you in the next one.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 484: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/071_Lab Solution - DaemonSets (optional).extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 071_Lab Solution - DaemonSets (optional) / 071_Lab Solution - DaemonSets (optional).txt
- Topic: Lab Solution - DaemonSets (optional)
- Line Context: Lines 1-1 from transcript
- Content: So here you can see the design number of nodes scheduled is one current number of nodes scheduled is one.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 485: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes / 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript
- Content: Now, we need a way to make sure that higher priority workloads always get scheduled without being interrupted by lower priority workloads.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 486: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E42
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes / 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript
- Content: So say there are two workloads with two priorities coming in to be scheduled a critical app with a higher priority of seven, and a jobs app with a lower priority of five.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 487: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E52
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes / 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript
- Content: Do we evict existing workload or does it wait?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 488: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E57
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes / 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript
- Content: But if you do not want it to kill or evict the existing workload, and instead wait for the cluster resources to free up, then you must set this preemption policy to never.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 489: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E60
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes / 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript
- Content: So there's the priority still applies only when it is going to be scheduled.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 490: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E61
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes / 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript
- Content: But will it kill the existing preempt, or will it evict the existing workload or not?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 491: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E1
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: In this lecture, we look at deploying multiple schedulers in a Kubernetes cluster.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 492: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E2
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: Now we have seen how the default scheduler works in Kubernetes in the previous lectures.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 493: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: We specify through taints and tolerations and node affinity, etc..
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 494: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: But what if none of these satisfies your needs?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 495: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: Kubernetes is highly extensible.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 496: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E8
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: You can write your own Kubernetes Scheduler program, package it, and deploy it as the default scheduler, or as an additional scheduler in Kubernetes cluster.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 497: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E9
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: That way, all of the other applications can go through the default scheduler.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 498: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E10
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: However, some specific applications that you may choose can use your own custom scheduler, so your Kubernetes cluster can have multiple schedulers at a time.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 499: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: So let's see how that's done.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 500: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E13
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: Now, when there are multiple schedulers, they must have different names so that we can identify them as separate schedulers.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 501: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E14
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: So the default scheduler is named default scheduler.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 502: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E15
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: And this name is configured in a kube scheduler configuration file that looks like this.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 503: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E16
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: Now the default scheduler doesn't really need one because if you don't specify a name it sets the name to default scheduler.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 504: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E17
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: But this is how it would look if you were to create one.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 505: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E18
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: And for the other schedulers, we could create a separate configuration file and set the scheduler name like this.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 506: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E19
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: So let's start with the most simplest way of deploying an additional scheduler.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 507: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E20
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: Now earlier we saw how to deploy the Kubernetes Kube scheduler.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 508: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E22
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: Now, to deploy an additional scheduler, you may use the same kube scheduler binary or use one that you might have built for yourself, which is what you would do if you needed the scheduler to work differently.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 509: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E23
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: In this case, we're going to use the same binary to deploy the scheduler, and this time we point the configuration to the custom configuration file that we created.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 510: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E24
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: So each scheduler uses a separate configuration file, and with each file having its own scheduler name.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 511: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E25
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: Note that there are other options to be passed in, such as the kubeconfig file to authenticate into the Kubernetes API, but I'm just skipping that for now just to keep it super simple.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 512: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: So let's look at another way.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 513: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E30
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: We then pass in our custom kube scheduler configuration file as a config option to the scheduler.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 514: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E31
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: Note that we have the scheduler name specified in the file, so that's how the name gets picked up by the scheduler.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 515: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: Now another important option to look here is the leader elect option.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 516: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E33
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: And this goes into the scheduler configuration.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 517: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E34
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: The leader elect option is used when you have multiple copies of the scheduler running on different master nodes, as in a high availability setup where you have multiple master nodes with the scheduler process running on both of them.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 518: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E35
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: If multiple copies of the same scheduler are running on different nodes, only one can be active at a time, and that's where the leader elect option helps in choosing a leader who will lead the scheduling activities.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 519: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E36
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: So we will discuss more about his setup in another section.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 520: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E37
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: In case you do have multiple masters, just remember that you can pass in this additional parameter to set a log object name.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 521: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E38
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: And this is to differentiate that the new custom scheduler from the default selection process.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 522: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E40
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: And for this I'm going to go into the Kubernetes documentation pages.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 523: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E41
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: And for the one for configuring multiple schedulers.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 524: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E42
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: And if you look here first of all it shows you how to if you were to build your own scheduler, how you could clone the Kubernetes repo and then make changes to the scheduler and build it and package it into a Docker image.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 525: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E44
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: You can ignore all of this to begin with.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 526: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E45
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: So this is what it is really.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 527: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E48
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: The pot that we just looked at.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 528: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E50
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: So here you have the image which is the custom cube scheduler image.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 529: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E51
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: And this is the config file that we just talked about which has your custom scheduler config file.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 530: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E52
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: Right.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 531: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E53
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: And the binary is the cube scheduler binary.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 532: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E54
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: Now for this to work there are some additional kind of prerequisites.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 533: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E56
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: And these are basically for authentication right.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 534: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E58
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: So if you haven't gone through that yet just hold off on this.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 535: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E59
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: You can basically ignore this for now.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 536: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E61
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: Right.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 537: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E63
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: Or another thing you could do that's done here.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 538: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E64
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: The approach that's used here is basically creating a config map.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 539: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E65
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: So this is the kube cube scheduler configuration that we just talked about.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 540: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E66
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: Um, with the leader option set to false because I think the replicas is just one.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 541: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E67
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: And then you have the, uh, the scheduler name here.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 542: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E68
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: So this is the, uh, the config file.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 543: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E71
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: And then from this location you have this YAML file which has which basically has this content.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 544: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E72
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: Right.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 545: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E73
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: So this is how that maps.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 546: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E75
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: So again you can ignore these for now.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 547: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E76
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: But what we need to understand here is just that this section on how this file is passed to this custom scheduler Are just proceeding with our lecture.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 548: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E81
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: Just make sure you're checking the right namespace.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 549: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E83
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: So how do you use our custom scheduler.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 550: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E85
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: And what we need to do is add a new field called scheduler name and specify the name of the scheduler.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 551: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E86
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: And that's basically it.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 552: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E92
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: If you've got a describe command and you'll mostly notice that the scheduler isn't configured correctly.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 553: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E93
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: Now how do you know which scheduler picked it up.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 554: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E94
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: So we have multiple schedulers.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 555: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E96
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: Now we can view this in the events using the kubectl get events command with the dash o wire option.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 556: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E97
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: And this will list all the events in the current namespace and look for the scheduled events.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 557: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E98
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: And as you can see, the source of the event is the custom scheduler that we created.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 558: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E99
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: That's the name that we gave to the custom scheduler.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 559: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E100
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: And the message says that successfully assigned the image.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 560: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E101
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: So that indicates that it's working.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 561: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E102
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: You could also view the logs of the scheduler in case you run into issues.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 562: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E104
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: And then the right namespace.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 563: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E105
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: Well that's it for this lecture and I'll see you in the next one.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 564: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E1
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: -: Okay, so let's go over the practice test for multiple schedulers.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 565: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna look here.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 566: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: So let's select that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 567: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E7
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: Now, what is the image used to deploy the Kubernetes scheduler?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 568: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E10
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: And then specify the namespace as kube-system.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 569: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E11
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: Okay, so here we have the image and that is case.gcr.io/kube-scheduler version 1.23.0 as of this recording.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 570: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: So I'm gonna select that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 571: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E14
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: So all of these are already created.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 572: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: Okay.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 573: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: So that's already done for us.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 574: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E19
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: So we don't have to worry about that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 575: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: Let's go forward.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 576: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E22
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: So we have to create a ConfigMap with a name using the contents of the file, so there's already a file here.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 577: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: And this is the configuration.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 578: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E24
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: It will be passed through to the new scheduler that we're gonna create.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 579: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: So the file is there.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 580: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E26
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: We just have to create a ConfigMap for it.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 581: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E27
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: So we'll do a kubectl create ConfigMap.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 582: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: And the name will be, let's copy and paste.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 583: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E29
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: And it has to be created from file.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 584: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: We use the form file as data path to the file.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 585: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E31
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: And also specify the name system.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 586: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: This will be kube-system.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 587: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E33
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: There's no name.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 588: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: Okay.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 589: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E35
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: Let's verify that it's created.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 590: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E36
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: It's in the kube-system namespace.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 591: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E37
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: Okay, so that's created.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 592: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E38
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: Go next.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 593: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E39
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: Deploy an additional scheduler to the cluster following the given specification.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 594: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E40
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: Use the manifest file provided at root my scheduler.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 595: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: So there's already a file given for us.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 596: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E42
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: Let's add root.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 597: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E43
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: My scheduler.yaml or just since we are already in that directory, you could just give the file name.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 598: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E44
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: And we see that most of the work is already done.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 599: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E45
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: The liveness probe, the readiness probe are all set so we don't really have to worry about that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 600: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E46
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: And all we need to do is add this image that's given here and we have to use the same image that's used by the current scheduler.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 601: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E47
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: So let's find that out first.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 602: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E49
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: And this is current scheduler.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 603: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E50
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: So do a describe.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 604: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E51
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: And kube-system.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 605: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E52
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: And let's do it for the image.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 606: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E53
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: And let's get this image ID.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 607: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E54
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: And we're going to put that in in the file instead of this placeholder here.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 608: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E55
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: Okay?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 609: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E56
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: And if you look at the rest of the file, it already has the ConfigMap that we created.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 610: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E57
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: If you scroll down, you'll see there is the ConfigMap that we created.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 611: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E58
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: So that's already configured.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 612: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E60
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: We'll talk about ConfigMaps in the upcoming lectures, if you haven't already gone through that yet.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 613: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E61
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: And we're going to create this.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 614: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E62
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: Let's verify that it's created.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 615: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E63
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: In the kube-system namespace, we have my scheduler here.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 616: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E64
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: Let's check.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 617: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E65
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: Okay, so that's done.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 618: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E70
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: And what we need to do is specify the custom scheduler, which is basically my scheduler given here.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 619: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E71
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: So as we learned in the lecture, you have to add a new field here called scheduler name.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 620: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E72
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: And then we specify the name of the scheduler we just created.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 621: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E73
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: Save that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 622: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E76
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: Okay, so that's it.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 623: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E77
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: And that's the end of this lab.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 624: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E1
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: Let us now look at what scheduler profiles are.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 625: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E2
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: So let's first recap how the Kubernetes Scheduler works.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 626: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: It is waiting to be scheduled on one of these four nodes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 627: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: Now it has a resource requirement of ten CPU.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 628: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: So it's only going to be scheduled on a node that has ten CPU remaining.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 629: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: And you can see the available CPU on all of these nodes that are listed here.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 630: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: Now it is not alone.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 631: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E16
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: So to set a priority you must first create a priority class that looks like this.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 632: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E17
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: And you should set it a name and set it a priority value.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 633: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: In this case it's set to 1 million.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 634: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: So that's really high priority.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 635: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E21
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: And so that sorting happens in this scheduling phase.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 636: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E24
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: So in our case the first two nodes do not have sufficient resources.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 637: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E25
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: So do not have ten CPU remaining.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 638: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: So they are filtered out.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 639: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E27
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: The next phase is the scoring phase.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 640: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: So this is where nodes are scored with different weights from the two remaining nodes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 641: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E29
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: The scheduler associates a score to each node based on the free space it will have after reserving the CPU required for that part.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 642: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E30
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: So in this case the first one has two left and the second will have six left.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 643: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E31
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: So the second node gets a higher score.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 644: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: And so that's the node that gets picked up.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 645: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: Now all of these operations are achieved with certain plugins.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 646: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E38
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: That doesn't.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 647: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E40
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: Another example is the node unschedulable plugin, and that filters out nodes that has the Unschedulable flag set to true.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 648: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: So this is when you run the command on a node, which we will discuss later.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 649: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E42
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: But all the nodes that has unschedulable flags set to true.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 650: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E45
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: So as you can see, a single plugin can be associated in multiple different phases.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 651: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E50
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: So it's just a scoring that happens at this stage.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 652: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E51
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: And finally, in the binding phase, you have the default binder plugin that provides the binding mechanism.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 653: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E52
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: Now, the highly extensible nature of Kubernetes makes it possible for us to customize what plugins go where, and for us to write our own plugin and plug them in here.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 654: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E53
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: And that is achieved with the help of what is called as extension points.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 655: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E54
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: So at each stage, there is an extension point to which a plugin can be plugged to.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 656: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E55
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: In the scheduling queue, we have a short extension to which the Priority Sort plugin is plugged to, and then we have the filter extension, the the score and the bind extension to which each of these plugins that we just talked about are plugged two.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 657: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E56
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: As a matter of fact, there's more.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 658: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E57
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: So there are extensions before entering the filter phase called the Prefilter extension, and the and after the filter phase called post filter.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 659: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E58
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: And then there are Pre-score before the score extension point and reserve after the extension point, the score extension point.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 660: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E59
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: And then there is permit and pre bind before the bind and post bind after the binding phase.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 661: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E60
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: So there are so many options available.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 662: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E61
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: Basically you can get a custom code of your own to run anywhere in these points by just creating a plugin and plugging it into the respective kind of point that you want to plug into.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 663: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E62
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: And here is a little bit more details on some additional plugins that come by default that are associated with the different extension points.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 664: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E63
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: As you can see, some of the plugins span across multiple extension points, and some of them are just within a specific extension point.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 665: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E64
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: So that's what scheduling plugins and extension points are.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 666: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E65
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: So the highly extensible nature of Kubernetes allows us to customize the way that these plugins are called and, and write our own scheduling plugin if needed.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 667: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E66
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: So having learned that, let's look at how we can change the default behavior of how these plugins are called and and and how we can get our own plugins in there if it's really needed.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 668: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E67
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: So taking a step back earlier, we talked about deploying three separate schedulers, each with a separate scheduler binary.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 669: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E68
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: So we have the the default scheduler and then the my scheduler and then the my scheduler to.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 670: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E69
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: Now all of these are three separate scheduler binaries that are run with a separate scheduler config file associated with each of them.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 671: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E70
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: Now that's one way to deploy multiple schedulers.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 672: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E71
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: Now the problem here is that since these are separate processes, there is an additional effort required to maintain these separate processes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 673: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E72
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: And also more importantly, since they are separate processes, they may run into race conditions while making scheduling decisions.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 674: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E73
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: For example, one scheduler may schedule a workload on a node without knowing that there's another scheduler scheduling a workload on that same node at the same time.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 675: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E74
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: So with the 1.18 release of Kubernetes, a feature to support multiple profiles in a single scheduler was introduced.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 676: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E75
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: So now you can configure multiple profiles within a single scheduler in the scheduler configuration file by adding more entries to the list of profiles, and for each profile, specify a separate scheduler name.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 677: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E76
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: So this creates a separate profile for each scheduler, which acts as a separate scheduler itself, except that now multiple schedulers are run in the same binary as opposed to creating separate binaries for each scheduler.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 678: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E77
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: Now, how do you configure these different scheduler profiles to work differently?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 679: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E78
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: Because right now all of them just simply have different names.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 680: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E79
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: So they're going to work just like the default scheduler.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 681: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E80
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: How do you configure them to work differently?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 682: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E81
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: Under each scheduler profile, we can configure the plugins the way we want to.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 683: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E82
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: For example, for the scheduler two profile, I'm going to disable certain plugins like the Taint and Toleration plugin and enable my own custom plugins for the scheduler three profile.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 684: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E83
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: I'm going to disable all the Pre-score and score plugins, so this is how that's going to look.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 685: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E84
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: Under the plugins section, specify the extension point and enable or disable the plugins by name or pattern as shown in this case.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 686: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E85
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: So yeah, so that's about it.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 687: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E86
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: I hope that gives you an overview of how schedulers and scheduler profiles work, and how you can configure multiple scheduler profiles in Kubernetes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 688: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E87
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: To read more about this, check out the Kubernetes enhancement proposal that introduced Multi Scheduling Profiles.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 689: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E88
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: It's the cap 1451 um that introduced the multi scheduling profiles and the article uh on scheduling framework.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 690: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E89
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: Well that's all for now.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 691: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E90
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles / 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript
- Content: I will see you in the next one.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 692: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/135_Cluster Upgrade Introduction.extraction.md::E8
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 135_Cluster Upgrade Introduction / 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript
- Content: The controller, manager and scheduler can be at one version lower.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 693: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/135_Cluster Upgrade Introduction.extraction.md::E9
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 135_Cluster Upgrade Introduction / 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript
- Content: So if kube API server was at EKS, controller managers and kube schedulers can be at x minus one and the kubelet and kube proxy components can be at two versions lower x minus two.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 694: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/135_Cluster Upgrade Introduction.extraction.md::E10
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 135_Cluster Upgrade Introduction / 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript
- Content: So if kube API server was at 1.1, the controller manager and scheduler could be at 1.1 or 1.9, and the kubelet and kube proxy could be at 1.8.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 695: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/135_Cluster Upgrade Introduction.extraction.md::E36
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 135_Cluster Upgrade Introduction / 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript
- Content: The control plane components such as the API, server, scheduler, and controller managers go down briefly, the master going down does not mean your worker nodes and applications on the cluster are impacted.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 696: certified-kubernetes-administrator-with-practice-tests/07_Security/144_Kubernetes Security Primitives.extraction.md::E25
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 144_Kubernetes Security Primitives / 144_Kubernetes Security Primitives.txt
- Topic: Kubernetes Security Primitives
- Line Context: Lines 1-1 from transcript
- Content: All communication with the cluster between the various components such as the etcd cluster, the kube controller, manager, scheduler, API server, as well as those running on the worker nodes such as the Kubelet and kube proxy, is secured using TLS encryption.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 697: certified-kubernetes-administrator-with-practice-tests/07_Security/148_TLS in Kubernetes.extraction.md::E46
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 148_TLS in Kubernetes / 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript
- Content: The scheduler is a client that accesses the Kube API server.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 698: certified-kubernetes-administrator-with-practice-tests/07_Security/148_TLS in Kubernetes.extraction.md::E47
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 148_TLS in Kubernetes / 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript
- Content: As far as the Kube API server is concerned, the scheduler is just another client, like the admin user.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 699: certified-kubernetes-administrator-with-practice-tests/07_Security/148_TLS in Kubernetes.extraction.md::E48
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 148_TLS in Kubernetes / 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript
- Content: So the scheduler needs to validate its identity using a client TLS certificate.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 700: certified-kubernetes-administrator-with-practice-tests/07_Security/148_TLS in Kubernetes.extraction.md::E50
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 148_TLS in Kubernetes / 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript
- Content: We will call it "scheduler.crt" and "scheduler.key." The Kube Controller Manager is another client that accesses the Kube API server.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 701: certified-kubernetes-administrator-with-practice-tests/07_Security/149_TLS in Kubernetes - Certificate Creation.extraction.md::E43
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 149_TLS in Kubernetes - Certificate Creation / 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript
- Content: The kube scheduler.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 702: certified-kubernetes-administrator-with-practice-tests/07_Security/149_TLS in Kubernetes - Certificate Creation.extraction.md::E44
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 149_TLS in Kubernetes - Certificate Creation / 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript
- Content: Now the kube scheduler is a system component part of the Kubernetes control plane, so its name must be prefixed with the keyword system.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 703: certified-kubernetes-administrator-with-practice-tests/07_Security/149_TLS in Kubernetes - Certificate Creation.extraction.md::E48
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 149_TLS in Kubernetes - Certificate Creation / 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript
- Content: Then all of the client certificates including the admin, user scheduler, controller manager and kube proxy.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 704: certified-kubernetes-administrator-with-practice-tests/07_Security/149_TLS in Kubernetes - Certificate Creation.extraction.md::E125
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 149_TLS in Kubernetes - Certificate Creation / 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript
- Content: Since the nodes are system components like the kube scheduler and the controller manager we talked about earlier, the format starts with the system keyword followed by node and then the node name.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 705: certified-kubernetes-administrator-with-practice-tests/07_Security/154_Certificates API.extraction.md::E55
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 154_Certificates API / 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript
- Content: If you look at the Kubernetes control plane, you see the kube-apiserver, the scheduler, the controller manager, etcd server, et cetera.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 706: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/241_Design a Kubernetes Cluster.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 241_Design a Kubernetes Cluster / 241_Design a Kubernetes Cluster.txt
- Topic: Design a Kubernetes Cluster
- Line Context: Lines 1-1 from transcript
- Content: Depending on the kind of application, the resource requirements may vary.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 707: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/241_Design a Kubernetes Cluster.extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 241_Design a Kubernetes Cluster / 241_Design a Kubernetes Cluster.txt
- Topic: Design a Kubernetes Cluster
- Line Context: Lines 1-1 from transcript
- Content: Now, depending on the size of your cluster, the resource requirement of your node varies.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 708: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/243_Configure High Availability.extraction.md::E7
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 243_Configure High Availability / 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript
- Content: But the master is not available and so are the controllers and schedulers on the master.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 709: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/243_Configure High Availability.extraction.md::E19
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 243_Configure High Availability / 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript
- Content: As we learned already, the master node hosts the control plane components, including the API controller, manager, scheduler and etcd server in a setup with an additional master node.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 710: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/243_Configure High Availability.extraction.md::E38
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 243_Configure High Availability / 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript
- Content: What about the scheduler and the controller manager.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 711: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/243_Configure High Availability.extraction.md::E42
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 243_Configure High Availability / 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript
- Content: The same is true with scheduler.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 712: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/243_Configure High Availability.extraction.md::E59
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 243_Configure High Availability / 243_Configure High Availability.txt
- Topic: Configure High Availability
- Line Context: Lines 1-1 from transcript
- Content: The scheduler follows a similar approach and has the same command line options.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 713: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/276_Patches Intro.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 276_Patches Intro / 276_Patches Intro.txt
- Topic: Patches Intro
- Line Context: Lines 1-1 from transcript
- Content: And so we can match on a couple of different properties like kind or the version or the name of the object or the namespace, labelSelector, or AnnotationSelector.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 714: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E106
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional) / 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And we see selector is right, the endpoints it has has detected the endpoint.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 715: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E173
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional) / 288_Lab Solution - Application Failure _ (Optional).txt
- Topic: Lab Solution - Application Failure _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So that should be the selector not name equals SQL 0001.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 716: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E32
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional) / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we have to look at the status of the scheduler.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 717: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E34
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional) / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And here you have the scheduler and it has control plane at the end.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 718: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E38
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional) / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And then it says fail to start container kube-scheduler error response from daemon, OCI runtime create failed, starting container process kube-scheduler, executable file not found.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 719: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E43
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional) / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So the file is in TTC Kubernetes manifests and we have the kube-scheduler.yaml file here.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 720: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E44
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional) / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So this is the manifest file for kube-scheduler and within that there's a wrong command.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 721: certified-kubernetes-administrator-with-practice-tests/15_Other Topics/299_JSON Path in Kubernetes.extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 15_Other Topics / 299_JSON Path in Kubernetes / 299_JSON Path in Kubernetes.txt
- Topic: JSON Path in Kubernetes
- Line Context: Lines 1-1 from transcript
- Content: Or the list of nodes and the taints set on them.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 722: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E602
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional) / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Topic: Mock Exam - 2 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: In this case it's got a namespace selector.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 723: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E220
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional) / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Topic: Mock Exam - 3 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And it says, taint the worker node, node 1 to be unscheduled.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 724: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E224
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional) / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Topic: Mock Exam - 3 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And we see the values that we should use for the taint.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 725: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E225
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional) / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Topic: Mock Exam - 3 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So to taint a node and if you want, you can always take a look in the documentation.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 726: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E226
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional) / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Topic: Mock Exam - 3 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: If you just search for taint, it's probably gonna be the first one.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 727: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E229
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional) / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Topic: Mock Exam - 3 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we have to taint node1.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 728: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E230
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional) / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Topic: Mock Exam - 3 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So I'll say kubectl, taint node node1.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 729: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E231
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional) / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Topic: Mock Exam - 3 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And then what we have to do is we have to provide the key then the value and then the effect which is no schedule.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 730: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E232
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional) / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Topic: Mock Exam - 3 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we'll say env_type = production and then NoSchedule.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 731: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E233
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional) / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Topic: Mock Exam - 3 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And so now if I do kubectl describe node node1 and then grep for taint, we should see that it has taint now.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 732: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E237
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional) / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Topic: Mock Exam - 3 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: But this time it's going to have a toleration so that it can be scheduled on node1.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 733: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E243
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional) / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Topic: Mock Exam - 3 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And that's all we need for the base configuration, but we have to add a toleration so that it can be scheduled to node1.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 734: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E244
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional) / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Topic: Mock Exam - 3 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And so to add a toleration, I'm just gonna go to top level and I'll just say tolerations.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 735: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E246
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional) / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Topic: Mock Exam - 3 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So first, what is the effect of the toleration that we're gonna tolerate?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 736: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E247
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional) / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Topic: Mock Exam - 3 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So the effect is going to be NoSchedule. 'cause remember that's what we set it on.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 737: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E248
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional) / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Topic: Mock Exam - 3 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: The node effect is NoSchedule.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 738: certified-kubernetes-application-developer/02_Core Concepts/007_Recap - Kubernetes Architecture.extraction.md::E23
- Type: Architecture
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 007_Recap - Kubernetes Architecture / 007_Recap - Kubernetes Architecture.txt
- Topic: Recap - Kubernetes Architecture
- Line Context: Lines 1-1 from transcript
- Content: Runtime controllers and schedulers.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 739: certified-kubernetes-application-developer/02_Core Concepts/007_Recap - Kubernetes Architecture.extraction.md::E29
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 007_Recap - Kubernetes Architecture / 007_Recap - Kubernetes Architecture.txt
- Topic: Recap - Kubernetes Architecture
- Line Context: Lines 1-1 from transcript
- Content: Etcd is responsible for implementing locks within the cluster to ensure that there are no conflicts between the masters, the scheduler is responsible for distributing work or containers across multiple nodes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 740: certified-kubernetes-application-developer/02_Core Concepts/007_Recap - Kubernetes Architecture.extraction.md::E53
- Type: Architecture
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 007_Recap - Kubernetes Architecture / 007_Recap - Kubernetes Architecture.txt
- Topic: Recap - Kubernetes Architecture
- Line Context: Lines 1-1 from transcript
- Content: The master also has the control manager and the scheduler.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 741: certified-kubernetes-application-developer/02_Core Concepts/038_Solution - Imperative Commands (optional).extraction.md::E35
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 038_Solution - Imperative Commands (optional) / 038_Solution - Imperative Commands (optional).txt
- Topic: Solution - Imperative Commands (optional)
- Line Context: Lines 1-1 from transcript
- Content: So with this command, there's no way to specify a selector.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 742: certified-kubernetes-application-developer/02_Core Concepts/038_Solution - Imperative Commands (optional).extraction.md::E48
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 038_Solution - Imperative Commands (optional) / 038_Solution - Imperative Commands (optional).txt
- Topic: Solution - Imperative Commands (optional)
- Line Context: Lines 1-1 from transcript
- Content: Or if you go the other approach, then there's, you cannot specify the selector.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 743: certified-kubernetes-application-developer/02_Core Concepts/038_Solution - Imperative Commands (optional).extraction.md::E73
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 038_Solution - Imperative Commands (optional) / 038_Solution - Imperative Commands (optional).txt
- Topic: Solution - Imperative Commands (optional)
- Line Context: Lines 1-1 from transcript
- Content: Let's see if it's got the right labels and selectors, and also the endpoint.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 744: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Let's look at resource requirements.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 745: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E2
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Let us start by looking at a three node Kubernetes cluster.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 746: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Each node has a set of CPU and memory resources available.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 747: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: If nodes have no sufficient resources available.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 748: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So what are these blocks and what are their values.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 749: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E16
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: For example, it could be one CPU and one GB of memory and this is known as the resource request for a container.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 750: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So the minimum amount of CPU or memory requested by the container.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 751: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: In this case, I set it to four GB of memory and two counts of CPU.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 752: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So what does one count of CPU really mean?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 753: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Now you can specify any value as low as 0.1.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 754: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So 0.1 CPU can also be expressed as 100 M, where M stands for milli, and you can go as low as one M, but not lower than that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 755: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Uh, now one count of CPU is equivalent to one Vcpu so that's one vcpu in AWS.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 756: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So if you're looking at the AWS cloud, or it could be referred to as one core in GCP or Azure or one hyper thread, um, on other other systems, and you could request a higher number of CPUs for the container provided your nodes are sufficiently funded.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 757: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E28
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: In this example, I have set it to five.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 758: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E29
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Now, similarly with memory, you could specify 256 mebibyte using the mi suffix, or specify the same value in memory like this.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 759: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: That's the um, the full number, the whole number, and or specify the same, uh, value in memory like this as m.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 760: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E31
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So um, or use the suffix g for uh, gigabyte.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 761: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E32
- Type: Comparison
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So note the difference between g and g.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 762: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E33
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So g is gigabyte and it refers to 1000MB, whereas g refers to GB byte.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 763: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: And that that would be equivalent to 1024MB.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 764: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E35
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So the same applies to megabyte and maybe byte in kilobyte and kibibyte.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 765: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E36
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Now let's look at a container running on a node, and by default, a container has no limit to the resources it can consume on a node.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 766: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E38
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Um, on a node, it can go up and consume as much resources as it requires.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 767: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E39
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: And, and that suffocates the native processes on the node or other containers of resources.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 768: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E41
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: For example, if you set a limit of one vcpu to um, the containers, a container will be limited to consume only one vcpu uh, from that node.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 769: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E42
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So the same goes with memory.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 770: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E43
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: For example, you can set a limit of 512 megabyte on containers.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 771: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E44
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Um, like this.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 772: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E45
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Now you can specify the limits under the limits section.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 773: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E47
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So here specify the new limits for memory and CPU.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 774: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E48
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Like this.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 775: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E51
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So if there are multiple containers, then each container can have a request or limit set for its own.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 776: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E53
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: In case of the CPU, the system throttles the CPU so that it does not go beyond the specified limit.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 777: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E54
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: A container cannot use more CPU resources than its limit.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 778: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E55
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: However, this is not the case with memory.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 779: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E58
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So that's what is Om refers to out of memory kill.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 780: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E60
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Let's see what the default configuration is right?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 781: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E61
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So by default Kubernetes does not have a CPU or memory request or limit set.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 782: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E63
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So this is very, very important to note.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 783: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E64
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So let's just look at how CPU requests and limits work.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 784: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E67
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So just keep that in mind.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 785: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E69
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So of course this is not ideal.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 786: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E70
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Now let's look at another case where we have no request specified.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 787: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E71
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: But we do have limits specified.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 788: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E72
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: In this case, Kubernetes automatically sets requests to the same as limits.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 789: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E74
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: The next one is where requests and limits are set.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 790: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E76
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So this might look to be the most ideal scenario.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 791: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E80
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Right?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 792: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E81
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So we don't want to unnecessarily limit resources of CPU cycles.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 793: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E82
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So, uh, that's uh, that is not really the ideal scenario.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 794: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E83
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: And that's where the last, um, scenario comes in.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 795: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E87
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So this is the most ideal setup.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 796: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E89
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: For example, a good use case for setting limits is our labs themselves, where, um, all the labs that you've been, you guys have been going through and accessing, um, as part of this course, they are hosted as containers, um, on a cluster.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 797: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E90
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Right.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 798: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E91
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: And since it's made accessible to public and um, users, uh, can run any kind of workload that they want, we set limits to prevent the user from misusing the infrastructure to, let's say, perform Bitcoin mining or, um, other resource consuming activities.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 799: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E92
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So that works for us in that case.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 800: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E93
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: But in your case, if you don't want to restrict your application to consume additional CPU, uh, if needed, then you could consider not setting limits.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 801: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E95
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Right.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 802: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E97
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So just make sure that you have set requests for all the nodes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 803: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E98
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So a couple of things to note.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 804: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E100
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Right.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 805: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E102
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So also note that these recommendations are just for CPU.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 806: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E103
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So um, let's look at how it works for memory next.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 807: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E104
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So it's kind of similar.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 808: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E105
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So if you look at the memory let's say there are two.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 809: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E108
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So this is not ideal.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 810: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E109
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Now let's look at the case where we have no requests specified.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 811: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E110
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: But we do have limits specified.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 812: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E111
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: And in this case Kubernetes automatically sets requests to the same as limits.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 813: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E112
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So for example requests and limits are assumed to be three gigabytes in this case.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 814: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E114
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: The next one is where requests and limits are set.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 815: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E116
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: And the last one is setting requests, but no limits.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 816: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E122
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Um, set.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 817: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E123
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Now this is possible with limit ranges.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 818: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E125
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: This is applicable at the namespace level.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 819: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E126
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So remember that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 820: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E127
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: And this is an object.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 821: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E128
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So you create a definition file with the API version set to v1 kind set to limit range.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 822: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E129
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: And we'll give it a name CPU resource constrained.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 823: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E130
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: We then set the default limit to 500.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 824: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E131
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: M default request to the same as well.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 825: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E133
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So these are of course some example values, not a recommendation or anything.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 826: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E134
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So you must set whatever is best for your applications.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 827: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E135
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Um so the same goes for memory.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 828: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E136
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Uh, use memory instead of CPU and specify the defaults and max and min values in this in this form.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 829: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E140
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: And finally, is there any way to restrict the total amount of resources that can be consumed by applications deployed in a Kubernetes cluster.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 830: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E142
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: What we could do is create quotas at a namespace level.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 831: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E143
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So a resource quota is a namespace level object that can be created to set hard limits for requests and limits.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 832: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E144
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: In this example, this resource limits the total requested CPU and the current namespace to four and memory to four gigabyte.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 833: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E145
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: And it defines a maximum limit of CPU consumed by all the parts together to be ten and memory to be um, ten gigabyte as well.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 834: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E146
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Right.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 835: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E147
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So that's um, that's another option, uh, that can be explored.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 836: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E148
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Well, uh, that's all for now.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 837: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E149
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements / 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Uh, refer to these pages on the Kubernetes documentation site for more information, and head over to the labs, and I'll see you in the next one.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 838: certified-kubernetes-application-developer/03_Configuration/064_Solution_ Resource Requirements.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 064_Solution_ Resource Requirements / 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Teacher: In this video, I'm gonna walk you through the solutions for the resource limits lab.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 839: certified-kubernetes-application-developer/03_Configuration/064_Solution_ Resource Requirements.extraction.md::E4
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 03_Configuration / 064_Solution_ Resource Requirements / 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: And if we scroll up we should see a resource section.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 840: certified-kubernetes-application-developer/03_Configuration/064_Solution_ Resource Requirements.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 064_Solution_ Resource Requirements / 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So, here we can see that the CPU requirements is that it needs to have a CPU of one.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 841: certified-kubernetes-application-developer/03_Configuration/064_Solution_ Resource Requirements.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 064_Solution_ Resource Requirements / 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Ill select one.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 842: certified-kubernetes-application-developer/03_Configuration/064_Solution_ Resource Requirements.extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 064_Solution_ Resource Requirements / 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: After that's deleted we can just check this.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 843: certified-kubernetes-application-developer/03_Configuration/064_Solution_ Resource Requirements.extraction.md::E10
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 064_Solution_ Resource Requirements / 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: After that's verified we'll go to the next question.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 844: certified-kubernetes-application-developer/03_Configuration/064_Solution_ Resource Requirements.extraction.md::E12
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 064_Solution_ Resource Requirements / 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: And for some reason or another it fails to get into a running state.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 845: certified-kubernetes-application-developer/03_Configuration/064_Solution_ Resource Requirements.extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 064_Solution_ Resource Requirements / 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: And we need to figure out why it is not in a currently running state.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 846: certified-kubernetes-application-developer/03_Configuration/064_Solution_ Resource Requirements.extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 064_Solution_ Resource Requirements / 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: And if we scroll up, we can see that in the last state it set to terminated and we can see that the reason was because it was oomkilled, so out of memory.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 847: certified-kubernetes-application-developer/03_Configuration/064_Solution_ Resource Requirements.extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 064_Solution_ Resource Requirements / 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: So I'm gonna select oomkilled.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 848: certified-kubernetes-application-developer/03_Configuration/064_Solution_ Resource Requirements.extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 064_Solution_ Resource Requirements / 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: And from the same output we, if you go to the limits section for memory, we can see it's set to 10 mebibytes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 849: certified-kubernetes-application-developer/03_Configuration/064_Solution_ Resource Requirements.extraction.md::E26
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 064_Solution_ Resource Requirements / 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: And then I'll go into my Elephant.yaml file.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 850: certified-kubernetes-application-developer/03_Configuration/064_Solution_ Resource Requirements.extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 064_Solution_ Resource Requirements / 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: And we need to increase the memory limit up to 20 mebibytes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 851: certified-kubernetes-application-developer/03_Configuration/064_Solution_ Resource Requirements.extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 064_Solution_ Resource Requirements / 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: Right now it's set to 10.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 852: certified-kubernetes-application-developer/03_Configuration/064_Solution_ Resource Requirements.extraction.md::E29
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 064_Solution_ Resource Requirements / 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: We'll then save the configuration and now I can just do a kubectl apply dash F and then grab the Elephant.yaml file.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 853: certified-kubernetes-application-developer/03_Configuration/064_Solution_ Resource Requirements.extraction.md::E30
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 064_Solution_ Resource Requirements / 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: After that's deployed we will then run the validation and everything was successful.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 854: certified-kubernetes-application-developer/03_Configuration/064_Solution_ Resource Requirements.extraction.md::E31
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 064_Solution_ Resource Requirements / 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: We'll go to the next question.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 855: certified-kubernetes-application-developer/03_Configuration/064_Solution_ Resource Requirements.extraction.md::E34
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 064_Solution_ Resource Requirements / 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: And then I will hit, okay.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 856: certified-kubernetes-application-developer/03_Configuration/064_Solution_ Resource Requirements.extraction.md::E37
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 064_Solution_ Resource Requirements / 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: And once that's complete we'll run the validation.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 857: certified-kubernetes-application-developer/03_Configuration/064_Solution_ Resource Requirements.extraction.md::E38
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 064_Solution_ Resource Requirements / 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: And that's successful well then go to the next section.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 858: certified-kubernetes-application-developer/03_Configuration/064_Solution_ Resource Requirements.extraction.md::E39
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 064_Solution_ Resource Requirements / 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript
- Content: And that's going to wrap up the resource limits lab.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 859: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E2
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations / 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: The concept of taints and tolerations can be a bit confusing for beginners, so we will try to understand what they are using an analogy of a bug approaching a person.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 860: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations / 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: Now my apologies in advance, but this is the best I could come up with.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 861: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations / 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: To prevent the bug from landing on the person, we spray the person with repellent spray or taint as we will call it in this lecture.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 862: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations / 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: The bug is intolerant to the smell, so on approaching the person, the taint applied on the person throws the bug off.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 863: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations / 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: However, there could be other bugs that are tolerant to this smell and so the taints doesn't really affect them and so they end up landing on the person.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 864: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E7
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations / 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: So there are two things that decide if a bug can land on a person first, the taint on the person, and second the bug's toleration level to that particular taint.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 865: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations / 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: Now, taints and tolerations have nothing to do with security or intrusion on the cluster.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 866: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations / 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: Let us start with a simple cluster with three worker nodes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 867: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations / 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: The nodes are named one, two, and three.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 868: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations / 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: Let's call them A, B, C, and D.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 869: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations / 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: Now let us assume that we have dedicated resources on node one for a particular use case or application.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 870: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations / 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: So we would like only those parts that belong to this application to be placed on node one.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 871: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E19
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations / 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: First, we prevent all parts from being placed on the node by placing a taint on the node.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 872: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations / 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: Let's call it blue by default.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 873: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations / 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: Blue.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 874: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations / 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: This solves half of our requirement.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 875: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations / 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: In our case, we would like to allow only part D to be placed on this node.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 876: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations / 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: So we add a toleration to part D.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 877: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations / 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: Part D is now tolerant to blue.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 878: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E35
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations / 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: It is thrown off again and ends up on node two.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 879: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E39
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations / 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: So how do you do this?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 880: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E40
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations / 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: Use the kube control nodes command to taint a node.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 881: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations / 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: Specify the name of the node to taint followed by the taint itself, which is a key value pair.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 882: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E44
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations / 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: There are three taint effects.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 883: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E49
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations / 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: An example command would be to taint node node one with the key value pair app blue, and an effect of no schedule.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 884: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E52
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations / 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: Add a section called Tolerations.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 885: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E53
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations / 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: Move the same values used while creating the taint under this section.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 886: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E54
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations / 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: The key is app operator is equal, value is blue and the effect is no schedule.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 887: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E55
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations / 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: And remember all of these values need to be encoded in double quotes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 888: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E57
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations / 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: Let us try to understand the no execute change effect in a bit more depth.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 889: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E58
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations / 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: In this example we have three nodes running some workload.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 890: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E59
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations / 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: We do not have any teams or tolerations at this point, so they are scheduled this way.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 891: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E62
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations / 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: Now, going back to our original scenario where we have taints and tolerations configured, remember taints and tolerations are only meant to restrict nodes from accepting certain paths.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 892: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E67
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations / 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: Finally, while we are on this topic, let us also take a look at an interesting fact.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 893: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E69
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations / 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: Plus it runs all the management software.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 894: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E71
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations / 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: Why is that?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 895: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E73
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations / 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: You can see this as well as modify this behavior if required.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 896: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E74
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations / 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: However, a best practice is to not deploy application workloads on a master server.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 897: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E75
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations / 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: To see this tent run a cube control, describe node command with cube Master as the node name and look for the tent section.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 898: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E77
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations / 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: Well, that's it for this lecture.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 899: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E78
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations / 069_Taints and Tolerations.txt
- Topic: Taints and Tolerations
- Line Context: Lines 1-1 from transcript
- Content: Head over to the Coding Exercises section and practice working with Taints and Tolerations.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 900: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: -: Okay, so let's go over the lab for practicing taints and tolerations.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 901: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E2
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So let's start with the first question, how many nodes exist on the system, including the control plane?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 902: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So let's look at the number of nodes. and we see that there are two nodes, control plane and node 01, so the answer is two.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 903: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E4
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay, so the next question is, do any taints exist on node 01 node?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 904: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So for that we're gonna have to take a closer look at node 01.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 905: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we do a kubectl describe node, node 01, and we see taints right here and we see that there are none, so there are no taints on this particular node.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 906: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So I'm gonna select no going to clear my screen.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 907: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E8
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay, so the next question is to create a taint on node 01, with key of spray value of morteen, and effect of node schedule.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 908: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E9
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna continue with the, the silly example that we used in the lecture of the spray and morteen and mosquito and bee.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 909: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E10
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So here the task is to create a taint.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 910: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna do kubectl taint and let's quickly look at the help.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 911: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E12
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So the command is kubectl of taint, and then nodes, then the name of the node, and then followed by these values, which are, the key has to be spray, and then the value is morteen, and then the effect is no schedule.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 912: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So let's do that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 913: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E14
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So it's kubectl taint, node, and it's node 01, and then the key is spray, and the value is morteen, and the effect is no schedule.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 914: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay, let's confirm that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 915: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we have the spray equals morteen, and the no schedule effect, right.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 916: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So that's done.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 917: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we now have a taint on node 01.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 918: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Ignore the status for now.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 919: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So it seems to be in a pending state, so select pending.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 920: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Is it because image is not available?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 921: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E27
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Is there an error?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 922: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E31
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna select that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 923: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: The name is going to be bee, and the image is going to be nginx.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 924: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E35
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And basically, now we have to add toleration to it, but you cannot specify toleration in the command lane.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 925: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E37
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So that's the yamo file and we're gonna redirect that to bee.yamo.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 926: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E38
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we have this in bee.yamo, we're going to edit bee.yamo file and we're going to add in tolerations.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 927: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E39
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So add a section called tolerations.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 928: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E40
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Now if you're not sure of the format check out the Kubernetes documentation pages and search for chains tolerations, and that's the first result.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 929: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And so these are, this is the command for taint, and this is the format for tolerations.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 930: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E42
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So dash key operator value and effect, so that's key, so key is going to be spray, operator value and effect.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 931: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E43
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So the value is going to be in effect that's going to be schedule, finally we have operator set be equal.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 932: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E44
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Operator set to equal, you save that, and let's create image.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 933: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E45
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay, so it's now in a container creating state.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 934: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E46
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Let's watch the creation process and we can see that it's now in a running state.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 935: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E48
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay, so that's correct.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 936: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E51
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So basically now this bee was able to tolerate the taint set on node 01.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 937: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E52
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Now do you see any taints on control plane node?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 938: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E53
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So let's look at the control plane node, and let's look at taints, and we see that yes, there is a taint set on the control plane node and it's set to no schedule, that's the effect.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 939: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E54
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So yes, it's set, it's set to no schedule.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 940: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E55
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay, now remove the taint on control plane, which currently has the taint effect of no schedule.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 941: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E56
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we've got to remove that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 942: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E57
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So first let's get that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 943: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E58
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So this is the taint, so let's copy that, and the command to remove is the same, kubectl taint, and we just, that's by the node, that's control plane node, specify the taint that we want to remove, and at the end you've got to put a dash or a minus for it to remove that taint.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 944: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E59
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So it says it's untainted, so let's confirm that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 945: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E60
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Go back to taints, I see, that nothing is set.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 946: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E61
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Let's click on check.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 947: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E62
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay, so that's done.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 948: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E66
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And then we have to, let's check on what node it is placed so as you can see it's now placed on the control plane node.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 949: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E68
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And so it was not placed on any of the nodes because both of them had a taint then.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 950: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E71
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So it's, the answer to this is control plane.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 951: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E72
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional) / 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay, so that's the end of this lab.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 952: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging / 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
- Line Context: Lines 1-1 from transcript
- Content: In this lecture we will talk about node selectors in Kubernetes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 953: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E2
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging / 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
- Line Context: Lines 1-1 from transcript
- Content: Let us start with a simple example.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 954: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E3
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging / 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
- Line Context: Lines 1-1 from transcript
- Content: You have a three node cluster of which two are smaller nodes with lower hardware resources, and one of them is a larger node configured with higher resources.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 955: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging / 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
- Line Context: Lines 1-1 from transcript
- Content: You have different kinds of workloads running in your cluster.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 956: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging / 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
- Line Context: Lines 1-1 from transcript
- Content: You would like to dedicate the data processing workloads that require higher horsepower to the larger node, as that is the only node that will not run out of resources in case the job demands extra resources.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 957: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging / 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
- Line Context: Lines 1-1 from transcript
- Content: There are two ways to do this.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 958: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E10
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging / 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
- Line Context: Lines 1-1 from transcript
- Content: The first is using node selectors, which is the simple and easier method.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 959: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging / 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
- Line Context: Lines 1-1 from transcript
- Content: But wait a minute, where did the size large come from?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 960: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging / 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
- Line Context: Lines 1-1 from transcript
- Content: And how does Kubernetes know which is the large node?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 961: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging / 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
- Line Context: Lines 1-1 from transcript
- Content: The key value pair of size and large are in fact labels assigned to the nodes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 962: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging / 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
- Line Context: Lines 1-1 from transcript
- Content: So let us go back and see how we can label the nodes to label a node.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 963: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E21
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging / 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
- Line Context: Lines 1-1 from transcript
- Content: Use the command Kube cube control.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 964: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging / 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
- Line Context: Lines 1-1 from transcript
- Content: Label nodes followed by the name of the node and the label in a key value pair format.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 965: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging / 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
- Line Context: Lines 1-1 from transcript
- Content: In this case it would be cube control label nodes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 966: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging / 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
- Line Context: Lines 1-1 from transcript
- Content: Node one, followed by the label in a key value format such as size equals large.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 967: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging / 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
- Line Context: Lines 1-1 from transcript
- Content: Node selector served our purpose, but it has limitations.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 968: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging / 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
- Line Context: Lines 1-1 from transcript
- Content: We used a single label and selector to achieve our goal here.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 969: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging / 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
- Line Context: Lines 1-1 from transcript
- Content: But what if our requirement is much more complex?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 970: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E31
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging / 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
- Line Context: Lines 1-1 from transcript
- Content: You cannot achieve this using node selectors.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 971: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E32
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging / 072_Node Selectors Logging.txt
- Topic: Node Selectors Logging
- Line Context: Lines 1-1 from transcript
- Content: For this node affinity and anti-affinity features were introduced and we will look at that next.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 972: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity / 073_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: In this lecture we will talk about node affinity feature in Kubernetes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 973: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity / 073_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: In the previous lecture, we did this easily using node selectors.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 974: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity / 073_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: We discussed that you cannot provide advanced expressions like or or not with node selectors.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 975: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity / 073_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: With great power comes great complexity.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 976: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity / 073_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: So the simple node selector specification will now look like this with node affinity.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 977: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity / 073_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: Although both does exactly the same thing.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 978: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity / 073_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: Let us look at it a bit closer.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 979: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E12
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity / 073_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: Under spec you have affinity and then node affinity under that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 980: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E13
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity / 073_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: And then you have a property that looks like a sentence called required during scheduling.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 981: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity / 073_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: Ignored during execution.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 982: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity / 073_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: No description needed for that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 983: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E16
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity / 073_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: And then you have the node selector turns.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 984: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity / 073_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: That is an array.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 985: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity / 073_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: And that is where you will specify the key and value pairs.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 986: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity / 073_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: In this case, it is just one called large.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 987: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity / 073_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: You could use the not in operator to say something like size, not in small, where node affinity will match the nodes with a size not set to small.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 988: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E23
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity / 073_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: We know that we have only set the label size to large and medium nodes, The smaller nodes don't even have the label set, so we don't really have to even check the value of the label, as long as we are sure we don't set a label size to the smaller nodes, using the exists operator will give us the same result.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 989: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E24
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity / 073_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: The excess operator will simply check if the label size exists on the nodes, and you don't need the values section for that, as it does not compare the values.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 990: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity / 073_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: There are a number of other operators as well.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 991: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity / 073_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: Check the documentation for specific details.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 992: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity / 073_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: But what if node affinity could not match a node with a given expression?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 993: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity / 073_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: In this case, what if there are no nodes with the label called size?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 994: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E33
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity / 073_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: All of this is answered by the long sentence like property under node affinity, which happens to be the type of node affinity.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 995: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E35
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity / 073_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: There are currently two types of node affinity available.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 996: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E36
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity / 073_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: Required during scheduling.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 997: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E37
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity / 073_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: Ignored during execution and preferred during scheduling.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 998: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E38
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity / 073_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: Ignored during execution.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 999: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E39
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity / 073_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: And there are additional types of node affinity planned as of this recording.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1000: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E40
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity / 073_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: Required during scheduling.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1001: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity / 073_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: Required during execution.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1002: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E42
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity / 073_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: We will now break this down to understand further.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1003: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E43
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity / 073_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: We will start by looking at the two available affinity types.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1004: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E45
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity / 073_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: During scheduling is the state where a pot does not exist and is created for the first time.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1005: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E47
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity / 073_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: Now, what if the nodes with matching labels are not available?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1006: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E48
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity / 073_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: For example, we forgot to label the node as large.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1007: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E49
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity / 073_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: That is where the type of node affinity used comes into play.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1008: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E55
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity / 073_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: In that case, you could set it to preferred.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1009: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E56
- Type: Architecture
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity / 073_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: And in cases where a matching node is not found, the scheduler will simply ignore Ignored node affinity rules and place the pot on any available node.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1010: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E58
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity / 073_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: The second part of the property or the other state is during execution.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1011: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E60
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity / 073_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: For example, say an administrator removed the label we set earlier called size equals large from the node.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1012: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E63
- Type: Comparison
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity / 073_Node Affinity.txt
- Topic: Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: In the next lecture, we will compare taints and Tolerations and node affinity.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1013: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: -: Okay, in this video we will go over the practice test for node affinity.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1014: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E2
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So the first question is to identify the labels on node zero one.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1015: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So to count the number of labels on node zero one.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1016: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So let's do kubectl, describe node, node zero one and let's look at the labels.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1017: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we have one, two, three, four, five, five labels.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1018: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna select five.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1019: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E7
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And then the next question is, what is the value set to the label at beta.kubernetes.io/arch?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1020: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So on node zero one, so we are already on node zero one and it is AMD 64.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1021: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: That's this one.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1022: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E10
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay, so the next question is to apply a label called color equals blue to node, node zero one.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1023: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So for that we're going to use the kubectl label command.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1024: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So let's take a look at the help.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1025: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E13
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And here we have some examples.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1026: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E15
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And then the node name, and then just the label.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1027: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So it's pretty straightforward.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1028: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E17
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna do kubectl, label, node, node zero one and then color equals blue.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1029: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Let's verify that it's set correctly.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1030: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: We're gonna go back the labels and we see the color equals blue.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1031: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we, we've gotta check the taints on both the nodes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1032: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So let's do that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1033: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Let's check the taints on each one.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1034: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna do a kubectl describe node.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1035: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Let's check node zero one.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1036: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And let's just check for taints.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1037: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So there are no taints on node zero one and the other node, which I believe is the control plane node.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1038: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Let's check that too.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1039: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E36
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Now we've got to set the node affinity for these, right?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1040: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E37
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we, we have to use the required during scheduling, ignore during execution, then use the color and the values to blue.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1041: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E38
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So for this, let's go to the Kubernetes documentation page and search for node affinity.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1042: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E39
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And let's get this.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1043: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E40
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And here, let's look for the affinity spec.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1044: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we're going to copy this and paste it here.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1045: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E43
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And so all of these are kind of aligned a bit more to the left.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1046: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E45
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we have to move it all a little bit to the right.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1047: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E46
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So for this, what I'm gonna do here is, the first one is okay, first line is okay but all these remaining lines we need to move it one step inside.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1048: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E47
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So press capital V and then select all the lines.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1049: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E48
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Then I'm gonna do a greater than symbol.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1050: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E49
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So that's shift dot on the keyboard that I'm using.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1051: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E50
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So it moves everything to the, to the right.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1052: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E51
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So it's not, not very pretty but I think that will do the job for now.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1053: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E52
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And I'm just going to set the key to color and the value to blue.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1054: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E53
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So there are ways that we can set the vim settings so that this always gets indented with spaces as opposed to multiple spaces at a time that you can see here.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1055: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E54
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna save that and let's give this a shot.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1056: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E55
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay, so that's done.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1057: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E59
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So they're all on node zero one.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1058: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E61
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And the recommendation is to use the label node coordinators dot io slash master which is already set on the control plane node.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1059: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E62
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So if you look at the control plane node we see that there is this label, right?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1060: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E63
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: It doesn't have a value set, right?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1061: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E65
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And the label does not have a value.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1062: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E66
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: But if this label exists then that's where it should be placed on.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1063: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E67
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So let's try and do that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1064: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E69
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: But we're not gonna create it.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1065: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E70
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna do a dry run because we need to get the yaml file to input the new definition rules.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1066: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E71
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna do a dry run equals find and then dash o yaml.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1067: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E72
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So that's gonna give us the yaml output.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1068: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E73
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Then we're going to put it to a file named red dot yaml.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1069: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E74
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Now we're going to edit that file.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1070: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E75
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And within the spec section, we're gonna do the same as we did before.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1071: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E76
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna copy this new definition rule and paste it.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1072: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E77
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Now we've got to select all of these lines.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1073: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E78
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: We're gonna do a shift dot on my keyboard which is gonna, that's basically the greater than symbol and it's gonna move it to the right.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1074: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E79
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Now we're gonna change this so the key is the label, which is this.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1075: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E80
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: We're gonna copy and paste.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1076: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E81
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And as we realized that this label does not have value, so there's no point in checking the value here.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1077: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E82
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna get rid of this and all we are gonna do is say if the label exists, so the operator would be exists with a capital E.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1078: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E83
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Save that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1079: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E85
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: There seems to be some error.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1080: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E86
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So let's go back, see what the error is.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1081: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E87
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: It's on line 26.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1082: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E88
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Did not find expected key.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1083: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E89
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So line 26 is this.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1084: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E90
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay, actually it's this line here.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1085: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E91
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So this is not currently indented, that's the problem.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1086: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E92
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: We're going to move it two characters before.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1087: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E93
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay so we're going to save that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1088: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E94
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Let's try that again.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1089: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E95
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay, so even though here it said line 26 the issue was a few lines above.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1090: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E96
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay so let's check our solution.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1091: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E97
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: All right, so that works.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1092: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E99
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional) / 075_Solution - Node Affinity (Optional).txt
- Topic: Solution - Node Affinity (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay, that's the end of this lab.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1093: certified-kubernetes-application-developer/03_Configuration/076_Taints & Tolerations vs Node Affinity.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 076_Taints & Tolerations vs Node Affinity / 076_Taints & Tolerations vs Node Affinity.txt
- Topic: Taints & Tolerations vs Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: Now that we have learned about taints and tolerations and node affinity, let us tie together the two concepts through a fun exercise.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1094: certified-kubernetes-application-developer/03_Configuration/076_Taints & Tolerations vs Node Affinity.extraction.md::E7
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 076_Taints & Tolerations vs Node Affinity / 076_Taints & Tolerations vs Node Affinity.txt
- Topic: Taints & Tolerations vs Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: Let us first try to solve this problem using taints and tolerations.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1095: certified-kubernetes-application-developer/03_Configuration/076_Taints & Tolerations vs Node Affinity.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 076_Taints & Tolerations vs Node Affinity / 076_Taints & Tolerations vs Node Affinity.txt
- Topic: Taints & Tolerations vs Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: This is not desired.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1096: certified-kubernetes-application-developer/03_Configuration/076_Taints & Tolerations vs Node Affinity.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 076_Taints & Tolerations vs Node Affinity / 076_Taints & Tolerations vs Node Affinity.txt
- Topic: Taints & Tolerations vs Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: Let us try to solve the same problem with node affinity.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1097: certified-kubernetes-application-developer/03_Configuration/076_Taints & Tolerations vs Node Affinity.extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 076_Taints & Tolerations vs Node Affinity / 076_Taints & Tolerations vs Node Affinity.txt
- Topic: Taints & Tolerations vs Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: With node affinity.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1098: certified-kubernetes-application-developer/03_Configuration/076_Taints & Tolerations vs Node Affinity.extraction.md::E14
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 076_Taints & Tolerations vs Node Affinity / 076_Taints & Tolerations vs Node Affinity.txt
- Topic: Taints & Tolerations vs Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: We first label the nodes with their respective colors blue, red, and green.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1099: certified-kubernetes-application-developer/03_Configuration/076_Taints & Tolerations vs Node Affinity.extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 076_Taints & Tolerations vs Node Affinity / 076_Taints & Tolerations vs Node Affinity.txt
- Topic: Taints & Tolerations vs Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: This is not something we desire.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1100: certified-kubernetes-application-developer/03_Configuration/076_Taints & Tolerations vs Node Affinity.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 076_Taints & Tolerations vs Node Affinity / 076_Taints & Tolerations vs Node Affinity.txt
- Topic: Taints & Tolerations vs Node Affinity
- Line Context: Lines 1-1 from transcript
- Content: Well, that's it for this lecture.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 1101: certified-kubernetes-application-developer/09_Security/138_Kubernetes Security Primitives.extraction.md::E24
- Type: Architecture
- Source: certified-kubernetes-application-developer / 09_Security / 138_Kubernetes Security Primitives / 138_Kubernetes Security Primitives.txt
- Topic: Kubernetes Security Primitives
- Line Context: Lines 1-1 from transcript
- Content: All communication with the cluster between the various components such as the etcd cluster, the kube controller, manager, scheduler, API server, as well as those running on the worker nodes such as the Kubelet and the kube proxy, is secured using TLS encryption.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1102: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/187_Patches Intro.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 187_Patches Intro / 187_Patches Intro.txt
- Topic: Patches Intro
- Line Context: Lines 1-1 from transcript
- Content: And so we can match on a couple of different properties like kind or the version or the name of the object or the namespace label selector or annotation selector.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1103: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E51
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2 / 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript
- Content: From a schedule perspective, it's saying that this should run every one minute.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1104: certified-kubernetes-application-developer/15_Mock Exams/208_Mock Exam -2 (Solution).extraction.md::E21
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 208_Mock Exam -2 (Solution) / 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript
- Content: That's gonna be kubectl taint, and then node.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1105: certified-kubernetes-application-developer/15_Mock Exams/208_Mock Exam -2 (Solution).extraction.md::E24
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 208_Mock Exam -2 (Solution) / 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript
- Content: So we've got node01 here. we'll do kubectl taint node node01, and then it's gonna be app_type=alpha, effect is gonna be NoSchedule.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1106: certified-kubernetes-application-developer/15_Mock Exams/208_Mock Exam -2 (Solution).extraction.md::E25
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 208_Mock Exam -2 (Solution) / 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript
- Content: And so now if I do a kubectl describe node node1, and we go under taints near the top, we should see the new taint that we just created.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1107: certified-kubernetes-application-developer/15_Mock Exams/208_Mock Exam -2 (Solution).extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 208_Mock Exam -2 (Solution) / 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript
- Content: So I'm gonna go under spec add toleration.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1108: certified-kubernetes-application-developer/15_Mock Exams/208_Mock Exam -2 (Solution).extraction.md::E31
- Type: Concept
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 208_Mock Exam -2 (Solution) / 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript
- Content: The effect is going to be the same NoSchedule.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1109: certified-kubernetes-application-developer/15_Mock Exams/208_Mock Exam -2 (Solution).extraction.md::E45
- Type: Concept
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 208_Mock Exam -2 (Solution) / 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript
- Content: And so we're gonna have to add the node affinity configuration.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1110: certified-kubernetes-application-developer/15_Mock Exams/208_Mock Exam -2 (Solution).extraction.md::E46
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 208_Mock Exam -2 (Solution) / 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript
- Content: So if you go to the Kubernetes documentation, under this section here, node affinity, this is gonna give you an example of how to configure a node affinity.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1111: learn-kubernetes/02_Kubernetes Overview/007_Kubernetes Architecture.extraction.md::E27
- Type: Exam Tip
- Source: learn-kubernetes / 02_Kubernetes Overview / 007_Kubernetes Architecture / 007_Kubernetes Architecture.txt
- Topic: Kubernetes Architecture
- Line Context: Lines 1-1 from transcript
- Content: Etcd is responsible for implementing locks within the cluster to ensure that there are no conflicts between the masters, the scheduler is responsible for distributing work or containers across multiple nodes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 1112: learn-kubernetes/02_Kubernetes Overview/007_Kubernetes Architecture.extraction.md::E51
- Type: Architecture
- Source: learn-kubernetes / 02_Kubernetes Overview / 007_Kubernetes Architecture / 007_Kubernetes Architecture.txt
- Topic: Kubernetes Architecture
- Line Context: Lines 1-1 from transcript
- Content: The master also has the control manager and the scheduler.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 1113: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E36
- Type: Architecture
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube / 012_Kubernetes Setup - Introduction and Minikube.txt
- Topic: Kubernetes Setup - Introduction and Minikube
- Line Context: Lines 1-1 from transcript
- Content: Earlier, we talked about the different components of Kubernetes that make up a control plane and worker nodes such as the API server, etcd key value store controllers and scheduler on the master or the control plane, and then you have the Kubernetes and container runtime on the worker nodes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1114: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E311
- Type: Warning/Pitfall
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Topic: Demo - Kubeadm - Configuring Cluster With Kubeadm
- Line Context: Lines 1-1 from transcript
- Content: Don't worry about the ones that got evicted.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
