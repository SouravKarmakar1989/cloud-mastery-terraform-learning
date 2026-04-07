# KB CrossCloud AKS EKS GKE

Cross-cloud mapping এখানে two-layer এ: transcript evidence এবং architecture synthesis। Bengali explanation + English terms ব্যবহার করা হয়েছে।

## Responsibility Split
- AKS: control plane managed, nodepool + networking + identity integration আপনার governance scope।
- EKS: control plane managed, worker lifecycle + IAM integration + CNI behavior critical operation domain।
- GKE: control plane managed, node modes + network model + policy integration decision গুরুত্বপূর্ণ।

## Networking Differences
- AKS: Azure VNet integration এবং CNI model selection pod IP behavior নির্ধারণ করে।
- EKS: VPC CNI based IP allocation planning scale ceiling impact করে।
- GKE: VPC-native routing এবং service exposure path design decision driver।

## IAM Integration
- AKS: Azure identity + Kubernetes RBAC bridging pattern
- EKS: IAM role mapping + service account federation pattern
- GKE: Google IAM alignment + workload identity patterns

## Storage Handling
- AKS: Azure disk/file class mapping
- EKS: EBS/EFS style class mapping
- GKE: PD/Filestore class mapping

## Ingress and Load Balancing
- AKS: Azure LB + ingress controller integration
- EKS: ELB/ALB controller based exposure
- GKE: Cloud LB and ingress behavior coupling

## Autoscaling
- AKS: cluster autoscaler + HPA coordination
- EKS: autoscaling group/Karpenter styles
- GKE: cluster autoscaler/autopilot strategy

## Upgrade Behavior
- AKS: control plane and nodepool staged upgrades
- EKS: control plane upgrade and managed node compatibility
- GKE: release channels এবং maintenance windows

## Transcript Source Contributions

### Source 1: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/035_Services - Loadbalancer.extraction.md::E22
- Course/Module: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts
- Lecture/File: 035_Services - Loadbalancer / 035_Services - Loadbalancer.txt
- Evidence: However, if we were on a supported cloud platform like Google Cloud or AWS or Azure, I could leverage the native load balancer of that cloud platform.

### Source 2: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/035_Services - Loadbalancer.extraction.md::E26
- Course/Module: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts
- Lecture/File: 035_Services - Loadbalancer / 035_Services - Loadbalancer.txt
- Evidence: And so GCP, AWS and Azure are definitely supported.

### Source 3: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E26
- Course/Module: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling
- Lecture/File: 065_Resource Requirements / 065_Resource Requirements.txt
- Evidence: Uh, now one count of CPU is equivalent to one Vcpu so that's one vcpu in AWS.

### Source 4: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E27
- Course/Module: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling
- Lecture/File: 065_Resource Requirements / 065_Resource Requirements.txt
- Evidence: So if you're looking at the AWS cloud, or it could be referred to as one core in GCP or Azure or one Hyperthread, um, on other other systems, and you could request a higher number of CPUs for the container provided your nodes are sufficiently funded.

### Source 5: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/135_Cluster Upgrade Introduction.extraction.md::E9
- Course/Module: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance
- Lecture/File: 135_Cluster Upgrade Introduction / 135_Cluster Upgrade Introduction.txt
- Evidence: So if kube API server was at EKS, controller managers and kube schedulers can be at x minus one and the kubelet and kube proxy components can be at two versions lower x minus two.

### Source 6: certified-kubernetes-administrator-with-practice-tests/07_Security/156_Lab Solution - Certificates API.extraction.md::E2
- Course/Module: certified-kubernetes-administrator-with-practice-tests / 07_Security
- Lecture/File: 156_Lab Solution - Certificates API / 156_Lab Solution - Certificates API.txt
- Evidence: So a new member, Akshay joined our team.

### Source 7: certified-kubernetes-administrator-with-practice-tests/07_Security/156_Lab Solution - Certificates API.extraction.md::E7
- Course/Module: certified-kubernetes-administrator-with-practice-tests / 07_Security
- Lecture/File: 156_Lab Solution - Certificates API / 156_Lab Solution - Certificates API.txt
- Evidence: So we have Akshay dot CSR, and Akshay dot key.

### Source 8: certified-kubernetes-administrator-with-practice-tests/07_Security/156_Lab Solution - Certificates API.extraction.md::E12
- Course/Module: certified-kubernetes-administrator-with-practice-tests / 07_Security
- Lecture/File: 156_Lab Solution - Certificates API / 156_Lab Solution - Certificates API.txt
- Evidence: So create a certificate signing request object with the name Akshay with the contents of the Akshay dot CSR file.

### Source 9: certified-kubernetes-administrator-with-practice-tests/07_Security/156_Lab Solution - Certificates API.extraction.md::E21
- Course/Module: certified-kubernetes-administrator-with-practice-tests / 07_Security
- Lecture/File: 156_Lab Solution - Certificates API / 156_Lab Solution - Certificates API.txt
- Evidence: So I'm going to create a file called Akshay dot yaml.

### Source 10: certified-kubernetes-administrator-with-practice-tests/07_Security/156_Lab Solution - Certificates API.extraction.md::E45
- Course/Module: certified-kubernetes-administrator-with-practice-tests / 07_Security
- Lecture/File: 156_Lab Solution - Certificates API / 156_Lab Solution - Certificates API.txt
- Evidence: And this is Akshay.

### Source 11: certified-kubernetes-administrator-with-practice-tests/07_Security/156_Lab Solution - Certificates API.extraction.md::E67
- Course/Module: certified-kubernetes-administrator-with-practice-tests / 07_Security
- Lecture/File: 156_Lab Solution - Certificates API / 156_Lab Solution - Certificates API.txt
- Evidence: Okay, so the CSR request named Akshay is created and you can see it's in a pending state.

### Source 12: certified-kubernetes-administrator-with-practice-tests/07_Security/159_Lab Solution - KubeConfig.extraction.md::E47
- Course/Module: certified-kubernetes-administrator-with-practice-tests / 07_Security
- Lecture/File: 159_Lab Solution - KubeConfig / 159_Lab Solution - KubeConfig.txt
- Evidence: Now, what is the name of the client certificate file configured for the AWS user?

### Source 13: certified-kubernetes-administrator-with-practice-tests/07_Security/159_Lab Solution - KubeConfig.extraction.md::E48
- Course/Module: certified-kubernetes-administrator-with-practice-tests / 07_Security
- Lecture/File: 159_Lab Solution - KubeConfig / 159_Lab Solution - KubeConfig.txt
- Evidence: So you have users here and you have AWS user.

### Source 14: certified-kubernetes-administrator-with-practice-tests/07_Security/159_Lab Solution - KubeConfig.extraction.md::E50
- Course/Module: certified-kubernetes-administrator-with-practice-tests / 07_Security
- Lecture/File: 159_Lab Solution - KubeConfig / 159_Lab Solution - KubeConfig.txt
- Evidence: The file name is AWS user dot crt so that's AWS user dot crt.

### Source 15: certified-kubernetes-administrator-with-practice-tests/07_Security/172_Image Security.extraction.md::E30
- Course/Module: certified-kubernetes-administrator-with-practice-tests / 07_Security
- Lecture/File: 172_Image Security / 172_Image Security.txt
- Evidence: Many cloud service providers, such as AWS, Azure, or GCP, provide a private registry by default on any of these solutions, be it on Docker Hub or Google's Registry or your internal private registry.

