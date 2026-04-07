# Concept Card: Cross-Cloud

## Definition
Transcript evidence থেকে derived canonical definition; conflicting views থাকলে সব variant রাখা হয়েছে।

## First Principles
System boundary, control loop, এবং failure behavior দৃষ্টিতে concept ব্যাখ্যা করতে হবে।

## Mental Model
এই concept-কে runtime contract হিসেবে ধরলে debugging ও design decisions সহজ হয়।

## Why It Exists
Operational complexity কমানো এবং reliable automation enable করা।

## Internal Working
Control plane state reconciliation + node-level execution pathway।

## YAML and Command Usage
Related raw commands এবং manifests reference-based রাখা হয়েছে; no rewrite of original evidence.

## Use Cases
Lab, production-like demos, and certification patterns থেকে mapped।

## Edge Cases
Version mismatch, policy conflict, scheduling/storage/network constraints উল্লেখ করা হয়েছে।

## Pitfalls
Warning/Pitfall entries evidence সহ retain করা হয়েছে।

## Troubleshooting Angle
Symptom -> Cause -> Fix logic chain evidence-based maintain করা হয়েছে।

## Exam Relevance
CKA/CKAD speed + correctness + troubleshooting expectations mapped।

## Source Contributions

### Evidence 1: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/035_Services - Loadbalancer.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 035_Services - Loadbalancer.txt
- Line Context: Lines 1-1 from transcript
- Content: However, if we were on a supported cloud platform like Google Cloud or AWS or Azure, I could leverage the native load balancer of that cloud platform.
- Multi-concept tags: Services, Cross-Cloud, Platform Engineering

### Evidence 2: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/035_Services - Loadbalancer.extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 035_Services - Loadbalancer.txt
- Line Context: Lines 1-1 from transcript
- Content: And so GCP, AWS and Azure are definitely supported.
- Multi-concept tags: Services, Cross-Cloud

### Evidence 3: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements.txt
- Line Context: Lines 1-1 from transcript
- Content: Uh, now one count of CPU is equivalent to one Vcpu so that's one vcpu in AWS.
- Multi-concept tags: Cross-Cloud

### Evidence 4: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements.txt
- Line Context: Lines 1-1 from transcript
- Content: So if you're looking at the AWS cloud, or it could be referred to as one core in GCP or Azure or one Hyperthread, um, on other other systems, and you could request a higher number of CPUs for the container provided your nodes are sufficiently funded.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 5: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/135_Cluster Upgrade Introduction.extraction.md::E9
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 135_Cluster Upgrade Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: So if kube API server was at EKS, controller managers and kube schedulers can be at x minus one and the kubelet and kube proxy components can be at two versions lower x minus two.
- Multi-concept tags: Scheduling, Architecture, Cross-Cloud

### Evidence 6: certified-kubernetes-administrator-with-practice-tests/07_Security/156_Lab Solution - Certificates API.extraction.md::E2
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 156_Lab Solution - Certificates API.txt
- Line Context: Lines 1-1 from transcript
- Content: So a new member, Akshay joined our team.
- Multi-concept tags: Security-RBAC, Cross-Cloud

### Evidence 7: certified-kubernetes-administrator-with-practice-tests/07_Security/156_Lab Solution - Certificates API.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 156_Lab Solution - Certificates API.txt
- Line Context: Lines 1-1 from transcript
- Content: So we have Akshay dot CSR, and Akshay dot key.
- Multi-concept tags: Security-RBAC, Cross-Cloud

### Evidence 8: certified-kubernetes-administrator-with-practice-tests/07_Security/156_Lab Solution - Certificates API.extraction.md::E12
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 156_Lab Solution - Certificates API.txt
- Line Context: Lines 1-1 from transcript
- Content: So create a certificate signing request object with the name Akshay with the contents of the Akshay dot CSR file.
- Multi-concept tags: Security-RBAC, Cross-Cloud

### Evidence 9: certified-kubernetes-administrator-with-practice-tests/07_Security/156_Lab Solution - Certificates API.extraction.md::E21
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 156_Lab Solution - Certificates API.txt
- Line Context: Lines 1-1 from transcript
- Content: So I'm going to create a file called Akshay dot yaml.
- Multi-concept tags: Security-RBAC, Configuration, Cross-Cloud

### Evidence 10: certified-kubernetes-administrator-with-practice-tests/07_Security/156_Lab Solution - Certificates API.extraction.md::E45
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 156_Lab Solution - Certificates API.txt
- Line Context: Lines 1-1 from transcript
- Content: And this is Akshay.
- Multi-concept tags: Security-RBAC, Cross-Cloud

### Evidence 11: certified-kubernetes-administrator-with-practice-tests/07_Security/156_Lab Solution - Certificates API.extraction.md::E67
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 156_Lab Solution - Certificates API.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so the CSR request named Akshay is created and you can see it's in a pending state.
- Multi-concept tags: Security-RBAC, Troubleshooting, Cross-Cloud

### Evidence 12: certified-kubernetes-administrator-with-practice-tests/07_Security/159_Lab Solution - KubeConfig.extraction.md::E47
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 159_Lab Solution - KubeConfig.txt
- Line Context: Lines 1-1 from transcript
- Content: Now, what is the name of the client certificate file configured for the AWS user?
- Multi-concept tags: Security-RBAC, Cross-Cloud

### Evidence 13: certified-kubernetes-administrator-with-practice-tests/07_Security/159_Lab Solution - KubeConfig.extraction.md::E48
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 159_Lab Solution - KubeConfig.txt
- Line Context: Lines 1-1 from transcript
- Content: So you have users here and you have AWS user.
- Multi-concept tags: Security-RBAC, Cross-Cloud

### Evidence 14: certified-kubernetes-administrator-with-practice-tests/07_Security/159_Lab Solution - KubeConfig.extraction.md::E50
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 159_Lab Solution - KubeConfig.txt
- Line Context: Lines 1-1 from transcript
- Content: The file name is AWS user dot crt so that's AWS user dot crt.
- Multi-concept tags: Security-RBAC, Cross-Cloud

### Evidence 15: certified-kubernetes-administrator-with-practice-tests/07_Security/172_Image Security.extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 172_Image Security.txt
- Line Context: Lines 1-1 from transcript
- Content: Many cloud service providers, such as AWS, Azure, or GCP, provide a private registry by default on any of these solutions, be it on Docker Hub or Google's Registry or your internal private registry.
- Multi-concept tags: Services, Security-RBAC, Cross-Cloud

