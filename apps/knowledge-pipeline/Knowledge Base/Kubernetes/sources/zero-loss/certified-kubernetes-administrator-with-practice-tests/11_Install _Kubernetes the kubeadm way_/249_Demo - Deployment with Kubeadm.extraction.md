# Extraction: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm

---

## Entry 1
Type: Concept  

Content:
Okay.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
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
So in this video we're going to be doing a demonstration of bootstrapping a Kubernetes cluster using the kube ADM tool.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
Now I've already provisioned three virtual machines using a tool called vagrant.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
And we've got three nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
In this case I've got a master node here I've got a worker node which I'll call node one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
Or you'll look for kube node one on the terminal or in the prompt.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Implementation Step  

Content:
And then we've got node two which you'll see is kube node two here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
So we've got one master node and two worker nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
And the one thing I want to point out is if you take a look at the IP addresses we've got a couple of different interfaces.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
The main interface that we're going to be using for communication between the cluster is INP zero eight.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
So you can see the master node has an IP address of 192.168.56.11.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
Node one has 192.168.56.21, and node two has an IP address of 192.168.56.22.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
Okay, so that's the interface that we're going to use for all of the communications.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Implementation Step  

Content:
So for deploying a Kubernetes cluster, there's going to be a couple of tabs that we want to get open, because you're going to see that for the most part the Kubernetes documentation is very good.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Implementation Step  

Content:
So you want this installing kube ADM page right here which is under installing Kubernetes with deployment tools and then under bootstrapping clusters with kube ADM.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Implementation Step  

Content:
And then you can see all of the different instructions for the different versions.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
I'm going to be using version 1.31 which is at the moment the latest version.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Implementation Step  

Content:
And then you also want to open up this tab right here which is creating a cluster with Kube ADM.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
You can see it's in the same section.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Implementation Step  

Content:
So you've got installing kube ADM and then two slots down you've got creating a cluster with kube ADM.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Exam Tip  

Content:
And if you're going to be deploying a highly available Kubernetes cluster that's with multiple master nodes, then you want to select creating highly available clusters with kube ADM.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
Now we just have a single master node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
So we're just going to follow this page here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
But if you have more than one go ahead and follow that one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
So let's go to the installing kube ADM.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
So this is going to be the tool that we use to actually bootstrap a cluster and it's going to give you some prerequisites.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
So it's just letting you know what are the requirements for your machine.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
All of my machines already match those requirements.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
So that's not a big deal.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Implementation Step  

Content:
But if you are going to be deploying your own cluster, make sure that it's actually compatible.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Implementation Step  

Content:
And then we're just going to keep scrolling down for a bit.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Operational Insight  

Content:
And we want to see this section right here which is installing a container runtime.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Operational Insight  

Content:
So before we can utilize the kube ADM tool you want to make sure that you install a container runtime.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
So we're going to have to do that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
But we're going to come back to that in a second.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Implementation Step  

Content:
Let's first go ahead and at least get the kube ADM tool installed on all of our machines.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
And so here if I just keep scrolling down you can see this is where the instructions begin.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Exam Tip  

Content:
So the first thing that we're going to do is download the public signing keys for the Kubernetes package repositories.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
And you can see they've got a different one for each of the different versions.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
So if you're going to do version 1.31 you're going to select version one dot 31.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Implementation Step  

Content:
If it's a version one dot 32, then you'll have to replace this with one dot 32.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
But I'm going to copy this command, and we're going to paste it on all of our, um, all of our nodes because we're going to need cube ADM installed on all three of them.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
So I'm just going to paste it on all three.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
And it looks like my copy broke.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
So let me just copy that again.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Implementation Step  

Content:
Then down here we have to add the specific Kubernetes repository.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
So this is once again we're just going to copy and paste this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
And I'm going to paste this in all three nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Implementation Step  

Content:
Then the last thing that we have to do is we're going to do a sudo apt update.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Exam Tip  

Content:
And then we have to install the cube ADM package.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
You can see here in the command here we're installing Cubelet cube adm cube CTL.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Warning/Pitfall  

Content:
We don't technically need cube CTL and Cubelet at the moment.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Concept  

Content:
We just want cube ADM.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Concept  