### Source 16: certified-kubernetes-administrator-with-practice-tests/07_Security/182_Lab Solution - Network Policies (optional).extraction.md::E94
- Course/Module: certified-kubernetes-administrator-with-practice-tests / 07_Security
- Lecture/File: 182_Lab Solution - Network Policies (optional) / 182_Lab Solution - Network Policies (optional).txt
- Evidence: So we have to create an Azure policy named "Internal Policy".

### Source 17: certified-kubernetes-administrator-with-practice-tests/08_Storage/191_Volume Driver Plugins in Docker.extraction.md::E9
- Course/Module: certified-kubernetes-administrator-with-practice-tests / 08_Storage
- Lecture/File: 191_Volume Driver Plugins in Docker / 191_Volume Driver Plugins in Docker.txt
- Evidence: There are many other volume driver plugins that allow you to create a volume on third party solutions like Azure File Storage, convoy, DigitalOcean, Block Storage Locker, Google Compute Persistent Disks, Glusterfs, NetApp X-ray Portworx, and VMware vSphere storage.

### Source 18: certified-kubernetes-administrator-with-practice-tests/08_Storage/191_Volume Driver Plugins in Docker.extraction.md::E12
- Course/Module: certified-kubernetes-administrator-with-practice-tests / 08_Storage
- Lecture/File: 191_Volume Driver Plugins in Docker / 191_Volume Driver Plugins in Docker.txt
- Evidence: For instance, X-ray storage driver can be used to provision storage on AWS, EBS, S3, EMC storage arrays like Isilon and Scaleio, or Google Persistent Disk or OpenStack cinder.

### Source 19: certified-kubernetes-administrator-with-practice-tests/08_Storage/191_Volume Driver Plugins in Docker.extraction.md::E14
- Course/Module: certified-kubernetes-administrator-with-practice-tests / 08_Storage
- Lecture/File: 191_Volume Driver Plugins in Docker / 191_Volume Driver Plugins in Docker.txt
- Evidence: This will create a container and attach a volume from the AWS cloud.

### Source 20: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E14
- Course/Module: certified-kubernetes-administrator-with-practice-tests / 08_Storage
- Lecture/File: 192_Container Storage Interface / 192_Container Storage Interface.txt
- Evidence: Azure disk.

### Source 21: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E37
- Course/Module: certified-kubernetes-administrator-with-practice-tests / 08_Storage
- Lecture/File: 193_Volumes / 193_Volumes.txt
- Evidence: Kubernetes supports several types of different storage solutions such as NFS cluster, NFS, Flocker, Fibre Channel, Cephfs, Scaleio, or public cloud solutions like AWS, EBS, Azure Disk or File or Google's Persistent Disk.

### Source 22: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E38
- Course/Module: certified-kubernetes-administrator-with-practice-tests / 08_Storage
- Lecture/File: 193_Volumes / 193_Volumes.txt
- Evidence: For example, to configure an AWS Elastic Block Store volume as the storage option for the volume, we replace Hostpath field of the volume with the AWS Elastic Block Store field, along with the volume, ID and filesystem type.

### Source 23: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E39
- Course/Module: certified-kubernetes-administrator-with-practice-tests / 08_Storage
- Lecture/File: 193_Volumes / 193_Volumes.txt
- Evidence: The volume storage will now be on AWS EBS.

### Source 24: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E28
- Course/Module: certified-kubernetes-administrator-with-practice-tests / 08_Storage
- Lecture/File: 194_Persistent Volumes / 194_Persistent Volumes.txt
- Evidence: As we saw in the previous lecture, like AWS Elastic Block Store, etc..

### Source 25: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E43
- Course/Module: certified-kubernetes-administrator-with-practice-tests / 08_Storage
- Lecture/File: 195_Persistent Volume Claims / 195_Persistent Volume Claims.txt
- Evidence: It didn't guarantee secure erasure, didn't handle snapshots, or provide provider metadata, and only worked for certain entry volume plugins on cloud or block backends like EBS, Google Cloud, Azure Disk, or network storage like NFS or Sis drivers.

### Source 26: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E3
- Course/Module: certified-kubernetes-administrator-with-practice-tests / 08_Storage
- Lecture/File: 201_Storage Class / 201_Storage Class.txt
- Evidence: In this case, we create a PV from a Google Cloud Persistent disk.

### Source 27: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E4
- Course/Module: certified-kubernetes-administrator-with-practice-tests / 08_Storage
- Lecture/File: 201_Storage Class / 201_Storage Class.txt
- Evidence: The problem here is that before this PV is created, you must have created the disk on Google Cloud.

### Source 28: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E5
- Course/Module: certified-kubernetes-administrator-with-practice-tests / 08_Storage
- Lecture/File: 201_Storage Class / 201_Storage Class.txt
- Evidence: Every time an application requires storage, you have to first manually provision the disk on Google Cloud and then manually create a persistent volume definition file using the same name as that of the disk that you created.

### Source 29: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E9
- Course/Module: certified-kubernetes-administrator-with-practice-tests / 08_Storage
- Lecture/File: 201_Storage Class / 201_Storage Class.txt
- Evidence: With storage classes, you can define a provisioner, such as Google Storage, that can automatically provision storage on Google Cloud and attach that to pods when a claim is made.

### Source 30: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E22
- Course/Module: certified-kubernetes-administrator-with-practice-tests / 08_Storage
- Lecture/File: 201_Storage Class / 201_Storage Class.txt
- Evidence: There are many other provisioners as well, such as for AWS, EBS, Azure File, Azure Disk, CIFs, Portworx, Scaleio, and so on.

### Source 31: certified-kubernetes-administrator-with-practice-tests/09_Networking/212_Cluster Networking.extraction.md::E25
- Course/Module: certified-kubernetes-administrator-with-practice-tests / 09_Networking
- Lecture/File: 212_Cluster Networking / 212_Cluster Networking.txt
- Evidence: So consider this when you set up networking for your nodes and your firewalls or iptables rules or network security group in a cloud environment such as GCP or Azure or AWS.

### Source 32: certified-kubernetes-administrator-with-practice-tests/09_Networking/231_Ingress.extraction.md::E29
- Course/Module: certified-kubernetes-administrator-with-practice-tests / 09_Networking
- Lecture/File: 231_Ingress / 231_Ingress.txt
- Evidence: Let's take a step back and see what you could do if you were on a public cloud environment like Google Cloud Platform.

### Source 33: certified-kubernetes-administrator-with-practice-tests/09_Networking/231_Ingress.extraction.md::E32
- Course/Module: certified-kubernetes-administrator-with-practice-tests / 09_Networking
- Lecture/File: 231_Ingress / 231_Ingress.txt
- Evidence: But in addition to that, Kubernetes also sends a request to Google Cloud Platform to provision a network load balancer for this service.

### Source 34: certified-kubernetes-administrator-with-practice-tests/09_Networking/238_Introduction to Gateway API (2025 updates).extraction.md::E88
- Course/Module: certified-kubernetes-administrator-with-practice-tests / 09_Networking
- Lecture/File: 238_Introduction to Gateway API (2025 updates) / 238_Introduction to Gateway API (2025 updates).txt
- Evidence: Amazon Ex Azure Application gateway for containers.

### Source 35: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/241_Design a Kubernetes Cluster.extraction.md::E16
- Course/Module: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster
- Lecture/File: 241_Design a Kubernetes Cluster / 241_Design a Kubernetes Cluster.txt
- Evidence: If you want to deploy a cluster for learning purposes, then a solution based on minikube or a single node cluster deployed using kube ADM on local VMs or cloud providers like GCP or AWS should do.