### Evidence 16: certified-kubernetes-administrator-with-practice-tests/07_Security/182_Lab Solution - Network Policies (optional).extraction.md::E94
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 182_Lab Solution - Network Policies (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we have to create an Azure policy named "Internal Policy".
- Multi-concept tags: Networking, Security-RBAC, Cross-Cloud, Platform Engineering

### Evidence 17: certified-kubernetes-administrator-with-practice-tests/08_Storage/191_Volume Driver Plugins in Docker.extraction.md::E9
- Type: Comparison
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 191_Volume Driver Plugins in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: There are many other volume driver plugins that allow you to create a volume on third party solutions like Azure File Storage, convoy, DigitalOcean, Block Storage Locker, Google Compute Persistent Disks, Glusterfs, NetApp X-ray Portworx, and VMware vSphere storage.
- Multi-concept tags: Storage, Cross-Cloud

### Evidence 18: certified-kubernetes-administrator-with-practice-tests/08_Storage/191_Volume Driver Plugins in Docker.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 191_Volume Driver Plugins in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: For instance, X-ray storage driver can be used to provision storage on AWS, EBS, S3, EMC storage arrays like Isilon and Scaleio, or Google Persistent Disk or OpenStack cinder.
- Multi-concept tags: Storage, Cross-Cloud

### Evidence 19: certified-kubernetes-administrator-with-practice-tests/08_Storage/191_Volume Driver Plugins in Docker.extraction.md::E14
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 191_Volume Driver Plugins in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: This will create a container and attach a volume from the AWS cloud.
- Multi-concept tags: Storage, Cross-Cloud

### Evidence 20: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface.txt
- Line Context: Lines 1-1 from transcript
- Content: Azure disk.
- Multi-concept tags: Storage, Cross-Cloud

### Evidence 21: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E37
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: Kubernetes supports several types of different storage solutions such as NFS cluster, NFS, Flocker, Fibre Channel, Cephfs, Scaleio, or public cloud solutions like AWS, EBS, Azure Disk or File or Google's Persistent Disk.
- Multi-concept tags: Storage, Architecture, Cross-Cloud

### Evidence 22: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E38
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, to configure an AWS Elastic Block Store volume as the storage option for the volume, we replace Hostpath field of the volume with the AWS Elastic Block Store field, along with the volume, ID and filesystem type.
- Multi-concept tags: Storage, CKA-CKAD, Cross-Cloud

### Evidence 23: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E39
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: The volume storage will now be on AWS EBS.
- Multi-concept tags: Storage, Cross-Cloud

### Evidence 24: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: As we saw in the previous lecture, like AWS Elastic Block Store, etc..
- Multi-concept tags: Storage, Cross-Cloud

### Evidence 25: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E43
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: It didn't guarantee secure erasure, didn't handle snapshots, or provide provider metadata, and only worked for certain entry volume plugins on cloud or block backends like EBS, Google Cloud, Azure Disk, or network storage like NFS or Sis drivers.
- Multi-concept tags: Networking, Storage, Cross-Cloud

### Evidence 26: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E3
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: In this case, we create a PV from a Google Cloud Persistent disk.
- Multi-concept tags: Storage, Cross-Cloud

### Evidence 27: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E4
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: The problem here is that before this PV is created, you must have created the disk on Google Cloud.
- Multi-concept tags: Storage, Cross-Cloud

### Evidence 28: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E5
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: Every time an application requires storage, you have to first manually provision the disk on Google Cloud and then manually create a persistent volume definition file using the same name as that of the disk that you created.
- Multi-concept tags: Storage, Cross-Cloud

### Evidence 29: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: With storage classes, you can define a provisioner, such as Google Storage, that can automatically provision storage on Google Cloud and attach that to pods when a claim is made.
- Multi-concept tags: Pods, Storage, Cross-Cloud

### Evidence 30: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: There are many other provisioners as well, such as for AWS, EBS, Azure File, Azure Disk, CIFs, Portworx, Scaleio, and so on.
- Multi-concept tags: Storage, Cross-Cloud

### Evidence 31: certified-kubernetes-administrator-with-practice-tests/09_Networking/212_Cluster Networking.extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 212_Cluster Networking.txt
- Line Context: Lines 1-1 from transcript
- Content: So consider this when you set up networking for your nodes and your firewalls or iptables rules or network security group in a cloud environment such as GCP or Azure or AWS.
- Multi-concept tags: Networking, Security-RBAC, Configuration, Architecture, Cross-Cloud

### Evidence 32: certified-kubernetes-administrator-with-practice-tests/09_Networking/231_Ingress.extraction.md::E29
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 231_Ingress.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's take a step back and see what you could do if you were on a public cloud environment like Google Cloud Platform.
- Multi-concept tags: Networking, Configuration, Cross-Cloud, Platform Engineering

### Evidence 33: certified-kubernetes-administrator-with-practice-tests/09_Networking/231_Ingress.extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 231_Ingress.txt
- Line Context: Lines 1-1 from transcript
- Content: But in addition to that, Kubernetes also sends a request to Google Cloud Platform to provision a network load balancer for this service.
- Multi-concept tags: Services, Networking, Cross-Cloud, Platform Engineering

### Evidence 34: certified-kubernetes-administrator-with-practice-tests/09_Networking/238_Introduction to Gateway API (2025 updates).extraction.md::E88
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 238_Introduction to Gateway API (2025 updates).txt
- Line Context: Lines 1-1 from transcript
- Content: Amazon Ex Azure Application gateway for containers.
- Multi-concept tags: Networking, Cross-Cloud

### Evidence 35: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/241_Design a Kubernetes Cluster.extraction.md::E16
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 241_Design a Kubernetes Cluster.txt
- Line Context: Lines 1-1 from transcript
- Content: If you want to deploy a cluster for learning purposes, then a solution based on minikube or a single node cluster deployed using kube ADM on local VMs or cloud providers like GCP or AWS should do.
- Multi-concept tags: Architecture, Cross-Cloud, On-Prem

### Evidence 36: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/241_Design a Kubernetes Cluster.extraction.md::E20
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 241_Design a Kubernetes Cluster.txt
- Line Context: Lines 1-1 from transcript
- Content: Or if on managed cloud environments, then quickly provision a cluster using the Google Container Engine on GCP or AWS or AKS on Azure.
- Multi-concept tags: Configuration, Architecture, Cross-Cloud

### Evidence 37: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/241_Design a Kubernetes Cluster.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 241_Design a Kubernetes Cluster.txt
- Line Context: Lines 1-1 from transcript
- Content: Again, this can be set up with Kube, ADM or GCP or using Kops on AWS or other supported platforms.
- Multi-concept tags: Architecture, Cross-Cloud, Platform Engineering

### Evidence 38: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/241_Design a Kubernetes Cluster.extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 241_Design a Kubernetes Cluster.txt
- Line Context: Lines 1-1 from transcript
- Content: Cloud service providers like GCP and AWS automatically selects the right sized nodes for you based on the number of nodes in the cluster.
- Multi-concept tags: Services, Architecture, Cross-Cloud

### Evidence 39: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/241_Design a Kubernetes Cluster.extraction.md::E37
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 241_Design a Kubernetes Cluster.txt
- Line Context: Lines 1-1 from transcript
- Content: Kops is a nice tool to deploy Kubernetes cluster on AWS, and the Azure Kubernetes Service, or AKS, helps in managing the hosted Kubernetes environment on Azure.
- Multi-concept tags: Services, Configuration, Architecture, Cross-Cloud

### Evidence 40: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/241_Design a Kubernetes Cluster.extraction.md::E45
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 241_Design a Kubernetes Cluster.txt
- Line Context: Lines 1-1 from transcript
- Content: You may choose to deploy on physical machines or virtual machines, or cloud environments like GCP, AWS, Azure, or any other platform of your choice.
- Multi-concept tags: Configuration, Architecture, Cross-Cloud, On-Prem, Platform Engineering

### Evidence 41: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/242_Choosing Kubernetes Infrastructure.extraction.md::E28
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 242_Choosing Kubernetes Infrastructure.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, deploying a Kubernetes cluster on AWS using the Cops tool.
- Multi-concept tags: Architecture, CKA-CKAD, Cross-Cloud

### Evidence 42: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/242_Choosing Kubernetes Infrastructure.extraction.md::E46
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 242_Choosing Kubernetes Infrastructure.txt
- Line Context: Lines 1-1 from transcript
- Content: Google Kubernetes Engine is a very popular Kubernetes as a service offering on Google Cloud Platform.
- Multi-concept tags: Services, Architecture, Cross-Cloud, Platform Engineering

### Evidence 43: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/242_Choosing Kubernetes Infrastructure.extraction.md::E48
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 242_Choosing Kubernetes Infrastructure.txt
- Line Context: Lines 1-1 from transcript
- Content: Azure has the Azure Kubernetes Service.
- Multi-concept tags: Services, Architecture, Cross-Cloud

### Evidence 44: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E22
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Then, we have to download the Google Cloud public signing key.
- Multi-concept tags: Architecture, Cross-Cloud, On-Prem

### Evidence 45: certified-kubernetes-administrator-with-practice-tests/15_Other Topics/299_JSON Path in Kubernetes.extraction.md::E24
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 15_Other Topics / 299_JSON Path in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: The kube API server speaks the JSON language, so it returns the requested information in a JSON format.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 46: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements.txt
- Line Context: Lines 1-1 from transcript
- Content: Uh, now one count of CPU is equivalent to one Vcpu so that's one vcpu in AWS.
- Multi-concept tags: Cross-Cloud

### Evidence 47: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements.txt
- Line Context: Lines 1-1 from transcript
- Content: So if you're looking at the AWS cloud, or it could be referred to as one core in GCP or Azure or one hyper thread, um, on other other systems, and you could request a higher number of CPUs for the container provided your nodes are sufficiently funded.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 48: certified-kubernetes-application-developer/07_Services & Networking/115_Ingress Networking.extraction.md::E29
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 115_Ingress Networking.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's take a step back and see what you could do if you were on a public cloud environment like Google Cloud Platform.
- Multi-concept tags: Services, Networking, Configuration, Cross-Cloud, Platform Engineering

### Evidence 49: certified-kubernetes-application-developer/07_Services & Networking/115_Ingress Networking.extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 115_Ingress Networking.txt
- Line Context: Lines 1-1 from transcript
- Content: But in addition to that, Kubernetes also sends a request to Google Cloud Platform to provision a network load balancer for this service.
- Multi-concept tags: Services, Networking, Cross-Cloud, Platform Engineering

### Evidence 50: certified-kubernetes-application-developer/08_State Persistence/124_Volume Driver Plugins in Docker.extraction.md::E9
- Type: Comparison
- Source: certified-kubernetes-application-developer / 08_State Persistence / 124_Volume Driver Plugins in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: There are many other volume driver plugins that allow you to create a volume on third party solutions like Azure File Storage, convoy, DigitalOcean, Block Storage Locker, Google Compute, Persistent Disks, cluster, EFS, NetApp, Rex, Ray, Port Works, and VMware vSphere storage.
- Multi-concept tags: Storage, Architecture, Cross-Cloud

### Evidence 51: certified-kubernetes-application-developer/08_State Persistence/124_Volume Driver Plugins in Docker.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 124_Volume Driver Plugins in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: For instance, Rex Ray storage driver can be used to provision storage on AWS, EBS, S3, EMC storage arrays like Isilon and Scaleio or Google Persistent Disk or OpenStack cinder.
- Multi-concept tags: Storage, Cross-Cloud

### Evidence 52: certified-kubernetes-application-developer/08_State Persistence/124_Volume Driver Plugins in Docker.extraction.md::E14
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 124_Volume Driver Plugins in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: This will create a container and attach a volume from the AWS cloud.
- Multi-concept tags: Storage, Cross-Cloud

### Evidence 53: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E35
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: Fibre channel CFS, Scaleio or public cloud solutions like AWS, EBS, Azure Disk or File or Google's Persistent Disk.
- Multi-concept tags: Storage, Cross-Cloud

### Evidence 54: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E36
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, to configure an AWS Elastic Block Store volume as the storage option for the volume, we replace Hostpath field of the volume with the AWS Elastic Block Store field.
- Multi-concept tags: Storage, CKA-CKAD, Cross-Cloud

### Evidence 55: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E38
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: The volume storage will now be on AWS EBS.
- Multi-concept tags: Storage, Cross-Cloud

### Evidence 56: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: As we saw in the previous lecture like AWS Elastic Block Store, etc..
- Multi-concept tags: Storage, Cross-Cloud

### Evidence 57: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E40
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: It didn't guarantee secure erasure, didn't handle snapshots, or provide provider metadata, and only worked for certain entry volume plugins on cloud or block backends like EBS, Google Cloud PD, Azure Disk, or an network storage like NFS or Sis drivers.
- Multi-concept tags: Networking, Storage, Cross-Cloud

### Evidence 58: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E3
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: In this case, we create a PVC from a Google Cloud persistent disk.
- Multi-concept tags: Storage, Cross-Cloud

### Evidence 59: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E4
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: The problem here is that before this PV is created, you must have created the disk on Google Cloud.
- Multi-concept tags: Storage, Cross-Cloud

### Evidence 60: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E5
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: Every time an application requires storage, you have to first manually provision the disk on Google Cloud and then manually create a persistent volume definition file using the same name as that of the disk that you created.
- Multi-concept tags: Storage, Cross-Cloud

### Evidence 61: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: With storage classes, you can define a provisioner, such as Google Storage, that can automatically provision storage on Google Cloud and attach that to pods.
- Multi-concept tags: Pods, Storage, Cross-Cloud

### Evidence 62: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: There are many other provisioners as well, such as for AWS, EBS, Azure File, Azure Disk, CIFs, Portworx, Scaleio, and so on With each of these provisioners, you can pass in additional parameters such as the type of disk to provision the replication type, etc. these parameters are very specific to the provisioner that you are using for Google Persistent Disk.
- Multi-concept tags: Storage, Cross-Cloud

### Evidence 63: certified-kubernetes-application-developer/09_Security/144_Solution KubeConfig.extraction.md::E48
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 09_Security / 144_Solution KubeConfig.txt
- Line Context: Lines 1-1 from transcript
- Content: Now what is the name of the client certificate file configured for the AWS user?
- Multi-concept tags: Security-RBAC, Cross-Cloud

### Evidence 64: certified-kubernetes-application-developer/09_Security/144_Solution KubeConfig.extraction.md::E49
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 144_Solution KubeConfig.txt
- Line Context: Lines 1-1 from transcript
- Content: So you have, users here and you have AWS user.
- Multi-concept tags: Security-RBAC, Cross-Cloud

### Evidence 65: certified-kubernetes-application-developer/09_Security/144_Solution KubeConfig.extraction.md::E51
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 144_Solution KubeConfig.txt
- Line Context: Lines 1-1 from transcript
- Content: The file name, is AWSuser.CRT.
- Multi-concept tags: Security-RBAC, Cross-Cloud

### Evidence 66: certified-kubernetes-application-developer/09_Security/144_Solution KubeConfig.extraction.md::E52
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 144_Solution KubeConfig.txt
- Line Context: Lines 1-1 from transcript
- Content: So that's AWSuser.CRT.
- Multi-concept tags: Security-RBAC, Cross-Cloud

### Evidence 67: learn-kubernetes/02_Kubernetes Overview/006_Container Orchestration.extraction.md::E17
- Type: Concept
- Source: learn-kubernetes / 02_Kubernetes Overview / 006_Container Orchestration.txt
- Line Context: Lines 1-1 from transcript
- Content: Kubernetes is now supported on all public cloud service providers like GCP, Azure, and AWS, and the Kubernetes project is one of the top ranked projects in GitHub.
- Multi-concept tags: Services, Cross-Cloud

### Evidence 68: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E7
- Type: Concept
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Line Context: Lines 1-1 from transcript
- Content: There are also hosted versions available for setting up Kubernetes in a cloud environment such as GCP, AWS or Azure.
- Multi-concept tags: Configuration, Cross-Cloud, On-Prem

### Evidence 69: learn-kubernetes/07_Services/042_Services - Load Balancer.extraction.md::E21
- Type: Concept
- Source: learn-kubernetes / 07_Services / 042_Services - Load Balancer.txt
- Line Context: Lines 1-1 from transcript
- Content: However, if we were on a supported cloud platform like Google Cloud or AWS or Azure, I could leverage the native load balancer of that cloud platform.
- Multi-concept tags: Services, Cross-Cloud, Platform Engineering

### Evidence 70: learn-kubernetes/07_Services/042_Services - Load Balancer.extraction.md::E25
- Type: Concept
- Source: learn-kubernetes / 07_Services / 042_Services - Load Balancer.txt
- Line Context: Lines 1-1 from transcript
- Content: So GCP, AWS and Azure are definitely supported.
- Multi-concept tags: Services, Cross-Cloud

### Evidence 71: learn-kubernetes/08_Microservices Architecture/045_Microservices Application.extraction.md::E2
- Type: Exam Tip
- Source: learn-kubernetes / 08_Microservices Architecture / 045_Microservices Application.txt
- Line Context: Lines 1-1 from transcript
- Content: We will then try and deploy this web application on multiple different Kubernetes platforms such as Google Cloud Platform.
- Multi-concept tags: Services, Architecture, Cross-Cloud, Platform Engineering

### Evidence 72: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E1
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 050_Kubernetes on Cloud - Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: In this section, we will look at the various options available for deploying a Kubernetes cluster on the cloud.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 73: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E2
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 050_Kubernetes on Cloud - Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: In the scope of this beginner's course, we will look at the simplest form of getting started with Kubernetes.
- Multi-concept tags: Cross-Cloud

### Evidence 74: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E3
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 050_Kubernetes on Cloud - Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: In each of these cloud platforms, Google Cloud, AWS and Azure.
- Multi-concept tags: Cross-Cloud, Platform Engineering

### Evidence 75: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E4
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 050_Kubernetes on Cloud - Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: So for production purposes, there are many ways to get started with Kubernetes cluster, both in a private or a public cloud environment.
- Multi-concept tags: Configuration, Architecture, Cross-Cloud

### Evidence 76: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E5
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 050_Kubernetes on Cloud - Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: And I would categorize them as either self-hosted or turnkey solutions and hosted or managed solutions.
- Multi-concept tags: Cross-Cloud, On-Prem

### Evidence 77: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E6
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 050_Kubernetes on Cloud - Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: So turnkey solutions are where you provision the required VMs and use some kind of tools or scripts to configure the Kubernetes cluster on them.
- Multi-concept tags: Architecture, Cross-Cloud, On-Prem

### Evidence 78: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E7
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 050_Kubernetes on Cloud - Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: So at the end of the day, you are responsible for maintaining those VMs and patching them and upgrading them, etc. but provisioning the cluster itself and managing the lifecycle of the cluster are mostly made easy using certain tools and scripts.
- Multi-concept tags: Architecture, Cross-Cloud, On-Prem

### Evidence 79: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E8
- Type: Exam Tip
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 050_Kubernetes on Cloud - Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, deploying a Kubernetes cluster on AWS can be made easy using tools like Cops or Cuban, etc..
- Multi-concept tags: Architecture, CKA-CKAD, Cross-Cloud

### Evidence 80: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E9
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 050_Kubernetes on Cloud - Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: In the Certified Kubernetes Administrators course, we explore setting up Kubernetes clusters using the Kube admin tool.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 81: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E10
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 050_Kubernetes on Cloud - Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: Hosted solutions or managed solutions are more like Kubernetes as a service solution where the cluster, along with the required VMs, are deployed by the provider and Kubernetes is configured by them by the provider, so the VMs are maintained by the provider.
- Multi-concept tags: Services, Architecture, Cross-Cloud

### Evidence 82: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E11
- Type: Exam Tip
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 050_Kubernetes on Cloud - Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, the Google Container Engine lets you or the Google Kubernetes Engine.
- Multi-concept tags: CKA-CKAD, Cross-Cloud

### Evidence 83: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E12
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 050_Kubernetes on Cloud - Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: GKE lets you provision a Kubernetes cluster in a matter of minutes with just a few clicks, without having to perform any kind of configuration by yourself.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 84: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E13
- Type: Warning/Pitfall
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 050_Kubernetes on Cloud - Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: So in these environments, um, mostly you won't have access to the master nodes or you, you most likely do not have access to the VMs themselves, um, to perform any kind of, um, you know, configuration changes on the master nodes.
- Multi-concept tags: Configuration, Architecture, Cross-Cloud

### Evidence 85: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E14
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 050_Kubernetes on Cloud - Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: Uh, the version of Kubernetes and the master nodes are all managed by the, by the provider.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 86: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E15
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 050_Kubernetes on Cloud - Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: So, um, that's what we will look at in this section of the course.
- Multi-concept tags: Cross-Cloud

### Evidence 87: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E16
- Type: Exam Tip
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 050_Kubernetes on Cloud - Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: So we will look at deploying our example voting application on the Google, um, Kubernetes Engine, on Google Cloud, the Azure Kubernetes Service, and the AWS EKS solutions.
- Multi-concept tags: Services, CKA-CKAD, Cross-Cloud

### Evidence 88: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E17
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 050_Kubernetes on Cloud - Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: Now note that each of these require its own separate course, and we will only be looking at the simplest way of getting started with these.
- Multi-concept tags: Cross-Cloud

### Evidence 89: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E18
- Type: Warning/Pitfall
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 050_Kubernetes on Cloud - Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: So, uh, a lot of concepts that we learned throughout this course about Kubernetes itself don't change and are applicable to any of these Kubernetes environments.
- Multi-concept tags: Configuration, Cross-Cloud

### Evidence 90: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E19
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 050_Kubernetes on Cloud - Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: All that we will be doing is provision a managed Kubernetes cluster and reuse the deployment and service definition files that we created, and see how we can deploy the same application on all of these different platforms.
- Multi-concept tags: Deployments, Services, Architecture, Cross-Cloud, Platform Engineering

### Evidence 91: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E20
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 050_Kubernetes on Cloud - Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: Also note that this is not a demo of deploying a production grade Kubernetes cluster.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 92: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E21
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 050_Kubernetes on Cloud - Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: Um, for that, you must have a good understanding of the various concepts that we discussed in the A and D courses.
- Multi-concept tags: Cross-Cloud

### Evidence 93: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E22
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 050_Kubernetes on Cloud - Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: And this is only a beginner's guide to deploying the same application in a learning environment in different cloud platforms in in the simplest form.
- Multi-concept tags: Configuration, Cross-Cloud, Platform Engineering

### Evidence 94: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E1
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: In this demo, we're going to deploy our application on the Google Kubernetes Engine on Google Cloud Platform.
- Multi-concept tags: Cross-Cloud, Platform Engineering

### Evidence 95: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E2
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: So as a prerequisite, you must have access to the Google Cloud account.
- Multi-concept tags: Cross-Cloud

### Evidence 96: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E3
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: Google provides a 12 month free trial with a credit of $1 300.
- Multi-concept tags: Cross-Cloud

### Evidence 97: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E4
- Type: Best Practice
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: And that should be sufficient to follow this demo.
- Multi-concept tags: Cross-Cloud

### Evidence 98: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E5
- Type: Warning/Pitfall
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: So if you don't have access to Google Cloud already, use this link and sign up.
- Multi-concept tags: Cross-Cloud

### Evidence 99: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E6
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: And of course, uh, some basic, um, understanding of working with the Google Cloud environment and the shell are required so that you can set up all the prerequisites.
- Multi-concept tags: Configuration, Cross-Cloud

### Evidence 100: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E7
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: So we won't be going into that.
- Multi-concept tags: Cross-Cloud

### Evidence 101: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E8
- Type: Exam Tip
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: Once logged in to the GCP console, we have a project that we have created by the name example voting app.
- Multi-concept tags: CKA-CKAD, Cross-Cloud

### Evidence 102: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E9
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: So to start with GKE click on the navigation menu on the top left corner.
- Multi-concept tags: Cross-Cloud

### Evidence 103: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E10
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: And under the compute section click on Kubernetes Engine.
- Multi-concept tags: Cross-Cloud

### Evidence 104: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E11
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: Once you're in this page click on Create Cluster.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 105: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E12
- Type: Best Practice
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: So this should load the Kubernetes cluster creation interface.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 106: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E13
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: So the first thing that you have to do is change, uh, the name here.
- Multi-concept tags: Cross-Cloud

### Evidence 107: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E14
- Type: Exam Tip
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: So we'll we will name it example voting app.
- Multi-concept tags: CKA-CKAD, Cross-Cloud

### Evidence 108: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E15
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: We will leave the default values um and for location type and the zone uh we will leave it as, as it is, the master version is the Kubernetes version, which we could either set to a static version or select a release channel to automatically upgrade the Kubernetes versions when new versions are made available on GKE.
- Multi-concept tags: Cross-Cloud

### Evidence 109: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E16
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: Otherwise, um, if you set it to static, then you, uh, upgrade manually.
- Multi-concept tags: Cross-Cloud

### Evidence 110: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E17
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: Uh, we talk about cluster upgrades in detail in the course.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 111: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E18
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: For now, let's leave it at the default, and you may choose another version by clicking on this, um, drop down link.
- Multi-concept tags: Cross-Cloud

### Evidence 112: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E19
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: Now you can make additional changes to the worker nodes, um, that have to be configured so you can make change to the type of virtual machine to be used, the size, etc..
- Multi-concept tags: Architecture, Cross-Cloud, On-Prem

### Evidence 113: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E20
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: Um, but we are just going to stick with the defaults for now.
- Multi-concept tags: Cross-Cloud

### Evidence 114: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E21
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: So we will proceed with creating the cluster, so click on create to begin the creation process.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 115: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E22
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: And remember this can take anywhere between 5 to 10 minutes.
- Multi-concept tags: Cross-Cloud

### Evidence 116: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E23
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's just wait and give it some time to complete.
- Multi-concept tags: Cross-Cloud

### Evidence 117: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E24
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: You may click on the refresh button to refresh the status.
- Multi-concept tags: Cross-Cloud

### Evidence 118: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E25
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: All right so now the cluster has been set up.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 119: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E26
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: Now you can see that by the green check mark next to the cluster name.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 120: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E27
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: And the easiest way to connect to the cluster is by making use of this connect button right here.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 121: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E28
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: So this will give us the command to connect to the cluster using the cloud shell.
- Multi-concept tags: Configuration, Architecture, Cross-Cloud

### Evidence 122: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E29
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's click on that.
- Multi-concept tags: Cross-Cloud

### Evidence 123: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E30
- Type: Best Practice
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: And on the lower half of the screen the Google Cloud Shell should open up.
- Multi-concept tags: Cross-Cloud

### Evidence 124: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E31
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: And I'm just going to increase it all the way to the top to make some space.
- Multi-concept tags: Cross-Cloud

### Evidence 125: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E32
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: So this is the command that will enable kubectl to be able to talk to the GKE cluster.
- Multi-concept tags: Configuration, Architecture, Cross-Cloud

### Evidence 126: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E33
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: So in Cloud Shell you already have the kubectl utility installed.
- Multi-concept tags: Cross-Cloud

### Evidence 127: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E34
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: So um all you need to do is run this command to set up, um, Connectivity to the GKE cluster, so it will set up the Kubeconfig and any other required configuration.
- Multi-concept tags: Configuration, Architecture, Cross-Cloud

### Evidence 128: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E35
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: Once that is done, we are ready.
- Multi-concept tags: Cross-Cloud

### Evidence 129: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E36
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: So we now clear the screen and if you run the kubectl get nodes command, we can see that we have three worker nodes which are in ready state.
- Multi-concept tags: Configuration, Architecture, Cross-Cloud

### Evidence 130: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E37
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: It's running version 1.11.14.
- Multi-concept tags: Cross-Cloud

### Evidence 131: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E38
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: And it was set up about 1 to 2 minutes ago.
- Multi-concept tags: Cross-Cloud

### Evidence 132: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E39
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: So our next task is to get the YAML files for deployments and services that we created earlier.
- Multi-concept tags: Deployments, Services, Configuration, Cross-Cloud

### Evidence 133: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E40
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: So to do that we'll open up our GitHub repository where all these files have been committed.
- Multi-concept tags: Cross-Cloud

### Evidence 134: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E41
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: So here we have the GitHub repository.
- Multi-concept tags: Cross-Cloud

### Evidence 135: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E42
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: And within the Its specifications directory we have all the deployment and service definition files.
- Multi-concept tags: Deployments, Services, Cross-Cloud

### Evidence 136: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E43
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's first clone the repository onto the Google Cloud Shell.
- Multi-concept tags: Cross-Cloud

### Evidence 137: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E44
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: So I'm going to run git clone and paste the URL that was copied to the clipboard.
- Multi-concept tags: Cross-Cloud

### Evidence 138: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E45
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: And let's run git clone command and paste the URL to download the repository.
- Multi-concept tags: Configuration, Cross-Cloud

### Evidence 139: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E46
- Type: Exam Tip
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: Now I'm going to CD into the example voting app directory.
- Multi-concept tags: CKA-CKAD, Cross-Cloud

### Evidence 140: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E47
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: And in here I'm going to the CD specification directory.
- Multi-concept tags: Cross-Cloud

### Evidence 141: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E48
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: And if I run ls we see all the YAML definition files.
- Multi-concept tags: Configuration, Cross-Cloud

### Evidence 142: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E49
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's check the changes that we have made to the voting app and the result app services.
- Multi-concept tags: Services, Cross-Cloud

### Evidence 143: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E50
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: So we made a small change to the services because we are deploying these on the cloud environments.
- Multi-concept tags: Services, Configuration, Cross-Cloud

### Evidence 144: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E51
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: Um earlier we discussed about a service type of load balancer where the native load balancer on the cloud is deployed when we create a service.
- Multi-concept tags: Services, Cross-Cloud

### Evidence 145: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E52
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: So in here we have changed the type of service to load balancer instead of Nodeport.
- Multi-concept tags: Services, Architecture, Cross-Cloud

### Evidence 146: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E53
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: And we have done the same for result app service as well.
- Multi-concept tags: Services, Cross-Cloud

### Evidence 147: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E54
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: So now uh let's start creating these objects.
- Multi-concept tags: Cross-Cloud

### Evidence 148: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E55
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: So we will start with the kubectl create dash f command.
- Multi-concept tags: Configuration, Cross-Cloud

### Evidence 149: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E56
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: And we'll start with the voting deployment itself.
- Multi-concept tags: Deployments, Cross-Cloud

### Evidence 150: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E57
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: And then we will deploy the service for voting app.
- Multi-concept tags: Services, Cross-Cloud

### Evidence 151: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E58
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: Next let's deploy the Redis deployment followed by the service.
- Multi-concept tags: Deployments, Services, Cross-Cloud

### Evidence 152: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E59
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: Next we will do the Postgres deployment followed by the Postgres service.
- Multi-concept tags: Deployments, Services, Cross-Cloud

### Evidence 153: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E60
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: And now we can do the worker app deployment.
- Multi-concept tags: Deployments, Cross-Cloud

### Evidence 154: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E61
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: And finally let's create the deployment for the result app as well as the result service.
- Multi-concept tags: Deployments, Services, Cross-Cloud

### Evidence 155: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E62
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: Now you can also create all of these at once two by just specifying a wild card instead of each file name.
- Multi-concept tags: Cross-Cloud

### Evidence 156: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E63
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: So you could just do a kubectl create and f and then a dot to just create all of them at once.
- Multi-concept tags: Cross-Cloud

### Evidence 157: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E64
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: So now we have created all the objects that are needed for this application to run.
- Multi-concept tags: Cross-Cloud

### Evidence 158: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E65
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's verify that by running the kubectl get deployments command services command.
- Multi-concept tags: Deployments, Services, Configuration, Cross-Cloud

### Evidence 159: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E66
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: Again see that most of the objects have been created with the exception of the worker app which is still being deployed.
- Multi-concept tags: Cross-Cloud

### Evidence 160: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E67
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: I can see that they are ready.
- Multi-concept tags: Cross-Cloud

### Evidence 161: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E68
- Type: Warning/Pitfall
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: And we can also see that our load balancers, um, do not have an external IP yet, so they are still in a pending state.
- Multi-concept tags: Troubleshooting, Cross-Cloud

### Evidence 162: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E69
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: So at this stage, um, the Kubernetes service is in fact working with the native load balancer.
- Multi-concept tags: Services, Cross-Cloud

### Evidence 163: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E70
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: So it sent a call to the native load balancer to provision a load balancer on on the Google Cloud Platform.
- Multi-concept tags: Cross-Cloud, Platform Engineering

### Evidence 164: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E71
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: So once the load balancer is provisioned and we get the load balancer, um, external URL and IP, it will be populated here.
- Multi-concept tags: Cross-Cloud

### Evidence 165: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E72
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's give it a couple of minutes.
- Multi-concept tags: Cross-Cloud

### Evidence 166: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E73
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: Um and then check this command again.
- Multi-concept tags: Configuration, Cross-Cloud

### Evidence 167: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E74
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: Now we can see that all the five deployments are ready.
- Multi-concept tags: Deployments, Cross-Cloud

### Evidence 168: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E75
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: And they have, uh, one out of one pod which are in a running state.
- Multi-concept tags: Pods, Cross-Cloud

### Evidence 169: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E76
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: And we also have our two load balancers with the two external IPS available.
- Multi-concept tags: Cross-Cloud

### Evidence 170: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E77
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: So everything has been set up as needed.
- Multi-concept tags: Cross-Cloud

### Evidence 171: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E78
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: And before we test the application, let's check the load balancer configuration.
- Multi-concept tags: Cross-Cloud

### Evidence 172: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E79
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: So if we click on um services and the ingress tab on the left, we can see that we have two services which are of type cluster IP which are the internal services of DB for Postgres and the other one for Redis.
- Multi-concept tags: Services, Networking, Architecture, Cross-Cloud

### Evidence 173: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E80
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: And we have two front end services which are making use of the external load balancer.
- Multi-concept tags: Services, Cross-Cloud

### Evidence 174: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E81
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: And here are the external um, the endpoints, the um the URL that we can use to access the application.
- Multi-concept tags: Cross-Cloud

### Evidence 175: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E82
- Type: Best Practice
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: If you'd like to see more details, you can click on any of these and this should give you more details about the service in general.
- Multi-concept tags: Services, Cross-Cloud

### Evidence 176: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E83
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: Um, the load balancer, the internal cluster IP, the load balancer IP, and the load balancer URL.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 177: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E84
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: And you can see that for all of them the status is okay.
- Multi-concept tags: Cross-Cloud

### Evidence 178: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E85
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: So now we can test the application.
- Multi-concept tags: Cross-Cloud

### Evidence 179: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E86
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's uh get the link here.
- Multi-concept tags: Cross-Cloud

### Evidence 180: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E87
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're going to open up a new uh tab in the browser.
- Multi-concept tags: Cross-Cloud

### Evidence 181: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E88
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: And uh it will redirect us to the external load balancer IP here.
- Multi-concept tags: Cross-Cloud

### Evidence 182: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E89
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: And this is our voting application.
- Multi-concept tags: Cross-Cloud

### Evidence 183: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E90
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: Similarly let's open up the results app in a new tab as well.
- Multi-concept tags: Cross-Cloud

### Evidence 184: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E91
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: And we will now cast a vote.
- Multi-concept tags: Cross-Cloud

### Evidence 185: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E92
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that the result page is updated with the uh, percentage of votes.
- Multi-concept tags: Cross-Cloud

### Evidence 186: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E93
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: Uh, let's try another vote.
- Multi-concept tags: Cross-Cloud

### Evidence 187: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E94
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: And then we see that this has been updated as well.
- Multi-concept tags: Cross-Cloud

### Evidence 188: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E95
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: So that's a quick and short demo for deploying Kubernetes clusters on GCP.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 189: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E96
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Line Context: Lines 1-1 from transcript
- Content: And I will see you in the next one.
- Multi-concept tags: Cross-Cloud

### Evidence 190: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E1
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: In this demo, we're going to create an ECS cluster, which is Amazon's managed Kubernetes service known as Elastic Kubernetes Service.
- Multi-concept tags: Services, Architecture, Cross-Cloud

### Evidence 191: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E2
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And before we begin, there are a set of prerequisites to be configured, such as having an AWS account.
- Multi-concept tags: Cross-Cloud

### Evidence 192: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E3
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So if you're new to AWS, then check out this link to get free access.
- Multi-concept tags: Cross-Cloud

### Evidence 193: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E4
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: You must already have installed the kubectl utility, which we have already done, so that's not required.
- Multi-concept tags: Cross-Cloud

### Evidence 194: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E5
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: Also, you must have some basic AWS knowledge to perform some basic operations, such as configuring a cluster role for ECS and an IAM role for node group.
- Multi-concept tags: Security-RBAC, Architecture, Cross-Cloud

### Evidence 195: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E6
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: Um, a VPC and an EC2 key pair which will be used to SSH to the worker nodes if you have to.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 196: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E7
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So the step by step instructions are available in this link.
- Multi-concept tags: Cross-Cloud

### Evidence 197: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E8
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So you must have the aws cli installed and have the AWS CLI credentials configured.
- Multi-concept tags: Cross-Cloud

### Evidence 198: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E9
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And we already have the kubectl utility installed.
- Multi-concept tags: Cross-Cloud

### Evidence 199: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E10
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're going to skip that.
- Multi-concept tags: Cross-Cloud

### Evidence 200: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E11
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And you must have uh created the IAM role for the EKS cluster and a VPC if required.
- Multi-concept tags: Security-RBAC, Architecture, Cross-Cloud

### Evidence 201: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E12
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: Or you can use the default one.
- Multi-concept tags: Cross-Cloud

### Evidence 202: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E13
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So we will start from this step here, which is of creating an Amazon EKS cluster.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 203: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E14
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So these are the basic AWS configurations.
- Multi-concept tags: Cross-Cloud

### Evidence 204: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E15
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: Um so we will not spend time on that.
- Multi-concept tags: Cross-Cloud

### Evidence 205: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E16
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: Instead we will dive into creating the Kubernetes cluster.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 206: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E17
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So we've already configured all of the prerequisites required on our system.
- Multi-concept tags: Cross-Cloud

### Evidence 207: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E18
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So to provision an EKS cluster once you're logged into your AWS account go to services.
- Multi-concept tags: Services, Architecture, Cross-Cloud

### Evidence 208: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E19
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: Now the easiest way to look up things here is to search for EKS within the search window and click on EKS.
- Multi-concept tags: Cross-Cloud

### Evidence 209: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E20
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So first thing to do is to name our cluster.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 210: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E21
- Type: Exam Tip
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So I'm going to use the name example voting app.
- Multi-concept tags: CKA-CKAD, Cross-Cloud

### Evidence 211: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E22
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And we will leave the Kubernetes version at 1.16 as default.
- Multi-concept tags: Cross-Cloud

### Evidence 212: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E23
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And we must have created a cluster service role.
- Multi-concept tags: Services, Security-RBAC, Architecture, Cross-Cloud

### Evidence 213: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E24
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So select the role created for the EKS cluster here and then click on next.
- Multi-concept tags: Security-RBAC, Architecture, Cross-Cloud

### Evidence 214: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E25
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: In the networking section We're going for the default VPC, and this is the only VPC that we have in this region.
- Multi-concept tags: Networking, Cross-Cloud

### Evidence 215: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E26
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So one thing to notice here is that we're going with the US West two region which is Oregon two.
- Multi-concept tags: Cross-Cloud

### Evidence 216: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E27
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And we're making use of all the default subnets.
- Multi-concept tags: Cross-Cloud

### Evidence 217: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E28
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And click on next.
- Multi-concept tags: Cross-Cloud

### Evidence 218: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E29
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And again click on next.
- Multi-concept tags: Cross-Cloud

### Evidence 219: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E30
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And this is just a review page.
- Multi-concept tags: Cross-Cloud

### Evidence 220: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E31
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So you can review and click on create.
- Multi-concept tags: Cross-Cloud

### Evidence 221: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E32
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So this can take quite some time.
- Multi-concept tags: Cross-Cloud

### Evidence 222: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E33
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And after ten minutes.
- Multi-concept tags: Cross-Cloud

### Evidence 223: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E34
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's just wait for this cluster to be created.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 224: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E35
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay.
- Multi-concept tags: Cross-Cloud

### Evidence 225: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E36
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So now our cluster is active and it has got the active check mark here.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 226: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E37
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So the next thing to do is to add a node group which is basically a group of worker nodes.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 227: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E38
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: Right.
- Multi-concept tags: Cross-Cloud

### Evidence 228: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E39
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So we have created a Kubernetes cluster.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 229: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E40
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: But there are no worker nodes as of now.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 230: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E41
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So that's the next step to do.
- Multi-concept tags: Cross-Cloud

### Evidence 231: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E42
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So if you go to the compute section just below you'll see an option to add a node node group.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 232: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E43
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And let's assign a name for this such as demo workers.
- Multi-concept tags: Cross-Cloud

### Evidence 233: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E44
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And we select the EKS Case node role.
- Multi-concept tags: Security-RBAC, Architecture, Cross-Cloud

### Evidence 234: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E45
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So this is another role that we created as a prerequisite for subnets.
- Multi-concept tags: Security-RBAC, Cross-Cloud

### Evidence 235: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E46
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: We select all the default subnets for now.
- Multi-concept tags: Cross-Cloud

### Evidence 236: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E47
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: Of course in your environment you must choose those that are more relevant for you.
- Multi-concept tags: Configuration, Cross-Cloud

### Evidence 237: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E48
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And next up I've got a key that is also created so that we can SSH to worker nodes as part of the prerequisites.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 238: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E49
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So this key was created earlier.
- Multi-concept tags: Cross-Cloud

### Evidence 239: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E50
- Type: Warning/Pitfall
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: Now um you don't really need this unless you are really, uh unless you really want to ssh to the worker nodes.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 240: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E51
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: Right.
- Multi-concept tags: Cross-Cloud

### Evidence 241: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E52
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So everything else looks good.
- Multi-concept tags: Cross-Cloud

### Evidence 242: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E53
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: Um, so we will click on next.
- Multi-concept tags: Cross-Cloud

### Evidence 243: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E54
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And next we set the compute configuration.
- Multi-concept tags: Cross-Cloud

### Evidence 244: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E55
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And this is basically what images will be used for the worker nodes and their size the disk size etc..
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 245: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E56
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So I will leave these at the defaults for now.
- Multi-concept tags: Cross-Cloud

### Evidence 246: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E57
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: Then I'm going to click on next.
- Multi-concept tags: Cross-Cloud

### Evidence 247: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E58
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And here's the auto scaling groups where we specify the minimum number of nodes in the cluster.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 248: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E59
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: The maximum number of nodes and the desired size.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 249: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E60
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So we will leave the default values here.
- Multi-concept tags: Cross-Cloud

### Evidence 250: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E61
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And next we will review the selected Configurations and then click on create.
- Multi-concept tags: Cross-Cloud

### Evidence 251: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E62
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So again this can take a few minutes.
- Multi-concept tags: Cross-Cloud

### Evidence 252: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E63
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's wait for that to finish.
- Multi-concept tags: Cross-Cloud

### Evidence 253: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E64
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: Now let's check the status of the node group.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 254: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E65
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that there are two nodes which are EC2 instances.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 255: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E66
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And our node groups are active.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 256: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E67
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So the next step for us is to go to the terminal and set up the kubectl utility to access this cluster.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 257: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E68
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So run the kubectl version command and verify that it's working.
- Multi-concept tags: Configuration, Cross-Cloud

### Evidence 258: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E69
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: But currently the kubectl utility is configured to work with our local minikube cluster.
- Multi-concept tags: Architecture, Cross-Cloud, On-Prem

### Evidence 259: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E70
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So the aws cli has a command to configure kubectl to work with the remote cluster we provisioned.
- Multi-concept tags: Configuration, Architecture, Cross-Cloud

### Evidence 260: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E71
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So for this we must first have the AWS cli installed and configured to work with our AWS account.
- Multi-concept tags: Cross-Cloud

### Evidence 261: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E72
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So the instructions to install aws CLI are available in the documentation.
- Multi-concept tags: Cross-Cloud

### Evidence 262: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E73
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So we have that already installed on our system.
- Multi-concept tags: Cross-Cloud

### Evidence 263: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E74
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're just going to skip that.
- Multi-concept tags: Cross-Cloud

### Evidence 264: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E75
- Type: Warning/Pitfall
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: Now if you don't have the AWS cli installed then you follow the relevant, um, steps in the documentation, uh, for your operating system.
- Multi-concept tags: Cross-Cloud

### Evidence 265: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E76
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So once installed, the documentation page, uh, we have an AWS command to configure.
- Multi-concept tags: Configuration, Cross-Cloud

### Evidence 266: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E77
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: Uh kubeconfig.
- Multi-concept tags: Cross-Cloud

### Evidence 267: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E78
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: It's called, uh, update dash kubeconfig command.
- Multi-concept tags: Configuration, Cross-Cloud

### Evidence 268: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E79
- Type: Exam Tip
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So we copy, uh, this whole command and we paste it in our terminal, and we specify the name of the cluster we created, which is example voting app.
- Multi-concept tags: Configuration, Architecture, CKA-CKAD, Cross-Cloud

### Evidence 269: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E80
- Type: Best Practice
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So once run, we see that the Kubeconfig um is configured in our home directory under the folder kube to verify if it's working as expected, run the kubectl get nodes command, and we should see the two worker nodes that are provisioned on AWS with their status and version of 1.16.
- Multi-concept tags: Configuration, Architecture, Cross-Cloud

### Evidence 270: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E81
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So that's a proof that, um, we are connecting to the right Kubernetes cluster and that the Kubeconfig setup, uh, actually worked.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 271: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E82
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So as with, um, any managed service, you cannot see the master nodes here.
- Multi-concept tags: Services, Architecture, Cross-Cloud

### Evidence 272: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E83
- Type: Warning/Pitfall
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: The master nodes do not host any applications or workloads.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 273: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E84
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: You cannot SSH to the master nodes or even access them because in managed Kubernetes services, the master nodes are maintained by the service provider.
- Multi-concept tags: Services, Architecture, Cross-Cloud

### Evidence 274: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E85
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: Now any kubectl commands we run would be targeting the remote cluster on AWS.
- Multi-concept tags: Configuration, Architecture, Cross-Cloud

### Evidence 275: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E86
- Type: Best Practice
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So now we should be good to move ahead with our application deployment.
- Multi-concept tags: Deployments, Cross-Cloud

### Evidence 276: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E87
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So just as before we will go to our GitHub repo.
- Multi-concept tags: Cross-Cloud

### Evidence 277: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E88
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And I'm going to clone it again.
- Multi-concept tags: Cross-Cloud

### Evidence 278: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E89
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And so I'm going to run git git clone voting app command.
- Multi-concept tags: Configuration, Cross-Cloud

### Evidence 279: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E90
- Type: Exam Tip
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And once downloaded I'm going to go into the example voting app.
- Multi-concept tags: CKA-CKAD, Cross-Cloud

### Evidence 280: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E91
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And under the CSS specifications directory.
- Multi-concept tags: Cross-Cloud

### Evidence 281: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E92
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: If I run the LS command I see all the deployment definition files as well as the service definition files.
- Multi-concept tags: Deployments, Services, Configuration, Cross-Cloud

### Evidence 282: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E93
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So now let's get started and create these resources.
- Multi-concept tags: Cross-Cloud

### Evidence 283: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E94
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So first I'll create the voting app deployment.
- Multi-concept tags: Deployments, Cross-Cloud

### Evidence 284: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E95
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So kubectl create command and specify the voting app deployment file and followed by the service.
- Multi-concept tags: Deployments, Services, Configuration, Cross-Cloud

### Evidence 285: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E96
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And then we will create the Redice deployment.
- Multi-concept tags: Deployments, Cross-Cloud

### Evidence 286: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E97
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And then the Redice service.
- Multi-concept tags: Services, Cross-Cloud

### Evidence 287: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E98
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: Followed by the Postgres deployment.
- Multi-concept tags: Deployments, Cross-Cloud

### Evidence 288: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E99
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And the Postgres service.
- Multi-concept tags: Services, Cross-Cloud

### Evidence 289: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E100
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And next we create our worker deployment.
- Multi-concept tags: Deployments, Cross-Cloud

### Evidence 290: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E101
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And finally we create the result app deployment and the result app service.
- Multi-concept tags: Deployments, Services, Cross-Cloud

### Evidence 291: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E102
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So that's all of the objects and they've all been created.
- Multi-concept tags: Cross-Cloud

### Evidence 292: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E103
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's check the status using the kubectl get deployments command.
- Multi-concept tags: Deployments, Configuration, Cross-Cloud

### Evidence 293: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E104
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And we can see that we have most of our services that are up except for the worker which is still in process of being deployed.
- Multi-concept tags: Services, Cross-Cloud

### Evidence 294: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E105
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And we have two load balancer type services.
- Multi-concept tags: Services, Cross-Cloud

### Evidence 295: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E106
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And we also see the public IP and other public URL with which we can access them.
- Multi-concept tags: Cross-Cloud

### Evidence 296: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E107
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's wait for our worker app to be deployed.
- Multi-concept tags: Cross-Cloud

### Evidence 297: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E108
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And once that is done, we will go ahead and access the applications using the load balancer IP address, so the service has already interacted or made a call to the load balancer and created a load balancer on on the AWS environment.
- Multi-concept tags: Services, Configuration, Cross-Cloud

### Evidence 298: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E109
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And this is the IP or the URL for that.
- Multi-concept tags: Cross-Cloud

### Evidence 299: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E110
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: Now all of our pods are up and running, and all of our deployments have one out of one ready pods, which is what we expect.
- Multi-concept tags: Pods, Deployments, Cross-Cloud

### Evidence 300: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E111
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's view the voting service using the load balancer.
- Multi-concept tags: Services, Cross-Cloud

### Evidence 301: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E112
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And I'm going to open it up in a web browser.
- Multi-concept tags: Cross-Cloud

### Evidence 302: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E113
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So I'll paste the URL and hit enter.
- Multi-concept tags: Cross-Cloud

### Evidence 303: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E114
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And here we go.
- Multi-concept tags: Cross-Cloud

### Evidence 304: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E115
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So we have our voting application which is accessible from our public external load balancer and the external IP.
- Multi-concept tags: Cross-Cloud

### Evidence 305: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E116
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So I'm going to make a selection here.
- Multi-concept tags: Cross-Cloud

### Evidence 306: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E117
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And to validate that let me copy and paste the external IP or the URL for my result app.
- Multi-concept tags: Cross-Cloud

### Evidence 307: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E118
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And here we see the the results as expected.
- Multi-concept tags: Cross-Cloud

### Evidence 308: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E119
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's change the vote.
- Multi-concept tags: Cross-Cloud

### Evidence 309: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E120
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And we verify that the Result reflects that change.
- Multi-concept tags: Cross-Cloud

### Evidence 310: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E121
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So this was a quick and easy deployment for our voting application on AKS.
- Multi-concept tags: Deployments, Cross-Cloud

### Evidence 311: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E122
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: Once you're done, make sure that you go back and clean up anything that you've done to save cost.
- Multi-concept tags: Cross-Cloud

### Evidence 312: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E123
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So make sure to delete the AKS cluster and any applications that you have deployed on that.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 313: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E124
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: All right.
- Multi-concept tags: Cross-Cloud

### Evidence 314: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E125
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Line Context: Lines 1-1 from transcript
- Content: Thanks for your time and I will see you in the next demo.
- Multi-concept tags: Cross-Cloud

### Evidence 315: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E1
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: In this demo we're going to provision a Kubernetes cluster on Microsoft Azure.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 316: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E2
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So as a prerequisite you must have an Azure account.
- Multi-concept tags: Cross-Cloud

### Evidence 317: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E3
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And if you're getting started explore the free access available at this link.
- Multi-concept tags: Cross-Cloud

### Evidence 318: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E4
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So you get 12 months of free access.
- Multi-concept tags: Cross-Cloud

### Evidence 319: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E5
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: Also some basic knowledge on Azure can help to, you know, prepare subscriptions and perform some basic configurations.
- Multi-concept tags: Cross-Cloud, On-Prem

### Evidence 320: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E6
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's get started.
- Multi-concept tags: Cross-Cloud

### Evidence 321: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E7
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So once you're logged into your Azure account we see the dashboard.
- Multi-concept tags: Cross-Cloud

### Evidence 322: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E8
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: The basic dashboard provides a list of services.
- Multi-concept tags: Services, Cross-Cloud

### Evidence 323: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E9
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So here I'm using the free account called Code Cloud free account.
- Multi-concept tags: Cross-Cloud

### Evidence 324: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E10
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And what we need to do is either look up for AKS which is the Azure Kubernetes Service.
- Multi-concept tags: Services, Cross-Cloud

### Evidence 325: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E11
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And in this case it's already in my list underneath.
- Multi-concept tags: Cross-Cloud

### Evidence 326: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E12
- Type: Warning/Pitfall
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And we do not have a cluster created.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 327: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E13
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So the first thing to do is to add a cluster.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 328: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E14
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So this will take us to the Create Kubernetes cluster screen.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 329: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E15
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So it will select your subscription by default.
- Multi-concept tags: Cross-Cloud, On-Prem

### Evidence 330: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E16
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So make sure the right subscription is selected.
- Multi-concept tags: Cross-Cloud, On-Prem

### Evidence 331: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E17
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So if you're using a free subscription make sure that the right one is selected.
- Multi-concept tags: Cross-Cloud, On-Prem

### Evidence 332: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E18
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So the first thing to do is to create a new resource group.
- Multi-concept tags: Cross-Cloud

### Evidence 333: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E19
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So I'm going to create a resource group.
- Multi-concept tags: Cross-Cloud

### Evidence 334: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E20
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: We will name it Voting App resource group.
- Multi-concept tags: Cross-Cloud

### Evidence 335: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E21
- Type: Exam Tip
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And then we're going to name the cluster example voting app.
- Multi-concept tags: Architecture, CKA-CKAD, Cross-Cloud

### Evidence 336: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E22
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: I'm going to leave the Kubernetes version to the default one which is 1.16.
- Multi-concept tags: Cross-Cloud

### Evidence 337: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E23
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And for the node size, um, since this is a free version, I'm going to use just one.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 338: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E24
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So that's enough for our requirements.
- Multi-concept tags: Cross-Cloud

### Evidence 339: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E25
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And there are other options that you can edit as well.
- Multi-concept tags: Cross-Cloud

### Evidence 340: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E26
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So for now we will just leave most of it to the uh to the default values.
- Multi-concept tags: Cross-Cloud

### Evidence 341: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E27
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: Under authentication set the service principal to new so it will create a new one for us.
- Multi-concept tags: Services, Cross-Cloud

### Evidence 342: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E28
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: A service principal is used by the AKS service to manage the cloud resources that are attached to the cluster.
- Multi-concept tags: Services, Architecture, Cross-Cloud

### Evidence 343: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E29
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And next I'm going to, uh review and create.
- Multi-concept tags: Cross-Cloud

### Evidence 344: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E30
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's wait for it to make the create button available for us.
- Multi-concept tags: Cross-Cloud

### Evidence 345: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E31
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay.
- Multi-concept tags: Cross-Cloud

### Evidence 346: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E32
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So once it's available we can go ahead and click on create.
- Multi-concept tags: Cross-Cloud

### Evidence 347: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E33
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So here you will see that it is initializing the deployment of the resource groups first. and then it will create our Kubernetes cluster.
- Multi-concept tags: Deployments, Architecture, Cross-Cloud

### Evidence 348: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E34
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So yeah, this can take some time as well.
- Multi-concept tags: Cross-Cloud

### Evidence 349: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E35
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's just wait for our cluster to be ready.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 350: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E36
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: All right.
- Multi-concept tags: Cross-Cloud

### Evidence 351: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E37
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So now the resources have been deployed and our cluster has been created successfully.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 352: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E38
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So the next step is to um go to the resources that we just created.
- Multi-concept tags: Cross-Cloud

### Evidence 353: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E39
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And I'm going to type in, uh, the voting app here.
- Multi-concept tags: Cross-Cloud

### Evidence 354: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E40
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So that's just one easy way to get the resource.
- Multi-concept tags: Cross-Cloud

### Evidence 355: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E41
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: Uh, so search for it in the search bar.
- Multi-concept tags: Cross-Cloud

### Evidence 356: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E42
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So here is our Kubernetes service and the cluster that we just provisioned.
- Multi-concept tags: Services, Architecture, Cross-Cloud

### Evidence 357: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E43
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And to access the cluster we will make use of the cloud shell uh which will open up in the lower half of the screen.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 358: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E44
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So in this case it prompts me to create storage.
- Multi-concept tags: Storage, Cross-Cloud

### Evidence 359: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E45
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's just go ahead with it and do that.
- Multi-concept tags: Cross-Cloud

### Evidence 360: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E46
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And let's wait for it to complete.
- Multi-concept tags: Cross-Cloud

### Evidence 361: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E47
- Type: Best Practice
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And then we should be able to log in to the cloud shell.
- Multi-concept tags: Cross-Cloud

### Evidence 362: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E48
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So while we wait for that let's go over the documentation.
- Multi-concept tags: Cross-Cloud

### Evidence 363: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E49
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So here is the walkthrough of AKS which describes the steps that we have been following.
- Multi-concept tags: Cross-Cloud, On-Prem

### Evidence 364: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E50
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So if we scroll all the way to the bottom it shows how to connect to the cluster.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 365: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E51
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So here this is the step that we are trying to do now.
- Multi-concept tags: Cross-Cloud

### Evidence 366: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E52
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So kubectl client is pre-installed in the Azure Cloud Shell.
- Multi-concept tags: Cross-Cloud

### Evidence 367: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E53
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So we are launching that.
- Multi-concept tags: Cross-Cloud

### Evidence 368: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E54
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And once the cloud shell is launched we are going to grant access to kubectl to our cluster.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 369: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E55
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So to do that we have to enter the name of the resource group as well as the name of the cluster that we just created.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 370: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E56
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's go back, um, to our cloud shell and let's enter the value.
- Multi-concept tags: Cross-Cloud

### Evidence 371: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E57
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So I'm just going to paste the command here and we'll fill in the um the cluster name.
- Multi-concept tags: Configuration, Architecture, Cross-Cloud

### Evidence 372: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E58
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So the name of the resource group can be copied from the resource group here.
- Multi-concept tags: Cross-Cloud

### Evidence 373: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E59
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And the name of the cluster, um, you can copy it from the top here.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 374: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E60
- Type: Exam Tip
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So it says example voting app because that's the name of the cluster that we just created.
- Multi-concept tags: Architecture, CKA-CKAD, Cross-Cloud

### Evidence 375: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E61
- Type: Best Practice
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So now the Kubeconfig, um, has been set up and we should be able to access the cluster.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 376: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E62
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So we'll run the kubectl get nodes command.
- Multi-concept tags: Configuration, Architecture, Cross-Cloud

### Evidence 377: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E63
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And here we can see that our single node cluster is is visible and it's running on 1.16 and it is in a ready state.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 378: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E64
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So just like before, we're going to clone our GitHub repo for our voting app.
- Multi-concept tags: Cross-Cloud

### Evidence 379: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E65
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's run the git clone command.
- Multi-concept tags: Configuration, Cross-Cloud

### Evidence 380: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E66
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And once that is done I'm going to the directory.
- Multi-concept tags: Cross-Cloud

### Evidence 381: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E67
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And here are all the YAML files as before.
- Multi-concept tags: Configuration, Cross-Cloud

### Evidence 382: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E68
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's start creating these services and deployment.
- Multi-concept tags: Deployments, Services, Cross-Cloud

### Evidence 383: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E69
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So we will start off with the voting app.
- Multi-concept tags: Cross-Cloud

### Evidence 384: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E70
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: Uh the voting app deployment and then the voting app service.
- Multi-concept tags: Deployments, Services, Cross-Cloud

### Evidence 385: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E71
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And then we'll go with the deployment and the Redis service and the Postgres deployment and then the Postgres service.
- Multi-concept tags: Deployments, Services, Cross-Cloud

### Evidence 386: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E72
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: Uh next comes the worker deployment and finally deployment and the results service.
- Multi-concept tags: Deployments, Services, Cross-Cloud

### Evidence 387: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E73
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's check the status of the deployment and services.
- Multi-concept tags: Deployments, Services, Cross-Cloud

### Evidence 388: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E74
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And here we see that all the service objects are created um except for the result app.
- Multi-concept tags: Services, Cross-Cloud

### Evidence 389: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E75
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So that's still deploying.
- Multi-concept tags: Cross-Cloud

### Evidence 390: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E76
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And we already have the load balancer or the external IP for our voting service, um, and the result services for the voting service.
- Multi-concept tags: Services, Cross-Cloud

### Evidence 391: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E77
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And the result service is pending.
- Multi-concept tags: Services, Troubleshooting, Cross-Cloud

### Evidence 392: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E78
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's just give it a couple of minutes.
- Multi-concept tags: Cross-Cloud

### Evidence 393: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E79
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: All right.
- Multi-concept tags: Cross-Cloud

### Evidence 394: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E80
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So now all our deployments are running and they have one out of one pods for all the five deployments.
- Multi-concept tags: Pods, Deployments, Cross-Cloud

### Evidence 395: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E81
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And we also have the load balancer for both the result and the voting app ready.
- Multi-concept tags: Cross-Cloud

### Evidence 396: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E82
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's jump into a new tab and let's try to open this applications.
- Multi-concept tags: Cross-Cloud

### Evidence 397: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E83
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So here I'm on a different window and this is my voting app.
- Multi-concept tags: Cross-Cloud

### Evidence 398: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E84
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And let me also um open up the result app in a different tab.
- Multi-concept tags: Cross-Cloud

### Evidence 399: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E85
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So here's the result app.
- Multi-concept tags: Cross-Cloud

### Evidence 400: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E86
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And let's now cast a vote.
- Multi-concept tags: Cross-Cloud

### Evidence 401: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E87
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And we can see that the appropriate results are seen on the result app.
- Multi-concept tags: Cross-Cloud

### Evidence 402: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E88
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: And if we change the vote we can see that it's working as expected.
- Multi-concept tags: Cross-Cloud

### Evidence 403: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E89
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So that's the end of this demo.
- Multi-concept tags: Cross-Cloud

### Evidence 404: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E90
- Type: Concept
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: Once you're done with your learning, remember to delete the cluster and clean up the workspace after you're done so that, um, you can save, uh, on some of the credits.
- Multi-concept tags: Architecture, Cross-Cloud

### Evidence 405: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E91
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: Well, that's it for now, and I will see you in the next one.
- Multi-concept tags: Cross-Cloud

### Evidence 406: learn-kubernetes/10_Conclusion/055_Conclusion.extraction.md::E9
- Type: Implementation Step
- Source: learn-kubernetes / 10_Conclusion / 055_Conclusion.txt
- Line Context: Lines 1-1 from transcript
- Content: And finally, we also saw how to deploy a sample microservices application on Kubernetes on Google Cloud Platform.
- Multi-concept tags: Services, Cross-Cloud, Platform Engineering