Content:
But at some point we're going to need to download cube CTL as well.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Concept  

Content:
So let's go ahead and just install all of them right now.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
So I'm just going to copy these three commands.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Implementation Step  

Content:
And then we're going to go ahead and run them on once again all three nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Concept  

Content:
Okay.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 59
Type: Concept  

Content:
So it looks like it's done.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Concept  

Content:
Let's go ahead and take a look at the version of cube ADM that we installed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
So we'll say cube ADM version.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Concept  

Content:
And we can see that we are running major version one minor version 31.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Concept  

Content:
And we can see version 1.31.1.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Concept  

Content:
All right.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
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
So now that we've got cube ADM installed, if we go to the bottom of this page we can see that the next step is to install our cluster using cube ADM.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Concept  

Content:
So you can go ahead and click on this link.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Concept  

Content:
But I've already got that tab open.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Concept  

Content:
It's the same one as creating a cluster with cube ADM.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Concept  

Content:
So I'm going to go to that page.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Implementation Step  

Content:
And if you take a look at this page it's going to give us, you know, first of all, the prerequisites for system requirements for any Kubernetes node, which we've already verified.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Implementation Step  

Content:
And then if we go down here, we want to start at the instructions page.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Implementation Step  

Content:
And the first thing that we have to do is we have to install a container runtime.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Concept  

Content:
And we're going to have to install it on all of the nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Concept  

Content:
That's going to be both master and worker nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Operational Insight  

Content:
The reason why is that, you know, obviously the worker nodes will need to have a container runtime so they can run the containers, but all of the control plane components on our master node will be run as pods or as containers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Operational Insight  

Content:
And so since we have containers running, we're going to need a container runtime.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Concept  

Content:
So let's open this tab.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Operational Insight  

Content:
And here it's going to give you the directions on how to utilize one of these supported container runtimes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Concept  

Content:
I'm going to be using container D for this demonstration.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Concept  

Content:
So if you're going to follow along go ahead and use container D.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 81
Type: Concept  

Content:
But feel free to use whichever one you'd like.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Concept  

Content:
And we can select container D.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Implementation Step  

Content:
And this is going to give us some information onto as to some of the things that you'll need to configure for container D.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 84
Type: Operational Insight  

Content:
So now let's install our container runtime.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 85
Type: Implementation Step  

Content:
And for the directions on that, just go ahead and just search for install and then the name of the runtime.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 86
Type: Implementation Step  

Content:
And then that's going to take you to the documentation for container D.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 87
Type: Concept  

Content:
And you can just follow these directions.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 88
Type: Concept  

Content:
We're just going to use use the app repository to install system D.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 89
Type: Implementation Step  

Content:
So here I'm just going to do a sudo apt update and then a sudo apt install dash y container d.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 90
Type: Concept  

Content:
And that's going to install container d.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 91
Type: Concept  

Content:
And I'm going to do this on every node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 92
Type: Implementation Step  

Content:
Now after we install our container runtime the next thing that we have to do is take a look at this important section in the documentation, which is cgroup drivers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 93
Type: Concept  

Content:
Now, if you guys aren't familiar with Cgroups.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 94
Type: Concept  

Content:
Cgroups is the Linux feature, the Linux primitive that allows whether you're working with Docker or Kubernetes, it allows you to specify resource limits on your containers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 95
Type: Concept  

Content:
So if you want to say this container can only use 512MB of Ram, it's using the Cgroups under the hood.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 96
Type: Architecture  

Content:
Now, when you configure the Kubelet process and when you configure the the runtime, which in our case is container D, there's two different drivers that are available.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 97
Type: Implementation Step  

Content:
You have cgroup FS which is the default, and then you have system D.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 98
Type: Architecture  

Content:
Now you can use whichever one you'd like, but you have to make sure that whichever one you select, both the Kubelet and your container runtime are configured to use the same Cgroup driver.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 99
Type: Architecture  

Content:
So if the Kubelet is set to Cgroup fs, then the container runtime has to be set to the same thing.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 100
Type: Concept  

Content:
Now if we keep reading, you can see there's a section here that says when system D is chosen as the init system for your Linux distribution, you want to make sure that you set the Cgroup driver to be system D.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 101
Type: Concept  