### Source 36: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/241_Design a Kubernetes Cluster.extraction.md::E20
- Course/Module: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster
- Lecture/File: 241_Design a Kubernetes Cluster / 241_Design a Kubernetes Cluster.txt
- Evidence: Or if on managed cloud environments, then quickly provision a cluster using the Google Container Engine on GCP or AWS or AKS on Azure.

### Source 37: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/241_Design a Kubernetes Cluster.extraction.md::E24
- Course/Module: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster
- Lecture/File: 241_Design a Kubernetes Cluster / 241_Design a Kubernetes Cluster.txt
- Evidence: Again, this can be set up with Kube, ADM or GCP or using Kops on AWS or other supported platforms.

### Source 38: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/241_Design a Kubernetes Cluster.extraction.md::E29
- Course/Module: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster
- Lecture/File: 241_Design a Kubernetes Cluster / 241_Design a Kubernetes Cluster.txt
- Evidence: Cloud service providers like GCP and AWS automatically selects the right sized nodes for you based on the number of nodes in the cluster.

### Source 39: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/241_Design a Kubernetes Cluster.extraction.md::E37
- Course/Module: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster
- Lecture/File: 241_Design a Kubernetes Cluster / 241_Design a Kubernetes Cluster.txt
- Evidence: Kops is a nice tool to deploy Kubernetes cluster on AWS, and the Azure Kubernetes Service, or AKS, helps in managing the hosted Kubernetes environment on Azure.

### Source 40: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/241_Design a Kubernetes Cluster.extraction.md::E45
- Course/Module: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster
- Lecture/File: 241_Design a Kubernetes Cluster / 241_Design a Kubernetes Cluster.txt
- Evidence: You may choose to deploy on physical machines or virtual machines, or cloud environments like GCP, AWS, Azure, or any other platform of your choice.

### Source 41: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/242_Choosing Kubernetes Infrastructure.extraction.md::E28
- Course/Module: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster
- Lecture/File: 242_Choosing Kubernetes Infrastructure / 242_Choosing Kubernetes Infrastructure.txt
- Evidence: For example, deploying a Kubernetes cluster on AWS using the Cops tool.

### Source 42: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/242_Choosing Kubernetes Infrastructure.extraction.md::E46
- Course/Module: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster
- Lecture/File: 242_Choosing Kubernetes Infrastructure / 242_Choosing Kubernetes Infrastructure.txt
- Evidence: Google Kubernetes Engine is a very popular Kubernetes as a service offering on Google Cloud Platform.

### Source 43: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/242_Choosing Kubernetes Infrastructure.extraction.md::E48
- Course/Module: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster
- Lecture/File: 242_Choosing Kubernetes Infrastructure / 242_Choosing Kubernetes Infrastructure.txt
- Evidence: Azure has the Azure Kubernetes Service.

### Source 44: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E22
- Course/Module: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_
- Lecture/File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional) / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: Then, we have to download the Google Cloud public signing key.

### Source 45: certified-kubernetes-administrator-with-practice-tests/15_Other Topics/299_JSON Path in Kubernetes.extraction.md::E24
- Course/Module: certified-kubernetes-administrator-with-practice-tests / 15_Other Topics
- Lecture/File: 299_JSON Path in Kubernetes / 299_JSON Path in Kubernetes.txt
- Evidence: The kube API server speaks the JSON language, so it returns the requested information in a JSON format.

### Source 46: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E26
- Course/Module: certified-kubernetes-application-developer / 03_Configuration
- Lecture/File: 062_Resource Requirements / 062_Resource Requirements.txt
- Evidence: Uh, now one count of CPU is equivalent to one Vcpu so that's one vcpu in AWS.

### Source 47: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E27
- Course/Module: certified-kubernetes-application-developer / 03_Configuration
- Lecture/File: 062_Resource Requirements / 062_Resource Requirements.txt
- Evidence: So if you're looking at the AWS cloud, or it could be referred to as one core in GCP or Azure or one hyper thread, um, on other other systems, and you could request a higher number of CPUs for the container provided your nodes are sufficiently funded.

### Source 48: certified-kubernetes-application-developer/07_Services & Networking/115_Ingress Networking.extraction.md::E29
- Course/Module: certified-kubernetes-application-developer / 07_Services & Networking
- Lecture/File: 115_Ingress Networking / 115_Ingress Networking.txt
- Evidence: Let's take a step back and see what you could do if you were on a public cloud environment like Google Cloud Platform.

### Source 49: certified-kubernetes-application-developer/07_Services & Networking/115_Ingress Networking.extraction.md::E32
- Course/Module: certified-kubernetes-application-developer / 07_Services & Networking
- Lecture/File: 115_Ingress Networking / 115_Ingress Networking.txt
- Evidence: But in addition to that, Kubernetes also sends a request to Google Cloud Platform to provision a network load balancer for this service.

### Source 50: certified-kubernetes-application-developer/08_State Persistence/124_Volume Driver Plugins in Docker.extraction.md::E9
- Course/Module: certified-kubernetes-application-developer / 08_State Persistence
- Lecture/File: 124_Volume Driver Plugins in Docker / 124_Volume Driver Plugins in Docker.txt
- Evidence: There are many other volume driver plugins that allow you to create a volume on third party solutions like Azure File Storage, convoy, DigitalOcean, Block Storage Locker, Google Compute, Persistent Disks, cluster, EFS, NetApp, Rex, Ray, Port Works, and VMware vSphere storage.

### Source 51: certified-kubernetes-application-developer/08_State Persistence/124_Volume Driver Plugins in Docker.extraction.md::E12
- Course/Module: certified-kubernetes-application-developer / 08_State Persistence
- Lecture/File: 124_Volume Driver Plugins in Docker / 124_Volume Driver Plugins in Docker.txt
- Evidence: For instance, Rex Ray storage driver can be used to provision storage on AWS, EBS, S3, EMC storage arrays like Isilon and Scaleio or Google Persistent Disk or OpenStack cinder.

### Source 52: certified-kubernetes-application-developer/08_State Persistence/124_Volume Driver Plugins in Docker.extraction.md::E14
- Course/Module: certified-kubernetes-application-developer / 08_State Persistence
- Lecture/File: 124_Volume Driver Plugins in Docker / 124_Volume Driver Plugins in Docker.txt
- Evidence: This will create a container and attach a volume from the AWS cloud.

### Source 53: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E35
- Course/Module: certified-kubernetes-application-developer / 08_State Persistence
- Lecture/File: 125_Volumes in Kubernetes / 125_Volumes in Kubernetes.txt
- Evidence: Fibre channel CFS, Scaleio or public cloud solutions like AWS, EBS, Azure Disk or File or Google's Persistent Disk.

### Source 54: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E36
- Course/Module: certified-kubernetes-application-developer / 08_State Persistence
- Lecture/File: 125_Volumes in Kubernetes / 125_Volumes in Kubernetes.txt
- Evidence: For example, to configure an AWS Elastic Block Store volume as the storage option for the volume, we replace Hostpath field of the volume with the AWS Elastic Block Store field.

### Source 55: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E38
- Course/Module: certified-kubernetes-application-developer / 08_State Persistence
- Lecture/File: 125_Volumes in Kubernetes / 125_Volumes in Kubernetes.txt
- Evidence: The volume storage will now be on AWS EBS.

