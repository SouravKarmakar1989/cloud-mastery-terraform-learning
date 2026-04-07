# Extraction: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 246_Deployment With kubeadm - Introduction

---

## Entry 1
Type: Concept  

Content:
In this lecture, we will look at the cube admin tool, which can be used to bootstrap a Kubernetes cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 246_Deployment With kubeadm - Introduction
- File: 246_Deployment With kubeadm - Introduction.txt
- Topic: Deployment With kubeadm - Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 2
Type: Best Practice  

Content:
The cube admin tool helps us set up a multi-node cluster following the Kubernetes best practices.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 246_Deployment With kubeadm - Introduction
- File: 246_Deployment With kubeadm - Introduction.txt
- Topic: Deployment With kubeadm - Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 3
Type: Architecture  

Content:
As we discussed, the Kubernetes cluster consists of various components such as the cube API server, etcd controllers, etc. and we have seen some of the requirements around security and certificates to enable communication between these components.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 246_Deployment With kubeadm - Introduction
- File: 246_Deployment With kubeadm - Introduction.txt
- Topic: Deployment With kubeadm - Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
Installing all of these various components individually on different nodes, and modifying the configuration files to make sure these components point to each other, and setting up certificates to make it work is a tedious task.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 246_Deployment With kubeadm - Introduction
- File: 246_Deployment With kubeadm - Introduction.txt
- Topic: Deployment With kubeadm - Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 5
Type: Concept  

Content:
The cube admin tool helps us by taking care of all of those tasks.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 246_Deployment With kubeadm - Introduction
- File: 246_Deployment With kubeadm - Introduction.txt
- Topic: Deployment With kubeadm - Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 6
Type: Implementation Step  

Content:
Let's go through the steps to set up a Kubernetes cluster using the cube admin tool at a high level.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 246_Deployment With kubeadm - Introduction
- File: 246_Deployment With kubeadm - Introduction.txt
- Topic: Deployment With kubeadm - Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 7
Type: Exam Tip  

Content:
First, you must have multiple systems or virtual machines provisioned for configuring a cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 246_Deployment With kubeadm - Introduction
- File: 246_Deployment With kubeadm - Introduction.txt
- Topic: Deployment With kubeadm - Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 8
Type: Concept  

Content:
We will see how to set up your laptop to do just that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 246_Deployment With kubeadm - Introduction
- File: 246_Deployment With kubeadm - Introduction.txt
- Topic: Deployment With kubeadm - Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 9
Type: Concept  

Content:
That's if you're not familiar with it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 246_Deployment With kubeadm - Introduction
- File: 246_Deployment With kubeadm - Introduction.txt
- Topic: Deployment With kubeadm - Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 10
Type: Implementation Step  

Content:
Once the systems are created, designate one node as master and others as worker nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 246_Deployment With kubeadm - Introduction
- File: 246_Deployment With kubeadm - Introduction.txt
- Topic: Deployment With kubeadm - Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 11
Type: Implementation Step  

Content:
The next step is to install a container runtime on the hosts.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 246_Deployment With kubeadm - Introduction
- File: 246_Deployment With kubeadm - Introduction.txt
- Topic: Deployment With kubeadm - Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 12
Type: Concept  

Content:
We will be using container D, so we must install container D on all the nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 246_Deployment With kubeadm - Introduction
- File: 246_Deployment With kubeadm - Introduction.txt
- Topic: Deployment With kubeadm - Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Implementation Step  

Content:
The next step is to install kube admin tool on all the nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 246_Deployment With kubeadm - Introduction
- File: 246_Deployment With kubeadm - Introduction.txt
- Topic: Deployment With kubeadm - Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 14
Type: Concept  

Content:
The kube admin tool helps us bootstrap the Kubernetes solution by installing and configuring all the required components in the right nodes in the right order.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 246_Deployment With kubeadm - Introduction
- File: 246_Deployment With kubeadm - Introduction.txt
- Topic: Deployment With kubeadm - Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 15
Type: Implementation Step  

Content:
The next step is to initialize the master server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 246_Deployment With kubeadm - Introduction
- File: 246_Deployment With kubeadm - Introduction.txt
- Topic: Deployment With kubeadm - Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 16
Type: Implementation Step  

Content:
During this process, all the required components are installed and configured on the master server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 246_Deployment With kubeadm - Introduction
- File: 246_Deployment With kubeadm - Introduction.txt
- Topic: Deployment With kubeadm - Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 17
Type: Concept  

Content:
Once the master is initialized and before joining the worker nodes to the master, you must ensure that the network prerequisites are met.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 246_Deployment With kubeadm - Introduction
- File: 246_Deployment With kubeadm - Introduction.txt
- Topic: Deployment With kubeadm - Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 18
Type: Concept  

Content:
A normal network connectivity between the systems is not sufficient for this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 246_Deployment With kubeadm - Introduction
- File: 246_Deployment With kubeadm - Introduction.txt
- Topic: Deployment With kubeadm - Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 19
Type: Concept  

Content:
Kubernetes requires a special networking solution between the master and worker nodes, which is called as the pod network.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 246_Deployment With kubeadm - Introduction
- File: 246_Deployment With kubeadm - Introduction.txt
- Topic: Deployment With kubeadm - Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 20
Type: Implementation Step  

Content:
The last step is to join the worker nodes to the master node, where then all set to launch our application in the Kubernetes environment.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 246_Deployment With kubeadm - Introduction
- File: 246_Deployment With kubeadm - Introduction.txt
- Topic: Deployment With kubeadm - Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 21
Type: Concept  

Content:
We will now see a demo of setting up Kubernetes using the Kube admin tool in our local environment.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 246_Deployment With kubeadm - Introduction
- File: 246_Deployment With kubeadm - Introduction.txt
- Topic: Deployment With kubeadm - Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---