Content:
So let's go ahead and verify what our init system is.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 102
Type: Implementation Step  

Content:
If it's set to system D, then we're going to have to use the system D driver as per the instructions.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 103
Type: Implementation Step  

Content:
So the way that you verify is you do PS dash P and then one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 104
Type: Concept  

Content:
And if it says system D that means that's what our init system is.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 105
Type: Concept  

Content:
So we'll go ahead and use the system D Cgroup driver.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 106
Type: Architecture  

Content:
So first things first let's make sure that we know how to set the cgroup driver to be systemd for the kubelet process.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 107
Type: Exam Tip  

Content:
Now here it gives you an example on how to do that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 108
Type: Architecture  

Content:
You have to create a kubelet configuration file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 109
Type: Concept  

Content:
And if you actually want to, you could scroll down a little bit further.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 110
Type: Concept  

Content:
And this will give you more detailed instructions on how to do that with kube adm.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 111
Type: Implementation Step  

Content:
Now the first note is important for us, which is in version 1.22 and later.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 112
Type: Architecture  

Content:
If the user does not set the Cgroup driver field under the Kubelet configuration, kube adm will default to systemd, which is perfect because we are going to be using the.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 113
Type: Concept  

Content:
We want systemd, and since we are using a version later than 1.22, it already defaults to that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 114
Type: Implementation Step  

Content:
But if you want to see how to actually set it, you're going to create this, um, cluster configuration.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 115
Type: Architecture  

Content:
And then here you create the Kubelet configuration.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 116
Type: Concept  

Content:
And you want to set the Cgroup driver property to be systemd.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 117
Type: Architecture  

Content:
And then when you run the kube adm init command, you pass the dash dash config flag so that you can pass in the kube adm config file, which is going to make sure that the kubelet process uses the systemd.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 118
Type: Concept  

Content:
Once again, it's the default for anything later than 1.22.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 119
Type: Warning/Pitfall  

Content:
So we're going to just not pass in that file because we don't need to change anything.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 120
Type: Warning/Pitfall  

Content:
So we don't have to worry about the kubelet process.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 121
Type: Operational Insight  

Content:
But we do have to make sure that the container runtime is set to utilize the Cgroup driver.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 122
Type: Concept  

Content:
So by default it's not going to be using systemd.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 123
Type: Operational Insight  

Content:
So if we go to the top of the container runtime page and we select container D and we scroll down, this is the directions on how to set the cgroup driver to be systemd.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 124
Type: Implementation Step  

Content:
So we create a file which is going to be the config file for container D which is going to be stored in slash Etsy slash container D in a file called config.toml.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 125
Type: Implementation Step  

Content:
And then you have to configure this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 126
Type: Concept  

Content:
So you just got to make sure that this is in there.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 127
Type: Concept  

Content:
And that's going to make sure that the secret driver is set to version two.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 128
Type: Concept  

Content:
All right.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 129
Type: Implementation Step  

Content:
So I'm going to go ahead and create this directory if it hasn't already been made.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 130
Type: Warning/Pitfall  

Content:
So and so I'll go to slash Etsy container D and it looks like I don't have a container d directory.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 131
Type: Implementation Step  

Content:
So I'm going to manually create that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 132
Type: Concept  

Content:
And so I'll say sudo mkdir p slash Etsy slash container d.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 133
Type: Concept  

Content:
And I'm going to copy this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 134
Type: Concept  

Content:
And we're going to run this on all three of our nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 135
Type: Implementation Step  

Content:
And so then at this point we're going to have to generate the configs.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 136
Type: Concept  

Content:
Now the container D process allows us to generate default configuration.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 137
Type: Warning/Pitfall  

Content:
So if you don't specify a config file it's going to use these default configurations.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 138
Type: Concept  

Content:
And you can actually take a look at these configurations by running the command container D config default.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 139
Type: Concept  

Content:
And it's going to spit out the default configuration.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 140
Type: Warning/Pitfall  

Content:
So if we don't provide a file it's going to look like this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 141
Type: Concept  

Content:
So I'm going to use this command to generate the configs.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 142
Type: Implementation Step  