### Source 56: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E27
- Course/Module: certified-kubernetes-application-developer / 08_State Persistence
- Lecture/File: 126_Persistent Volumes / 126_Persistent Volumes.txt
- Evidence: As we saw in the previous lecture like AWS Elastic Block Store, etc..

### Source 57: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E40
- Course/Module: certified-kubernetes-application-developer / 08_State Persistence
- Lecture/File: 127_Persistent Volume Claims / 127_Persistent Volume Claims.txt
- Evidence: It didn't guarantee secure erasure, didn't handle snapshots, or provide provider metadata, and only worked for certain entry volume plugins on cloud or block backends like EBS, Google Cloud PD, Azure Disk, or an network storage like NFS or Sis drivers.

### Source 58: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E3
- Course/Module: certified-kubernetes-application-developer / 08_State Persistence
- Lecture/File: 132_Storage Classes / 132_Storage Classes.txt
- Evidence: In this case, we create a PVC from a Google Cloud persistent disk.

### Source 59: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E4
- Course/Module: certified-kubernetes-application-developer / 08_State Persistence
- Lecture/File: 132_Storage Classes / 132_Storage Classes.txt
- Evidence: The problem here is that before this PV is created, you must have created the disk on Google Cloud.

### Source 60: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E5
- Course/Module: certified-kubernetes-application-developer / 08_State Persistence
- Lecture/File: 132_Storage Classes / 132_Storage Classes.txt
- Evidence: Every time an application requires storage, you have to first manually provision the disk on Google Cloud and then manually create a persistent volume definition file using the same name as that of the disk that you created.

### Source 61: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E8
- Course/Module: certified-kubernetes-application-developer / 08_State Persistence
- Lecture/File: 132_Storage Classes / 132_Storage Classes.txt
- Evidence: With storage classes, you can define a provisioner, such as Google Storage, that can automatically provision storage on Google Cloud and attach that to pods.

### Source 62: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E20
- Course/Module: certified-kubernetes-application-developer / 08_State Persistence
- Lecture/File: 132_Storage Classes / 132_Storage Classes.txt
- Evidence: There are many other provisioners as well, such as for AWS, EBS, Azure File, Azure Disk, CIFs, Portworx, Scaleio, and so on With each of these provisioners, you can pass in additional parameters such as the type of disk to provision the replication type, etc. these parameters are very specific to the provisioner that you are using for Google Persistent Disk.

### Source 63: certified-kubernetes-application-developer/09_Security/144_Solution KubeConfig.extraction.md::E48
- Course/Module: certified-kubernetes-application-developer / 09_Security
- Lecture/File: 144_Solution KubeConfig / 144_Solution KubeConfig.txt
- Evidence: Now what is the name of the client certificate file configured for the AWS user?

### Source 64: certified-kubernetes-application-developer/09_Security/144_Solution KubeConfig.extraction.md::E49
- Course/Module: certified-kubernetes-application-developer / 09_Security
- Lecture/File: 144_Solution KubeConfig / 144_Solution KubeConfig.txt
- Evidence: So you have, users here and you have AWS user.

### Source 65: certified-kubernetes-application-developer/09_Security/144_Solution KubeConfig.extraction.md::E51
- Course/Module: certified-kubernetes-application-developer / 09_Security
- Lecture/File: 144_Solution KubeConfig / 144_Solution KubeConfig.txt
- Evidence: The file name, is AWSuser.CRT.

### Source 66: certified-kubernetes-application-developer/09_Security/144_Solution KubeConfig.extraction.md::E52
- Course/Module: certified-kubernetes-application-developer / 09_Security
- Lecture/File: 144_Solution KubeConfig / 144_Solution KubeConfig.txt
- Evidence: So that's AWSuser.CRT.

### Source 67: learn-kubernetes/02_Kubernetes Overview/006_Container Orchestration.extraction.md::E17
- Course/Module: learn-kubernetes / 02_Kubernetes Overview
- Lecture/File: 006_Container Orchestration / 006_Container Orchestration.txt
- Evidence: Kubernetes is now supported on all public cloud service providers like GCP, Azure, and AWS, and the Kubernetes project is one of the top ranked projects in GitHub.

### Source 68: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E7
- Course/Module: learn-kubernetes / 03_Kubernetes Concepts
- Lecture/File: 012_Kubernetes Setup - Introduction and Minikube / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: There are also hosted versions available for setting up Kubernetes in a cloud environment such as GCP, AWS or Azure.

### Source 69: learn-kubernetes/07_Services/042_Services - Load Balancer.extraction.md::E21
- Course/Module: learn-kubernetes / 07_Services
- Lecture/File: 042_Services - Load Balancer / 042_Services - Load Balancer.txt
- Evidence: However, if we were on a supported cloud platform like Google Cloud or AWS or Azure, I could leverage the native load balancer of that cloud platform.

### Source 70: learn-kubernetes/07_Services/042_Services - Load Balancer.extraction.md::E25
- Course/Module: learn-kubernetes / 07_Services
- Lecture/File: 042_Services - Load Balancer / 042_Services - Load Balancer.txt
- Evidence: So GCP, AWS and Azure are definitely supported.

### Source 71: learn-kubernetes/08_Microservices Architecture/045_Microservices Application.extraction.md::E2
- Course/Module: learn-kubernetes / 08_Microservices Architecture
- Lecture/File: 045_Microservices Application / 045_Microservices Application.txt
- Evidence: We will then try and deploy this web application on multiple different Kubernetes platforms such as Google Cloud Platform.

### Source 72: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E1
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 050_Kubernetes on Cloud - Introduction / 050_Kubernetes on Cloud - Introduction.txt
- Evidence: In this section, we will look at the various options available for deploying a Kubernetes cluster on the cloud.

### Source 73: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E2
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 050_Kubernetes on Cloud - Introduction / 050_Kubernetes on Cloud - Introduction.txt
- Evidence: In the scope of this beginner's course, we will look at the simplest form of getting started with Kubernetes.

### Source 74: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E3
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 050_Kubernetes on Cloud - Introduction / 050_Kubernetes on Cloud - Introduction.txt
- Evidence: In each of these cloud platforms, Google Cloud, AWS and Azure.

### Source 75: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E4
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 050_Kubernetes on Cloud - Introduction / 050_Kubernetes on Cloud - Introduction.txt
- Evidence: So for production purposes, there are many ways to get started with Kubernetes cluster, both in a private or a public cloud environment.

### Source 76: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E5
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 050_Kubernetes on Cloud - Introduction / 050_Kubernetes on Cloud - Introduction.txt
- Evidence: And I would categorize them as either self-hosted or turnkey solutions and hosted or managed solutions.

### Source 77: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E6
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 050_Kubernetes on Cloud - Introduction / 050_Kubernetes on Cloud - Introduction.txt
- Evidence: So turnkey solutions are where you provision the required VMs and use some kind of tools or scripts to configure the Kubernetes cluster on them.

### Source 78: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E7
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 050_Kubernetes on Cloud - Introduction / 050_Kubernetes on Cloud - Introduction.txt
- Evidence: So at the end of the day, you are responsible for maintaining those VMs and patching them and upgrading them, etc. but provisioning the cluster itself and managing the lifecycle of the cluster are mostly made easy using certain tools and scripts.

### Source 79: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E8
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 050_Kubernetes on Cloud - Introduction / 050_Kubernetes on Cloud - Introduction.txt
- Evidence: For example, deploying a Kubernetes cluster on AWS can be made easy using tools like Cops or Cuban, etc..

