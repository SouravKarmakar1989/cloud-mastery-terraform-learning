# Extraction: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 242_Choosing Kubernetes Infrastructure

---

## Entry 1
Type: Implementation Step  

Content:
In the previous lecture, we discussed about the various options we have in deploying a Kubernetes cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
Let's look at it in a bit more detail here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Implementation Step  

Content:
Kubernetes can be deployed on various systems in different ways, starting with your laptops to physical or virtual servers within your organization, as well as those in the cloud.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Implementation Step  

Content:
Depending on your requirements, your cloud ecosystem, and the kind of applications you wish to deploy.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
You may choose one of these solutions on a laptop or a local machine.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
There are a number of ways to get started.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Implementation Step  

Content:
First of all, on a supported Linux machine, you can get started with installing the binaries manually and setting up a local cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
However, that is too tedious, especially if you are just getting started.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
So relying on a solution that automates all that will help in setting up a cluster in a matter of minutes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
We will look at some of those solutions in a bit.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
On windows, on the other hand, you cannot set up Kubernetes natively as there are no windows binaries.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Implementation Step  

Content:
You must rely on a virtualization software like Hyper-V or VMware workstation or VirtualBox to create Linux VMs on which you can run Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
There are also solutions available to run Kubernetes components as Docker containers on windows VMs.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Implementation Step  

Content:
But remember, even then, the Docker images are Linux based and under the hoods they run on a Linux OS created by Hyper-V for running Linux Docker containers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Implementation Step  

Content:
So what are some of the solutions available to easily get started with Kubernetes on a local machine, minikube deploys a single node cluster easily.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Implementation Step  

Content:
It relies on one of the virtualization software, like Oracle VirtualBox, to create virtual machines that run the Kubernetes cluster components.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
We have seen this in the beginner's course.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Implementation Step  

Content:
The kube ADM tool can be used to deploy a single node or a multi-node cluster real quick.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
But for this you must provision the required hosts with supported configuration yourself.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Comparison  

Content:
So the difference between the first two and kube adm is that the first two provisions of VM were supported configuration by itself, whereas kube ADM expects the VMs provisioned already.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Implementation Step  

Content:
At the same time, it allows for deploying multi-node clusters, whereas the former doesn't.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Implementation Step  

Content:
Again, deploying a Kubernetes cluster locally on a laptop is usually for learning, testing and development purposes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
For production purposes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
There are many ways to get started with a Kubernetes cluster, both in a private or a public cloud environment.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
I would categorize them as turnkey solutions or hosted or managed solutions.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Implementation Step  

Content:
Turnkey solutions are where you provision the required VMs and use some kind of tools or scripts to configure Kubernetes cluster on them.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
At the end of the day, you are responsible for maintaining those VMs and patching them and upgrading them, etc. but cluster management and maintenance are mostly made easy using these tools and scripts.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Exam Tip  

Content:
For example, deploying a Kubernetes cluster on AWS using the Cops tool.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Implementation Step  

Content:
Hosted solutions are more like Kubernetes as a service solution where the cluster, along with the required VMs, are deployed by the provider and Kubernetes is configured by them by the provider.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
The VMs are maintained by the provider.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Exam Tip  

Content:
For example, Google Kubernetes Engine lets you deploy a Kubernetes cluster in a matter of minutes without you having to perform any configuration by yourself.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
Let us look at some of the turnkey solutions.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
OpenShift is a popular on prem Kubernetes platform by Red hat.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
For those of you who may not be familiar, OpenShift is an open source container application platform and is built on top of Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Implementation Step  

Content:
It provides a set of additional tools and a nice GUI to create and manage Kubernetes constructs, and easily integrate with CI, CD pipelines, etc..

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
We have an OpenShift for beginners course in our catalog.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
Check it out if you're interested.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Implementation Step  

Content:
Cloud Foundry Container Runtime is an open source project from Cloud Foundry that helps in deploying and managing highly available Kubernetes clusters using their open source tool called Bosh.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Best Practice  

Content:
If you wish to leverage your existing VMware environment for Kubernetes, then the VMware cloud PXE solution is one that should be evaluated.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Implementation Step  

Content:
Vagrant provides a set of useful scripts to deploy a Kubernetes cluster on different cloud service providers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Implementation Step  

Content:
All of these solutions makes it easy to deploy and manage a Kubernetes cluster privately within your organization.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
You must have a few virtual machines with supported configurations in place.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
These are a few of the many Kubernetes certified solutions.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
Well, there are many more, so check them out in the Kubernetes documentation page.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
Let us look at some of the hosted solutions.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
Google Kubernetes Engine is a very popular Kubernetes as a service offering on Google Cloud Platform.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
OpenShift online is an offering from Red hat where you gain access to a fully functional Kubernetes cluster online.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
Azure has the Azure Kubernetes Service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
And finally, Amazon Elastic Container Service for Kubernetes is Amazon's hosted Kubernetes offering.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Concept  

Content:
Again, these are just some of the solutions.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
There are many more.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Concept  

Content:
So what is our choice?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Implementation Step  

Content:
In our case, since this is for learning purposes, and considering the fact that some of you may not have access to a public cloud account, and since most of you mentioned in the poll we sent out that you prefer a local setup with VirtualBox, we chose to deploy a local Kubernetes cluster from scratch on our local system by creating several virtual machines on VirtualBox.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Implementation Step  

Content:
So our design now has three nodes one master, two worker to be deployed on a laptop with virtual machines provisioned on VirtualBox.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Concept  

Content:
Well, that's it for this lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 56
Type: Concept  

Content:
Check out the reference page to read more about many more such solutions.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 242_Choosing Kubernetes Infrastructure
- File: 242_Choosing Kubernetes Infrastructure.txt
- Topic: Choosing Kubernetes Infrastructure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