Content:
And then we're going to make the necessary changes as per the documentation.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 143
Type: Concept  

Content:
Now I've got this nice command right here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 144
Type: Concept  

Content:
And I'm going to show you guys what this command does.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 145
Type: Concept  

Content:
But I'm going to paste this command here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 146
Type: Concept  

Content:
And if we take a look at it it's going to run that same command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 147
Type: Implementation Step  

Content:
And then in the output it's going to pipe it into said.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 148
Type: Concept  

Content:
And what it's going to do is it's going to change where it says systemd group set to false, and it's going to change it to systemd group equals true.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 149
Type: Implementation Step  

Content:
And then we're going to then send it to a file in slash Etsy slash containerd slash config.toml.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 150
Type: Concept  

Content:
And that's going to be as per the directions.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 151
Type: Concept  

Content:
Right.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 152
Type: Concept  

Content:
It's got to be in that file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 153
Type: Concept  

Content:
And we got to have that config.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 154
Type: Concept  

Content:
And so all it's doing is it's going to change this from false which is the default configuration.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 155
Type: Concept  

Content:
It's going to change it to true.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 156
Type: Concept  

Content:
So I'll run that and I'm going to hit up and I'm going to take this and I'm going to pipe it I'm going to paste it in the other two nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 157
Type: Concept  

Content:
And so now if I cat that file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 158
Type: Concept  

Content:
So it's going to be containerd um slash config.toml.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 159
Type: Concept  

Content:
And I'm going to grep for.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 160
Type: Concept  

Content:
System D Cgroup just to see if that command actually said it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 161
Type: Concept  

Content:
And I'm going to pass in one extra flag, which is, um, I'm printing out a whole bunch of lines before it just so I can make sure it's in the right section.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 162
Type: Concept  

Content:
And so you can see here systemd.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 163
Type: Concept  

Content:
Cgroup equals true.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 164
Type: Operational Insight  

Content:
And we have it's under this config section which is the container runtimes dot run c dot options.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 165
Type: Concept  

Content:
And so if we take a look at the documentation right that's going to be this line right here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 166
Type: Concept  

Content:
So that did properly set it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 167
Type: Concept  

Content:
And so now the last thing that we need to do is after we make some config changes we have to make sure that we restart container D.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 168
Type: Concept  

Content:
And we can just run the systemctl command to restart container D.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 169
Type: Concept  

Content:
And that's not what I wanted.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 170
Type: Concept  

Content:
So restart container D restart on this one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 171
Type: Concept  

Content:
And looks like I never ran this command on here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 172
Type: Implementation Step  

Content:
So let me run it real quick and then restart container D All right.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 173
Type: Concept  

Content:
Perfect.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 174
Type: Concept  

Content:
So now what we're going to do is we're going to go back to creating a cluster with cube ADM.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 175
Type: Concept  

Content:
That's this document here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 176
Type: Implementation Step  

Content:
And we're going to take a look at what are the next steps.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 177
Type: Operational Insight  

Content:
So we've got the container runtime installed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 178
Type: Concept  

Content:
We've made sure that the proper Cgroup driver has been set.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 179
Type: Concept  

Content:
And we want to just keep scrolling down and keep going.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 180
Type: Concept  

Content:
And here we want to look for initializing control plane node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 181
Type: Implementation Step  

Content:
So the the first instance, the first node in Kubernetes that we're going to actually initialize is going to be the control plane node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 182
Type: Concept  

Content:
Now in this case once again we have just a single master node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 183
Type: Concept  

Content:
And so we're just going to run the command on there.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 184
Type: Exam Tip  

Content:
If you have multiple master nodes then you're going to have to pick one that you want to run the command first.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 185
Type: Concept  

Content:
Now there's going to be some important instructions that you want to follow here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 186
Type: Exam Tip  

Content:
And if you take a look at step one, is that if you have plans to upgrade a single control plane node to a high available cluster with multiple control plane nodes, you want to make sure you pass in the dash dash control plane dash endpoint and set it to be some virtual IP.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 187
Type: Implementation Step  

Content:
So this could be some load balancer and then have it sent to your single instance.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 188
Type: Warning/Pitfall  