### Source 80: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E9
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 050_Kubernetes on Cloud - Introduction / 050_Kubernetes on Cloud - Introduction.txt
- Evidence: In the Certified Kubernetes Administrators course, we explore setting up Kubernetes clusters using the Kube admin tool.

### Source 81: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E10
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 050_Kubernetes on Cloud - Introduction / 050_Kubernetes on Cloud - Introduction.txt
- Evidence: Hosted solutions or managed solutions are more like Kubernetes as a service solution where the cluster, along with the required VMs, are deployed by the provider and Kubernetes is configured by them by the provider, so the VMs are maintained by the provider.

### Source 82: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E11
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 050_Kubernetes on Cloud - Introduction / 050_Kubernetes on Cloud - Introduction.txt
- Evidence: For example, the Google Container Engine lets you or the Google Kubernetes Engine.

### Source 83: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E12
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 050_Kubernetes on Cloud - Introduction / 050_Kubernetes on Cloud - Introduction.txt
- Evidence: GKE lets you provision a Kubernetes cluster in a matter of minutes with just a few clicks, without having to perform any kind of configuration by yourself.

### Source 84: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E13
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 050_Kubernetes on Cloud - Introduction / 050_Kubernetes on Cloud - Introduction.txt
- Evidence: So in these environments, um, mostly you won't have access to the master nodes or you, you most likely do not have access to the VMs themselves, um, to perform any kind of, um, you know, configuration changes on the master nodes.

### Source 85: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E14
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 050_Kubernetes on Cloud - Introduction / 050_Kubernetes on Cloud - Introduction.txt
- Evidence: Uh, the version of Kubernetes and the master nodes are all managed by the, by the provider.

### Source 86: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E15
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 050_Kubernetes on Cloud - Introduction / 050_Kubernetes on Cloud - Introduction.txt
- Evidence: So, um, that's what we will look at in this section of the course.

### Source 87: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E16
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 050_Kubernetes on Cloud - Introduction / 050_Kubernetes on Cloud - Introduction.txt
- Evidence: So we will look at deploying our example voting application on the Google, um, Kubernetes Engine, on Google Cloud, the Azure Kubernetes Service, and the AWS EKS solutions.

### Source 88: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E17
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 050_Kubernetes on Cloud - Introduction / 050_Kubernetes on Cloud - Introduction.txt
- Evidence: Now note that each of these require its own separate course, and we will only be looking at the simplest way of getting started with these.

### Source 89: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E18
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 050_Kubernetes on Cloud - Introduction / 050_Kubernetes on Cloud - Introduction.txt
- Evidence: So, uh, a lot of concepts that we learned throughout this course about Kubernetes itself don't change and are applicable to any of these Kubernetes environments.

### Source 90: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E19
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 050_Kubernetes on Cloud - Introduction / 050_Kubernetes on Cloud - Introduction.txt
- Evidence: All that we will be doing is provision a managed Kubernetes cluster and reuse the deployment and service definition files that we created, and see how we can deploy the same application on all of these different platforms.

### Source 91: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E20
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 050_Kubernetes on Cloud - Introduction / 050_Kubernetes on Cloud - Introduction.txt
- Evidence: Also note that this is not a demo of deploying a production grade Kubernetes cluster.

### Source 92: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E21
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 050_Kubernetes on Cloud - Introduction / 050_Kubernetes on Cloud - Introduction.txt
- Evidence: Um, for that, you must have a good understanding of the various concepts that we discussed in the A and D courses.

### Source 93: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E22
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 050_Kubernetes on Cloud - Introduction / 050_Kubernetes on Cloud - Introduction.txt
- Evidence: And this is only a beginner's guide to deploying the same application in a learning environment in different cloud platforms in in the simplest form.

### Source 94: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E1
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: In this demo, we're going to deploy our application on the Google Kubernetes Engine on Google Cloud Platform.

### Source 95: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E2
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: So as a prerequisite, you must have access to the Google Cloud account.

### Source 96: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E3
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: Google provides a 12 month free trial with a credit of $1 300.

### Source 97: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E4
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: And that should be sufficient to follow this demo.

### Source 98: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E5
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: So if you don't have access to Google Cloud already, use this link and sign up.

### Source 99: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E6
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: And of course, uh, some basic, um, understanding of working with the Google Cloud environment and the shell are required so that you can set up all the prerequisites.

### Source 100: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E7
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: So we won't be going into that.

### Source 101: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E8
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: Once logged in to the GCP console, we have a project that we have created by the name example voting app.

### Source 102: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E9
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: So to start with GKE click on the navigation menu on the top left corner.

### Source 103: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E10
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: And under the compute section click on Kubernetes Engine.

### Source 104: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E11
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: Once you're in this page click on Create Cluster.

### Source 105: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E12
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: So this should load the Kubernetes cluster creation interface.

### Source 106: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E13
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: So the first thing that you have to do is change, uh, the name here.

### Source 107: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E14
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: So we'll we will name it example voting app.

### Source 108: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E15
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: We will leave the default values um and for location type and the zone uh we will leave it as, as it is, the master version is the Kubernetes version, which we could either set to a static version or select a release channel to automatically upgrade the Kubernetes versions when new versions are made available on GKE.

### Source 109: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E16
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: Otherwise, um, if you set it to static, then you, uh, upgrade manually.

### Source 110: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E17
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: Uh, we talk about cluster upgrades in detail in the course.

### Source 111: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E18
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: For now, let's leave it at the default, and you may choose another version by clicking on this, um, drop down link.

### Source 112: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E19
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: Now you can make additional changes to the worker nodes, um, that have to be configured so you can make change to the type of virtual machine to be used, the size, etc..

### Source 113: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E20
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: Um, but we are just going to stick with the defaults for now.

### Source 114: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E21
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: So we will proceed with creating the cluster, so click on create to begin the creation process.

### Source 115: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E22
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: And remember this can take anywhere between 5 to 10 minutes.

### Source 116: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E23
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: So let's just wait and give it some time to complete.

### Source 117: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E24
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: You may click on the refresh button to refresh the status.

### Source 118: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E25
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: All right so now the cluster has been set up.

### Source 119: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E26
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: Now you can see that by the green check mark next to the cluster name.

### Source 120: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E27
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: And the easiest way to connect to the cluster is by making use of this connect button right here.

### Source 121: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E28
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: So this will give us the command to connect to the cluster using the cloud shell.

### Source 122: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E29
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: So let's click on that.

### Source 123: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E30
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: And on the lower half of the screen the Google Cloud Shell should open up.

### Source 124: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E31
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: And I'm just going to increase it all the way to the top to make some space.

### Source 125: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E32
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: So this is the command that will enable kubectl to be able to talk to the GKE cluster.

### Source 126: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E33
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: So in Cloud Shell you already have the kubectl utility installed.

### Source 127: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E34
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: So um all you need to do is run this command to set up, um, Connectivity to the GKE cluster, so it will set up the Kubeconfig and any other required configuration.

### Source 128: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E35
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: Once that is done, we are ready.

### Source 129: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E36
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: So we now clear the screen and if you run the kubectl get nodes command, we can see that we have three worker nodes which are in ready state.

### Source 130: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E37
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: It's running version 1.11.14.

### Source 131: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E38
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: And it was set up about 1 to 2 minutes ago.

### Source 132: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E39
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: So our next task is to get the YAML files for deployments and services that we created earlier.

### Source 133: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E40
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: So to do that we'll open up our GitHub repository where all these files have been committed.

