# Extraction: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 135_Cluster Upgrade Introduction

---

## Entry 1
Type: Concept  

Content:
In this lecture we discuss about cluster upgrade process in Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
In the previous lecture, we saw how Kubernetes manages its software releases and how different components have their versions.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Architecture  

Content:
We will keep dependency on external components like etcd and DNS aside for now, and focus on the core control plane components.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
Is it mandatory for all of these to have the same version?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
No.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 6
Type: Architecture  

Content:
The components can be at different release versions, since the kube API server is the primary component in the control plane, and that is the component that all other components talk to.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Best Practice  

Content:
None of the other components should ever be at a version higher than the kube API server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Architecture  

Content:
The controller, manager and scheduler can be at one version lower.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Architecture  

Content:
So if kube API server was at EKS, controller managers and kube schedulers can be at x minus one and the kubelet and kube proxy components can be at two versions lower x minus two.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Architecture  

Content:
So if kube API server was at 1.1, the controller manager and scheduler could be at 1.1 or 1.9, and the kubelet and kube proxy could be at 1.8.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Architecture  

Content:
None of them could be at a version higher than the cube API server, like 1.11.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
Now this is not the case with kube control.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Architecture  

Content:
The kube control utility could be at 1.11 a version higher than the API server 1.11 the same version as the API server, or at 1.9 a version lower than the API server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
Now this permissible skew in versions allows us to carry out live upgrades.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
We can upgrade component by component if required.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Best Practice  

Content:
So when should you upgrade?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
Say you were at 1.1 and Kubernetes releases versions 1.11 and 1.12 at any time.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
Kubernetes supports only up to the recent three minor versions.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
So with 1.12 being the latest release, Kubernetes supports versions 1.12, 1.11, and 1.1.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
So when 1.13 is released, only versions 1.13, 1.1 and 1.11 are supported.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Implementation Step  

Content:
Before the release of 1.13 would be a good time to upgrade your cluster to the next release.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
So how do we upgrade?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
Do we upgrade directly from 1.1 to 1.13?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
No.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 25
Type: Best Practice  

Content:
The recommended approach is to upgrade one minor version at a time.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Implementation Step  

Content:
Version 1.1 to 1.11, then 1.11 to 1.12, and then 1.12 to 1.13.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
The upgrade process depends on how your cluster is set up.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Exam Tip  

Content:
For example, if your cluster is a managed Kubernetes cluster deployed on cloud service providers like Google, for instance, Google Kubernetes Engine lets you upgrade your cluster easily with just a few clicks.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Implementation Step  

Content:
If you deployed your cluster using tools like Kube ADM, then the tool can help you plan and upgrade the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Implementation Step  

Content:
If you deployed your cluster from scratch, then you manually upgrade the different components of the cluster yourself.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
In this lecture we will look at the options by kube adm.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Operational Insight  

Content:
So you have a cluster with master and worker nodes running in production, hosting pods serving users.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
The nodes and components are at version 1.1.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Implementation Step  

Content:
When upgrading a cluster involves two major steps.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Implementation Step  

Content:
First, you upgrade your master nodes and then upgrade the worker nodes while the master is being upgraded.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Architecture  

Content:
The control plane components such as the API, server, scheduler, and controller managers go down briefly, the master going down does not mean your worker nodes and applications on the cluster are impacted.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
All workloads hosted on the worker nodes continue to serve users as normal.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
Since the master is down, all management functions are down.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
You cannot access the cluster using kube control or other Kubernetes API.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Implementation Step  

Content:
You cannot deploy new applications or delete or modify existing ones.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Warning/Pitfall  

Content:
The controller managers don't function either.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Implementation Step  

Content:
If a pod was to fail, a new pod won't be automatically created.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Best Practice  

Content:
But as long as the nodes and pods are up, your applications should be up and users will not be impacted.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Best Practice  

Content:
Once the upgrade is complete and the cluster is back up, it should function normally.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
We now have the master and the master components at version 1.11, and the worker nodes at version 1.1.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
As we saw earlier, this is a supported configuration.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
It is now time to upgrade the worker nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
There are different strategies available to upgrade the worker nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Implementation Step  

Content:
One is to upgrade all of them at once, but then your pods are down and users are no longer able to access the applications.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Concept  

Content:
Once the upgrade is complete, the nodes are back up, new pods are scheduled, and users can resume access.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
That's one strategy that requires downtime.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Concept  

Content:
The second strategy is to upgrade one node at a time.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Implementation Step  

Content:
So going back to the state where we have our master upgraded and nodes waiting to be upgraded, we first upgrade the first node where the workloads move to the second and third node, and users are served from there.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Implementation Step  

Content:
Once the first node is upgraded and back up, we then update the second node where the workloads move to the first and third nodes, and finally the third node where the workloads are shared between the first two.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Implementation Step  

Content:
Until we have all nodes upgraded to a newer version, we then follow the same procedure to upgrade the nodes from 1.11 to 1.12 and then 1.13.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
A third strategy would be to add new nodes to the cluster nodes with newer software version.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Concept  