Content:
That way when you migrate over, you don't really have to change anything for the most part, and you've already got the load balancer set up to forward it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 189
Type: Architecture  

Content:
So if you have plans to do that, you want to make sure you set this to whatever IP you want to use for your API server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 190
Type: Concept  

Content:
We're not going to do that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 191
Type: Concept  

Content:
We're we're just going to run this as a single control plane.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 192
Type: Warning/Pitfall  

Content:
Note that we don't have to pass that flag in.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 193
Type: Concept  

Content:
The other thing they have to do is you have to choose a, um, you have to make sure you specify whatever pod subnet you're going to utilize.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 194
Type: Concept  

Content:
So the dash dash pod network Cidr is going to be the subnet that the IP addresses for your pods are actually going to pull from.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 195
Type: Concept  

Content:
So you set it to be 10.0.0.0 slash 16.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 196
Type: Implementation Step  

Content:
Then all of your pods are going to get an IP address from that 10.0.0.0 slash 16 subnet.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 197
Type: Concept  

Content:
So we're going to pass in that flag.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 198
Type: Concept  

Content:
So and I'll show you guys what that looks like.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 199
Type: Implementation Step  

Content:
Um and then on top of that kube ADM tries to detect the container runtimes by using a list of well-known endpoints.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 200
Type: Operational Insight  

Content:
So if you actually go here under the container runtime page.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 201
Type: Concept  

Content:
This is going to just quickly show you, I think somewhere in this document, what are the default locations to look for?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 202
Type: Concept  

Content:
Uh, let me see if I can find it here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 203
Type: Warning/Pitfall  

Content:
And I don't think it's here actually it might be under installing kube adm.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 204
Type: Concept  

Content:
And I'm going to just scroll down here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 205
Type: Concept  

Content:
Here we go.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 206
Type: Implementation Step  

Content:
So these are going to be the paths to um you know the, the way that, that each one of these container runtimes are set to be configured.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 207
Type: Concept  

Content:
And these are usually the default ones.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 208
Type: Implementation Step  

Content:
This is just saying that if for some reason it was not one of the default ones, you have to pass in the dash dash CRE, dash socket and then pass in the path to that socket, but it automatically detects it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 209
Type: Warning/Pitfall  

Content:
So we don't need to actually pass in that flag.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 210
Type: Architecture  

Content:
Now, the last thing that we are going to cover when it comes to the flags for the kube ADM utility is the dash dash API server advertise address.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 211
Type: Architecture  

Content:
So when you're working with a single control plane node cluster, we're going to use this one to tell the cluster what IP address is going to be for your cube API server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 212
Type: Concept  

Content:
So this will set this to be the IP address of our master node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 213
Type: Concept  

Content:
And if I go back and I go to my master node and I do an iPad, we're going to pass in that flag and we're going to set it to be the IP address of the master node, which is 192.168.56.11.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 214
Type: Concept  

Content:
So whatever IP address your other nodes will want to talk to your master node through.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 215
Type: Concept  

Content:
You can see I've got another interface.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 216
Type: Warning/Pitfall  

Content:
I don't want to use this one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 217
Type: Concept  

Content:
This is this is like an internal interface used by vagrant which I use to spin up my cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 218
Type: Concept  

Content:
So this is kind of like a irrelevant interface.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 219
Type: Concept  

Content:
So that's why I'm going to pass in that flag to make sure that it picks the right interface.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 220
Type: Concept  

Content:
So we're now officially ready to run the cube adm init command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 221
Type: Concept  

Content:
And we're going to run it on the master node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 222
Type: Concept  

Content:
And I'm going to show you the full command here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 223
Type: Concept  

Content:
And so this is what the command is going to look like.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 224
Type: Concept  

Content:
We do pseudo cube ADM init.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 225
Type: Architecture  

Content:
Then once again we're going to pass in the Dash Dash API server advertise address.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 226
Type: Concept  

Content:
It's going to be whatever the IP address of our master node is.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 227
Type: Implementation Step  

Content:
Then we're going to specify the pod network Cidr.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 228
Type: Concept  

Content:
So remember this is going to be the subnet that all of your pods are going to pull an IP address from.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 229
Type: Concept  