### Source 134: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E41
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: So here we have the GitHub repository.

### Source 135: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E42
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: And within the Its specifications directory we have all the deployment and service definition files.

### Source 136: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E43
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: So let's first clone the repository onto the Google Cloud Shell.

### Source 137: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E44
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: So I'm going to run git clone and paste the URL that was copied to the clipboard.

### Source 138: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E45
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: And let's run git clone command and paste the URL to download the repository.

### Source 139: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E46
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: Now I'm going to CD into the example voting app directory.

### Source 140: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E47
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: And in here I'm going to the CD specification directory.

### Source 141: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E48
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: And if I run ls we see all the YAML definition files.

### Source 142: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E49
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: So let's check the changes that we have made to the voting app and the result app services.

### Source 143: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E50
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: So we made a small change to the services because we are deploying these on the cloud environments.

### Source 144: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E51
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: Um earlier we discussed about a service type of load balancer where the native load balancer on the cloud is deployed when we create a service.

### Source 145: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E52
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: So in here we have changed the type of service to load balancer instead of Nodeport.

### Source 146: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E53
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: And we have done the same for result app service as well.

### Source 147: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E54
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: So now uh let's start creating these objects.

### Source 148: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E55
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: So we will start with the kubectl create dash f command.

### Source 149: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E56
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: And we'll start with the voting deployment itself.

### Source 150: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E57
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: And then we will deploy the service for voting app.

### Source 151: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E58
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: Next let's deploy the Redis deployment followed by the service.

### Source 152: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E59
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: Next we will do the Postgres deployment followed by the Postgres service.

### Source 153: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E60
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: And now we can do the worker app deployment.

### Source 154: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E61
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: And finally let's create the deployment for the result app as well as the result service.

### Source 155: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E62
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: Now you can also create all of these at once two by just specifying a wild card instead of each file name.

### Source 156: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E63
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: So you could just do a kubectl create and f and then a dot to just create all of them at once.

### Source 157: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E64
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: So now we have created all the objects that are needed for this application to run.

### Source 158: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E65
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: So let's verify that by running the kubectl get deployments command services command.

### Source 159: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E66
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: Again see that most of the objects have been created with the exception of the worker app which is still being deployed.

### Source 160: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E67
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: I can see that they are ready.

### Source 161: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E68
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: And we can also see that our load balancers, um, do not have an external IP yet, so they are still in a pending state.

### Source 162: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E69
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: So at this stage, um, the Kubernetes service is in fact working with the native load balancer.

### Source 163: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E70
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: So it sent a call to the native load balancer to provision a load balancer on on the Google Cloud Platform.

### Source 164: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E71
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: So once the load balancer is provisioned and we get the load balancer, um, external URL and IP, it will be populated here.

### Source 165: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E72
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: So let's give it a couple of minutes.

### Source 166: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E73
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: Um and then check this command again.

### Source 167: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E74
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: Now we can see that all the five deployments are ready.

### Source 168: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E75
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: And they have, uh, one out of one pod which are in a running state.

### Source 169: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E76
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: And we also have our two load balancers with the two external IPS available.

### Source 170: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E77
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: So everything has been set up as needed.

### Source 171: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E78
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: And before we test the application, let's check the load balancer configuration.

### Source 172: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E79
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: So if we click on um services and the ingress tab on the left, we can see that we have two services which are of type cluster IP which are the internal services of DB for Postgres and the other one for Redis.

### Source 173: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E80
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: And we have two front end services which are making use of the external load balancer.

### Source 174: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E81
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: And here are the external um, the endpoints, the um the URL that we can use to access the application.

### Source 175: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E82
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: If you'd like to see more details, you can click on any of these and this should give you more details about the service in general.

### Source 176: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E83
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: Um, the load balancer, the internal cluster IP, the load balancer IP, and the load balancer URL.

### Source 177: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E84
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: And you can see that for all of them the status is okay.

### Source 178: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E85
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: So now we can test the application.

### Source 179: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E86
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: So let's uh get the link here.

### Source 180: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E87
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: So we're going to open up a new uh tab in the browser.

### Source 181: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E88
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: And uh it will redirect us to the external load balancer IP here.

### Source 182: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E89
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: And this is our voting application.

### Source 183: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E90
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: Similarly let's open up the results app in a new tab as well.

### Source 184: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E91
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: And we will now cast a vote.

### Source 185: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E92
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: And we see that the result page is updated with the uh, percentage of votes.

### Source 186: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E93
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: Uh, let's try another vote.

### Source 187: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E94
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: And then we see that this has been updated as well.

### Source 188: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E95
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: So that's a quick and short demo for deploying Kubernetes clusters on GCP.

### Source 189: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E96
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 051_Kubernetes on GCP (GKE) / 051_Kubernetes on GCP (GKE).txt
- Evidence: And I will see you in the next one.

### Source 190: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E1
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: In this demo, we're going to create an ECS cluster, which is Amazon's managed Kubernetes service known as Elastic Kubernetes Service.

### Source 191: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E2
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: And before we begin, there are a set of prerequisites to be configured, such as having an AWS account.

### Source 192: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E3
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So if you're new to AWS, then check out this link to get free access.

### Source 193: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E4
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: You must already have installed the kubectl utility, which we have already done, so that's not required.

### Source 194: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E5
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: Also, you must have some basic AWS knowledge to perform some basic operations, such as configuring a cluster role for ECS and an IAM role for node group.

### Source 195: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E6
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: Um, a VPC and an EC2 key pair which will be used to SSH to the worker nodes if you have to.

### Source 196: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E7
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So the step by step instructions are available in this link.

### Source 197: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E8
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So you must have the aws cli installed and have the AWS CLI credentials configured.

### Source 198: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E9
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: And we already have the kubectl utility installed.

### Source 199: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E10
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So we're going to skip that.

### Source 200: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E11
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: And you must have uh created the IAM role for the EKS cluster and a VPC if required.

### Source 201: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E12
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: Or you can use the default one.

### Source 202: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E13
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So we will start from this step here, which is of creating an Amazon EKS cluster.

### Source 203: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E14
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So these are the basic AWS configurations.

### Source 204: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E15
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: Um so we will not spend time on that.

### Source 205: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E16
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: Instead we will dive into creating the Kubernetes cluster.

### Source 206: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E17
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So we've already configured all of the prerequisites required on our system.

### Source 207: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E18
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So to provision an EKS cluster once you're logged into your AWS account go to services.

### Source 208: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E19
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: Now the easiest way to look up things here is to search for EKS within the search window and click on EKS.

### Source 209: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E20
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So first thing to do is to name our cluster.

### Source 210: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E21
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So I'm going to use the name example voting app.

### Source 211: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E22
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: And we will leave the Kubernetes version at 1.16 as default.

### Source 212: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E23
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: And we must have created a cluster service role.

### Source 213: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E24
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So select the role created for the EKS cluster here and then click on next.

### Source 214: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E25
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: In the networking section We're going for the default VPC, and this is the only VPC that we have in this region.

### Source 215: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E26
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So one thing to notice here is that we're going with the US West two region which is Oregon two.

### Source 216: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E27
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: And we're making use of all the default subnets.

### Source 217: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E28
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: And click on next.

### Source 218: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E29
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: And again click on next.

### Source 219: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E30
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: And this is just a review page.

### Source 220: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E31
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So you can review and click on create.

### Source 221: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E32
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So this can take quite some time.

### Source 222: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E33
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: And after ten minutes.

### Source 223: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E34
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So let's just wait for this cluster to be created.