Content:
This is especially convenient if you're on a cloud environment, where you can easily provision new nodes and decommission old ones.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Concept  

Content:
Nodes with the newer software version can be added to the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Concept  

Content:
Move the workload over to the new.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Concept  

Content:
And remove the old node until you finally have all new nodes with the new software version.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
Let us now see how it is done.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Concept  

Content:
Say we were to upgrade this cluster from 1.1 to 1.13.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Command  

Command:
```bash
Kubeadm has an upgrade command that helps in upgrading clusters with Kubeadm.
```

Explanation:
- Command preserved exactly as transcript evidence.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Concept  

Content:
Run the Kubeadm upgrade plan command and it will give you a lot of good information.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Concept  

Content:
The current cluster version.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Concept  

Content:
The Kubeadm tool version, the latest stable version of Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Implementation Step  

Content:
Then it lists all the control plane components and their versions and what version these can be upgraded to.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Architecture  

Content:
It also tells you that after we upgrade the control plane components, you must manually upgrade the Kubelet versions on each node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Concept  

Content:
Remember, kube adm does not install or upgrade Cubelets.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Concept  

Content:
Finally, it gives you the command to upgrade the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Concept  

Content:
Also note that you must upgrade the cube ADM tool itself before you can upgrade the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Concept  

Content:
The cube ADM tool also follows the same software version as Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Concept  

Content:
So we are at 1.11 and we want to go to 1.13.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Concept  

Content:
But remember we can only go one minor version at a time.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Implementation Step  

Content:
So we first go to 1.1 to first upgrade the cube ADM tool itself to version 1.12, then upgrade the cluster using the command from the upgrade plan output cube upgrade apply.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Concept  

Content:
It pulls the necessary images and upgrades the cluster components.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Concept  

Content:
Once complete, your control plane components are now at 1.12.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Concept  

Content:
If you run the kube control get nodes command, you will still see the master node at 1.17.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Architecture  

Content:
This is because in the output of this command, it is showing the versions of Kubelets on each of these nodes registered with the API server, and not the version of the API server itself.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Architecture  

Content:
So the next step is to upgrade the Kubelets.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 81
Type: Architecture  

Content:
Remember, depending on your setup, you may or may not have Kubelets running on your master node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Architecture  

Content:
In this case, the cluster deployed with Kube ADM has Kubelets on the master node, which are used to run the control plane components as pods on the master nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Warning/Pitfall  

Content:
When we set up a Kubernetes cluster from scratch later during this course, we do not install Kubelet on the master nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 84
Type: Concept  

Content:
You will not see the master node in the output of this command in that case.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 85
Type: Architecture  

Content:
So the next step is to upgrade Kubelet on the master node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 86
Type: Architecture  

Content:
If you have Kubelets on them, run the apt.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 87
Type: Architecture  

Content:
Get Kubelet command for this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 88
Type: Exam Tip  

Content:
Once the package is upgraded, restart the Kubelet service running the kube control get nodes command now shows that the master has been upgraded to 1.12.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 89
Type: Concept  

Content:
The worker nodes are still at 1.11.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 90
Type: Implementation Step  

Content:
So next the worker nodes let us start one at a time.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 91
Type: Implementation Step  

Content:
We need to first move the workloads from the first worker node to the other nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 92
Type: Concept  

Content:
The kube control drain command lets you safely terminate all the pods from a node and reschedules them on the other nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 93
Type: Concept  

Content:
It also cordons the node and marks it unschedulable.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 94
Type: Concept  

Content:
That way no new pods are scheduled on it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 95
Type: Exam Tip  

Content:
Then upgrade the kubectl and kubelet packages on the worker nodes as we did on the master node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 96
Type: Implementation Step  

Content:
Then, using the kube adm tool upgrade command, update the node configuration for the new Cubelet version.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 97
Type: Implementation Step  

Content:
Then restart the Cubelet service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 98
Type: Best Practice  

Content:
The node should now be up with the new software version.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 99
Type: Concept  

Content:
However, when we drain the node, we actually marked it Unschedulable.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 100
Type: Concept  

Content:
So we need to unmark it by running the command kube control on node one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 101
Type: Concept  

Content:
The node is now Schedulable, but remember that it is not necessary that the pods come right back to this node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 102
Type: Concept  

Content:
It is only marked as Schedulable.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 103
Type: Concept  

Content:
Only when the pods are deleted from the other nodes, or when new pods are scheduled.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 104
Type: Implementation Step  

Content:
Do they really come back to this first node?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 105
Type: Implementation Step  

Content:
Well, it will soon come when we take down the second node to perform the same steps to upgrade it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 106
Type: Concept  

Content:
And finally the third node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 107
Type: Concept  

Content:
We now have all nodes upgraded.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 108
Type: Concept  

Content:
Well that's it for this lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 109
Type: Concept  

Content:
Head over to the practice test where you will practice upgrading a live cluster with applications running on it without taking the applications down.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 110
Type: Concept  

Content:
Good luck.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 135_Cluster Upgrade Introduction
- File: 135_Cluster Upgrade Introduction.txt
- Topic: Cluster Upgrade Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