Content:
So all of my pods are going to be in the 10.244.0.0 slash 16 subnet.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 230
Type: Implementation Step  

Content:
And then we have the upload cert.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 231
Type: Concept  

Content:
So this is going to make sure that we upload all of the certificates to a secret, so that all of the other nodes will have access to the certificates.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 232
Type: Concept  

Content:
And at that point we can go ahead and hit run.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 233
Type: Concept  

Content:
And it's going to run all of the necessary checks beforehand.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 234
Type: Implementation Step  

Content:
And then after it's done, then it's going to set up and initialize our control plane node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 235
Type: Concept  

Content:
All right.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 236
Type: Concept  

Content:
So it finished initializing our master node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 237
Type: Concept  

Content:
And I want to just kind of quickly go over some of the output.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 238
Type: Concept  

Content:
So if we take a look here we can see that it's generating the CA certificates.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 239
Type: Architecture  

Content:
And then it's going to go ahead and generate the certificates for the API server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 240
Type: Implementation Step  

Content:
And then you can see it's configuring that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 241
Type: Architecture  

Content:
It also generated all the certificates for the etcd server and all of the other different components that you can see. just go one by one, creating all the necessary things for each of the different components.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 242
Type: Concept  

Content:
You could see the conf file for your cubelet.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 243
Type: Architecture  

Content:
You could see the controller manager configuration, and then it went ahead and provisioned.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 244
Type: Implementation Step  

Content:
The static pod manifests for the different components and you can see it then brought up the different components.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 245
Type: Concept  

Content:
And so that's really all it's doing under the hood.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 246
Type: Implementation Step  

Content:
If you just take a look at the output, it just explains the step by step exactly what it's doing.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 247
Type: Implementation Step  

Content:
And then after it's done, it's going to have provisioned a config file so that we can actually connect to our Kubernetes cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 248
Type: Implementation Step  

Content:
And then if we want to just take a look at it, we could just do a cat and then just go to that path of that file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 249
Type: Concept  

Content:
So it's going to be Kubernetes admin conf.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 250
Type: Concept  

Content:
And I'll need a sudo.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 251
Type: Concept  

Content:
And you can see here it's got a kube config file so that we can actually talk to our master node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 252
Type: Concept  

Content:
So here we're going to just copy it to the default home directory in this case.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 253
Type: Concept  

Content:
And I'm going to paste that in.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 254
Type: Best Practice  

Content:
And now I should be able to do a kubectl.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 255
Type: Best Practice  

Content:
And then here if I do get nodes, it should be able to connect and give back all of the nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 256
Type: Concept  

Content:
You can see we've got one node and it's currently in a not ready state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 257
Type: Concept  

Content:
That's not a problem.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 258
Type: Concept  

Content:
We expect it to be in a not ready state because we haven't set up the the network plugin that we're going to use.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 259
Type: Concept  

Content:
So we have to get the network plugin up and running.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 260
Type: Implementation Step  

Content:
And then this will move into a ready status.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 261
Type: Implementation Step  

Content:
Now if I go back up to the output of the cube adm init command, it's going to tell us what we have to do next.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 262
Type: Concept  

Content:
And so you know I already did this section right here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 263
Type: Implementation Step  

Content:
And then what we need to do is you need to deploy a pod network for your cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 264
Type: Concept  

Content:
That's basically your network CNI, your network plugin or your CNI.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 265
Type: Implementation Step  

Content:
And then afterwards it says you can then join any number of worker nodes by running the following command on the worker nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 266
Type: Concept  

Content:
So setting up the worker nodes is very easy.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 267
Type: Concept  

Content:
You just run this command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 268
Type: Concept  

Content:
So I'm going to copy this and save this to my notepad so that I have it for reference that we could use later on.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 269
Type: Implementation Step  

Content:
Um, and then that's all we have to do.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 270
Type: Concept  

Content:
Now, if I go to the documentation and we take a look at, uh, creating a high availability cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 271
Type: Exam Tip  

Content:
And I'm going to just show you what the output would look like if we were using a setup with multiple master nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 272
Type: Concept  

Content:
When we do a cube adm init, you're going to see an output that looks like this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 273
Type: Concept  