### Source 224: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E35
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: Okay.

### Source 225: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E36
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So now our cluster is active and it has got the active check mark here.

### Source 226: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E37
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So the next thing to do is to add a node group which is basically a group of worker nodes.

### Source 227: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E38
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: Right.

### Source 228: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E39
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So we have created a Kubernetes cluster.

### Source 229: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E40
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: But there are no worker nodes as of now.

### Source 230: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E41
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So that's the next step to do.

### Source 231: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E42
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So if you go to the compute section just below you'll see an option to add a node node group.

### Source 232: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E43
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: And let's assign a name for this such as demo workers.

### Source 233: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E44
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: And we select the EKS Case node role.

### Source 234: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E45
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So this is another role that we created as a prerequisite for subnets.

### Source 235: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E46
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: We select all the default subnets for now.

### Source 236: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E47
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: Of course in your environment you must choose those that are more relevant for you.

### Source 237: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E48
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: And next up I've got a key that is also created so that we can SSH to worker nodes as part of the prerequisites.

### Source 238: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E49
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So this key was created earlier.

### Source 239: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E50
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: Now um you don't really need this unless you are really, uh unless you really want to ssh to the worker nodes.

### Source 240: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E51
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: Right.

### Source 241: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E52
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So everything else looks good.

### Source 242: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E53
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: Um, so we will click on next.

### Source 243: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E54
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: And next we set the compute configuration.

### Source 244: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E55
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: And this is basically what images will be used for the worker nodes and their size the disk size etc..

### Source 245: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E56
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So I will leave these at the defaults for now.

### Source 246: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E57
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: Then I'm going to click on next.

### Source 247: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E58
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: And here's the auto scaling groups where we specify the minimum number of nodes in the cluster.

### Source 248: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E59
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: The maximum number of nodes and the desired size.

### Source 249: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E60
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So we will leave the default values here.

### Source 250: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E61
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: And next we will review the selected Configurations and then click on create.

### Source 251: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E62
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So again this can take a few minutes.

### Source 252: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E63
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So let's wait for that to finish.

### Source 253: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E64
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: Now let's check the status of the node group.

### Source 254: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E65
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: And we see that there are two nodes which are EC2 instances.

### Source 255: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E66
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: And our node groups are active.

### Source 256: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E67
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So the next step for us is to go to the terminal and set up the kubectl utility to access this cluster.

### Source 257: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E68
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So run the kubectl version command and verify that it's working.

### Source 258: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E69
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: But currently the kubectl utility is configured to work with our local minikube cluster.

### Source 259: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E70
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So the aws cli has a command to configure kubectl to work with the remote cluster we provisioned.

### Source 260: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E71
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So for this we must first have the AWS cli installed and configured to work with our AWS account.

### Source 261: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E72
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So the instructions to install aws CLI are available in the documentation.

### Source 262: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E73
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So we have that already installed on our system.

### Source 263: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E74
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So we're just going to skip that.

### Source 264: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E75
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: Now if you don't have the AWS cli installed then you follow the relevant, um, steps in the documentation, uh, for your operating system.

### Source 265: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E76
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So once installed, the documentation page, uh, we have an AWS command to configure.

### Source 266: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E77
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: Uh kubeconfig.

### Source 267: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E78
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: It's called, uh, update dash kubeconfig command.

### Source 268: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E79
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So we copy, uh, this whole command and we paste it in our terminal, and we specify the name of the cluster we created, which is example voting app.

### Source 269: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E80
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So once run, we see that the Kubeconfig um is configured in our home directory under the folder kube to verify if it's working as expected, run the kubectl get nodes command, and we should see the two worker nodes that are provisioned on AWS with their status and version of 1.16.

### Source 270: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E81
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So that's a proof that, um, we are connecting to the right Kubernetes cluster and that the Kubeconfig setup, uh, actually worked.

### Source 271: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E82
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So as with, um, any managed service, you cannot see the master nodes here.

### Source 272: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E83
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: The master nodes do not host any applications or workloads.

### Source 273: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E84
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: You cannot SSH to the master nodes or even access them because in managed Kubernetes services, the master nodes are maintained by the service provider.

### Source 274: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E85
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: Now any kubectl commands we run would be targeting the remote cluster on AWS.

### Source 275: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E86
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So now we should be good to move ahead with our application deployment.

### Source 276: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E87
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So just as before we will go to our GitHub repo.

### Source 277: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E88
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: And I'm going to clone it again.

### Source 278: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E89
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: And so I'm going to run git git clone voting app command.

### Source 279: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E90
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: And once downloaded I'm going to go into the example voting app.

### Source 280: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E91
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: And under the CSS specifications directory.

### Source 281: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E92
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: If I run the LS command I see all the deployment definition files as well as the service definition files.

### Source 282: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E93
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So now let's get started and create these resources.

### Source 283: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E94
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So first I'll create the voting app deployment.

### Source 284: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E95
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So kubectl create command and specify the voting app deployment file and followed by the service.

### Source 285: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E96
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: And then we will create the Redice deployment.

### Source 286: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E97
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: And then the Redice service.

### Source 287: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E98
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: Followed by the Postgres deployment.

### Source 288: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E99
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: And the Postgres service.

### Source 289: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E100
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: And next we create our worker deployment.

### Source 290: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E101
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: And finally we create the result app deployment and the result app service.

### Source 291: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E102
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So that's all of the objects and they've all been created.

### Source 292: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E103
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So let's check the status using the kubectl get deployments command.

### Source 293: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E104
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: And we can see that we have most of our services that are up except for the worker which is still in process of being deployed.

### Source 294: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E105
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: And we have two load balancer type services.

### Source 295: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E106
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: And we also see the public IP and other public URL with which we can access them.

### Source 296: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E107
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So let's wait for our worker app to be deployed.

### Source 297: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E108
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: And once that is done, we will go ahead and access the applications using the load balancer IP address, so the service has already interacted or made a call to the load balancer and created a load balancer on on the AWS environment.

### Source 298: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E109
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: And this is the IP or the URL for that.

### Source 299: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E110
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: Now all of our pods are up and running, and all of our deployments have one out of one ready pods, which is what we expect.

### Source 300: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E111
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So let's view the voting service using the load balancer.

### Source 301: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E112
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: And I'm going to open it up in a web browser.

### Source 302: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E113
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So I'll paste the URL and hit enter.

### Source 303: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E114
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: And here we go.

### Source 304: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E115
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So we have our voting application which is accessible from our public external load balancer and the external IP.

### Source 305: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E116
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So I'm going to make a selection here.

### Source 306: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E117
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: And to validate that let me copy and paste the external IP or the URL for my result app.

### Source 307: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E118
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: And here we see the the results as expected.

### Source 308: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E119
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So let's change the vote.

### Source 309: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E120
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: And we verify that the Result reflects that change.

### Source 310: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E121
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So this was a quick and easy deployment for our voting application on AKS.

### Source 311: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E122
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: Once you're done, make sure that you go back and clean up anything that you've done to save cost.

### Source 312: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E123
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: So make sure to delete the AKS cluster and any applications that you have deployed on that.

### Source 313: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E124
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: All right.

### Source 314: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E125
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 053_Kubernetes on AWS (EKS) / 053_Kubernetes on AWS (EKS).txt
- Evidence: Thanks for your time and I will see you in the next demo.

### Source 315: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E1
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: In this demo we're going to provision a Kubernetes cluster on Microsoft Azure.

### Source 316: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E2
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: So as a prerequisite you must have an Azure account.

### Source 317: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E3
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: And if you're getting started explore the free access available at this link.

### Source 318: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E4
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: So you get 12 months of free access.

### Source 319: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E5
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: Also some basic knowledge on Azure can help to, you know, prepare subscriptions and perform some basic configurations.

### Source 320: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E6
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: So let's get started.

### Source 321: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E7
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: So once you're logged into your Azure account we see the dashboard.

### Source 322: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E8
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: The basic dashboard provides a list of services.

### Source 323: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E9
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: So here I'm using the free account called Code Cloud free account.

### Source 324: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E10
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: And what we need to do is either look up for AKS which is the Azure Kubernetes Service.

### Source 325: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E11
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: And in this case it's already in my list underneath.

### Source 326: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E12
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: And we do not have a cluster created.

### Source 327: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E13
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: So the first thing to do is to add a cluster.

### Source 328: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E14
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: So this will take us to the Create Kubernetes cluster screen.

### Source 329: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E15
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: So it will select your subscription by default.

### Source 330: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E16
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: So make sure the right subscription is selected.

### Source 331: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E17
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: So if you're using a free subscription make sure that the right one is selected.

### Source 332: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E18
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: So the first thing to do is to create a new resource group.

### Source 333: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E19
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: So I'm going to create a resource group.

### Source 334: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E20
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: We will name it Voting App resource group.

### Source 335: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E21
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: And then we're going to name the cluster example voting app.

### Source 336: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E22
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: I'm going to leave the Kubernetes version to the default one which is 1.16.

### Source 337: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E23
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: And for the node size, um, since this is a free version, I'm going to use just one.

### Source 338: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E24
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: So that's enough for our requirements.

### Source 339: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E25
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: And there are other options that you can edit as well.

### Source 340: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E26
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: So for now we will just leave most of it to the uh to the default values.

### Source 341: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E27
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: Under authentication set the service principal to new so it will create a new one for us.

### Source 342: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E28
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: A service principal is used by the AKS service to manage the cloud resources that are attached to the cluster.

### Source 343: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E29
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: And next I'm going to, uh review and create.

### Source 344: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E30
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: So let's wait for it to make the create button available for us.

### Source 345: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E31
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: Okay.

### Source 346: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E32
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: So once it's available we can go ahead and click on create.

### Source 347: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E33
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: So here you will see that it is initializing the deployment of the resource groups first. and then it will create our Kubernetes cluster.

### Source 348: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E34
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: So yeah, this can take some time as well.

### Source 349: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E35
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: So let's just wait for our cluster to be ready.

### Source 350: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E36
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: All right.

### Source 351: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E37
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: So now the resources have been deployed and our cluster has been created successfully.

### Source 352: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E38
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: So the next step is to um go to the resources that we just created.

### Source 353: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E39
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: And I'm going to type in, uh, the voting app here.

### Source 354: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E40
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: So that's just one easy way to get the resource.

### Source 355: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E41
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: Uh, so search for it in the search bar.

### Source 356: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E42
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: So here is our Kubernetes service and the cluster that we just provisioned.

### Source 357: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E43
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: And to access the cluster we will make use of the cloud shell uh which will open up in the lower half of the screen.

### Source 358: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E44
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: So in this case it prompts me to create storage.

### Source 359: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E45
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: So let's just go ahead with it and do that.

### Source 360: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E46
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: And let's wait for it to complete.

### Source 361: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E47
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: And then we should be able to log in to the cloud shell.

### Source 362: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E48
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: So while we wait for that let's go over the documentation.

### Source 363: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E49
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: So here is the walkthrough of AKS which describes the steps that we have been following.

### Source 364: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E50
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: So if we scroll all the way to the bottom it shows how to connect to the cluster.

### Source 365: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E51
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: So here this is the step that we are trying to do now.

### Source 366: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E52
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: So kubectl client is pre-installed in the Azure Cloud Shell.

### Source 367: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E53
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: So we are launching that.

### Source 368: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E54
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: And once the cloud shell is launched we are going to grant access to kubectl to our cluster.

### Source 369: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E55
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: So to do that we have to enter the name of the resource group as well as the name of the cluster that we just created.

### Source 370: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E56
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: So let's go back, um, to our cloud shell and let's enter the value.

### Source 371: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E57
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: So I'm just going to paste the command here and we'll fill in the um the cluster name.

### Source 372: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E58
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: So the name of the resource group can be copied from the resource group here.

### Source 373: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E59
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: And the name of the cluster, um, you can copy it from the top here.

### Source 374: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E60
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: So it says example voting app because that's the name of the cluster that we just created.

### Source 375: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E61
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: So now the Kubeconfig, um, has been set up and we should be able to access the cluster.

### Source 376: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E62
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: So we'll run the kubectl get nodes command.

### Source 377: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E63
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: And here we can see that our single node cluster is is visible and it's running on 1.16 and it is in a ready state.

### Source 378: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E64
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: So just like before, we're going to clone our GitHub repo for our voting app.

### Source 379: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E65
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: So let's run the git clone command.

### Source 380: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E66
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: And once that is done I'm going to the directory.

### Source 381: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E67
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: And here are all the YAML files as before.

### Source 382: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E68
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: So let's start creating these services and deployment.

### Source 383: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E69
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: So we will start off with the voting app.

### Source 384: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E70
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: Uh the voting app deployment and then the voting app service.

### Source 385: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E71
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: And then we'll go with the deployment and the Redis service and the Postgres deployment and then the Postgres service.

### Source 386: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E72
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: Uh next comes the worker deployment and finally deployment and the results service.

### Source 387: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E73
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: So let's check the status of the deployment and services.

### Source 388: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E74
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: And here we see that all the service objects are created um except for the result app.

### Source 389: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E75
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: So that's still deploying.

### Source 390: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E76
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: And we already have the load balancer or the external IP for our voting service, um, and the result services for the voting service.

### Source 391: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E77
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: And the result service is pending.

### Source 392: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E78
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: So let's just give it a couple of minutes.

### Source 393: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E79
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: All right.

### Source 394: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E80
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: So now all our deployments are running and they have one out of one pods for all the five deployments.

### Source 395: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E81
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: And we also have the load balancer for both the result and the voting app ready.

### Source 396: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E82
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: So let's jump into a new tab and let's try to open this applications.

### Source 397: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E83
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: So here I'm on a different window and this is my voting app.

### Source 398: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E84
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: And let me also um open up the result app in a different tab.

### Source 399: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E85
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: So here's the result app.

### Source 400: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E86
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: And let's now cast a vote.

### Source 401: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E87
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: And we can see that the appropriate results are seen on the result app.

### Source 402: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E88
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: And if we change the vote we can see that it's working as expected.

### Source 403: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E89
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: So that's the end of this demo.

### Source 404: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E90
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: Once you're done with your learning, remember to delete the cluster and clean up the workspace after you're done so that, um, you can save, uh, on some of the credits.

### Source 405: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E91
- Course/Module: learn-kubernetes / 09_Kubernetes on Cloud
- Lecture/File: 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Evidence: Well, that's it for now, and I will see you in the next one.

### Source 406: learn-kubernetes/10_Conclusion/055_Conclusion.extraction.md::E9
- Course/Module: learn-kubernetes / 10_Conclusion
- Lecture/File: 055_Conclusion / 055_Conclusion.txt
- Evidence: And finally, we also saw how to deploy a sample microservices application on Kubernetes on Google Cloud Platform.