Content:
So ours right.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 274
Type: Concept  

Content:
If you look at this and I wish it was a little bit wider, you can see you could join any number of worker nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 275
Type: Concept  

Content:
So we saw the same thing.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 276
Type: Concept  

Content:
However when you're doing a multi master node you can also it'll print out the the command that you need to run with the proper token for setting up all of the other control plane nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 277
Type: Exam Tip  

Content:
So at this point, if you had multiple master nodes, you would run this command that it gave us right here, so that you can then bootstrap the other control plane nodes and connect them to the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 278
Type: Concept  

Content:
We only have one control plane node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 279
Type: Concept  

Content:
So we didn't get that output.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 280
Type: Concept  

Content:
And that's exactly what we want.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 281
Type: Concept  

Content:
We only have to set up the worker nodes here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 282
Type: Concept  

Content:
I just wanted to make sure you guys understand how to do it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 283
Type: Exam Tip  

Content:
If you did have multiple control plane nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 284
Type: Concept  

Content:
All right.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 285
Type: Concept  

Content:
So I'm back at the creating a cluster with cube ADM documentation.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 286
Type: Concept  

Content:
We can see that we ran the cube adm init command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 287
Type: Concept  

Content:
We saw this output.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 288
Type: Concept  

Content:
So we know how to get the worker node to join.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 289
Type: Concept  

Content:
If we take a look at the directions, it's going to tell us to install a pod network add on.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 290
Type: Concept  

Content:
So we have to install our CNI plugin.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 291
Type: Concept  

Content:
And we can refer to this documentation if we want to see the different add ons.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 292
Type: Concept  

Content:
And so here's a list of the different add ons that we can utilize.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 293
Type: Concept  

Content:
I'm going to use in this case flannel.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 294
Type: Concept  

Content:
So we're going to go to flannel.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 295
Type: Concept  

Content:
Select that one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 296
Type: Concept  

Content:
And it's going to take us to the documentation page for flannel.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 297
Type: Concept  

Content:
I'm going to zoom in a little bit for you guys.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 298
Type: Implementation Step  

Content:
And you're going to see that usually it's pretty easy to deploy a network plugin.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 299
Type: Implementation Step  

Content:
Usually they give you a um, basically a Kubernetes manifest to actually deploy all of the necessary resources.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 300
Type: Implementation Step  

Content:
And so in this case we have this command right here kubectl apply f and you just pass in that URL and it's going to deploy it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 301
Type: Concept  

Content:
And that's really all you have to do.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 302
Type: Implementation Step  

Content:
However if you are using a custom pod Cidr network, which is basically if you're not using the default ten 244 .0.0 16, you have to first download the above manifest and modify the network to match your own.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 303
Type: Warning/Pitfall  

Content:
So we are using the default one so we don't have to do that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 304
Type: Concept  

Content:
But I want to show you guys where you would change this just so that you guys know exactly what to do.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 305
Type: Concept  

Content:
So we're going to go back.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 306
Type: Concept  

Content:
I'm going to go to my master node and I'm going to do just a curl.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 307
Type: Concept  

Content:
And I'm going to download that file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 308
Type: Concept  

Content:
I'm going to open that file up.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 309
Type: Concept  

Content:
Let's see where is it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 310
Type: Concept  

Content:
I'm sorry I didn't mean to do a curl.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 311
Type: Concept  

Content:
I wanted to do a double wget.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 312
Type: Concept  

Content:
So I actually download it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 313
Type: Concept  

Content:
Okay so we've got the file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 314
Type: Concept  

Content:
Let's open this up here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 315
Type: Implementation Step  

Content:
And we take a look at all of the resources it's going to create for us.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 316
Type: Implementation Step  

Content:
We can see it's going to create a namespace a service account a cluster role.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 317
Type: Warning/Pitfall  

Content:
Don't worry too much about those cluster role binding and all of that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 318
Type: Implementation Step  

Content:
Now this is where we would configure our pod network.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 319
Type: Concept  

Content:
So here you can see it's set to 210 244 .0.0 slash 16.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 320
Type: Implementation Step  

Content:
If you want to change that make sure it just matches up with whatever pod Cidr network you configured when you ran the Kube cube adm command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 321
Type: Concept  

Content:
So we use ten 244 .0.0 slash 16.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 322
Type: Concept  

Content:
So we're just going to leave this as the default.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 323
Type: Concept  

Content:
All right.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 324
Type: Implementation Step  

Content:
And so at this point I could just do a cube CTL apply dash f cube flannel.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 325
Type: Implementation Step  

Content:
And it's going to go ahead and deploy the network plugin.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 326
Type: Implementation Step  

Content:
So after it's been deployed we can go ahead and take a look at all the resources it created.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 327
Type: Concept  

Content:
So I'm going to do a kubectl get pods dash n.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 328
Type: Concept  

Content:
Let's check the kube system namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 329
Type: Implementation Step  

Content:
We can see that it didn't deploy anything there.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 330
Type: Concept  

Content:
But I believe it's going to use a namespace called I think it's flannel.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 331
Type: Concept  

Content:
And let's just do a kubectl get namespace because I cube flannel.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 332
Type: Concept  

Content:
So that's the namespace that's using.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 333
Type: Concept  

Content:
All right.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 334
Type: Concept  

Content:
We can see that we've got one pod running.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 335
Type: Concept  

Content:
And so at this point I would assume that everything is up and ready to go.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 336
Type: Implementation Step  

Content:
So if I just do a kubectl get nodes now we can see that the cube Master moved into a ready state because we successfully deployed the network plugin.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 337
Type: Concept  

Content:
And so now the last thing that we have to do is just get the nodes to join the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 338
Type: Implementation Step  

Content:
And the way we do that is by utilizing that command I saved, we just copy it and we just say sudo and then paste it in and then just run that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 339
Type: Concept  

Content:
And it's going to make sure that this worker node joins the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 340
Type: Implementation Step  

Content:
And I'll do the same thing here sudo then paste that command in and we can see that the first one already finished successfully joined the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 341
Type: Concept  

Content:
And it you know did a few checks.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 342
Type: Architecture  

Content:
The Kubelet was informed of a new secure connection details.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 343
Type: Architecture  

Content:
So it was able to connect to the API server and everything's good to go.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 344
Type: Concept  

Content:
So now if I go back to the master node and I do a kubectl get node, we can see that we've got our Kubernetes state and we've got node one and node two in a ready state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 345
Type: Concept  

Content:
And if I check that kube flannel namespace again you're going to see that we'll have two more pods running.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 346
Type: Implementation Step  

Content:
And so it's going to deploy a instance of the that the network plugin agent on every single one of the nodes so that it can actually handle network on all of them.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 347
Type: Implementation Step  

Content:
So every time you add a new node it's going to deploy one of these pods onto there.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 348
Type: Concept  

Content:
So that's why you'll see three of them in that case.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 349
Type: Best Practice  

Content:
So at this point our cluster should be ready to go.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 350
Type: Implementation Step  

Content:
Let's go ahead and test it out I'm going to just deploy a single pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 351
Type: Concept  

Content:
So I'll say kubectl run I'll give this pod a name of web and I'll say dash dash image equals.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 352
Type: Concept  

Content:
And I'll just say nginx in this case.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 353
Type: Implementation Step  

Content:
So here we created the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 354
Type: Concept  

Content:
We'll do a kubectl get pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 355
Type: Concept  

Content:
And let's take a look.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 356
Type: Concept  

Content:
We can see it's in a container creating state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 357
Type: Concept  

Content:
And I'm going to do a dash w so we can watch.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 358
Type: Concept  

Content:
It's going to oh it looks like it already moved into a running state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 359
Type: Concept  

Content:
So we've got in a running state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 360
Type: Concept  

Content:
So it looks like everything's working.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 361
Type: Concept  

Content:
Everything's good to go.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 362
Type: Concept  

Content:
We could just go ahead and delete that now.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 363
Type: Concept  

Content:
And there you go.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 364
Type: Implementation Step  

Content:
We have now successfully deployed a Kubernetes cluster using the kube adm CLI utility.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 249_Demo - Deployment with Kubeadm
- File: 249_Demo - Deployment with Kubeadm.txt
- Topic: Demo - Deployment with Kubeadm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
