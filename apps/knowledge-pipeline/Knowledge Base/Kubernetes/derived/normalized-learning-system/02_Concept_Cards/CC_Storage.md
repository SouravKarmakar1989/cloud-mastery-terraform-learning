# Concept Card: Storage

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

### Evidence 1: certified-kubernetes-administrator-with-practice-tests/01_Introduction/004_The Kubernetes Trilogy.extraction.md::E6
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 01_Introduction / 004_The Kubernetes Trilogy.txt
- Line Context: Lines 1-1 from transcript
- Content: A lot of topics to discuss, a lot of concepts to cover such as the architecture, networking, load balancing, a variety of monitoring tools, auto scaling, configuration, security storage, et cetera.
- Multi-concept tags: Networking, Storage, Security-RBAC, Architecture, Observability

### Evidence 2: certified-kubernetes-administrator-with-practice-tests/01_Introduction/004_The Kubernetes Trilogy.extraction.md::E16
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 01_Introduction / 004_The Kubernetes Trilogy.txt
- Line Context: Lines 1-1 from transcript
- Content: The Kubernetes for Administrators course focuses on advanced topics on Kubernetes and in-depth discussions into the various concepts around deploying a high availability cluster for production use case, understanding more about scheduling, monitoring, maintenance, securities, storage, and troubleshooting.
- Multi-concept tags: Storage, Architecture, Observability, Troubleshooting

### Evidence 3: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Line Context: Lines 1-1 from transcript
- Content: There was support for volumes of security.
- Multi-concept tags: Storage, Security-RBAC, On-Prem

### Evidence 4: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/009_A note on Docker deprecation.extraction.md::E5
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 009_A note on Docker deprecation.txt
- Line Context: Lines 1-1 from transcript
- Content: There was support for volumes, auth, security and finally also the container runtime called Runc and the daemon that managed the runtime called the container.
- Multi-concept tags: Storage, Security-RBAC

### Evidence 5: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/009_A note on Docker deprecation.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 009_A note on Docker deprecation.txt
- Line Context: Lines 1-1 from transcript
- Content: The other tools that Docker supported like Docker CLI or the API, or build volumes or etc. as they were all taken care of of by Kubernetes itself.
- Multi-concept tags: Storage

### Evidence 6: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/010_ETCD For Beginners.extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 010_ETCD For Beginners.txt
- Line Context: Lines 1-1 from transcript
- Content: A third type of storage option is what we call a key value store.
- Multi-concept tags: Storage, Architecture

### Evidence 7: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/010_ETCD For Beginners.extraction.md::E48
- Type: Comparison
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 010_ETCD For Beginners.txt
- Line Context: Lines 1-1 from transcript
- Content: So how does a key value store compare to other storage models?
- Multi-concept tags: Storage, Architecture

### Evidence 8: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/014_Kube Controller Manager.extraction.md::E20
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 014_Kube Controller Manager.txt
- Line Context: Lines 1-1 from transcript
- Content: Whatever concepts we have seen so far in Kubernetes, such as deployments, services, namespaces, or persistent volumes and whatever intelligence is built into these constructs, it is implemented through these various controllers.
- Multi-concept tags: Deployments, Services, Storage, Architecture

### Evidence 9: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/018_Pods.extraction.md::E37
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 018_Pods.txt
- Line Context: Lines 1-1 from transcript
- Content: Plus, they can easily share the same storage space as well.
- Multi-concept tags: Pods, Storage

### Evidence 10: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/018_Pods.extraction.md::E51
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 018_Pods.txt
- Line Context: Lines 1-1 from transcript
- Content: We would need to create sharable volumes and share it among the containers.
- Multi-concept tags: Pods, Storage

### Evidence 11: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/018_Pods.extraction.md::E56
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 018_Pods.txt
- Line Context: Lines 1-1 from transcript
- Content: We just need to define what containers a pod consists of, and the containers in a pod by default will have access to the same storage, the same network namespace, and same fate as in they will be created together and destroyed together.
- Multi-concept tags: Pods, Networking, Storage

### Evidence 12: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E62
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: So you can either create this file locally and then pass it in as a volume mount as it's done for the other pods usually.
- Multi-concept tags: Pods, Storage, Scheduling

### Evidence 13: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E69
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: And then this config file is passed in as a volume here as a config file.
- Multi-concept tags: Storage, Scheduling

### Evidence 14: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E70
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: So basically whatever is the contents in the uh, in that particular config map is then mapped to a volume mount to a volume here the specific location.
- Multi-concept tags: Storage, Scheduling

### Evidence 15: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E74
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: But again if you haven't gone through the volume and volume mount sections of this course, then just hold off on this for now and you'll understand that when we talk about these and then again liveness probes, readiness probes, resources and security context, all of these are sections that we talk about later.
- Multi-concept tags: Storage, Scheduling, Security-RBAC, Observability

### Evidence 16: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E21
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: And let's create a ConfigMap that the new scheduler will employ using the concept of ConfigMap as a volume.
- Multi-concept tags: Storage, Scheduling, Configuration

### Evidence 17: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E59
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: And that basically passes through as a volume mount here.
- Multi-concept tags: Storage, Scheduling

### Evidence 18: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/082_(2025 Updates)Admission Controllers.extraction.md::E31
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 082_(2025 Updates)Admission Controllers.txt
- Line Context: Lines 1-1 from transcript
- Content: The default storage class admission controller that observes the creation of PVCs and automatically adds the default storage class to them if one is not specified, the event rate limit admission controller can help set a limit on the requests with the the API server can handle at a time.
- Multi-concept tags: Storage, Security-RBAC, Architecture, Observability

### Evidence 19: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/084_(2025 Updates)Lab Solution_ Admission Controllers.extraction.md::E46
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Line Context: Lines 1-1 from transcript
- Content: The next question is asking us to disable the DefaultStorageClass admission controller.
- Multi-concept tags: Storage, Security-RBAC

### Evidence 20: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/084_(2025 Updates)Lab Solution_ Admission Controllers.extraction.md::E49
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Line Context: Lines 1-1 from transcript
- Content: So I'm gonna go right below this line, and I'm gonna say disable-admission-plugins= and then we're gonna add DefaultStorageClass.
- Multi-concept tags: Storage, Security-RBAC

### Evidence 21: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/085_(2025 Updates)Validating and Mutating Admission Controllers.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 085_(2025 Updates)Validating and Mutating Admission Controllers.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's look at another type of admission controller plugin named as the default storage class plugin.
- Multi-concept tags: Storage, Security-RBAC

### Evidence 22: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/085_(2025 Updates)Validating and Mutating Admission Controllers.extraction.md::E7
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 085_(2025 Updates)Validating and Mutating Admission Controllers.txt
- Line Context: Lines 1-1 from transcript
- Content: Say for example, you're submitting a request to create a PVC.
- Multi-concept tags: Storage, Security-RBAC, CKA-CKAD

### Evidence 23: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/085_(2025 Updates)Validating and Mutating Admission Controllers.extraction.md::E9
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 085_(2025 Updates)Validating and Mutating Admission Controllers.txt
- Line Context: Lines 1-1 from transcript
- Content: The default storage class admission controller will watch for requests to create a PVC and check if it has a storage class mentioned in it.
- Multi-concept tags: Storage, Security-RBAC

### Evidence 24: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/085_(2025 Updates)Validating and Mutating Admission Controllers.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 085_(2025 Updates)Validating and Mutating Admission Controllers.txt
- Line Context: Lines 1-1 from transcript
- Content: If not, which is true in our case, it will modify your request to add the default storage class to your request.
- Multi-concept tags: Storage, Security-RBAC

### Evidence 25: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/085_(2025 Updates)Validating and Mutating Admission Controllers.extraction.md::E11
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 085_(2025 Updates)Validating and Mutating Admission Controllers.txt
- Line Context: Lines 1-1 from transcript
- Content: This could be whatever storage class is configured as the default storage class in your cluster.
- Multi-concept tags: Storage, Security-RBAC, Architecture

### Evidence 26: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/085_(2025 Updates)Validating and Mutating Admission Controllers.extraction.md::E12
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 085_(2025 Updates)Validating and Mutating Admission Controllers.txt
- Line Context: Lines 1-1 from transcript
- Content: So when the PVC is created and you inspect it, you will see that a storage class default is added to it even though you hadn't specified it during the creation.
- Multi-concept tags: Storage, Security-RBAC

### Evidence 27: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/105_Configuring ConfigMaps in Applications.extraction.md::E51
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 105_Configuring ConfigMaps in Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: You can inject it as a single environment variable, or you can inject the whole data as files in a volume.
- Multi-concept tags: Storage, Configuration

### Evidence 28: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/108_Secrets.extraction.md::E63
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 108_Secrets.txt
- Line Context: Lines 1-1 from transcript
- Content: You can inject as single environment variables or inject the whole secret as files in a volume.
- Multi-concept tags: Storage, Security-RBAC, Configuration

### Evidence 29: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/108_Secrets.extraction.md::E64
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 108_Secrets.txt
- Line Context: Lines 1-1 from transcript
- Content: If you were to mount the secret as a volume in the pod, each attribute in the secret is created as a file with the value of the secret as its content.
- Multi-concept tags: Pods, Storage, Security-RBAC

### Evidence 30: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/112_Demo_ Encrypting Secret Data at Rest.extraction.md::E135
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 112_Demo_ Encrypting Secret Data at Rest.txt
- Line Context: Lines 1-1 from transcript
- Content: Then, of course, we need to, since the file is created locally, I have to mount it inside, so I'm gonna use volumes and volume mount.
- Multi-concept tags: Storage, Security-RBAC

### Evidence 31: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/112_Demo_ Encrypting Secret Data at Rest.extraction.md::E136
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 112_Demo_ Encrypting Secret Data at Rest.txt
- Line Context: Lines 1-1 from transcript
- Content: If you have not gone through the volumes and volume mounts yet, then you might want to take a look at that and come back.
- Multi-concept tags: Storage, Security-RBAC

### Evidence 32: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/112_Demo_ Encrypting Secret Data at Rest.extraction.md::E154
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 112_Demo_ Encrypting Secret Data at Rest.txt
- Line Context: Lines 1-1 from transcript
- Content: I have volume mount.
- Multi-concept tags: Storage, Security-RBAC

### Evidence 33: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/112_Demo_ Encrypting Secret Data at Rest.extraction.md::E155
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 112_Demo_ Encrypting Secret Data at Rest.txt
- Line Context: Lines 1-1 from transcript
- Content: So this is inside my volume, inside the pod where it is gonna be mounted.
- Multi-concept tags: Pods, Storage, Security-RBAC

### Evidence 34: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/115_Multi Container Pods.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 115_Multi Container Pods.txt
- Line Context: Lines 1-1 from transcript
- Content: And they have access to the same storage volumes.
- Multi-concept tags: Pods, Storage

### Evidence 35: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/115_Multi Container Pods.extraction.md::E12
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 115_Multi Container Pods.txt
- Line Context: Lines 1-1 from transcript
- Content: This way you do not have to establish volume sharing or services between the pods to enable communication between them.
- Multi-concept tags: Pods, Services, Storage

### Evidence 36: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.extraction.md::E19
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Line Context: Lines 1-1 from transcript
- Content: It then automatically increases or decreases the number of pods in a deployment Statefulset or replica set based on the CPU, memory, or custom metrics.
- Multi-concept tags: Pods, Deployments, Storage, Observability

### Evidence 37: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/138_Backup and Restore Methods.extraction.md::E5
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 138_Backup and Restore Methods.txt
- Line Context: Lines 1-1 from transcript
- Content: And if your applications are configured with persistent storage, then that is another candidate for backups.
- Multi-concept tags: Storage, Architecture

### Evidence 38: certified-kubernetes-administrator-with-practice-tests/07_Security/145_Authentication.extraction.md::E40
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 145_Authentication.txt
- Line Context: Lines 1-1 from transcript
- Content: I also want to point out that if you were trying this out in a cube ADM setup, you must also consider volume mounts to pass in the auth file.
- Multi-concept tags: Storage, Security-RBAC

### Evidence 39: certified-kubernetes-administrator-with-practice-tests/07_Security/161_API Groups.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 161_API Groups.txt
- Line Context: Lines 1-1 from transcript
- Content: The core group is where all core functionality exists, such as namespaces, pods, replication, controllers, events, endpoints, nodes, bindings, persistent volumes, persistent volume claims, config maps, secrets, services, etc..
- Multi-concept tags: Pods, Services, Storage, Security-RBAC, Architecture, Observability

### Evidence 40: certified-kubernetes-administrator-with-practice-tests/07_Security/161_API Groups.extraction.md::E17
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 161_API Groups.txt
- Line Context: Lines 1-1 from transcript
- Content: It has groups under it for apps, extensions, networking, storage, authentication, authorization, etc..
- Multi-concept tags: Networking, Storage, Security-RBAC

### Evidence 41: certified-kubernetes-administrator-with-practice-tests/07_Security/162_Authorization.extraction.md::E10
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 162_Authorization.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, we don't want the developers to have access to modify our cluster configuration, like adding or deleting nodes or the storage or networking configurations.
- Multi-concept tags: Networking, Storage, Security-RBAC, Architecture, CKA-CKAD

### Evidence 42: certified-kubernetes-administrator-with-practice-tests/07_Security/166_Cluster Roles.extraction.md::E17
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 166_Cluster Roles.txt
- Line Context: Lines 1-1 from transcript
- Content: The cluster scoped resources are those where you don't specify a namespace when you create them like nodes, persistent volumes persist the cluster roles and cluster role bindings that we're going to look at in this lecture.
- Multi-concept tags: Storage, Security-RBAC, Architecture

### Evidence 43: certified-kubernetes-administrator-with-practice-tests/07_Security/166_Cluster Roles.extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 166_Cluster Roles.txt
- Line Context: Lines 1-1 from transcript
- Content: But how do we authorize users to cluster wide resources like nodes or persistent volumes?
- Multi-concept tags: Storage, Security-RBAC, Architecture

### Evidence 44: certified-kubernetes-administrator-with-practice-tests/07_Security/166_Cluster Roles.extraction.md::E29
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 166_Cluster Roles.txt
- Line Context: Lines 1-1 from transcript
- Content: Similarly, a storage administrator role can be created to authorize a storage admin to create persistent volumes and claims.
- Multi-concept tags: Storage, Security-RBAC, Architecture

### Evidence 45: certified-kubernetes-administrator-with-practice-tests/07_Security/168_Lab Solution - Cluster Roles.extraction.md::E72
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 168_Lab Solution - Cluster Roles.txt
- Line Context: Lines 1-1 from transcript
- Content: Now, the next question is Michelle's responsibilities are growing and now she will be responsible for storage as well, so create the required cluster role and role bindings to allow her access to storage.
- Multi-concept tags: Storage, Security-RBAC, Architecture

### Evidence 46: certified-kubernetes-administrator-with-practice-tests/07_Security/168_Lab Solution - Cluster Roles.extraction.md::E82
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 168_Lab Solution - Cluster Roles.txt
- Line Context: Lines 1-1 from transcript
- Content: So as we learned, the persistent volumes and persistent volume claims, I'm sorry, the cluster role bindings are not namespaced, so you should be able to see those here.
- Multi-concept tags: Storage, Security-RBAC, Architecture

### Evidence 47: certified-kubernetes-administrator-with-practice-tests/07_Security/168_Lab Solution - Cluster Roles.extraction.md::E86
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 168_Lab Solution - Cluster Roles.txt
- Line Context: Lines 1-1 from transcript
- Content: So what we want to do is we want to create back- so we want to create a cluster role to allow Michelle access to storage classes.
- Multi-concept tags: Storage, Security-RBAC, Architecture

### Evidence 48: certified-kubernetes-administrator-with-practice-tests/07_Security/168_Lab Solution - Cluster Roles.extraction.md::E88
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 168_Lab Solution - Cluster Roles.txt
- Line Context: Lines 1-1 from transcript
- Content: The name is storage-admin.
- Multi-concept tags: Storage, Security-RBAC, Architecture

### Evidence 49: certified-kubernetes-administrator-with-practice-tests/07_Security/168_Lab Solution - Cluster Roles.extraction.md::E89
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 168_Lab Solution - Cluster Roles.txt
- Line Context: Lines 1-1 from transcript
- Content: So storage-admin, and the resource, there are two resources, persistent volumes and storage classes.
- Multi-concept tags: Storage, Security-RBAC, Architecture

### Evidence 50: certified-kubernetes-administrator-with-practice-tests/07_Security/168_Lab Solution - Cluster Roles.extraction.md::E90
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 168_Lab Solution - Cluster Roles.txt
- Line Context: Lines 1-1 from transcript
- Content: So first resource is persistent volumes.
- Multi-concept tags: Storage, Security-RBAC, Architecture

### Evidence 51: certified-kubernetes-administrator-with-practice-tests/07_Security/168_Lab Solution - Cluster Roles.extraction.md::E91
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 168_Lab Solution - Cluster Roles.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's get that, and storage classes, let's get that.
- Multi-concept tags: Storage, Security-RBAC, Architecture

### Evidence 52: certified-kubernetes-administrator-with-practice-tests/07_Security/168_Lab Solution - Cluster Roles.extraction.md::E96
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 168_Lab Solution - Cluster Roles.txt
- Line Context: Lines 1-1 from transcript
- Content: Kubectl describe cluster role storage-admin.
- Multi-concept tags: Storage, Security-RBAC, Architecture, On-Prem

### Evidence 53: certified-kubernetes-administrator-with-practice-tests/07_Security/168_Lab Solution - Cluster Roles.extraction.md::E99
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 168_Lab Solution - Cluster Roles.txt
- Line Context: Lines 1-1 from transcript
- Content: And we can see that the cluster role is created, name is storage-admin.
- Multi-concept tags: Storage, Security-RBAC, Architecture

### Evidence 54: certified-kubernetes-administrator-with-practice-tests/07_Security/168_Lab Solution - Cluster Roles.extraction.md::E101
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 168_Lab Solution - Cluster Roles.txt
- Line Context: Lines 1-1 from transcript
- Content: So it's created two rules, one for each resource, so we have persistent volumes, and then you have storage class.
- Multi-concept tags: Storage, Security-RBAC, Architecture

### Evidence 55: certified-kubernetes-administrator-with-practice-tests/07_Security/168_Lab Solution - Cluster Roles.extraction.md::E106
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 168_Lab Solution - Cluster Roles.txt
- Line Context: Lines 1-1 from transcript
- Content: So the name is Michelle-storage-admin.
- Multi-concept tags: Storage, Security-RBAC, Architecture

### Evidence 56: certified-kubernetes-administrator-with-practice-tests/07_Security/168_Lab Solution - Cluster Roles.extraction.md::E107
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 168_Lab Solution - Cluster Roles.txt
- Line Context: Lines 1-1 from transcript
- Content: The user is Michelle, and the cluster role is storage-admin.
- Multi-concept tags: Storage, Security-RBAC, Architecture

### Evidence 57: certified-kubernetes-administrator-with-practice-tests/07_Security/168_Lab Solution - Cluster Roles.extraction.md::E109
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 168_Lab Solution - Cluster Roles.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, and we can see the cluster role that is associated to a storage admin, and the user is Michelle.
- Multi-concept tags: Storage, Security-RBAC, Architecture

### Evidence 58: certified-kubernetes-administrator-with-practice-tests/07_Security/168_Lab Solution - Cluster Roles.extraction.md::E110
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 168_Lab Solution - Cluster Roles.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's do kubectl as well and get storage classes.
- Multi-concept tags: Storage, Security-RBAC, Architecture

### Evidence 59: certified-kubernetes-administrator-with-practice-tests/07_Security/169_Service Accounts.extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 169_Service Accounts.txt
- Line Context: Lines 1-1 from transcript
- Content: So the service account gets mounted as a projected volume within the pod.
- Multi-concept tags: Pods, Services, Storage, Security-RBAC

### Evidence 60: certified-kubernetes-administrator-with-practice-tests/07_Security/169_Service Accounts.extraction.md::E29
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 169_Service Accounts.txt
- Line Context: Lines 1-1 from transcript
- Content: So think of a projected volume as a dynamic directory created inside the pod by Kubernetes automatically.
- Multi-concept tags: Pods, Services, Storage, Security-RBAC

### Evidence 61: certified-kubernetes-administrator-with-practice-tests/07_Security/169_Service Accounts.extraction.md::E45
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 169_Service Accounts.txt
- Line Context: Lines 1-1 from transcript
- Content: Kubernetes automatically creates a short lived token and mounts it inside a projected volume.
- Multi-concept tags: Services, Storage, Security-RBAC

### Evidence 62: certified-kubernetes-administrator-with-practice-tests/07_Security/169_Service Accounts.extraction.md::E74
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 169_Service Accounts.txt
- Line Context: Lines 1-1 from transcript
- Content: To attach a service account to a pod, we use the service account name field, and when a service account is attached to a pod, Kubernetes automatically creates a token and mounts as a projected volume, automatically rotates the token and automatically expires the token when the pod is deleted.
- Multi-concept tags: Pods, Services, Storage, Security-RBAC

### Evidence 63: certified-kubernetes-administrator-with-practice-tests/07_Security/171_Lab Solution_ Service Accounts.extraction.md::E35
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 171_Lab Solution_ Service Accounts.txt
- Line Context: Lines 1-1 from transcript
- Content: So if we go down here, we wanna go to the mount section or if we go to the volume, sorry, we wanna look at the mount section right here.
- Multi-concept tags: Services, Storage, Security-RBAC

### Evidence 64: certified-kubernetes-administrator-with-practice-tests/07_Security/184_(2025 Updates)Custorm Resource Definition (CRD).extraction.md::E72
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 184_(2025 Updates)Custorm Resource Definition (CRD).txt
- Line Context: Lines 1-1 from transcript
- Content: And we know that there are Namespaced and non namespaced scopes in Kubernetes for example, pods, replica sets, deployments are all scoped, whereas persistent volumes, nodes and namespace itself are non Unknown non scoped objects.
- Multi-concept tags: Pods, Deployments, Storage, Security-RBAC, Architecture, CKA-CKAD

### Evidence 65: certified-kubernetes-administrator-with-practice-tests/07_Security/184_(2025 Updates)Custorm Resource Definition (CRD).extraction.md::E98
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 184_(2025 Updates)Custorm Resource Definition (CRD).txt
- Line Context: Lines 1-1 from transcript
- Content: And we also define which is the storage version.
- Multi-concept tags: Storage, Security-RBAC

### Evidence 66: certified-kubernetes-administrator-with-practice-tests/07_Security/184_(2025 Updates)Custorm Resource Definition (CRD).extraction.md::E99
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 184_(2025 Updates)Custorm Resource Definition (CRD).txt
- Line Context: Lines 1-1 from transcript
- Content: If you have multiple versions, only one version can be marked as the storage version.
- Multi-concept tags: Storage, Security-RBAC

### Evidence 67: certified-kubernetes-administrator-with-practice-tests/07_Security/184_(2025 Updates)Custorm Resource Definition (CRD).extraction.md::E100
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 184_(2025 Updates)Custorm Resource Definition (CRD).txt
- Line Context: Lines 1-1 from transcript
- Content: We discussed about what are storage versions in the lecture about APIs earlier in this course.
- Multi-concept tags: Storage, Security-RBAC

### Evidence 68: certified-kubernetes-administrator-with-practice-tests/08_Storage/188_Storage - Section Introduction.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 188_Storage - Section Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: -: Hello and welcome to this section on storage in Kubernetes.
- Multi-concept tags: Storage

### Evidence 69: certified-kubernetes-administrator-with-practice-tests/08_Storage/188_Storage - Section Introduction.extraction.md::E2
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 188_Storage - Section Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: This is Mumshad Mannambeth, and we are going through the Certified Kubernetes Administrators course.
- Multi-concept tags: Storage

### Evidence 70: certified-kubernetes-administrator-with-practice-tests/08_Storage/188_Storage - Section Introduction.extraction.md::E3
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 188_Storage - Section Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: In this section, we look at the various storage related concepts, such as persistent volumes, persistent volume claims, access modes, and how to configure applications with persistent storage.
- Multi-concept tags: Storage

### Evidence 71: certified-kubernetes-administrator-with-practice-tests/08_Storage/188_Storage - Section Introduction.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 188_Storage - Section Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: There are so many different storage options out there.
- Multi-concept tags: Storage

### Evidence 72: certified-kubernetes-administrator-with-practice-tests/08_Storage/188_Storage - Section Introduction.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 188_Storage - Section Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: And depending on your environment, the options may vary.
- Multi-concept tags: Storage, Configuration, Troubleshooting

### Evidence 73: certified-kubernetes-administrator-with-practice-tests/08_Storage/188_Storage - Section Introduction.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 188_Storage - Section Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: However, looking at all of those options is out of scope for this course.
- Multi-concept tags: Storage

### Evidence 74: certified-kubernetes-administrator-with-practice-tests/08_Storage/188_Storage - Section Introduction.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 188_Storage - Section Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: In this course, our focus is on the Kubernetes side of storage.
- Multi-concept tags: Storage

### Evidence 75: certified-kubernetes-administrator-with-practice-tests/08_Storage/188_Storage - Section Introduction.extraction.md::E8
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 188_Storage - Section Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: Once you get that, you should be able to relate that knowledge to implement any third party storage solutions out there.
- Multi-concept tags: Storage

### Evidence 76: certified-kubernetes-administrator-with-practice-tests/08_Storage/188_Storage - Section Introduction.extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 188_Storage - Section Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's get started.
- Multi-concept tags: Storage

### Evidence 77: certified-kubernetes-administrator-with-practice-tests/08_Storage/189_Docker Storage - Introduction.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 189_Docker Storage - Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: Let us now look at storage in Kubernetes to understand storage in container orchestration tools like Kubernetes.
- Multi-concept tags: Storage

### Evidence 78: certified-kubernetes-administrator-with-practice-tests/08_Storage/189_Docker Storage - Introduction.extraction.md::E2
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 189_Docker Storage - Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: It is important to first understand how storage works with containers.
- Multi-concept tags: Storage

### Evidence 79: certified-kubernetes-administrator-with-practice-tests/08_Storage/189_Docker Storage - Introduction.extraction.md::E3
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 189_Docker Storage - Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: Understanding how storage works with Docker first and getting all the basics right will later make it so much easier to understand how it works in Kubernetes.
- Multi-concept tags: Storage

### Evidence 80: certified-kubernetes-administrator-with-practice-tests/08_Storage/189_Docker Storage - Introduction.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 189_Docker Storage - Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: When it comes to storage in Docker, there are two concepts you must know about storage drivers and volume driver plugins.
- Multi-concept tags: Storage

### Evidence 81: certified-kubernetes-administrator-with-practice-tests/08_Storage/189_Docker Storage - Introduction.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 189_Docker Storage - Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: In the upcoming video, we will discuss about storage drivers.
- Multi-concept tags: Storage

### Evidence 82: certified-kubernetes-administrator-with-practice-tests/08_Storage/189_Docker Storage - Introduction.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 189_Docker Storage - Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: It's something that we've discussed in the Docker course, so if you have gone through that already, feel free to skip this video or you may choose to stay and refresh your memory.
- Multi-concept tags: Storage

### Evidence 83: certified-kubernetes-administrator-with-practice-tests/08_Storage/189_Docker Storage - Introduction.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 189_Docker Storage - Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: Once done, we will talk about volume drivers.
- Multi-concept tags: Storage

### Evidence 84: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: In this lecture we are going to talk about Docker storage drivers and file systems.
- Multi-concept tags: Storage

### Evidence 85: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E2
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: We're going to see where and how Docker stores data and how it manages file systems of the containers.
- Multi-concept tags: Storage

### Evidence 86: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Let us start with how Docker stores data on the local file system.
- Multi-concept tags: Storage

### Evidence 87: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E4
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: When you install Docker on a system, it creates this folder structure.
- Multi-concept tags: Storage

### Evidence 88: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E5
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: At var lib docker you have multiple folders under it called aufs, containers, image volumes, etc. this is where Docker stores all its data by default.
- Multi-concept tags: Storage

### Evidence 89: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: When I say data, I mean files related to images and containers running on the Docker host.
- Multi-concept tags: Storage

### Evidence 90: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E7
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, all files related to containers are stored under the containers folder, and the files related to images are stored under the image folder.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 91: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E8
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Any volumes created by the Docker containers are created under the volumes folder.
- Multi-concept tags: Storage

### Evidence 92: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E9
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Well, don't worry about that for now.
- Multi-concept tags: Storage

### Evidence 93: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: We will come back to that in a bit.
- Multi-concept tags: Storage

### Evidence 94: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: For now, let's just understand where Docker stores its files and in what format.
- Multi-concept tags: Storage

### Evidence 95: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: So how exactly does Docker store the files of an image and a container?
- Multi-concept tags: Storage

### Evidence 96: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E13
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: To understand that, we need to understand Dockers layered architecture.
- Multi-concept tags: Storage, Architecture

### Evidence 97: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E14
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's quickly recap something we learned when Docker builds images, it builds these in a layered architecture.
- Multi-concept tags: Storage, Architecture

### Evidence 98: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E15
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Each line of instruction in the Docker file creates a new layer in the Docker image, with just the changes from the previous layer.
- Multi-concept tags: Storage

### Evidence 99: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E16
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, the first layer is a base ubuntu distribution, followed by the second instruction that creates a second layer which installs all the apt packages, and then the third instruction creates a third layer, which with the Python packages, followed by the fourth layer that copies the source code over, and then finally the fifth layer that updates the entry point of the image.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 100: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Since each layer only stores the changes from the previous layer, it is reflected in the size as well.
- Multi-concept tags: Storage

### Evidence 101: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: If you look at the base ubuntu image, it is around 120MB in size.
- Multi-concept tags: Storage

### Evidence 102: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E19
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: The APT packages that are installed is around 300 MB and then the remaining layers are small.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 103: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E20
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: To understand the advantages of this layered architecture, let's consider a second application.
- Multi-concept tags: Storage, Architecture

### Evidence 104: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E21
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: This application has a different Docker file, but is very similar to our first application.
- Multi-concept tags: Storage

### Evidence 105: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: As in, it uses the same base image as ubuntu.
- Multi-concept tags: Storage

### Evidence 106: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E23
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Uses the same Python and Flask dependencies, but uses a different source code to create a different application.
- Multi-concept tags: Storage

### Evidence 107: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: And so a different entry point as well.
- Multi-concept tags: Storage

### Evidence 108: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E25
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: When I run the docker build command to build a new image for this application, since the first three layers of both the applications are the same, Docker is not going to build the first three layers.
- Multi-concept tags: Storage, Configuration

### Evidence 109: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E26
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Instead, it reuses the same three layers it built for the first application from the cache, and only creates the last two layers with the new sources and the new entry point.
- Multi-concept tags: Storage

### Evidence 110: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: This way Docker builds images faster and efficiently saves disk space.
- Multi-concept tags: Storage

### Evidence 111: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: This is also applicable if you were to update your application code whenever you update your application code, such as the app dot Pi.
- Multi-concept tags: Storage

### Evidence 112: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: In this case, Docker simply reuses all the previous layers from cache and rebuilds the application image by updating the latest source code, thus saving us a lot of time during rebuilds and updates.
- Multi-concept tags: Storage

### Evidence 113: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's rearrange the layers bottom up so we can understand it better.
- Multi-concept tags: Storage

### Evidence 114: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E31
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: At the bottom we have the base ubuntu layer, then the packages, then the dependencies, and then the source code of the application and then the entry point.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 115: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E32
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: All of these layers are created when we run the docker build command to form the final Docker image.
- Multi-concept tags: Storage, Configuration

### Evidence 116: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E33
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: So all of these are the Docker image layers.
- Multi-concept tags: Storage

### Evidence 117: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Once the build is complete, you cannot modify the contents of these layers.
- Multi-concept tags: Storage

### Evidence 118: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E35
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: And so they are read only.
- Multi-concept tags: Storage

### Evidence 119: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E36
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: And you can only modify them by initiating a new build.
- Multi-concept tags: Storage

### Evidence 120: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E37
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: When you run a container based off of this image using the docker run command, Docker creates a container based off of these layers and creates a new writable layer on top of the image layer.
- Multi-concept tags: Storage, Configuration

### Evidence 121: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E38
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: The writable layer is used to store data created by the container, such as log files written by the applications.
- Multi-concept tags: Storage

### Evidence 122: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E39
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Any temporary files generated by the container, or just any file modified by the user on that container.
- Multi-concept tags: Storage

### Evidence 123: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E40
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: The life of this layer, though, is only as long as the container is alive.
- Multi-concept tags: Storage

### Evidence 124: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: When the container is destroyed, this layer and all of the changes stored in it are also destroyed.
- Multi-concept tags: Storage

### Evidence 125: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E42
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Remember that the same image layer is shared by all containers created using this image.
- Multi-concept tags: Storage

### Evidence 126: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E43
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: If I were to log in to the newly created container and say create a new file called temp dot txt, it will create that file in the container layer which is read and write.
- Multi-concept tags: Storage

### Evidence 127: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E44
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: We just said that the files in the image layer are read only, meaning you cannot edit anything in those layers.
- Multi-concept tags: Storage

### Evidence 128: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E45
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's take an example of our application code.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 129: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E46
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Since we bake our code into the image, the code is part of the image layer and as such is read only after running a container.
- Multi-concept tags: Storage

### Evidence 130: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E47
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: What if I wish to modify the source code to say, test a change?
- Multi-concept tags: Storage

### Evidence 131: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E48
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Remember, the same image layer may be shared between multiple containers created from this image.
- Multi-concept tags: Storage

### Evidence 132: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E49
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: So does it mean that I cannot modify this file inside the container.
- Multi-concept tags: Storage

### Evidence 133: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E50
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: No, I can still modify this file, but before I save the modified file, Docker automatically creates a copy of the file in the read write layer, and I will then be modifying a different version of the file in the read write layer.
- Multi-concept tags: Storage

### Evidence 134: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E51
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: All future modifications will be done on this copy of the file in the read write layer.
- Multi-concept tags: Storage

### Evidence 135: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E52
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: This is called copy on write mechanism.
- Multi-concept tags: Storage

### Evidence 136: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E53
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: The image layer being read only just means that the files in these layers will not be modified in the image itself.
- Multi-concept tags: Storage

### Evidence 137: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E54
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: So the image will remain the same all the time until you rebuild the image using the docker build command.
- Multi-concept tags: Storage, Configuration

### Evidence 138: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E55
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: What happens when we get rid of the container?
- Multi-concept tags: Storage

### Evidence 139: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E56
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: All of the data that was stored in the container layer also gets deleted.
- Multi-concept tags: Storage

### Evidence 140: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E57
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: The change we made to the App.py and the new temp file we created will also get removed.
- Multi-concept tags: Storage

### Evidence 141: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E58
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: So what if we wish to persist this data.
- Multi-concept tags: Storage

### Evidence 142: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E59
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, if we were working with a database and we would like to preserve the data created by the container, we could add a persistent volume to the container.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 143: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E60
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: To do this, first create a volume using the Docker volume create command.
- Multi-concept tags: Storage, Configuration

### Evidence 144: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E61
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: So when I run the Docker volume create data underscore volume command, it creates a folder called data underscore volume under the var lib docker volumes directory.
- Multi-concept tags: Storage, Configuration

### Evidence 145: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E62
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Then when I run the docker container using the docker run command, I could mount this volume inside the Docker containers rewrite layer using the dash v option like this.
- Multi-concept tags: Storage, Configuration

### Evidence 146: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E63
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: So I would do a docker run dash v, then specify my newly created volume name, followed by a colon and the location inside my container, which is the default location where MySQL stores data.
- Multi-concept tags: Storage

### Evidence 147: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E64
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: And that is var lib MySQL.
- Multi-concept tags: Storage

### Evidence 148: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E65
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: And then the image name MySQL.
- Multi-concept tags: Storage

### Evidence 149: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E66
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: This will create a new container and mount the data volume we created into var lib MySQL folder inside the container.
- Multi-concept tags: Storage

### Evidence 150: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E67
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: So all data written by the database is in fact stored on the volume created on the docker host.
- Multi-concept tags: Storage

### Evidence 151: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E68
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Even if the container is destroyed, the data is still active.
- Multi-concept tags: Storage

### Evidence 152: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E69
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Now what if you didn't run the Docker volume?
- Multi-concept tags: Storage

### Evidence 153: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E70
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Create command to create the volume before the docker run command.
- Multi-concept tags: Storage, Configuration

### Evidence 154: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E71
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, if I run the docker run command to create a new instance of MySQL container with the volume data underscore volume two, which I have not created yet, Docker will automatically create a volume named data, underscore volume two and mount it to the container.
- Multi-concept tags: Storage, Configuration, CKA-CKAD

### Evidence 155: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E72
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: You should be able to see all these volumes if you list the contents of the var lib docker volumes folder.
- Multi-concept tags: Storage

### Evidence 156: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E73
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: This is called volume mounting as we are mounting a volume created by Docker under the var lib docker volumes folder.
- Multi-concept tags: Storage

### Evidence 157: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E74
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: But what if we had our data already at another location?
- Multi-concept tags: Storage

### Evidence 158: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E75
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, let's say we have some external storage on the docker host at forward slash data, and we would like to store database data on that volume and not in the default var lib docker volumes folder.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 159: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E76
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: In that case we would run a container using the command docker run dash v, but in this case we will provide the complete path to the folder we would like to mount that is forward slash data or slash MySQL.
- Multi-concept tags: Storage, Configuration

### Evidence 160: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E77
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: And so it will create a container and mount the folder to the container.
- Multi-concept tags: Storage

### Evidence 161: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E78
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: This is called bind mounting.
- Multi-concept tags: Storage

### Evidence 162: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E79
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: So there are two types of mounts a volume mounting and a bind mount.
- Multi-concept tags: Storage

### Evidence 163: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E80
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Volume mount mounts a volume from the volumes directory and bind mount mounts a directory from any location on the docker host.
- Multi-concept tags: Storage

### Evidence 164: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E81
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: One final point to note before I let you go using the dash V is an old style.
- Multi-concept tags: Storage

### Evidence 165: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E82
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: The new way is to use dash mount option.
- Multi-concept tags: Storage

### Evidence 166: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E83
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: The dash dash mount is the preferred way, as it is more verbose, so you have to specify each parameter in a key equals value format.
- Multi-concept tags: Storage

### Evidence 167: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E84
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, the previous command can be written with the dash mount option as this using the type, source and target options.
- Multi-concept tags: Storage, Configuration, CKA-CKAD

### Evidence 168: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E85
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: The type in this case is bind.
- Multi-concept tags: Storage

### Evidence 169: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E86
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: The source is the location on my host, and target is the location on my container.
- Multi-concept tags: Storage

### Evidence 170: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E87
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: So who is responsible for doing all of these operations?
- Multi-concept tags: Storage

### Evidence 171: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E88
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Maintaining the layered architecture, creating a writable layer, moving files across layers to enable copy and write, etc..
- Multi-concept tags: Storage, Architecture

### Evidence 172: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E89
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: It's the storage drivers.
- Multi-concept tags: Storage

### Evidence 173: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E90
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: So Docker uses storage drivers to enable layered architecture.
- Multi-concept tags: Storage, Architecture

### Evidence 174: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E91
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Some of the common storage drivers are UFS btrfs, DFS Device Mapper, Overlay and Overlay.
- Multi-concept tags: Storage

### Evidence 175: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E92
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Two.
- Multi-concept tags: Storage

### Evidence 176: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E93
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: The selection of the storage driver depends on the underlying OS being used.
- Multi-concept tags: Storage

### Evidence 177: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E94
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, with ubuntu, the default storage driver is UFS, whereas the storage driver is not available on other operating systems like fedora or CentOS.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 178: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E95
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: In that case, Device Mapper may be a better option.
- Multi-concept tags: Storage

### Evidence 179: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E96
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Docker will choose the best storage driver available automatically based on the operating system.
- Multi-concept tags: Storage

### Evidence 180: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E97
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: The different storage drivers also provide different performance and stability characteristics, so you may want to choose one that fits the needs of your application and your organization.
- Multi-concept tags: Storage

### Evidence 181: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E98
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: If you would like to read more on any of these storage drivers, please refer to the links in the attached documentation.
- Multi-concept tags: Storage

### Evidence 182: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E99
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: For now, that is all from the Docker architecture concepts.
- Multi-concept tags: Storage, Architecture

### Evidence 183: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E100
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: See you in the next lecture.
- Multi-concept tags: Storage

### Evidence 184: certified-kubernetes-administrator-with-practice-tests/08_Storage/191_Volume Driver Plugins in Docker.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 191_Volume Driver Plugins in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so in the previous lecture we discussed about storage drivers.
- Multi-concept tags: Storage

### Evidence 185: certified-kubernetes-administrator-with-practice-tests/08_Storage/191_Volume Driver Plugins in Docker.extraction.md::E2
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 191_Volume Driver Plugins in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Storage drivers help manage storage on images and containers.
- Multi-concept tags: Storage

### Evidence 186: certified-kubernetes-administrator-with-practice-tests/08_Storage/191_Volume Driver Plugins in Docker.extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 191_Volume Driver Plugins in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: We also briefly touched upon volumes in the previous lecture.
- Multi-concept tags: Storage

### Evidence 187: certified-kubernetes-administrator-with-practice-tests/08_Storage/191_Volume Driver Plugins in Docker.extraction.md::E4
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 191_Volume Driver Plugins in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: We learned that if you want to persist storage, you must create volumes.
- Multi-concept tags: Storage

### Evidence 188: certified-kubernetes-administrator-with-practice-tests/08_Storage/191_Volume Driver Plugins in Docker.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 191_Volume Driver Plugins in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Remember that volumes are not handled by storage drivers.
- Multi-concept tags: Storage

### Evidence 189: certified-kubernetes-administrator-with-practice-tests/08_Storage/191_Volume Driver Plugins in Docker.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 191_Volume Driver Plugins in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Volumes are handled by volume driver plugins.
- Multi-concept tags: Storage

### Evidence 190: certified-kubernetes-administrator-with-practice-tests/08_Storage/191_Volume Driver Plugins in Docker.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 191_Volume Driver Plugins in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: The default volume driver plugin is local.
- Multi-concept tags: Storage

### Evidence 191: certified-kubernetes-administrator-with-practice-tests/08_Storage/191_Volume Driver Plugins in Docker.extraction.md::E8
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 191_Volume Driver Plugins in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: The local volume plugin helps create a volume on the Docker host and store its data under the var lib docker volumes directory.
- Multi-concept tags: Storage

### Evidence 192: certified-kubernetes-administrator-with-practice-tests/08_Storage/191_Volume Driver Plugins in Docker.extraction.md::E9
- Type: Comparison
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 191_Volume Driver Plugins in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: There are many other volume driver plugins that allow you to create a volume on third party solutions like Azure File Storage, convoy, DigitalOcean, Block Storage Locker, Google Compute Persistent Disks, Glusterfs, NetApp X-ray Portworx, and VMware vSphere storage.
- Multi-concept tags: Storage, Cross-Cloud

### Evidence 193: certified-kubernetes-administrator-with-practice-tests/08_Storage/191_Volume Driver Plugins in Docker.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 191_Volume Driver Plugins in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: These are just a few of the many.
- Multi-concept tags: Storage

### Evidence 194: certified-kubernetes-administrator-with-practice-tests/08_Storage/191_Volume Driver Plugins in Docker.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 191_Volume Driver Plugins in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Some of these volume drivers support different storage providers.
- Multi-concept tags: Storage

### Evidence 195: certified-kubernetes-administrator-with-practice-tests/08_Storage/191_Volume Driver Plugins in Docker.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 191_Volume Driver Plugins in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: For instance, X-ray storage driver can be used to provision storage on AWS, EBS, S3, EMC storage arrays like Isilon and Scaleio, or Google Persistent Disk or OpenStack cinder.
- Multi-concept tags: Storage, Cross-Cloud

### Evidence 196: certified-kubernetes-administrator-with-practice-tests/08_Storage/191_Volume Driver Plugins in Docker.extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 191_Volume Driver Plugins in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: When you run a Docker container, you can choose to use a specific volume driver, such as the X-ray EBS, to provision a volume from Amazon EBS.
- Multi-concept tags: Storage

### Evidence 197: certified-kubernetes-administrator-with-practice-tests/08_Storage/191_Volume Driver Plugins in Docker.extraction.md::E14
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 191_Volume Driver Plugins in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: This will create a container and attach a volume from the AWS cloud.
- Multi-concept tags: Storage, Cross-Cloud

### Evidence 198: certified-kubernetes-administrator-with-practice-tests/08_Storage/191_Volume Driver Plugins in Docker.extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 191_Volume Driver Plugins in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: When the container exits, your data is saved in the cloud.
- Multi-concept tags: Storage

### Evidence 199: certified-kubernetes-administrator-with-practice-tests/08_Storage/191_Volume Driver Plugins in Docker.extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 191_Volume Driver Plugins in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: In the upcoming lectures, we will see more about volumes in Kubernetes.
- Multi-concept tags: Storage

### Evidence 200: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface.txt
- Line Context: Lines 1-1 from transcript
- Content: Let us now look at the container storage interface.
- Multi-concept tags: Storage

### Evidence 201: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E2
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface.txt
- Line Context: Lines 1-1 from transcript
- Content: In the past, Kubernetes used container D alone as the container runtime engine, and all the code to work with container D was embedded within the Kubernetes source code, with other container runtimes coming in, such as rocket and Cri-o.
- Multi-concept tags: Storage, On-Prem

### Evidence 202: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E3
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface.txt
- Line Context: Lines 1-1 from transcript
- Content: It was important to open up and extend support to work with different container runtimes, and not be dependent on the Kubernetes source code.
- Multi-concept tags: Storage

### Evidence 203: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E4
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface.txt
- Line Context: Lines 1-1 from transcript
- Content: And that's how Container Runtime Interface came to be.
- Multi-concept tags: Storage

### Evidence 204: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E5
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface.txt
- Line Context: Lines 1-1 from transcript
- Content: The container runtime interface is a standard that defines how an orchestration solution like Kubernetes would communicate with container runtimes like Docker.
- Multi-concept tags: Storage

### Evidence 205: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E6
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface.txt
- Line Context: Lines 1-1 from transcript
- Content: So in the future, if any new container runtime interface is developed, they can simply follow the CRI standards, and that new container runtime would work with Kubernetes without really having to work with Kubernetes team of developers, or touch the Kubernetes source code.
- Multi-concept tags: Storage, On-Prem

### Evidence 206: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface.txt
- Line Context: Lines 1-1 from transcript
- Content: Similarly, as we saw in the networking lectures to extend support for different networking solutions, the container networking interface was introduced now.
- Multi-concept tags: Networking, Storage

### Evidence 207: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface.txt
- Line Context: Lines 1-1 from transcript
- Content: Any new networking vendors could simply develop their plugin based on the CNI standards and make their solution work with Kubernetes.
- Multi-concept tags: Networking, Storage

### Evidence 208: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E9
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface.txt
- Line Context: Lines 1-1 from transcript
- Content: And as you can guess, the container storage interface was developed to support multiple storage solutions with CSI.
- Multi-concept tags: Storage

### Evidence 209: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface.txt
- Line Context: Lines 1-1 from transcript
- Content: You can now write your own drivers for your own storage to work with.
- Multi-concept tags: Storage

### Evidence 210: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface.txt
- Line Context: Lines 1-1 from transcript
- Content: Kubernetes.
- Multi-concept tags: Storage

### Evidence 211: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface.txt
- Line Context: Lines 1-1 from transcript
- Content: Portworx.
- Multi-concept tags: Storage

### Evidence 212: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface.txt
- Line Context: Lines 1-1 from transcript
- Content: Amazon EBS.
- Multi-concept tags: Storage

### Evidence 213: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface.txt
- Line Context: Lines 1-1 from transcript
- Content: Azure disk.
- Multi-concept tags: Storage, Cross-Cloud

### Evidence 214: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface.txt
- Line Context: Lines 1-1 from transcript
- Content: Dell EMC Isilon Powermax.
- Multi-concept tags: Storage

### Evidence 215: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface.txt
- Line Context: Lines 1-1 from transcript
- Content: Unity.
- Multi-concept tags: Storage

### Evidence 216: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface.txt
- Line Context: Lines 1-1 from transcript
- Content: Xtremio NetApp.
- Multi-concept tags: Storage

### Evidence 217: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface.txt
- Line Context: Lines 1-1 from transcript
- Content: Nutanix HPE Hitachi.
- Multi-concept tags: Storage

### Evidence 218: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface.txt
- Line Context: Lines 1-1 from transcript
- Content: Pure Storage.
- Multi-concept tags: Storage

### Evidence 219: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface.txt
- Line Context: Lines 1-1 from transcript
- Content: Everyone's got their own CSI drivers.
- Multi-concept tags: Storage

### Evidence 220: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E21
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface.txt
- Line Context: Lines 1-1 from transcript
- Content: Note that CSI is not a Kubernetes specific standard.
- Multi-concept tags: Storage

### Evidence 221: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface.txt
- Line Context: Lines 1-1 from transcript
- Content: It is meant to be a universal standard and if implemented, allows any container orchestration tool to work with any storage vendor with a supported plugin.
- Multi-concept tags: Storage

### Evidence 222: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface.txt
- Line Context: Lines 1-1 from transcript
- Content: Currently, Kubernetes, Cloud Foundry, and Mesos are on board with CSI.
- Multi-concept tags: Storage

### Evidence 223: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface.txt
- Line Context: Lines 1-1 from transcript
- Content: So here's what the CSI kind of looks like.
- Multi-concept tags: Storage

### Evidence 224: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface.txt
- Line Context: Lines 1-1 from transcript
- Content: It defines a set of rpcs, or remote procedure calls that will be called by the container orchestrator, and these must be implemented by the storage drivers.
- Multi-concept tags: Storage

### Evidence 225: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E26
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, CSI says that when a pod is created and requires a volume, the container orchestrator in this case Kubernetes should call the create volume RPC and pass a set of details such as the volume name.
- Multi-concept tags: Pods, Storage, CKA-CKAD

### Evidence 226: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E27
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface.txt
- Line Context: Lines 1-1 from transcript
- Content: The storage driver should implement this RPC and handle that request, and provision a new volume on the storage array and return the results of the operation.
- Multi-concept tags: Storage

### Evidence 227: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E28
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface.txt
- Line Context: Lines 1-1 from transcript
- Content: Similarly, container orchestrator should call the delete volume RPC when a volume is to be deleted, and the storage driver should implement the code to decommission the volume from the array when that call is made.
- Multi-concept tags: Storage

### Evidence 228: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E29
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface.txt
- Line Context: Lines 1-1 from transcript
- Content: And the specification details exactly what parameters should be sent by the caller, what should be received by the solution, and what error codes should be exchanged.
- Multi-concept tags: Storage, Troubleshooting

### Evidence 229: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface.txt
- Line Context: Lines 1-1 from transcript
- Content: If you're interested, you can view all these details in the CSI specification on GitHub at this URL.
- Multi-concept tags: Storage

### Evidence 230: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E31
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface.txt
- Line Context: Lines 1-1 from transcript
- Content: So that's about it for now.
- Multi-concept tags: Storage

### Evidence 231: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface.txt
- Line Context: Lines 1-1 from transcript
- Content: About container storage interface.
- Multi-concept tags: Storage

### Evidence 232: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E33
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface.txt
- Line Context: Lines 1-1 from transcript
- Content: I'll see you in the next lecture.
- Multi-concept tags: Storage

### Evidence 233: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: Before we head into persistent volumes, let us start with volumes in Kubernetes.
- Multi-concept tags: Storage

### Evidence 234: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E2
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: Let us look at volumes in Docker first.
- Multi-concept tags: Storage

### Evidence 235: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E3
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: Docker containers are meant to be transient in nature, which means they are meant to last only for a short period of time.
- Multi-concept tags: Storage

### Evidence 236: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: They are called upon when required to process data and destroyed once finished.
- Multi-concept tags: Storage

### Evidence 237: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: The same is true for the data within the container.
- Multi-concept tags: Storage

### Evidence 238: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: The data is destroyed along with the container.
- Multi-concept tags: Storage

### Evidence 239: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: To persist data processed by the containers, we attach a volume to the containers.
- Multi-concept tags: Storage

### Evidence 240: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E8
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: When they are created.
- Multi-concept tags: Storage

### Evidence 241: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: The data processed by the container is now placed in this volume, thereby retaining it permanently.
- Multi-concept tags: Storage

### Evidence 242: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: Even if the container is deleted, the data generated or processed by it remains.
- Multi-concept tags: Storage

### Evidence 243: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: So how does that work in the Kubernetes world?
- Multi-concept tags: Storage

### Evidence 244: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E12
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: Just as in Docker, the pods created in Kubernetes are transient in nature.
- Multi-concept tags: Pods, Storage

### Evidence 245: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E13
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: When a pod is created to process data and then deleted the data processed by it gets deleted as well.
- Multi-concept tags: Pods, Storage

### Evidence 246: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: For this, we attach a volume to the pod.
- Multi-concept tags: Pods, Storage

### Evidence 247: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: The data generated by the pod is now stored in the volume, and even after the pod is deleted, the data remains.
- Multi-concept tags: Pods, Storage

### Evidence 248: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's look at a simple implementation of volumes.
- Multi-concept tags: Storage

### Evidence 249: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: We have a single node Kubernetes cluster.
- Multi-concept tags: Storage, Architecture

### Evidence 250: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E18
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: We create a simple pod that generates a random number between 1 and 100, and writes that to a file at slash opt out.
- Multi-concept tags: Pods, Storage

### Evidence 251: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E19
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: It then gets deleted along with the random number.
- Multi-concept tags: Storage

### Evidence 252: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E20
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: To retain the number generated by the pod, we create a volume, and a volume needs a storage.
- Multi-concept tags: Pods, Storage

### Evidence 253: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E21
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: When you create a volume, you can choose to configure its storage in different ways.
- Multi-concept tags: Storage

### Evidence 254: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E22
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: We will look at the various options in a bit, but for now we will simply configure it to use a directory on the host.
- Multi-concept tags: Storage

### Evidence 255: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: In this case, I specify a path forward slash data on the host.
- Multi-concept tags: Storage

### Evidence 256: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E24
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: This way any files created in the volume would be stored in the directory data on my node.
- Multi-concept tags: Storage, Architecture

### Evidence 257: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E25
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: Once the volume is created to access it from a container, we mount the volume to a directory inside the container.
- Multi-concept tags: Storage

### Evidence 258: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: We use the volume mounts field in each container to mount the data volume to the directory.
- Multi-concept tags: Storage

### Evidence 259: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: Slash opt within the container.
- Multi-concept tags: Storage

### Evidence 260: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: The random number will now be written to opt mount inside the container, which happens to be on the data volume, which is in fact the data directory on the host.
- Multi-concept tags: Storage

### Evidence 261: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: When the pod gets deleted, the file with the random number still lives on the host.
- Multi-concept tags: Pods, Storage

### Evidence 262: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E30
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's take a step back and look at the volume storage options.
- Multi-concept tags: Storage

### Evidence 263: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E31
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: We just used the host path option to configure a directory on the host as storage space for the volume.
- Multi-concept tags: Storage

### Evidence 264: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: Now that works fine on a single node.
- Multi-concept tags: Storage, Architecture

### Evidence 265: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E33
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: However, it is not recommended for use in a multi node cluster.
- Multi-concept tags: Storage, Architecture

### Evidence 266: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: This is because the pods would use the slash data directory on all the nodes and expect all of them to be the same and have the same data.
- Multi-concept tags: Pods, Storage, Architecture

### Evidence 267: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E35
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: Since they are on different servers, they are in fact not the same.
- Multi-concept tags: Storage

### Evidence 268: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E36
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: Unless you configure some kind of external replicated cluster storage solution.
- Multi-concept tags: Storage, Architecture

### Evidence 269: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E37
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: Kubernetes supports several types of different storage solutions such as NFS cluster, NFS, Flocker, Fibre Channel, Cephfs, Scaleio, or public cloud solutions like AWS, EBS, Azure Disk or File or Google's Persistent Disk.
- Multi-concept tags: Storage, Architecture, Cross-Cloud

### Evidence 270: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E38
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, to configure an AWS Elastic Block Store volume as the storage option for the volume, we replace Hostpath field of the volume with the AWS Elastic Block Store field, along with the volume, ID and filesystem type.
- Multi-concept tags: Storage, CKA-CKAD, Cross-Cloud

### Evidence 271: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E39
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: The volume storage will now be on AWS EBS.
- Multi-concept tags: Storage, Cross-Cloud

### Evidence 272: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E40
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: Well, that's it about volumes in Kubernetes.
- Multi-concept tags: Storage

### Evidence 273: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: We will now head over to discuss persistent volumes.
- Multi-concept tags: Storage

### Evidence 274: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E42
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: Next.
- Multi-concept tags: Storage

### Evidence 275: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: In the last lecture, we learned about volumes.
- Multi-concept tags: Storage

### Evidence 276: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E2
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: Now we will discuss persistent volumes in Kubernetes.
- Multi-concept tags: Storage

### Evidence 277: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E3
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: When we created volumes in the previous section, we configured volumes within the pod definition file.
- Multi-concept tags: Pods, Storage

### Evidence 278: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E4
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: So every configuration information required to configure storage for the volume goes within the pod definition file.
- Multi-concept tags: Pods, Storage

### Evidence 279: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E5
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: Now when you have a large environment with a lot of users deploying a lot of pods, the users would have to configure storage every time.
- Multi-concept tags: Pods, Storage, Configuration

### Evidence 280: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E6
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: For each pod, whatever storage solution is used, the users who deploys the pods would have to configure that on all pod definition files in his environment.
- Multi-concept tags: Pods, Storage, Configuration

### Evidence 281: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: Every time a change is to be made, the user would have to make them on all of his pods.
- Multi-concept tags: Pods, Storage

### Evidence 282: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: Instead, you would like to manage storage more centrally.
- Multi-concept tags: Storage

### Evidence 283: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E9
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: You would like it to be configured in a way that an administrator can create a large pool of storage, and then have users carve out pieces from it as required.
- Multi-concept tags: Storage

### Evidence 284: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: That is where persistent volumes can help us.
- Multi-concept tags: Storage

### Evidence 285: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E11
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: A persistent volume is a cluster wide pool of storage volumes configured by an administrator, to be used by users deploying applications on the cluster.
- Multi-concept tags: Storage, Architecture

### Evidence 286: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: The users can now select storage from this pool using persistent volume claims.
- Multi-concept tags: Storage

### Evidence 287: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E13
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: Let us now create a persistent volume.
- Multi-concept tags: Storage

### Evidence 288: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: We start with the base template and update the API version.
- Multi-concept tags: Storage

### Evidence 289: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: Set the kind to persistent volume and name it PV Vol one.
- Multi-concept tags: Storage

### Evidence 290: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: Under the specs section, specify the access modes.
- Multi-concept tags: Storage

### Evidence 291: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E17
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: Access mode defines how a volume should be mounted on the hosts, whether in a read only mode or read write mode, etc. the supported values are read only.
- Multi-concept tags: Storage

### Evidence 292: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: Many read write once or read write.
- Multi-concept tags: Storage

### Evidence 293: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: Mini mode.
- Multi-concept tags: Storage

### Evidence 294: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E20
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: Next is the capacity.
- Multi-concept tags: Storage

### Evidence 295: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E21
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: Specify the amount of storage to be reserved for this persistent volume, which is set to one GB here.
- Multi-concept tags: Storage

### Evidence 296: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E22
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: Next comes the volume type.
- Multi-concept tags: Storage

### Evidence 297: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: We will start with the host path option that uses storage from the node's local directory.
- Multi-concept tags: Storage, Architecture

### Evidence 298: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: Remember, this option is not to be used in a production environment.
- Multi-concept tags: Storage, Configuration

### Evidence 299: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E25
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: To create the volume, run kube control, create command and to list the created volume from the kube control.
- Multi-concept tags: Storage, Configuration

### Evidence 300: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: Get persistent volume command.
- Multi-concept tags: Storage, Configuration

### Evidence 301: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: Replace the host path option with one of the supported storage solutions.
- Multi-concept tags: Storage

### Evidence 302: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: As we saw in the previous lecture, like AWS Elastic Block Store, etc..
- Multi-concept tags: Storage, Cross-Cloud

### Evidence 303: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: Well, that's it on persistent volumes in this lecture.
- Multi-concept tags: Storage

### Evidence 304: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E30
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: In the next lecture, we will look at how we use persistent volume claims to claim the volume configured with persistent volumes.
- Multi-concept tags: Storage

### Evidence 305: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E1
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: In the previous lecture, we created a persistent volume.
- Multi-concept tags: Storage

### Evidence 306: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E2
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Now we will try to create a persistent volume claim to make storage available to a pod.
- Multi-concept tags: Pods, Storage

### Evidence 307: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Persistent volumes and persistent volume claims are two separate objects in the Kubernetes namespace.
- Multi-concept tags: Storage

### Evidence 308: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E4
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: An administrator creates a set of persistent volumes, and a user creates persistent volume claims to use the storage.
- Multi-concept tags: Storage

### Evidence 309: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E5
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Once the persistent volume claims are created, Kubernetes binds the persistent volumes to claims based on the request and properties set on the volume.
- Multi-concept tags: Storage

### Evidence 310: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Every persistent volume claim is bound to a single persistent volume.
- Multi-concept tags: Storage

### Evidence 311: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: During the binding process, Kubernetes tries to find a persistent volume that has sufficient capacity as requested by the claim and any other request.
- Multi-concept tags: Storage

### Evidence 312: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Properties such as access modes, volume modes, storage class, etc.
- Multi-concept tags: Storage

### Evidence 313: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E9
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: However, if there are multiple possible matches for a single claim and you would like to specifically use a particular volume, you could still use labels and selectors to bind to the right volumes.
- Multi-concept tags: Storage, Scheduling

### Evidence 314: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Finally, note that a smaller claim may get bound to a larger volume if all the other criteria matches and there are no better options.
- Multi-concept tags: Storage, On-Prem

### Evidence 315: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: There is a 1 to 1 relationship between claims and volumes, so no other claims can utilize the remaining capacity in the volume.
- Multi-concept tags: Storage

### Evidence 316: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: If there are no volumes available, the persistent volume claim will remain in a pending state until newer volumes are made available to the cluster.
- Multi-concept tags: Storage, Architecture, Troubleshooting

### Evidence 317: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Once newer volumes are available.
- Multi-concept tags: Storage

### Evidence 318: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: The claim would automatically be bound to the newly available volume.
- Multi-concept tags: Storage

### Evidence 319: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E15
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Let us now create a persistent volume claim.
- Multi-concept tags: Storage

### Evidence 320: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: We start with a blank template.
- Multi-concept tags: Storage

### Evidence 321: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Set the API version to v1 and kind to persistent volume claim.
- Multi-concept tags: Storage

### Evidence 322: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: We will name it my claim.
- Multi-concept tags: Storage

### Evidence 323: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Under specification, set the access modes to read.
- Multi-concept tags: Storage

### Evidence 324: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Write once and set resources to request the storage of 500MB.
- Multi-concept tags: Storage

### Evidence 325: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E21
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Create the claim using cube control.
- Multi-concept tags: Storage

### Evidence 326: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E22
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Create command to view the created claim.
- Multi-concept tags: Storage, Configuration

### Evidence 327: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Run the cube control.
- Multi-concept tags: Storage

### Evidence 328: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Get persistent volume claim command.
- Multi-concept tags: Storage, Configuration

### Evidence 329: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: We see the claim in a pending state.
- Multi-concept tags: Storage, Troubleshooting

### Evidence 330: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E26
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: When the claim is created, Kubernetes looks at the volume created.
- Multi-concept tags: Storage

### Evidence 331: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Previously.
- Multi-concept tags: Storage

### Evidence 332: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: The access modes match.
- Multi-concept tags: Storage

### Evidence 333: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E29
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: The capacity requested is 500MB, but the volume is configured with one GB of storage.
- Multi-concept tags: Storage

### Evidence 334: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Since there are no other volumes available, the persistent volume claim is bound to the persistent volume.
- Multi-concept tags: Storage

### Evidence 335: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E31
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: When we run the Get volumes command again, we see the claim is bound to the persistent volume we created.
- Multi-concept tags: Storage, Configuration

### Evidence 336: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Perfect.
- Multi-concept tags: Storage

### Evidence 337: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E33
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: To delete a PVC we run the kubectl delete persistent volume claim command.
- Multi-concept tags: Storage, Configuration

### Evidence 338: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: But what happens to the underlying persistent volume when the claim is deleted?
- Multi-concept tags: Storage

### Evidence 339: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E35
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: You can choose what is to happen to the volume.
- Multi-concept tags: Storage

### Evidence 340: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E36
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: By default, it is set to retain meaning the persistent volume will remain until it is manually deleted by the administrator.
- Multi-concept tags: Storage

### Evidence 341: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E37
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: It is not available for reuse by any other claims.
- Multi-concept tags: Storage

### Evidence 342: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E38
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Or it can be deleted automatically this way, as soon as the claim is deleted, the volume will be deleted as well, or a third option is to recycle.
- Multi-concept tags: Storage

### Evidence 343: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E39
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: In this case, the data in the volume will be scrubbed before making it available to other claims.
- Multi-concept tags: Storage

### Evidence 344: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E40
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: However, note that this is an older option and is deprecated now because the Recycle controller originally did a best effort wipe by launching a tiny recycler pod that mounted the volume and ran a shell command like rm rf Scrub star to clear files.
- Multi-concept tags: Pods, Storage, Configuration

### Evidence 345: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: It basically tried to do the admins manual cleanup for you with a simple file level delete.
- Multi-concept tags: Storage

### Evidence 346: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E42
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: But this isn't sufficient in practice.
- Multi-concept tags: Storage

### Evidence 347: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E43
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: It didn't guarantee secure erasure, didn't handle snapshots, or provide provider metadata, and only worked for certain entry volume plugins on cloud or block backends like EBS, Google Cloud, Azure Disk, or network storage like NFS or Sis drivers.
- Multi-concept tags: Networking, Storage, Cross-Cloud

### Evidence 348: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E44
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Proper cleanup can involve unmount, detach, file system, reformat, snapshot, retain policy handling, encryption, key rotation, or provider level delete calls.
- Multi-concept tags: Storage, Platform Engineering

### Evidence 349: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E45
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: A plain rm rf leaves a inode metadata and may fail under permissions.
- Multi-concept tags: Storage, Architecture, Troubleshooting

### Evidence 350: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E46
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Because of these portability and security gaps, Kubernetes moved to a newer model.
- Multi-concept tags: Storage, Security-RBAC

### Evidence 351: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E47
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: The modern approach is dynamic provisioning with a storage class and CSI drivers, which we will discuss next.
- Multi-concept tags: Storage

### Evidence 352: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E48
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Well, that's it for this lecture.
- Multi-concept tags: Storage

### Evidence 353: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E49
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Head over to the labs and practice configuring and troubleshooting persistent volumes and volume claims in Kubernetes.
- Multi-concept tags: Storage, Troubleshooting

### Evidence 354: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: -: Okay, so let's go through the lab on persistent volumes and persistent volume claims.
- Multi-concept tags: Storage

### Evidence 355: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E2
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So we have deployed a pod inspect the pod and wait for it to start running.
- Multi-concept tags: Pods, Storage

### Evidence 356: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's do that.
- Multi-concept tags: Storage

### Evidence 357: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: We have the web app pod and it's in running state.
- Multi-concept tags: Pods, Storage

### Evidence 358: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: The application stores logs at location log app dot log slash log slash app dot log.
- Multi-concept tags: Storage

### Evidence 359: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So view the logs.
- Multi-concept tags: Storage

### Evidence 360: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E7
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So for this we can do ... so in order to view a file within the pod, we'll do a cubicle exec and... provide the pod name and then the command.
- Multi-concept tags: Pods, Storage, Configuration

### Evidence 361: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So cat log app dot log.
- Multi-concept tags: Storage

### Evidence 362: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so we're able to view the logs and we see that it's it some of the events that are logged by the application.
- Multi-concept tags: Storage, Observability

### Evidence 363: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Now if the pod was to get deleted now would you be able to view the logs?
- Multi-concept tags: Pods, Storage

### Evidence 364: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's check out where those logs are.
- Multi-concept tags: Storage

### Evidence 365: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E12
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So should I describe pod web app?
- Multi-concept tags: Pods, Storage, On-Prem

### Evidence 366: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E13
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: And... so there are no other volumes configured.
- Multi-concept tags: Storage

### Evidence 367: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So you have the Q A P I access which is the default volume, but there are no other volumes.
- Multi-concept tags: Storage

### Evidence 368: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So anything that's stored in the log app dot log is stored within the container within the pod.
- Multi-concept tags: Pods, Storage

### Evidence 369: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So if the pod gets deleted the logs get deleted as well, right?
- Multi-concept tags: Pods, Storage

### Evidence 370: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E17
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So we're able to view the logs, now we're not going to be able to view the logs now configure a volume to store these logs at this path on the host.
- Multi-concept tags: Storage

### Evidence 371: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So currently all the logs are stored at slash logs slash app dot log within the pod or within the container.
- Multi-concept tags: Pods, Storage

### Evidence 372: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Now we would like to store those.
- Multi-concept tags: Storage

### Evidence 373: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: We, we'd like to use a volume to store those logs at wire log web app.
- Multi-concept tags: Storage

### Evidence 374: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E21
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So that's wire log web app.... on the host.
- Multi-concept tags: Storage

### Evidence 375: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So currently there's nothing here.
- Multi-concept tags: Storage

### Evidence 376: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's, let's try and set up a volumes.
- Multi-concept tags: Storage

### Evidence 377: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so we're going to edit the pod.
- Multi-concept tags: Pods, Storage

### Evidence 378: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So we'll do a cubicle edit pod, web app.
- Multi-concept tags: Pods, Storage

### Evidence 379: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: And there are, there's a lot of information.
- Multi-concept tags: Storage

### Evidence 380: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E27
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So here we have the volume amount which is the default volume amount for accessing the the Cube API server.
- Multi-concept tags: Storage, Architecture

### Evidence 381: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: And below we have the volumes which is again the default volume used for that.
- Multi-concept tags: Storage

### Evidence 382: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So we're just gonna add our own volume here.
- Multi-concept tags: Storage

### Evidence 383: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So ... we'll add... we'll call the name we'll call the volume log volume because we're gonna use this to store the logs.
- Multi-concept tags: Storage

### Evidence 384: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E31
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: And this is going to be a host path.
- Multi-concept tags: Storage

### Evidence 385: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: And... the path is going to be... whatever path is given here to wire log app.
- Multi-concept tags: Storage

### Evidence 386: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E33
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Wire log app, Okay, so we have the volume.
- Multi-concept tags: Storage

### Evidence 387: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E34
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So basically what's happening, what's gonna happen is when this pod is recreated is going to mount this directory and we have to specify where it's gonna be mounted to.
- Multi-concept tags: Pods, Storage

### Evidence 388: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E35
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: It's gonna create a volume out of that directory.
- Multi-concept tags: Storage

### Evidence 389: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E36
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: And then we have to specify where it's going to mount it is we're gonna add a volume mount and we'll call... the mount path as it is above.
- Multi-concept tags: Storage

### Evidence 390: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E37
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: And that would be a log.
- Multi-concept tags: Storage

### Evidence 391: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E38
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: And then we will have a name... for the volume.
- Multi-concept tags: Storage

### Evidence 392: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E39
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: And the name of the volume is log volume.
- Multi-concept tags: Storage

### Evidence 393: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E40
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay?
- Multi-concept tags: Storage

### Evidence 394: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E41
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So what's gonna happen is when the part is recreated it's going to create a volume.
- Multi-concept tags: Storage

### Evidence 395: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E42
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Which will store all data in this path on the host, and it will be called this log volume.
- Multi-concept tags: Storage

### Evidence 396: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E43
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: And then we can mount this volume within any container on this pod.
- Multi-concept tags: Pods, Storage

### Evidence 397: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E44
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So here there's only one container.
- Multi-concept tags: Storage

### Evidence 398: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E45
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So under volume mounts we have the mount path we're gonna specify the name of the volume and it's gonna mount that here.
- Multi-concept tags: Storage

### Evidence 399: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E46
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So basically this is going to be mount to this path within the container.
- Multi-concept tags: Storage

### Evidence 400: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E47
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay?
- Multi-concept tags: Storage

### Evidence 401: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E48
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So... let's try and save that it's a pod, it's not gonna allow us to save that.
- Multi-concept tags: Pods, Storage

### Evidence 402: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E49
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna do a cubicle... replace force, Okay.
- Multi-concept tags: Storage

### Evidence 403: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E50
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Support is now recreated.
- Multi-concept tags: Storage

### Evidence 404: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E51
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So now let's check the path at wire log app, okay?
- Multi-concept tags: Storage

### Evidence 405: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E52
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: And we can see that the file the storage logs called app dot log is in this path.
- Multi-concept tags: Storage

### Evidence 406: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E53
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: We're gonna do app dot log.
- Multi-concept tags: Storage

### Evidence 407: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E54
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: See the logs of the pod are indeed here.
- Multi-concept tags: Pods, Storage

### Evidence 408: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E55
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So the, so the logs of the pod are now available on the host at this particular path that indicates that that's working.
- Multi-concept tags: Pods, Storage

### Evidence 409: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E56
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay?
- Multi-concept tags: Storage

### Evidence 410: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E57
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So the next task is to create a persistent volume with the given specification.
- Multi-concept tags: Storage

### Evidence 411: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E58
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's go to the coordinated documentation pages and find persistent ... volume and go to persistent volumes.
- Multi-concept tags: Storage

### Evidence 412: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E59
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: And... so here we have a template for a pod, persistent volume claim, Persistent volume but this doesn't have enough information.
- Multi-concept tags: Pods, Storage

### Evidence 413: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E60
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So I'm just gonna keep looking.
- Multi-concept tags: Storage

### Evidence 414: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E61
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so this is a persistent volume.
- Multi-concept tags: Storage

### Evidence 415: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E62
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So I'm going to ... get copy this much and I'm gonna create a file called PV dot... yamo for persistent volume.
- Multi-concept tags: Storage

### Evidence 416: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E63
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay?
- Multi-concept tags: Storage

### Evidence 417: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E64
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Then here we have PPV dash log that's the persistent volume name.
- Multi-concept tags: Storage

### Evidence 418: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E65
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Then we have storage.
- Multi-concept tags: Storage

### Evidence 419: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E66
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So there's hundred maybe bytes.
- Multi-concept tags: Storage

### Evidence 420: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E67
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: And then we have volume modes.
- Multi-concept tags: Storage

### Evidence 421: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E68
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: We don't need volume mode, we have access mode.
- Multi-concept tags: Storage

### Evidence 422: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E69
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: The access mode is read, write many and the persistent volume reclaim policy going to be... retained.
- Multi-concept tags: Storage, Platform Engineering

### Evidence 423: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E70
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay?
- Multi-concept tags: Storage

### Evidence 424: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E71
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: And then... the type is going to be host path.
- Multi-concept tags: Storage

### Evidence 425: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E72
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna host path and then... specify the path and that's going to be... slash PV slash log.
- Multi-concept tags: Storage

### Evidence 426: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E73
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So that's the path.
- Multi-concept tags: Storage

### Evidence 427: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E74
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so let's create the file.
- Multi-concept tags: Storage

### Evidence 428: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E75
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so let's create it, let's check it out.
- Multi-concept tags: Storage

### Evidence 429: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E76
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: We have the PV law kind.
- Multi-concept tags: Storage

### Evidence 430: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E77
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: My capacity rewrite many.
- Multi-concept tags: Storage

### Evidence 431: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E78
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So this indicates rewrite many.
- Multi-concept tags: Storage

### Evidence 432: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E79
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: And the reclaim policy is retained.
- Multi-concept tags: Storage, Platform Engineering

### Evidence 433: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E80
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's check our work.
- Multi-concept tags: Storage

### Evidence 434: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E81
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay?
- Multi-concept tags: Storage

### Evidence 435: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E82
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Now let us claim some of that storage for our application.
- Multi-concept tags: Storage

### Evidence 436: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E83
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So create a persistent volume claim with a given specification.
- Multi-concept tags: Storage

### Evidence 437: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E84
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's find a persistent ... volume claim template.
- Multi-concept tags: Storage

### Evidence 438: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E85
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So we had one... here.
- Multi-concept tags: Storage

### Evidence 439: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E86
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Yeah, so right here you have persistent volume claims and we'll use this template.
- Multi-concept tags: Storage

### Evidence 440: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E87
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So we don't need the advanced selectors.
- Multi-concept tags: Storage, Scheduling

### Evidence 441: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E88
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Our use case is simple.
- Multi-concept tags: Storage

### Evidence 442: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E89
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So we are just going to copy this much.
- Multi-concept tags: Storage

### Evidence 443: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E90
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's do a PVC dot yamo person volume claim.
- Multi-concept tags: Storage

### Evidence 444: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E91
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: The name is going to be claim dash log dash one and access mode is going to be read write once.
- Multi-concept tags: Storage

### Evidence 445: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E92
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: We don't have, we don't need a volume mode and the storage is gonna be 50 mi.
- Multi-concept tags: Storage

### Evidence 446: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E93
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, now we're gonna do a create minus f, ac let's check out the status.
- Multi-concept tags: Storage

### Evidence 447: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E94
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so that's created.
- Multi-concept tags: Storage

### Evidence 448: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E95
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So go next.
- Multi-concept tags: Storage

### Evidence 449: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E96
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So what is the state of the precision volume claim?
- Multi-concept tags: Storage

### Evidence 450: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E97
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So if you look at the state, it is in a pending state.
- Multi-concept tags: Storage, Troubleshooting

### Evidence 451: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E98
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So that's that.
- Multi-concept tags: Storage

### Evidence 452: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E99
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Now what is the state of the persistent volume?
- Multi-concept tags: Storage

### Evidence 453: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E100
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: The state of the persistent volume, it is... available.
- Multi-concept tags: Storage

### Evidence 454: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E101
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's check, try it now again.
- Multi-concept tags: Storage

### Evidence 455: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E102
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So it's, it's in an available state.
- Multi-concept tags: Storage

### Evidence 456: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E103
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So why is the claim not bound to the available persistent volume?
- Multi-concept tags: Storage

### Evidence 457: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E104
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So we have a persistent volume, which is which has a hundred megabytes of capacity.
- Multi-concept tags: Storage

### Evidence 458: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E105
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: And then we have the PVC, which requested about 50 but it's still in a pending state.
- Multi-concept tags: Storage, Troubleshooting

### Evidence 459: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E106
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So why is that?
- Multi-concept tags: Storage

### Evidence 460: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E107
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So if you look at it it's not a capacity mismatch because we know that if when you create a persistent volume claim if there's a volume that has higher capacity it is gonna bind that volume to that precision volume claim.
- Multi-concept tags: Storage

### Evidence 461: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E108
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So that's not the case here.
- Multi-concept tags: Storage

### Evidence 462: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E109
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: We have the reclaim policy set.
- Multi-concept tags: Storage, Platform Engineering

### Evidence 463: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E110
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: The name of these policy is the PV and PVC does not really matter.
- Multi-concept tags: Storage, Platform Engineering

### Evidence 464: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E111
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: The only other thing that it looks at is the access mode, right?
- Multi-concept tags: Storage

### Evidence 465: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E112
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So if you look at the PV that we created it had an access mode of rewrite many, and if you look at the PV PVC, it had rewrite, it has rewrite once.
- Multi-concept tags: Storage

### Evidence 466: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E113
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So we're going to, now that's the reason.
- Multi-concept tags: Storage

### Evidence 467: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E114
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So access mode mismatch is the reason.
- Multi-concept tags: Storage

### Evidence 468: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E115
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Now the next question is update the access mode on the claim to bind it to the PV.
- Multi-concept tags: Storage

### Evidence 469: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E116
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So we're going to, lets do an update on the, on the claim.
- Multi-concept tags: Storage

### Evidence 470: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E117
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So we wanna change it to, so we wanna change the access mode on the PVC to rewrite many, which is on the, on the PV.
- Multi-concept tags: Storage

### Evidence 471: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E118
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So that's what is requested here.
- Multi-concept tags: Storage

### Evidence 472: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E119
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so now we're going to do a replace force dash F ...
- Multi-concept tags: Storage

### Evidence 473: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E120
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: PVC.
- Multi-concept tags: Storage

### Evidence 474: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E121
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, now you, you requested for 50 megabytes how much capacity is now available to the PVC?
- Multi-concept tags: Storage

### Evidence 475: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E122
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's look at that.
- Multi-concept tags: Storage

### Evidence 476: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E123
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's do cubicle, get PV Cubicle... get PVC.
- Multi-concept tags: Storage

### Evidence 477: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E124
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Now if you look at the PVC the capacity that it has is a hundred, a hundred megabytes.
- Multi-concept tags: Storage

### Evidence 478: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E125
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Now update the web app part to use the persistent volume claim as its storage.
- Multi-concept tags: Storage

### Evidence 479: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E126
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So what we are gonna do now is we're gonna replace host path with the persistent volume claim to use the persistent volume claim.
- Multi-concept tags: Storage

### Evidence 480: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E127
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay?
- Multi-concept tags: Storage

### Evidence 481: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E128
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So but before that we've created the PV to store the logs to use the host path at PV slash log.
- Multi-concept tags: Storage

### Evidence 482: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E129
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So right now there is nothing in there.
- Multi-concept tags: Storage

### Evidence 483: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E130
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's go ahead and edit the pod web app.
- Multi-concept tags: Pods, Storage

### Evidence 484: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E131
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: And what we're gonna do is, so this is, okay the mount path, we're gonna leave it as is.
- Multi-concept tags: Storage

### Evidence 485: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E132
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: We're gonna go down and we're gonna change this... from host pad... to persistent.
- Multi-concept tags: Storage

### Evidence 486: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E133
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's see what that is.
- Multi-concept tags: Storage

### Evidence 487: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E134
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So if you look here, should be able to see how to use a persistent volume in a pod.
- Multi-concept tags: Pods, Storage

### Evidence 488: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E135
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So you have claim as volumes.
- Multi-concept tags: Storage

### Evidence 489: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E136
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So within volumes you have you use persistent volume claims.
- Multi-concept tags: Storage

### Evidence 490: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E137
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: That's what we're looking for, okay?
- Multi-concept tags: Storage

### Evidence 491: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E138
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: And we have claim name, so we don't need these lines.
- Multi-concept tags: Storage

### Evidence 492: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E139
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: And then the claim name is going to be claim log one.
- Multi-concept tags: Storage

### Evidence 493: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E140
- Type: Comparison
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So you have versus volume claim, Claim name and ... log one.
- Multi-concept tags: Storage

### Evidence 494: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E141
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: That should be it.
- Multi-concept tags: Storage

### Evidence 495: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E142
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's replace the file.
- Multi-concept tags: Storage

### Evidence 496: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E143
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's replace the pod forcefully.
- Multi-concept tags: Pods, Storage

### Evidence 497: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E144
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so that is done.
- Multi-concept tags: Storage

### Evidence 498: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E145
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's check our work.
- Multi-concept tags: Storage

### Evidence 499: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E146
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: All right, so now let's see if you look at slash PV slash log, you see the logs there and you look at log app dot log can see the logs of the application there.
- Multi-concept tags: Storage

### Evidence 500: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E147
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So now the PV is using a host path as ... um... the location for storing data.
- Multi-concept tags: Storage

### Evidence 501: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E148
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: But then the PV is then claimed by the PVC and then the PVC is configured as a volume for the pod.
- Multi-concept tags: Pods, Storage

### Evidence 502: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E149
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: And then that's how it is mounted to to the pod.
- Multi-concept tags: Pods, Storage

### Evidence 503: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E150
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So that's, that's how this is working right now.
- Multi-concept tags: Storage

### Evidence 504: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E151
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so the next question is what is the reclaim policy set on the persistent volume PV dash log?
- Multi-concept tags: Storage, Platform Engineering

### Evidence 505: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E152
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's see, you got, will get PV PV dash log and we can see that it is retained.
- Multi-concept tags: Storage

### Evidence 506: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E153
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So retain is the answer.
- Multi-concept tags: Storage

### Evidence 507: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E154
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Now what would happen to the PV if the PVC was destroyed?
- Multi-concept tags: Storage

### Evidence 508: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E155
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So we know that with the reclaim policy set to retain, the PV is going to be... retained.
- Multi-concept tags: Storage, Platform Engineering

### Evidence 509: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E156
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So it's not going to be deleted along with the PVC.
- Multi-concept tags: Storage

### Evidence 510: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E157
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So the PV is deleted as well.
- Multi-concept tags: Storage

### Evidence 511: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E158
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Now the PV is made available again now it's not made available.
- Multi-concept tags: Storage

### Evidence 512: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E159
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Again, that would be recycling the PV scrub.
- Multi-concept tags: Storage

### Evidence 513: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E160
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Now the PV is not deleted but not available.
- Multi-concept tags: Storage

### Evidence 514: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E161
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So it's not deleted, but it's not available either.
- Multi-concept tags: Storage

### Evidence 515: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E162
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So that's the status.
- Multi-concept tags: Storage

### Evidence 516: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E163
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Now try deleting the PVC and notice what happens.
- Multi-concept tags: Storage

### Evidence 517: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E164
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's do that.
- Multi-concept tags: Storage

### Evidence 518: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E165
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Get PVC, delete PVC claim log one.
- Multi-concept tags: Storage

### Evidence 519: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E166
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's wait for that to be deleted.
- Multi-concept tags: Storage

### Evidence 520: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E167
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so it's not going to get deleted because it's actually going to be stockless.
- Multi-concept tags: Storage

### Evidence 521: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E168
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's look at the status in a new terminal.
- Multi-concept tags: Storage

### Evidence 522: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E169
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's do a go get PVC and we see that it's in a terminating state so it's stuck in a terminating state.
- Multi-concept tags: Storage

### Evidence 523: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E170
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's do a describe and ... yeah, so you see it's stuck in a terminating state for the last 30 seconds or so.
- Multi-concept tags: Storage, On-Prem

### Evidence 524: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E171
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So why is the PVC stuck in a terminating state?
- Multi-concept tags: Storage

### Evidence 525: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E172
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So that's obviously because it is associated as a volume with a pod.
- Multi-concept tags: Pods, Storage

### Evidence 526: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E173
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So it is being used by a pod.
- Multi-concept tags: Pods, Storage

### Evidence 527: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E174
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: That's the reason it's, it's stuck in a terminating state.
- Multi-concept tags: Storage

### Evidence 528: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E175
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Now let's now delete the web app pod and let's go ahead and do that.
- Multi-concept tags: Pods, Storage

### Evidence 529: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E176
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Do that.
- Multi-concept tags: Storage

### Evidence 530: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E177
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's delete pod, web app and let's see what happens.
- Multi-concept tags: Pods, Storage

### Evidence 531: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E178
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so that was deleted and we see we're now unstuck and the PV was deleted as well.
- Multi-concept tags: Storage

### Evidence 532: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E179
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Check that out.
- Multi-concept tags: Storage

### Evidence 533: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E180
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Yep.
- Multi-concept tags: Storage

### Evidence 534: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E181
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So the pod was deleted and the PV was PVC was deleted as well.
- Multi-concept tags: Pods, Storage

### Evidence 535: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E182
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: So what is the state of the PVC now?
- Multi-concept tags: Storage

### Evidence 536: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E183
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: It is deleted.
- Multi-concept tags: Storage

### Evidence 537: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E184
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: And what is state of the PV now let's try that.
- Multi-concept tags: Storage

### Evidence 538: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E185
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: We see that it is in a released state.
- Multi-concept tags: Storage

### Evidence 539: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E186
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, So yeah, that's the end of this lab.
- Multi-concept tags: Storage

### Evidence 540: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: In this lecture we will look at storage classes.
- Multi-concept tags: Storage

### Evidence 541: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E2
- Type: Comparison
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: In the previous lectures, we discussed about how to create PVS and then create PVCs to claim that storage and then use the PVCs in the Pod definition files as volumes.
- Multi-concept tags: Pods, Storage

### Evidence 542: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E3
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: In this case, we create a PV from a Google Cloud Persistent disk.
- Multi-concept tags: Storage, Cross-Cloud

### Evidence 543: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E4
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: The problem here is that before this PV is created, you must have created the disk on Google Cloud.
- Multi-concept tags: Storage, Cross-Cloud

### Evidence 544: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E5
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: Every time an application requires storage, you have to first manually provision the disk on Google Cloud and then manually create a persistent volume definition file using the same name as that of the disk that you created.
- Multi-concept tags: Storage, Cross-Cloud

### Evidence 545: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: That's called static provisioning volumes.
- Multi-concept tags: Storage

### Evidence 546: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: It would have been nice if the volume gets provisioned automatically when the application requires it.
- Multi-concept tags: Storage

### Evidence 547: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: And that's where storage classes come in.
- Multi-concept tags: Storage

### Evidence 548: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: With storage classes, you can define a provisioner, such as Google Storage, that can automatically provision storage on Google Cloud and attach that to pods when a claim is made.
- Multi-concept tags: Pods, Storage, Cross-Cloud

### Evidence 549: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: That's called dynamic provisioning of volumes.
- Multi-concept tags: Storage

### Evidence 550: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: You do that by creating a storage class object with the API version set to storage.
- Multi-concept tags: Storage

### Evidence 551: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: IO v1.
- Multi-concept tags: Storage

### Evidence 552: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: Specify a name and use provisioner as Kubernetes.io slash GCE.
- Multi-concept tags: Storage

### Evidence 553: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So going back to our original state where we have a pod using a PVC for storage and the PVC is bound to a PV, we now have a storage class.
- Multi-concept tags: Pods, Storage

### Evidence 554: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E15
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So we no longer need the PVC definition because the PV and any associated storage is going to be created automatically when the storage class is created for the PVC to use the storage class we defined, we specify the storage class name in the PVC definition.
- Multi-concept tags: Storage

### Evidence 555: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: That's how the PVC knows which storage class to use.
- Multi-concept tags: Storage

### Evidence 556: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E17
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: Next time a PVC is created, the storage class associated with it uses the defined provisioner to provision a new disk with the required size on GCP, and then creates a persistent volume and then binds the PVC to that volume.
- Multi-concept tags: Storage

### Evidence 557: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E18
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So remember that it still creates a PVC.
- Multi-concept tags: Storage

### Evidence 558: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E19
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: It's just that you don't have to manually create PVC anymore.
- Multi-concept tags: Storage

### Evidence 559: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E20
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: It's created automatically by the storage class.
- Multi-concept tags: Storage

### Evidence 560: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E21
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: We used the GCE provisioner to create a volume on GCP.
- Multi-concept tags: Storage

### Evidence 561: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: There are many other provisioners as well, such as for AWS, EBS, Azure File, Azure Disk, CIFs, Portworx, Scaleio, and so on.
- Multi-concept tags: Storage, Cross-Cloud

### Evidence 562: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: With each of these provisioners, you can pass in additional parameters such as the type of disk to provision the replication type, etc. these parameters are very specific to the provisioner that you're using for Google Persistent Disk.
- Multi-concept tags: Storage

### Evidence 563: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: You can specify the type which could be standard or SSD.
- Multi-concept tags: Storage

### Evidence 564: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: You can specify the replication mode which could be none or regional PD.
- Multi-concept tags: Storage

### Evidence 565: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E26
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So you see you can create different storage classes, each using different types of disks.
- Multi-concept tags: Storage

### Evidence 566: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E27
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, a silver storage class with the standard disks, a gold class with SSD drives, and a platinum class with SSD drives and replication.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 567: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: And that's why it's called storage class.
- Multi-concept tags: Storage

### Evidence 568: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E29
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: You can create different classes of service next time you create a PVC.
- Multi-concept tags: Services, Storage

### Evidence 569: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: You can simply specify the class of storage you need for your volumes.
- Multi-concept tags: Storage

### Evidence 570: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: -: Let us now review the lab on storage class.
- Multi-concept tags: Storage

### Evidence 571: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E2
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So the first question is how many storage classes exist in the cluster?
- Multi-concept tags: Storage, Architecture

### Evidence 572: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's do a queue code to get storage class.
- Multi-concept tags: Storage

### Evidence 573: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So we see one, we can also do a SC to the storage classes.
- Multi-concept tags: Storage

### Evidence 574: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So that's the short form.
- Multi-concept tags: Storage

### Evidence 575: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: We see that there's just one storage class.
- Multi-concept tags: Storage

### Evidence 576: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's select one.
- Multi-concept tags: Storage

### Evidence 577: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: How about now?
- Multi-concept tags: Storage

### Evidence 578: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: How many storage classes exist in the cluster?
- Multi-concept tags: Storage, Architecture

### Evidence 579: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E10
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: We just created a few more.
- Multi-concept tags: Storage

### Evidence 580: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's try it again.
- Multi-concept tags: Storage

### Evidence 581: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that there are three setting things up.
- Multi-concept tags: Storage

### Evidence 582: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So what is the name of the storage class that does not support dynamic volume provisioning?
- Multi-concept tags: Storage

### Evidence 583: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So we know that the provisionary is what defines how the storage class volumes are provisioned.
- Multi-concept tags: Storage

### Evidence 584: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So the no provisioner is one that does not support dynamic volume provisioning.
- Multi-concept tags: Storage

### Evidence 585: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So that's the provisioner.
- Multi-concept tags: Storage

### Evidence 586: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So that's the storage class that does not support dynamic volume provisioning.
- Multi-concept tags: Storage

### Evidence 587: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So that's local storage.
- Multi-concept tags: Storage

### Evidence 588: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: Now what is the volume binding mode used for the storage class?
- Multi-concept tags: Storage

### Evidence 589: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: The one identified in the previous question.
- Multi-concept tags: Storage

### Evidence 590: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E21
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So for this the volume binding mode is wait for first consumer.
- Multi-concept tags: Storage

### Evidence 591: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So this is the answer.
- Multi-concept tags: Storage

### Evidence 592: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So what is the provisioner used for?
- Multi-concept tags: Storage

### Evidence 593: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: The storage class called WoodworksIO, priority high.
- Multi-concept tags: Storage

### Evidence 594: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So this is the stories class called WoodworksIO priority high and provisioner is port works volume.
- Multi-concept tags: Storage

### Evidence 595: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: Now is there a persistent volume claim that is consuming the persistent volume called Local PV?
- Multi-concept tags: Storage

### Evidence 596: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So is there a persistent volume claim?
- Multi-concept tags: Storage

### Evidence 597: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's look at persistent volumes and persistent volume claims.
- Multi-concept tags: Storage

### Evidence 598: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: And there are no persistent volume claims at all.
- Multi-concept tags: Storage

### Evidence 599: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So no is the answer.
- Multi-concept tags: Storage

### Evidence 600: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E31
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So create a persistent volume claim by the name of local PVC that should bind to the volume local PV.
- Multi-concept tags: Storage

### Evidence 601: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E32
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So we need to create a PVC with the name local PVC.
- Multi-concept tags: Storage

### Evidence 602: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E33
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: And if it is to bind to the PV they must have capacity, which is, yeah, 500 megabytes.
- Multi-concept tags: Storage

### Evidence 603: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So that's correct.
- Multi-concept tags: Storage

### Evidence 604: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E35
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: And then the access modes should match.
- Multi-concept tags: Storage

### Evidence 605: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E36
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So this is ReadWrite ones and the storage class should also match; so that's local storage.
- Multi-concept tags: Storage

### Evidence 606: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E37
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna create PVC.YAML with all that information.
- Multi-concept tags: Storage, Configuration

### Evidence 607: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E38
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's go and find persistent volume.
- Multi-concept tags: Storage

### Evidence 608: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E39
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's select persistent volume and let's look at PVC.
- Multi-concept tags: Storage

### Evidence 609: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E40
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: And here you have PVC.
- Multi-concept tags: Storage

### Evidence 610: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So we'll copy until here.
- Multi-concept tags: Storage

### Evidence 611: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E42
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: We don't need the the selectors.
- Multi-concept tags: Storage, Scheduling

### Evidence 612: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E43
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's paste that here.
- Multi-concept tags: Storage

### Evidence 613: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E44
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So the name is local PVC.
- Multi-concept tags: Storage

### Evidence 614: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E45
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: The access mode, as we discuss it, has to be rewrite once, which is fine.
- Multi-concept tags: Storage

### Evidence 615: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E46
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: We don't need to specify the volume mode for now.
- Multi-concept tags: Storage

### Evidence 616: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E47
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: And storage is 500 megabytes.
- Multi-concept tags: Storage

### Evidence 617: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E48
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: And the storage class name is local storage.
- Multi-concept tags: Storage

### Evidence 618: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E49
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: That's what we saw.
- Multi-concept tags: Storage

### Evidence 619: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E50
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: Right, so local storage.
- Multi-concept tags: Storage

### Evidence 620: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E51
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So that's it.
- Multi-concept tags: Storage

### Evidence 621: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E52
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's create the PVC.
- Multi-concept tags: Storage

### Evidence 622: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E53
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's make sure it's created.
- Multi-concept tags: Storage

### Evidence 623: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E54
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay.
- Multi-concept tags: Storage

### Evidence 624: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E55
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: Now what is the status of the newly created persistent volume claim?
- Multi-concept tags: Storage

### Evidence 625: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E56
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So it's in a pending state.
- Multi-concept tags: Storage, Troubleshooting

### Evidence 626: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E57
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: Now why is the PVC in a pending state despite making a valid request to claim the volume call local PV.
- Multi-concept tags: Storage, Troubleshooting

### Evidence 627: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E58
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So we made sure that we got everything right that 500 megabytes of capacity, rewrite ones access model matching, the local storage class is also matching.
- Multi-concept tags: Storage

### Evidence 628: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E59
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So then why is it that it was not created?
- Multi-concept tags: Storage

### Evidence 629: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E60
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's look at the events.
- Multi-concept tags: Storage, Observability

### Evidence 630: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E61
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's do a queue code: describe PVC local PVC.
- Multi-concept tags: Storage, On-Prem

### Evidence 631: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E62
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: And here we see that the reason is that it's waiting for first consumer, waiting for the first consumer to be created before binding.
- Multi-concept tags: Storage

### Evidence 632: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E63
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So as we discussed, the wait for first consumer means that it's not going to bind to a PV if it's not used.
- Multi-concept tags: Storage

### Evidence 633: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E64
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So it's just waiting for someone to use it for a ideally a volume to use it.
- Multi-concept tags: Storage

### Evidence 634: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E65
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: Right, so a pod consuming the volume is not scheduled person volume and claim is match search class not found.
- Multi-concept tags: Pods, Storage, Scheduling

### Evidence 635: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E66
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So this is the right answer.
- Multi-concept tags: Storage

### Evidence 636: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E67
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So the storage class called local storage makes use of volume binding mode set to wait for first consumer.
- Multi-concept tags: Storage

### Evidence 637: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E68
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So this will delay the binding and provisioning of of precision volume until a pod using the person volume claim is created.
- Multi-concept tags: Pods, Storage

### Evidence 638: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E69
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: Create a new pod called EngineX with the image X alpine.
- Multi-concept tags: Pods, Storage

### Evidence 639: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E70
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's do that.
- Multi-concept tags: Storage

### Evidence 640: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E71
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: And the pod should make use of the PVC, local PVC and mound the volume at the part were, WWHGML, the local PV should be in a bound state.
- Multi-concept tags: Pods, Storage

### Evidence 641: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E72
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's create a pod called EngineX with the image EngineX alpine, and then the portrait make use of the local PVC.
- Multi-concept tags: Pods, Storage

### Evidence 642: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E73
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So for that we're going to have to convert this to ammo.
- Multi-concept tags: Storage

### Evidence 643: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E74
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna run it, we're gonna create the ammo file redirect it to EngineX.
- Multi-concept tags: Storage

### Evidence 644: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E75
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: Start the ammo.
- Multi-concept tags: Storage

### Evidence 645: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E76
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so we have all of this details in there.
- Multi-concept tags: Storage

### Evidence 646: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E77
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: Now what we need to do is we need to first configure the volume and the volume amount, right?
- Multi-concept tags: Storage

### Evidence 647: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E78
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So we need, we need the volume section and the volume has to come from the local PVC.
- Multi-concept tags: Storage

### Evidence 648: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E79
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's look at claims as volumes.
- Multi-concept tags: Storage

### Evidence 649: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E80
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: And here you have example of using a claim as volume.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 650: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E81
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So you have, you already have a volume section so we just need this.
- Multi-concept tags: Storage

### Evidence 651: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E82
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, make sure to fix the format.
- Multi-concept tags: Storage, Troubleshooting

### Evidence 652: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E83
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So we have volumes and the name is going to be, let's name it as local PVC volume.
- Multi-concept tags: Storage

### Evidence 653: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E84
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay?
- Multi-concept tags: Storage

### Evidence 654: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E85
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: Now the claim name has to be local PVC.
- Multi-concept tags: Storage

### Evidence 655: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E86
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay?
- Multi-concept tags: Storage

### Evidence 656: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E87
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: And the next thing is we need the volume mount which is inside the container.
- Multi-concept tags: Storage

### Evidence 657: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E88
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So the volume is on the spec level at the pod and the volume mount is inside the container.
- Multi-concept tags: Pods, Storage

### Evidence 658: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E89
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's do that.
- Multi-concept tags: Storage

### Evidence 659: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E90
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: We have the volume mount and the volume mount says you can see here is at (indistinct), which is right.
- Multi-concept tags: Storage

### Evidence 660: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E91
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: And this, the name of the volume is the name that we've given here.
- Multi-concept tags: Storage

### Evidence 661: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E92
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: It's gonna be this.
- Multi-concept tags: Storage

### Evidence 662: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E93
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So if the question does not ask you to use a specific name, you can use any name.
- Multi-concept tags: Storage

### Evidence 663: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E94
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: Just make sure that this name and this name matches.
- Multi-concept tags: Storage

### Evidence 664: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E95
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So that's when this volume is going to get mount to this directory.
- Multi-concept tags: Storage

### Evidence 665: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E96
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, let's save that and let's create a file.
- Multi-concept tags: Storage

### Evidence 666: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E97
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's see the status of the part.
- Multi-concept tags: Storage

### Evidence 667: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E98
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, it's created, but it's not in a running stage.
- Multi-concept tags: Storage

### Evidence 668: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E99
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: Give it a second.
- Multi-concept tags: Storage

### Evidence 669: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E100
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: Yep, it's in the running stage.
- Multi-concept tags: Storage

### Evidence 670: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E101
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so that's successful.
- Multi-concept tags: Storage

### Evidence 671: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E102
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's check the status of the PVC now.
- Multi-concept tags: Storage

### Evidence 672: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E103
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: And we now see that it's in a bound state - so it's in a bound state.
- Multi-concept tags: Storage

### Evidence 673: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E104
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So as soon as a volume use that PVC, it went into a bound state.
- Multi-concept tags: Storage

### Evidence 674: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E105
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So create a new storage called storage class called delayed volume SC that makes use of the below specs provisioner and volume binding mode.
- Multi-concept tags: Storage

### Evidence 675: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E106
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so let's do that.
- Multi-concept tags: Storage

### Evidence 676: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E107
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's first create a file called Delete volume SE.ammo.
- Multi-concept tags: Storage

### Evidence 677: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E108
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: And we need a template for a storage class.
- Multi-concept tags: Storage

### Evidence 678: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E109
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: That search for storage class.
- Multi-concept tags: Storage

### Evidence 679: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E110
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna use this.
- Multi-concept tags: Storage

### Evidence 680: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E111
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's use the first lines.
- Multi-concept tags: Storage

### Evidence 681: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E112
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, now the name is going to be delayed volume sc.
- Multi-concept tags: Storage

### Evidence 682: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E113
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: The provisioner is going to be: no provisioner.
- Multi-concept tags: Storage

### Evidence 683: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E114
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: And volume Binding Mode..
- Multi-concept tags: Storage

### Evidence 684: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E115
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: The volume binding mode is this.. is going to be wait for first consumer.
- Multi-concept tags: Storage

### Evidence 685: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E116
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's wait for first consumer.
- Multi-concept tags: Storage

### Evidence 686: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E117
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: Yep.
- Multi-concept tags: Storage

### Evidence 687: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E118
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So this seems to be it.
- Multi-concept tags: Storage

### Evidence 688: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E119
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's create that storage class.
- Multi-concept tags: Storage

### Evidence 689: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E120
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: Yes, the storage class is created.
- Multi-concept tags: Storage

### Evidence 690: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E121
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's check it out.
- Multi-concept tags: Storage

### Evidence 691: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E122
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: Yep.
- Multi-concept tags: Storage

### Evidence 692: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E123
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: It's created with the No Provisioner provisioner and the wait for first consumer while in binding mount. (indistinct) Okay, That's successful.
- Multi-concept tags: Storage

### Evidence 693: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E124
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: Yep.
- Multi-concept tags: Storage

### Evidence 694: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E125
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So that's the end of this lab.
- Multi-concept tags: Storage

### Evidence 695: certified-kubernetes-administrator-with-practice-tests/09_Networking/206_Prerequisite DNS.extraction.md::E90
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 206_Prerequisite DNS.txt
- Line Context: Lines 1-1 from transcript
- Content: Google's storage service is available at drive.google.com.
- Multi-concept tags: Services, Networking, Storage

### Evidence 696: certified-kubernetes-administrator-with-practice-tests/09_Networking/206_Prerequisite DNS.extraction.md::E109
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 206_Prerequisite DNS.txt
- Line Context: Lines 1-1 from transcript
- Content: Mail my company.com for accessing your organizations mail drive for accessing storage.
- Multi-concept tags: Networking, Storage

### Evidence 697: certified-kubernetes-administrator-with-practice-tests/09_Networking/230_Lab Solution - Explore DNS (optional).extraction.md::E38
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 230_Lab Solution - Explore DNS (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we have a etc CoreDNS mount and it says that it is coming from config volume.
- Multi-concept tags: Networking, Storage

### Evidence 698: certified-kubernetes-administrator-with-practice-tests/09_Networking/230_Lab Solution - Explore DNS (optional).extraction.md::E47
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 230_Lab Solution - Explore DNS (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: If you scroll down, you'll see the volume mounts.
- Multi-concept tags: Networking, Storage

### Evidence 699: certified-kubernetes-administrator-with-practice-tests/09_Networking/230_Lab Solution - Explore DNS (optional).extraction.md::E48
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 230_Lab Solution - Explore DNS (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So you have volume amounts here.
- Multi-concept tags: Networking, Storage

### Evidence 700: certified-kubernetes-administrator-with-practice-tests/09_Networking/230_Lab Solution - Explore DNS (optional).extraction.md::E49
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 230_Lab Solution - Explore DNS (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And this the etc CoreDNS is the volume mount, and it's coming from a config volume.
- Multi-concept tags: Networking, Storage

### Evidence 701: certified-kubernetes-administrator-with-practice-tests/09_Networking/230_Lab Solution - Explore DNS (optional).extraction.md::E50
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 230_Lab Solution - Explore DNS (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And so if you have volume mounts, then you have volumes.
- Multi-concept tags: Networking, Storage

### Evidence 702: certified-kubernetes-administrator-with-practice-tests/09_Networking/230_Lab Solution - Explore DNS (optional).extraction.md::E51
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 230_Lab Solution - Explore DNS (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So you scroll down and receive volumes.
- Multi-concept tags: Networking, Storage

### Evidence 703: certified-kubernetes-administrator-with-practice-tests/09_Networking/230_Lab Solution - Explore DNS (optional).extraction.md::E52
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 230_Lab Solution - Explore DNS (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So this is where the volumes are configured.
- Multi-concept tags: Networking, Storage

### Evidence 704: certified-kubernetes-administrator-with-practice-tests/09_Networking/230_Lab Solution - Explore DNS (optional).extraction.md::E53
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 230_Lab Solution - Explore DNS (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And the volume for config mount is the config volume.
- Multi-concept tags: Networking, Storage

### Evidence 705: certified-kubernetes-administrator-with-practice-tests/09_Networking/230_Lab Solution - Explore DNS (optional).extraction.md::E54
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 230_Lab Solution - Explore DNS (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And here you see, you have the core file and CoreDNS CoreDNS is the config volume.
- Multi-concept tags: Networking, Storage

### Evidence 706: certified-kubernetes-administrator-with-practice-tests/09_Networking/230_Lab Solution - Explore DNS (optional).extraction.md::E58
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 230_Lab Solution - Explore DNS (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So for this volume, this config map, the name of the config map is CoreDNS.
- Multi-concept tags: Networking, Storage

### Evidence 707: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/241_Design a Kubernetes Cluster.extraction.md::E39
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 241_Design a Kubernetes Cluster.txt
- Line Context: Lines 1-1 from transcript
- Content: For high performance workloads, rely on SSD backed storage for multiple concurrent Current access.
- Multi-concept tags: Storage, Architecture

### Evidence 708: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/241_Design a Kubernetes Cluster.extraction.md::E40
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 241_Design a Kubernetes Cluster.txt
- Line Context: Lines 1-1 from transcript
- Content: Consider network based storage for shared access to volumes across multiple pods.
- Multi-concept tags: Pods, Networking, Storage, Architecture

### Evidence 709: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/241_Design a Kubernetes Cluster.extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 241_Design a Kubernetes Cluster.txt
- Line Context: Lines 1-1 from transcript
- Content: Consider persistent storage volumes that we discussed in the storage section.
- Multi-concept tags: Storage, Architecture

### Evidence 710: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/241_Design a Kubernetes Cluster.extraction.md::E42
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 241_Design a Kubernetes Cluster.txt
- Line Context: Lines 1-1 from transcript
- Content: Consider defining different classes of storage and allocating the right class to the right applications.
- Multi-concept tags: Storage, Architecture

### Evidence 711: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/252_Helm - Introduction.extraction.md::E6
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 252_Helm - Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, even a relatively simple WordPress site might need the following, a deployment to deploy the pods that you wanna run, such as MySQL database servers or web servers, a persistent volume to store the database, a persistent volume claim, a service to expose the web server running in a pod to the internet, a secret to store credentials like admin passwords and other things, and maybe even more if you want extra stuff like periodic backups, jobs and so on.
- Multi-concept tags: Pods, Deployments, Services, Storage, Security-RBAC, Configuration, CKA-CKAD

### Evidence 712: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/252_Helm - Introduction.extraction.md::E10
- Type: Comparison
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 252_Helm - Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: The persistent volumes are 20 GB, but we know our website will need much more storage than that, so we go to the YAML files where the PVs and PVCs are declared, and we change 20 to 100.
- Multi-concept tags: Storage, Configuration

### Evidence 713: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/252_Helm - Introduction.extraction.md::E22
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 252_Helm - Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: It doesn't really know that this persistent volume and that deployment and that secret and that service are all part of a big application called WordPress.
- Multi-concept tags: Deployments, Services, Storage, Security-RBAC, Configuration

### Evidence 714: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/252_Helm - Introduction.extraction.md::E36
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 252_Helm - Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: In a file like values.yaml, we can change the size of our persistent volumes, choose the name of our WordPress website, the admin password, settings for the database engine, and so on.
- Multi-concept tags: Storage, Configuration

### Evidence 715: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/261_Lifecycle Management With Helm.extraction.md::E72
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 261_Lifecycle Management With Helm.txt
- Line Context: Lines 1-1 from transcript
- Content: So for things that use persistent volumes or other forms of persistent data or something that is external, maybe like an external database, the rollback won't restore that data too.
- Multi-concept tags: Deployments, Storage, Configuration

### Evidence 716: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E61
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: We're gonna change it to, it's gonna be prefixed with KodeKloud as well, but it's gonna end in -storage.
- Multi-concept tags: Storage, Configuration, Troubleshooting

### Evidence 717: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E81
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: And for the db, I'm gonna do -storage.
- Multi-concept tags: Storage, Configuration

### Evidence 718: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E82
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: So we'll do nameSuffix: -storage.
- Multi-concept tags: Storage, Configuration, Troubleshooting

### Evidence 719: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E86
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: So the prefix is still there, and the suffix is set to storage.
- Multi-concept tags: Storage, Configuration, Troubleshooting

### Evidence 720: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E122
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And then we use volumes to mount these directories within the same directory within the controller manager, right?
- Multi-concept tags: Storage, Architecture, Troubleshooting

### Evidence 721: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E125
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that all of these all of these that are configured here so ATC Kubernetes, ATC Kubernetes PKI these are all in fact on the host, but they're mapped as a volume through to these containers.
- Multi-concept tags: Storage, Architecture, Troubleshooting

### Evidence 722: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E126
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And the way that's done is through volume mounts.
- Multi-concept tags: Storage, Architecture, Troubleshooting

### Evidence 723: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E127
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we look at volume mounts here and we can see there are multiple volume mounts.
- Multi-concept tags: Storage, Architecture, Troubleshooting

### Evidence 724: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E128
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So you have the CSSL certs, the CS certs but what we want is the coordinate PKI volume.
- Multi-concept tags: Storage, Architecture, Troubleshooting

### Evidence 725: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E130
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So here the mounting looks good but the volume that is mounted is called K eight certs.
- Multi-concept tags: Storage, Architecture, Troubleshooting

### Evidence 726: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E131
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's take a look at the K eight certs volume.
- Multi-concept tags: Storage, Architecture, Troubleshooting

### Evidence 727: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E132
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So these are the volumes that are configured here.
- Multi-concept tags: Storage, Architecture, Troubleshooting

### Evidence 728: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E133
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And here we have the K eight certs volume and this is the section for that.
- Multi-concept tags: Storage, Architecture, Troubleshooting

### Evidence 729: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So for them to have access to the same file system, we have to set up a volume.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 730: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E42
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And it also says use a shared non-persistent volume.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 731: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E43
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So I'm gonna add a volume here.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 732: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E44
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So you just say volumes, and then we'll give it a name, we'll just call it shared-volume and then what we wanna do is we wanna look at this keyword non-persistent volume.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 733: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E45
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So a non-persistent volume that we can use is called emptyDir.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 734: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E49
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So for pod-2, I'm going to mount it doing volume, and there's a typo there, so mounts, this is gonna be name, so what's the name of the volume?
- Multi-concept tags: Pods, Storage, CKA-CKAD

### Evidence 735: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E50
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: It's called shared-volume and then we wanna set the mountPath to where do we wanna mount it?
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 736: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E55
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So now, pod-3 in var/log/shared, he'll have access to the date.log because it's all part of that emptyDir volume.
- Multi-concept tags: Pods, Storage, CKA-CKAD

### Evidence 737: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E61
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we can do that because once again, we're mounting that volume in var/log/shared so we have access to that date.log file.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 738: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E191
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So question eight says, create a persistent volume with the following specifications.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 739: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E192
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we have to call it pv-analytics, provide storage of a hundred mebibytes, access mode, rewrite many, and we have to use the type host path.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 740: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E194
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So if you don't know how to create a persistent volume off the top of your head, remember you always have access to the documentation.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 741: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E198
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: That's a persistent volume.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 742: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E199
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Here we go persistent volumes.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 743: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E207
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: It doesn't say anything about persistent volume reclaim policy.
- Multi-concept tags: Storage, CKA-CKAD, Platform Engineering

### Evidence 744: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E209
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: It doesn't say anything about storage class, so I will delete that.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 745: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E4
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And it says that we have to create a storage class named local SC with the following specifications and set it as the default storage class.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 746: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E6
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And let's go ahead and create a storage class.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 747: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And I'm going to search for the storage class.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 748: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E14
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: It says that this should be set as the default storage class.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 749: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E22
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And then the next two things that we need is a volume binding mode and the volume expansion mode.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 750: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E25
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Volume expansion should be enabled.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 751: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E29
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Volume binding mode should be wait for first consumer.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 752: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E97
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And the way to do that is anytime you want to share data or share a file between two containers in a pod is to use a volume.
- Multi-concept tags: Pods, Storage, CKA-CKAD

### Evidence 753: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E98
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we have to create a volume.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 754: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E99
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's go under spec and let's create a volume.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 755: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E100
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: We're going to call this log volume.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 756: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E103
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: We can use the empty volume type, and this will allow us to essentially treat the var log app log and share it between the container.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 757: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E104
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we have the volume, and then we have to mount it in the same exact location which is var log app inside both of the containers.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 758: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E105
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So here I'll go down and I will do volume mounts.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 759: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E106
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And I'll say name log volume which is referencing this volume.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 760: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E111
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're taking this volume and we're mounting it in var log app inside the first container.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 761: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E131
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that confirms that they both have access to the same data using the volume and the volume mounts.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 762: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we need to grant this service account access to all persistent volumes in the cluster by creating an appropriate cluster role called pvviewer-role and a ClusterroleBinding called pvviewer-role-binding.
- Multi-concept tags: Services, Storage, Security-RBAC, Architecture, CKA-CKAD

### Evidence 763: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E31
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: We then have to set up a role and a role binding so that we can give that service account certain permissions, which in this case is to list all persistent volumes.
- Multi-concept tags: Services, Storage, Security-RBAC, CKA-CKAD

### Evidence 764: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E41
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: That should be able to list all persistent volumes.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 765: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E48
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So it should be able to list all persistent volumes.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 766: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E49
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we'll say resource=persistentvolumes.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 767: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E52
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So this will basically create a cluster role and it'll allow us to list persistent volumes.
- Multi-concept tags: Storage, Security-RBAC, Architecture, CKA-CKAD

### Evidence 768: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E55
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we can see that for persistent volumes, he's able to list them.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 769: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E85
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So for question number three, we have to create a StorageClass called rancher-sc, and it's gotta have the following configurations.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 770: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E86
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So for this, if you don't remember how to create a storageclass off the top of your head, we can always just go to the documentation and just search for storageclass.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 771: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E87
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we'll take a look at the documentation for Storage Classes.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 772: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E93
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So does it expect us to set this to be the default storageclass?
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 773: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E94
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's see, provisioners should be this volume binding, volume expansion.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 774: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E105
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Volume expansion should be enabled.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 775: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E106
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So allow volume expansion should set to be true.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 776: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E109
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Volume binding mode should be WaitForFirstConsumer.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 777: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E255
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so for this question it says a persistent volume claim named app-pvc exist in the namespace stored-ns but it's not getting bound to the available persistent volume named app-pv.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 778: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E256
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: It's telling us to inspect both the pvc and the pv and identify why the pvc is not being bound and to fix the issue so that the pvc successfully binds to the pv, do not modify the pv resource.
- Multi-concept tags: Storage, Troubleshooting, CKA-CKAD

### Evidence 779: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E257
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so basically we've got a pv, we've got a pvc.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 780: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E258
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: The pvc is not getting bound to the pv.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 781: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E263
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: We'll then do kubectl get pvc and then it's gonna be in the storage-ns namespace and we could see it's in a pending state.
- Multi-concept tags: Storage, Troubleshooting, CKA-CKAD

### Evidence 782: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E268
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So the pvc is requesting one gig.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 783: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E274
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And if we take a look at the pvc access mode, ReadWrite many, okay, so this is why it's not binding.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 784: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E276
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we have to adjust the pvc to match with the pv, which is ReadWrite once.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 785: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E280
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And then we will change this to be ReadWrite once, and then I'm going to delete the pvc and then apply the new config.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 786: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E281
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we've applied the new one and now if I do a kubectl get pvc, we should see that now the app pvc is bound and is bound to the app-pv.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 787: certified-kubernetes-administrator-with-practice-tests/18_Bonus Section/313_What's Next_.extraction.md::E8
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 18_Bonus Section / 313_What's Next_.txt
- Line Context: Lines 1-1 from transcript
- Content: Service networking is 20%, storage is another 10% and finally, the biggest section of them all is troubleshooting, which accounts for 30% of the questions.
- Multi-concept tags: Services, Networking, Storage, Troubleshooting

### Evidence 788: certified-kubernetes-administrator-with-practice-tests/18_Bonus Section/313_What's Next_.extraction.md::E69
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 18_Bonus Section / 313_What's Next_.txt
- Line Context: Lines 1-1 from transcript
- Content: Similarly, you'll find other questions belonging to other sections, such as storage and networking in the test.
- Multi-concept tags: Networking, Storage

### Evidence 789: certified-kubernetes-application-developer/01_Introduction/001_Introduction.extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-application-developer / 01_Introduction / 001_Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: Finally, we cover persistent storage with persistent volumes and claims to ensure data durability across containers.
- Multi-concept tags: Storage

### Evidence 790: certified-kubernetes-application-developer/01_Introduction/002_Kubernetes Series of Courses.extraction.md::E7
- Type: Architecture
- Source: certified-kubernetes-application-developer / 01_Introduction / 002_Kubernetes Series of Courses.txt
- Line Context: Lines 1-1 from transcript
- Content: A lot of concepts to cover, such as the architecture, networking, load balancing, a variety of monitoring tools, auto scaling, configuration, security, storage, et cetera.
- Multi-concept tags: Networking, Storage, Security-RBAC, Architecture, Observability

### Evidence 791: certified-kubernetes-application-developer/01_Introduction/002_Kubernetes Series of Courses.extraction.md::E18
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 01_Introduction / 002_Kubernetes Series of Courses.txt
- Line Context: Lines 1-1 from transcript
- Content: The Kubernetes for administrators course focuses on advanced topics on Kubernetes, and in-depth discussions into the various concepts around deploying a high-availability cluster for production use case, understanding more about scheduling, monitoring, maintenance, security, storage, and troubleshooting.
- Multi-concept tags: Storage, Security-RBAC, Architecture, Observability, Troubleshooting

### Evidence 792: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Line Context: Lines 1-1 from transcript
- Content: There was support for volumes or security.
- Multi-concept tags: Storage, Security-RBAC, On-Prem

### Evidence 793: certified-kubernetes-application-developer/02_Core Concepts/009_A note on Docker deprecation.extraction.md::E5
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 009_A note on Docker deprecation.txt
- Line Context: Lines 1-1 from transcript
- Content: There was support for volumes, auth, security and finally also the container runtime called Runc and the daemon that managed the runtime called the container.
- Multi-concept tags: Storage, Security-RBAC

### Evidence 794: certified-kubernetes-application-developer/02_Core Concepts/009_A note on Docker deprecation.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 009_A note on Docker deprecation.txt
- Line Context: Lines 1-1 from transcript
- Content: The other tools that Docker supported like Docker CLI or the API, or build volumes or etc. as they were all taken care of by Kubernetes itself.
- Multi-concept tags: Storage

### Evidence 795: certified-kubernetes-application-developer/02_Core Concepts/010_Recap - Pods.extraction.md::E37
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 010_Recap - Pods.txt
- Line Context: Lines 1-1 from transcript
- Content: Plus, they can easily share the same storage space as well.
- Multi-concept tags: Pods, Storage

### Evidence 796: certified-kubernetes-application-developer/02_Core Concepts/010_Recap - Pods.extraction.md::E51
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 010_Recap - Pods.txt
- Line Context: Lines 1-1 from transcript
- Content: We would need to create shareable volumes and share it among the containers.
- Multi-concept tags: Pods, Storage

### Evidence 797: certified-kubernetes-application-developer/02_Core Concepts/010_Recap - Pods.extraction.md::E59
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 010_Recap - Pods.txt
- Line Context: Lines 1-1 from transcript
- Content: And the containers in a pod by default will have access to the same storage, the same network namespace, and same fate as in they will be created together and destroyed together.
- Multi-concept tags: Pods, Networking, Storage

### Evidence 798: certified-kubernetes-application-developer/03_Configuration/049_ConfigMaps.extraction.md::E51
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 049_ConfigMaps.txt
- Line Context: Lines 1-1 from transcript
- Content: You can inject it as a single environment variable, or you can inject the whole data as files in a volume.
- Multi-concept tags: Storage, Configuration

### Evidence 799: certified-kubernetes-application-developer/03_Configuration/052_Secrets.extraction.md::E61
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 052_Secrets.txt
- Line Context: Lines 1-1 from transcript
- Content: You can inject a single environment variables or inject the whole secret as files in a volume.
- Multi-concept tags: Storage, Security-RBAC, Configuration

### Evidence 800: certified-kubernetes-application-developer/03_Configuration/052_Secrets.extraction.md::E62
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 052_Secrets.txt
- Line Context: Lines 1-1 from transcript
- Content: If you were to mount the secret as a volume in the pod, each attribute in the secret is created as a file with the value of the secret as its content.
- Multi-concept tags: Pods, Storage, Security-RBAC

### Evidence 801: certified-kubernetes-application-developer/03_Configuration/057_Demo_ Encrypting Secret Data at Rest.extraction.md::E160
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 057_Demo_ Encrypting Secret Data at Rest.txt
- Line Context: Lines 1-1 from transcript
- Content: So I'm gonna use volumes and volume ones.
- Multi-concept tags: Storage, Security-RBAC

### Evidence 802: certified-kubernetes-application-developer/03_Configuration/057_Demo_ Encrypting Secret Data at Rest.extraction.md::E161
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 057_Demo_ Encrypting Secret Data at Rest.txt
- Line Context: Lines 1-1 from transcript
- Content: If you have not gone through the volumes and volume ones yet that you might want to take a look at that and come back.
- Multi-concept tags: Storage, Security-RBAC

### Evidence 803: certified-kubernetes-application-developer/03_Configuration/057_Demo_ Encrypting Secret Data at Rest.extraction.md::E179
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 057_Demo_ Encrypting Secret Data at Rest.txt
- Line Context: Lines 1-1 from transcript
- Content: I have volume mounts.
- Multi-concept tags: Storage, Security-RBAC

### Evidence 804: certified-kubernetes-application-developer/03_Configuration/057_Demo_ Encrypting Secret Data at Rest.extraction.md::E180
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 057_Demo_ Encrypting Secret Data at Rest.txt
- Line Context: Lines 1-1 from transcript
- Content: So this is inside my volume, inside the pod where it's gonna be mounted.
- Multi-concept tags: Pods, Storage, Security-RBAC

### Evidence 805: certified-kubernetes-application-developer/03_Configuration/065_Service Account.extraction.md::E35
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 065_Service Account.txt
- Line Context: Lines 1-1 from transcript
- Content: In that case, this whole process of exporting the service account token and configuring the third-party application to use it can be made simple by automatically mounting the service token secret as a volume inside the pod hosting the third-party application.
- Multi-concept tags: Pods, Services, Storage, Security-RBAC

### Evidence 806: certified-kubernetes-application-developer/03_Configuration/065_Service Account.extraction.md::E41
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 065_Service Account.txt
- Line Context: Lines 1-1 from transcript
- Content: Whenever a pod is created, the default service account and its token are automatically mounted to that pod as a volume mount.
- Multi-concept tags: Pods, Services, Storage, Security-RBAC

### Evidence 807: certified-kubernetes-application-developer/03_Configuration/065_Service Account.extraction.md::E43
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 065_Service Account.txt
- Line Context: Lines 1-1 from transcript
- Content: We haven't specified any secrets or volume mounts in the definition file.
- Multi-concept tags: Services, Storage, Security-RBAC

### Evidence 808: certified-kubernetes-application-developer/03_Configuration/065_Service Account.extraction.md::E44
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 065_Service Account.txt
- Line Context: Lines 1-1 from transcript
- Content: However, when the pod is created, if you look at the details of the pod, by running the kubectl describe pod command, you see that a volume is automatically created from the secret named default token, which is in fact the secret containing the token for this default service account.
- Multi-concept tags: Pods, Services, Storage, Security-RBAC, Configuration, On-Prem

### Evidence 809: certified-kubernetes-application-developer/03_Configuration/065_Service Account.extraction.md::E79
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 065_Service Account.txt
- Line Context: Lines 1-1 from transcript
- Content: And this token is then mount as a projected volume onto the pod.
- Multi-concept tags: Pods, Services, Storage, Security-RBAC

### Evidence 810: certified-kubernetes-application-developer/03_Configuration/065_Service Account.extraction.md::E81
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 065_Service Account.txt
- Line Context: Lines 1-1 from transcript
- Content: But now as you can see, it's a projected volume that actually communicates with the token controller API, TokenRequestAPI, and it gets a token for the pod.
- Multi-concept tags: Pods, Services, Storage, Security-RBAC

### Evidence 811: certified-kubernetes-application-developer/03_Configuration/065_Service Account.extraction.md::E84
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 065_Service Account.txt
- Line Context: Lines 1-1 from transcript
- Content: This was then automatically mount as a volume to any pod that uses that service account.
- Multi-concept tags: Pods, Services, Storage, Security-RBAC

### Evidence 812: certified-kubernetes-application-developer/03_Configuration/067_Solution_ Service Account.extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 067_Solution_ Service Account.txt
- Line Context: Lines 1-1 from transcript
- Content: So if we go down here, we wanna go to the mount section or if we go to the volume, sorry, we wanna look at the mount section right here.
- Multi-concept tags: Services, Storage, Security-RBAC

### Evidence 813: certified-kubernetes-application-developer/04_Multi-Container Pods/080_Multi-Container Pods.extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-application-developer / 04_Multi-Container Pods / 080_Multi-Container Pods.txt
- Line Context: Lines 1-1 from transcript
- Content: They share the same network space, which means they can refer to each other as localhost, and they have access to the same storage volumes.
- Multi-concept tags: Pods, Networking, Storage

### Evidence 814: certified-kubernetes-application-developer/04_Multi-Container Pods/080_Multi-Container Pods.extraction.md::E10
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 04_Multi-Container Pods / 080_Multi-Container Pods.txt
- Line Context: Lines 1-1 from transcript
- Content: This way you do not have to establish volume sharing or services between the pods to enable communication between them.
- Multi-concept tags: Pods, Services, Storage

### Evidence 815: certified-kubernetes-application-developer/06_POD Design/107_Jobs.extraction.md::E60
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 06_POD Design / 107_Jobs.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, if the job was created to process an image, the processed image stored in a persistent volume would be the output.
- Multi-concept tags: Pods, Storage, CKA-CKAD

### Evidence 816: certified-kubernetes-application-developer/08_State Persistence/122_Introduction to Docker Storage.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 122_Introduction to Docker Storage.txt
- Line Context: Lines 1-1 from transcript
- Content: Let us now look at storage in Kubernetes to understand storage in container orchestration tools like Kubernetes.
- Multi-concept tags: Storage

### Evidence 817: certified-kubernetes-application-developer/08_State Persistence/122_Introduction to Docker Storage.extraction.md::E2
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 122_Introduction to Docker Storage.txt
- Line Context: Lines 1-1 from transcript
- Content: It is important to first understand how storage works with containers.
- Multi-concept tags: Storage

### Evidence 818: certified-kubernetes-application-developer/08_State Persistence/122_Introduction to Docker Storage.extraction.md::E3
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 122_Introduction to Docker Storage.txt
- Line Context: Lines 1-1 from transcript
- Content: Understanding how storage works with Docker first and getting all the basics right will later make it so much easier to understand how it works in Kubernetes.
- Multi-concept tags: Storage

### Evidence 819: certified-kubernetes-application-developer/08_State Persistence/122_Introduction to Docker Storage.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 122_Introduction to Docker Storage.txt
- Line Context: Lines 1-1 from transcript
- Content: When it comes to storage in Docker, there are two concepts you must know about storage drivers and volume driver plugins.
- Multi-concept tags: Storage

### Evidence 820: certified-kubernetes-application-developer/08_State Persistence/122_Introduction to Docker Storage.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 122_Introduction to Docker Storage.txt
- Line Context: Lines 1-1 from transcript
- Content: In the upcoming video, we will discuss about storage drivers.
- Multi-concept tags: Storage

### Evidence 821: certified-kubernetes-application-developer/08_State Persistence/122_Introduction to Docker Storage.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 122_Introduction to Docker Storage.txt
- Line Context: Lines 1-1 from transcript
- Content: It's something that we've discussed in the Docker course, so if you have gone through that already, feel free to skip this video or you may choose to stay and refresh your memory.
- Multi-concept tags: Storage

### Evidence 822: certified-kubernetes-application-developer/08_State Persistence/122_Introduction to Docker Storage.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 122_Introduction to Docker Storage.txt
- Line Context: Lines 1-1 from transcript
- Content: Once done, we will talk about volume drivers.
- Multi-concept tags: Storage

### Evidence 823: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: In this lecture we are going to talk about Docker storage drivers and file systems.
- Multi-concept tags: Storage

### Evidence 824: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E2
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: We're going to see where and how Docker stores data and how it manages file systems of the containers.
- Multi-concept tags: Storage

### Evidence 825: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Let us start with how Docker stores data on the local file system.
- Multi-concept tags: Storage

### Evidence 826: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E4
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: When you install Docker on a system, it creates this folder structure at var lib docker.
- Multi-concept tags: Storage

### Evidence 827: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E5
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: You have multiple folders under it called aufs, containers, image volumes, etc. this is where Docker stores all its data by default.
- Multi-concept tags: Storage

### Evidence 828: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: When I say data, I mean files related to images and containers running on the Docker host.
- Multi-concept tags: Storage

### Evidence 829: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E7
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, all files related to containers are stored under the containers folder, and the files related to images are stored under the image folder.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 830: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E8
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Any volumes created by the Docker containers are created under the volumes folder.
- Multi-concept tags: Storage

### Evidence 831: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E9
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Well, don't worry about that for now.
- Multi-concept tags: Storage

### Evidence 832: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: We will come back to that in a bit.
- Multi-concept tags: Storage

### Evidence 833: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: For now, let's just understand where Docker stores its files and in what format.
- Multi-concept tags: Storage

### Evidence 834: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: So how exactly does Docker store the files of an image and a container?
- Multi-concept tags: Storage

### Evidence 835: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E13
- Type: Architecture
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: To understand that, we need to understand Docker's layered architecture.
- Multi-concept tags: Storage, Architecture

### Evidence 836: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E14
- Type: Architecture
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's quickly recap something we learned when Docker builds images, it builds these in a layered architecture.
- Multi-concept tags: Storage, Architecture

### Evidence 837: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E15
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Each line of instruction in the Docker file creates a new layer in the Docker image, with just the changes from the previous layer.
- Multi-concept tags: Storage

### Evidence 838: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E16
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, the first layer is a base ubuntu distribution, followed by the second instruction that creates a second layer which installs all the apt packages, and then the third instruction creates a third layer, which with the Python packages, followed by the fourth layer that copies the source code over, and then finally the fifth layer that updates the entry point of the image.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 839: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Since each layer only stores the changes from the previous layer, it is reflected in the size as well.
- Multi-concept tags: Storage

### Evidence 840: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: If you look at the base ubuntu image, it is around 120MB in size.
- Multi-concept tags: Storage

### Evidence 841: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E19
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: The APT packages that are installed is around 300 MB and then the remaining layers are small.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 842: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E20
- Type: Architecture
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: To understand the advantages of this layered architecture, let's consider a second application.
- Multi-concept tags: Storage, Architecture

### Evidence 843: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E21
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: This application has a different Docker file, but is very similar to our first application, as it uses the same base image as ubuntu, uses the same Python and Flask dependencies, but uses a different source code to create a different application, and so a different entry point as well.
- Multi-concept tags: Storage

### Evidence 844: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E22
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: When I run the docker build command to build a new image for this application, since the first three layers of both the applications are the same, Docker is not going to build the first three layers.
- Multi-concept tags: Storage, Configuration

### Evidence 845: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E23
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Instead, it reuses the same three layers it built for the first application from the cache, and only creates the last two layers with the new sources and the new entry point.
- Multi-concept tags: Storage

### Evidence 846: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: This way Docker builds images faster and efficiently saves disk space.
- Multi-concept tags: Storage

### Evidence 847: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: This is also applicable if you were to update your application code whenever you update your application code, such as the App.py.
- Multi-concept tags: Storage

### Evidence 848: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: In this case, Docker simply reuses all the previous layers from cache and rebuilds the application image by updating the latest source code, thus saving us a lot of time during rebuilds and updates.
- Multi-concept tags: Storage

### Evidence 849: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's rearrange the layers bottom up so we can understand it better.
- Multi-concept tags: Storage

### Evidence 850: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E28
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: At the bottom we have the base ubuntu layer, then the packages, then the dependencies, and then the source code of the application and then the entry point.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 851: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E29
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: All of these layers are created when we run the docker build command to form the final Docker image.
- Multi-concept tags: Storage, Configuration

### Evidence 852: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: So all of these are the Docker image layers.
- Multi-concept tags: Storage

### Evidence 853: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E31
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Once the build is complete, you cannot modify the contents of these layers.
- Multi-concept tags: Storage

### Evidence 854: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: And so they are read only.
- Multi-concept tags: Storage

### Evidence 855: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E33
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: And you can only modify them by initiating a new build.
- Multi-concept tags: Storage

### Evidence 856: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E34
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: When you run a container based off of this image using the docker run command, Docker creates a container based off of these layers and creates a new writable layer on top of the image layer.
- Multi-concept tags: Storage, Configuration

### Evidence 857: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E35
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: The writable layer is used to store data created by the container, such as log files written by the applications.
- Multi-concept tags: Storage

### Evidence 858: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E36
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Any temporary files generated by the container, or just any file modified by the user on that container.
- Multi-concept tags: Storage

### Evidence 859: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E37
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: The life of this layer, though, is only as long as the container is alive.
- Multi-concept tags: Storage

### Evidence 860: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E38
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: When the container is destroyed, this layer and all of the changes stored in it are also destroyed.
- Multi-concept tags: Storage

### Evidence 861: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E39
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Remember that the same image layer is shared by all containers created using this image.
- Multi-concept tags: Storage

### Evidence 862: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E40
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: If I were to log in to the newly created container and say create a new file called temp dot txt, it will create that file in the container layer which is read and write.
- Multi-concept tags: Storage

### Evidence 863: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: We just said that the files in the image layer are read only, meaning you cannot edit anything in those layers.
- Multi-concept tags: Storage

### Evidence 864: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E42
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's take an example of our application code.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 865: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E43
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Since we bake our code into the image, the code is part of the image layer and as such is read only.
- Multi-concept tags: Storage

### Evidence 866: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E44
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: After running a container, what if I wish to modify the source code to say test a change?
- Multi-concept tags: Storage

### Evidence 867: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E45
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Remember, the same image layer may be shared between multiple containers created from this image.
- Multi-concept tags: Storage

### Evidence 868: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E46
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: So does it mean that I cannot modify this file inside the container?
- Multi-concept tags: Storage

### Evidence 869: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E47
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: No.
- Multi-concept tags: Storage

### Evidence 870: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E48
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: I can still modify this file.
- Multi-concept tags: Storage

### Evidence 871: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E49
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: But before I save the modified file.
- Multi-concept tags: Storage

### Evidence 872: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E50
- Type: Command
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Docker automatically creates a copy of the file in the read write layer, and I will then be modifying a different version of the file in the read write layer.
- Multi-concept tags: Storage

### Evidence 873: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E51
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: All future modifications will be done on this copy of the file in the read write layer.
- Multi-concept tags: Storage

### Evidence 874: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E52
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: This is called copy on write mechanism.
- Multi-concept tags: Storage

### Evidence 875: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E53
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: The image layer being read only just means that the files in these layers will not be modified in the image itself.
- Multi-concept tags: Storage

### Evidence 876: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E54
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: So the image will remain the same all the time until you rebuild the image using the docker build command.
- Multi-concept tags: Storage, Configuration

### Evidence 877: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E55
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: What happens when we get rid of the container?
- Multi-concept tags: Storage

### Evidence 878: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E56
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: All of the data that was stored in the container layer also gets deleted.
- Multi-concept tags: Storage

### Evidence 879: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E57
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: The change we made to the App.py and the new temp file we created will also get removed.
- Multi-concept tags: Storage

### Evidence 880: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E58
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: So what if we wish to persist this data.
- Multi-concept tags: Storage

### Evidence 881: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E59
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, if we were working with a database and we would like to preserve the data created by the container, we could add a persistent volume to the container.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 882: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E60
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: To do this, first create a volume using the Docker volume create command.
- Multi-concept tags: Storage, Configuration

### Evidence 883: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E61
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: So when I run the Docker volume create data underscore volume command, it creates a folder called data underscore volume under the var lib docker volumes directory.
- Multi-concept tags: Storage, Configuration

### Evidence 884: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E62
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Then when I run the docker container using the docker run command, I could mount this volume inside the Docker containers.
- Multi-concept tags: Storage, Configuration

### Evidence 885: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E63
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Read write layer using the dash v option like this.
- Multi-concept tags: Storage

### Evidence 886: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E64
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: So I would do a docker run dash v, then specify my newly created volume name, followed by a colon and the location inside my container, which is the default location where MySQL stores data.
- Multi-concept tags: Storage

### Evidence 887: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E65
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: And that is var lib MySQL and then the image name MySQL.
- Multi-concept tags: Storage

### Evidence 888: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E66
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: This will create a new container and mount the data volume we created into var lib mysql folder inside the container.
- Multi-concept tags: Storage

### Evidence 889: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E67
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: So all data written by the database is in fact stored on the volume created on the docker host.
- Multi-concept tags: Storage

### Evidence 890: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E68
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Even if the container is destroyed, the data is still active.
- Multi-concept tags: Storage

### Evidence 891: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E69
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Now what if you didn't run the Docker volume?
- Multi-concept tags: Storage

### Evidence 892: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E70
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Create command to create the volume before the docker run command.
- Multi-concept tags: Storage, Configuration

### Evidence 893: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E71
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, if I run the docker run command to create a new instance of MySQL container with the volume data underscore volume two, which I have not created yet, Docker will automatically create a volume named data, underscore volume two and mount it to the container.
- Multi-concept tags: Storage, Configuration, CKA-CKAD

### Evidence 894: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E72
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: You should be able to see all these volumes if you list the contents of the var lib docker volumes folder.
- Multi-concept tags: Storage

### Evidence 895: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E73
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: This is called volume mounting as we are mounting a volume created by Docker under the var lib docker volumes folder.
- Multi-concept tags: Storage

### Evidence 896: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E74
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: But what if we had our data already at another location?
- Multi-concept tags: Storage

### Evidence 897: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E75
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, let's say we have some external storage on the docker host at forward slash data, and we would like to store database data on that volume and not in the default var lib docker volumes folder.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 898: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E76
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: In that case we would run a container using the command docker run dash v, but in this case we will provide the complete path to the folder we would like to mount.
- Multi-concept tags: Storage, Configuration

### Evidence 899: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E77
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: That is slash data or slash MySQL.
- Multi-concept tags: Storage

### Evidence 900: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E78
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: And so it will create a container and mount the folder to the container.
- Multi-concept tags: Storage

### Evidence 901: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E79
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: This is called bind mounting.
- Multi-concept tags: Storage

### Evidence 902: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E80
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: So there are two types of mounts a volume mounting and a bind mount.
- Multi-concept tags: Storage

### Evidence 903: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E81
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Volume mount mounts a volume from the volumes directory and bind mount mounts a directory from any location on the docker host.
- Multi-concept tags: Storage

### Evidence 904: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E82
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: One final point to note before I let you go.
- Multi-concept tags: Storage

### Evidence 905: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E83
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Using the dash V is an old style.
- Multi-concept tags: Storage

### Evidence 906: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E84
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: The new way is to use dash mount option.
- Multi-concept tags: Storage

### Evidence 907: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E85
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: The dash dash mount is the preferred way, as it is more verbose, so you have to specify each parameter in a key equals value format.
- Multi-concept tags: Storage

### Evidence 908: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E86
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, the previous command can be written with the dash mount option as this using the type, source and target options.
- Multi-concept tags: Storage, Configuration, CKA-CKAD

### Evidence 909: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E87
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: The type in this case is bind.
- Multi-concept tags: Storage

### Evidence 910: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E88
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: The source is the location on my host, and target is the location on my container.
- Multi-concept tags: Storage

### Evidence 911: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E89
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: So who is responsible for doing all of these operations?
- Multi-concept tags: Storage

### Evidence 912: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E90
- Type: Architecture
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Maintaining the layered architecture, creating a writable layer, moving files across layers to enable copy and write, etc. it's the storage drivers.
- Multi-concept tags: Storage, Architecture

### Evidence 913: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E91
- Type: Architecture
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: So Docker uses storage drivers to enable layered architecture, some of the common storage drivers are UFS, btrfs, ZFS Device Mapper, overlay and Overlay.
- Multi-concept tags: Storage, Architecture

### Evidence 914: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E92
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Two.
- Multi-concept tags: Storage

### Evidence 915: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E93
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: The selection of the storage driver depends on the underlying OS being used.
- Multi-concept tags: Storage

### Evidence 916: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E94
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, with ubuntu, the default storage driver is UFS, whereas this storage driver is not available on other operating systems like fedora or CentOS.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 917: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E95
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: In that case, device Mapper may be a better option.
- Multi-concept tags: Storage

### Evidence 918: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E96
- Type: Command
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Docker will choose the best storage driver available automatically based on the operating system.
- Multi-concept tags: Storage

### Evidence 919: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E97
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: The different storage drivers also provide different performance and stability characteristics, so you may want to choose one that fits the needs of your application and your organization.
- Multi-concept tags: Storage

### Evidence 920: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E98
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: If you would like to read more on any of these storage drivers, please refer to the links in the attached documentation.
- Multi-concept tags: Storage

### Evidence 921: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E99
- Type: Architecture
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: For now, that is all from the Docker architecture concepts.
- Multi-concept tags: Storage, Architecture

### Evidence 922: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E100
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: See you in the next lecture.
- Multi-concept tags: Storage

### Evidence 923: certified-kubernetes-application-developer/08_State Persistence/124_Volume Driver Plugins in Docker.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 124_Volume Driver Plugins in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so in the previous lecture we discussed about storage drivers.
- Multi-concept tags: Storage

### Evidence 924: certified-kubernetes-application-developer/08_State Persistence/124_Volume Driver Plugins in Docker.extraction.md::E2
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 124_Volume Driver Plugins in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Storage drivers help manage storage on images and containers.
- Multi-concept tags: Storage

### Evidence 925: certified-kubernetes-application-developer/08_State Persistence/124_Volume Driver Plugins in Docker.extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 124_Volume Driver Plugins in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: We also briefly touched upon volumes in the previous lecture.
- Multi-concept tags: Storage

### Evidence 926: certified-kubernetes-application-developer/08_State Persistence/124_Volume Driver Plugins in Docker.extraction.md::E4
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 124_Volume Driver Plugins in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: We learned that if you want to persist storage, you must create volumes.
- Multi-concept tags: Storage

### Evidence 927: certified-kubernetes-application-developer/08_State Persistence/124_Volume Driver Plugins in Docker.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 124_Volume Driver Plugins in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Remember that volumes are not handled by storage drivers.
- Multi-concept tags: Storage

### Evidence 928: certified-kubernetes-application-developer/08_State Persistence/124_Volume Driver Plugins in Docker.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 124_Volume Driver Plugins in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Volumes are handled by volume driver plugins.
- Multi-concept tags: Storage

### Evidence 929: certified-kubernetes-application-developer/08_State Persistence/124_Volume Driver Plugins in Docker.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 124_Volume Driver Plugins in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: The default volume driver plugin is local.
- Multi-concept tags: Storage

### Evidence 930: certified-kubernetes-application-developer/08_State Persistence/124_Volume Driver Plugins in Docker.extraction.md::E8
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 124_Volume Driver Plugins in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: The local volume plugin helps create a volume on the Docker host and store its data under the var lib docker volumes directory.
- Multi-concept tags: Storage

### Evidence 931: certified-kubernetes-application-developer/08_State Persistence/124_Volume Driver Plugins in Docker.extraction.md::E9
- Type: Comparison
- Source: certified-kubernetes-application-developer / 08_State Persistence / 124_Volume Driver Plugins in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: There are many other volume driver plugins that allow you to create a volume on third party solutions like Azure File Storage, convoy, DigitalOcean, Block Storage Locker, Google Compute, Persistent Disks, cluster, EFS, NetApp, Rex, Ray, Port Works, and VMware vSphere storage.
- Multi-concept tags: Storage, Architecture, Cross-Cloud

### Evidence 932: certified-kubernetes-application-developer/08_State Persistence/124_Volume Driver Plugins in Docker.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 124_Volume Driver Plugins in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: These are just a few of the many.
- Multi-concept tags: Storage

### Evidence 933: certified-kubernetes-application-developer/08_State Persistence/124_Volume Driver Plugins in Docker.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 124_Volume Driver Plugins in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: Some of these volume drivers support different storage providers.
- Multi-concept tags: Storage

### Evidence 934: certified-kubernetes-application-developer/08_State Persistence/124_Volume Driver Plugins in Docker.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 124_Volume Driver Plugins in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: For instance, Rex Ray storage driver can be used to provision storage on AWS, EBS, S3, EMC storage arrays like Isilon and Scaleio or Google Persistent Disk or OpenStack cinder.
- Multi-concept tags: Storage, Cross-Cloud

### Evidence 935: certified-kubernetes-application-developer/08_State Persistence/124_Volume Driver Plugins in Docker.extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 124_Volume Driver Plugins in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: When you run a Docker container, you can choose to use a specific volume driver, such as the Rex ray EBS to provision a volume from Amazon EBS.
- Multi-concept tags: Storage

### Evidence 936: certified-kubernetes-application-developer/08_State Persistence/124_Volume Driver Plugins in Docker.extraction.md::E14
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 124_Volume Driver Plugins in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: This will create a container and attach a volume from the AWS cloud.
- Multi-concept tags: Storage, Cross-Cloud

### Evidence 937: certified-kubernetes-application-developer/08_State Persistence/124_Volume Driver Plugins in Docker.extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 124_Volume Driver Plugins in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: When the container exits, your data is safe in the cloud.
- Multi-concept tags: Storage

### Evidence 938: certified-kubernetes-application-developer/08_State Persistence/124_Volume Driver Plugins in Docker.extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 124_Volume Driver Plugins in Docker.txt
- Line Context: Lines 1-1 from transcript
- Content: In the upcoming lectures, we will see more about volumes in Kubernetes.
- Multi-concept tags: Storage

### Evidence 939: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: Before we head into persistent volumes, let us start with volumes in Kubernetes.
- Multi-concept tags: Storage

### Evidence 940: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E2
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: Let us look at volumes in Docker first.
- Multi-concept tags: Storage

### Evidence 941: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E3
- Type: Command
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: Docker containers are meant to be transient in nature, which means they are meant to last only for a short period of time.
- Multi-concept tags: Storage

### Evidence 942: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: They are called upon when required to process data and destroyed once finished.
- Multi-concept tags: Storage

### Evidence 943: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: The same is true for the data within the container.
- Multi-concept tags: Storage

### Evidence 944: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: The data is destroyed along with the container to persist data processed by the containers.
- Multi-concept tags: Storage

### Evidence 945: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E7
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: We attach a volume to the containers when they are created.
- Multi-concept tags: Storage

### Evidence 946: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: The data processed by the container is now placed in this volume, thereby retaining it permanently even if the container is deleted.
- Multi-concept tags: Storage

### Evidence 947: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: The data generated or processed by it remains.
- Multi-concept tags: Storage

### Evidence 948: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: So how does that work in the Kubernetes world?
- Multi-concept tags: Storage

### Evidence 949: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E11
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: Just as in Docker, the pods created in Kubernetes are transient in nature.
- Multi-concept tags: Pods, Storage

### Evidence 950: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E12
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: When a pod is created to process data and then deleted the data processed by it gets deleted as well.
- Multi-concept tags: Pods, Storage

### Evidence 951: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: For this, we attach a volume to the pod.
- Multi-concept tags: Pods, Storage

### Evidence 952: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: The data generated by the pod is now stored in the volume, and even after the pod is deleted, the data remains.
- Multi-concept tags: Pods, Storage

### Evidence 953: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's look at a simple implementation of volumes.
- Multi-concept tags: Storage

### Evidence 954: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: We have a single node Kubernetes cluster.
- Multi-concept tags: Storage, Architecture

### Evidence 955: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E17
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: We create a simple pod that generates a random number between 1 and 100, and writes that to a file at slash opt out.
- Multi-concept tags: Pods, Storage

### Evidence 956: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E18
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: It then gets deleted along with the random number to retain the number generated by the pod.
- Multi-concept tags: Pods, Storage

### Evidence 957: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E19
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: We create a volume, and a volume needs a storage.
- Multi-concept tags: Storage

### Evidence 958: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E20
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: When you create a volume, you can choose to configure its storage in different ways.
- Multi-concept tags: Storage

### Evidence 959: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E21
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: We will look at the various options in a bit, but for now we will simply configure it to use a directory on the host.
- Multi-concept tags: Storage

### Evidence 960: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: In this case, I specify a path forward slash data on the host.
- Multi-concept tags: Storage

### Evidence 961: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E23
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: This way any files created in the volume would be stored in the directory data on my node.
- Multi-concept tags: Storage, Architecture

### Evidence 962: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E24
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: Once the volume is created to access it from a container, we mount the volume to a directory inside the container.
- Multi-concept tags: Storage

### Evidence 963: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: We use the volume mounts field in each container to mount the data volume to the directory slash opt.
- Multi-concept tags: Storage

### Evidence 964: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: Within the container, the random number will now be written to opt mount inside the container, which happens to be on the data volume, which is in fact the data directory on the host.
- Multi-concept tags: Storage

### Evidence 965: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: When the pod gets deleted, the file with the random number still lives on the host.
- Multi-concept tags: Pods, Storage

### Evidence 966: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E28
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's take a step back and look at the volume storage options.
- Multi-concept tags: Storage

### Evidence 967: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E29
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: We just used the host path option to configure a directory on the host as storage space for the volume.
- Multi-concept tags: Storage

### Evidence 968: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: Now that works fine on a single node.
- Multi-concept tags: Storage, Architecture

### Evidence 969: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E31
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: However, it is not recommended for use in a multi node cluster.
- Multi-concept tags: Storage, Architecture

### Evidence 970: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: This is because the pods would use the slash data directory on all the nodes and expect all of them to be the same and have the same data, since they are on different servers.
- Multi-concept tags: Pods, Storage, Architecture

### Evidence 971: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E33
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: They are in fact not the same unless you configure some kind of external replicated cluster storage solution.
- Multi-concept tags: Storage, Architecture

### Evidence 972: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: Kubernetes supports several types of different storage solutions such as NFS, Glusterfs, Flocker.
- Multi-concept tags: Storage

### Evidence 973: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E35
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: Fibre channel CFS, Scaleio or public cloud solutions like AWS, EBS, Azure Disk or File or Google's Persistent Disk.
- Multi-concept tags: Storage, Cross-Cloud

### Evidence 974: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E36
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, to configure an AWS Elastic Block Store volume as the storage option for the volume, we replace Hostpath field of the volume with the AWS Elastic Block Store field.
- Multi-concept tags: Storage, CKA-CKAD, Cross-Cloud

### Evidence 975: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E37
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: Along with the volume ID and filesystem type.
- Multi-concept tags: Storage

### Evidence 976: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E38
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: The volume storage will now be on AWS EBS.
- Multi-concept tags: Storage, Cross-Cloud

### Evidence 977: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E39
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: Well, that's it about volumes in Kubernetes.
- Multi-concept tags: Storage

### Evidence 978: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E40
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: We will now head over to discuss persistent volumes.
- Multi-concept tags: Storage

### Evidence 979: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E41
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: Next.
- Multi-concept tags: Storage

### Evidence 980: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: In the last lecture, we learned about volumes.
- Multi-concept tags: Storage

### Evidence 981: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E2
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: Now we will discuss persistent volumes in Kubernetes.
- Multi-concept tags: Storage

### Evidence 982: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E3
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: When we created volumes in the previous section, we configured volumes within the pod definition file.
- Multi-concept tags: Pods, Storage

### Evidence 983: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E4
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: So every configuration information required to configure storage for the volume goes within the pod definition file.
- Multi-concept tags: Pods, Storage

### Evidence 984: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E5
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: Now when you have a large environment with a lot of users deploying a lot of pods, the users would have to configure storage every time.
- Multi-concept tags: Pods, Storage, Configuration

### Evidence 985: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E6
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: For each pod, whatever storage solution is used, the users who deploys the pods would have to configure that on all pod definition files in his environment.
- Multi-concept tags: Pods, Storage, Configuration

### Evidence 986: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: Every time a change is to be made, the user would have to make them on all of his pods.
- Multi-concept tags: Pods, Storage

### Evidence 987: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: Instead, you would like to manage storage more centrally.
- Multi-concept tags: Storage

### Evidence 988: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E9
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: You would like it to be configured in a way that an administrator can create a large pool of storage, and then have users carve out pieces from it as required.
- Multi-concept tags: Storage

### Evidence 989: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: That is where persistent volumes can help us.
- Multi-concept tags: Storage

### Evidence 990: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E11
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: A persistent volume is a cluster wide pool of storage volumes configured by an administrator, to be used by users deploying applications on the cluster.
- Multi-concept tags: Storage, Architecture

### Evidence 991: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: The users can now select storage from this pool using persistent volume claims.
- Multi-concept tags: Storage

### Evidence 992: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E13
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: Let us now create a persistent volume.
- Multi-concept tags: Storage

### Evidence 993: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: We start with the base template and update the API version.
- Multi-concept tags: Storage

### Evidence 994: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: Set the kind to persistent volume and name it PV Vol one.
- Multi-concept tags: Storage

### Evidence 995: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: Under the specs section, specify the access modes.
- Multi-concept tags: Storage

### Evidence 996: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E17
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: Access mode defines how a volume should be mounted on the hosts, whether in a read only mode or read write mode, etc. the supported values are read only, read write once or read write.
- Multi-concept tags: Storage

### Evidence 997: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: Mini mode.
- Multi-concept tags: Storage

### Evidence 998: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E19
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: Next is the capacity.
- Multi-concept tags: Storage

### Evidence 999: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: Specify the amount of storage to be reserved for this persistent volume, which is set to one GB here.
- Multi-concept tags: Storage

### Evidence 1000: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E21
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: Next comes the volume type.
- Multi-concept tags: Storage

### Evidence 1001: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: We will start with the host path option that uses storage from the node's local directory.
- Multi-concept tags: Storage, Architecture

### Evidence 1002: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: Remember, this option is not to be used in a production environment.
- Multi-concept tags: Storage, Configuration

### Evidence 1003: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E24
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: To create the volume, run kube control, create command and to list the created volume from the kube control.
- Multi-concept tags: Storage, Configuration

### Evidence 1004: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: Get persistent volume command.
- Multi-concept tags: Storage, Configuration

### Evidence 1005: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: Replace the host path option with one of the supported storage solutions.
- Multi-concept tags: Storage

### Evidence 1006: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: As we saw in the previous lecture like AWS Elastic Block Store, etc..
- Multi-concept tags: Storage, Cross-Cloud

### Evidence 1007: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: Well, that's it on persistent volumes in this lecture.
- Multi-concept tags: Storage

### Evidence 1008: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E29
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes.txt
- Line Context: Lines 1-1 from transcript
- Content: In the next lecture, we will look at how we use persistent volume claims to claim the volume configured with persistent volumes.
- Multi-concept tags: Storage

### Evidence 1009: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E1
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: In the previous lecture, we created a persistent volume.
- Multi-concept tags: Storage

### Evidence 1010: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E2
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Now we will try to create a persistent volume claim to make storage available to a pod.
- Multi-concept tags: Pods, Storage

### Evidence 1011: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Persistent volumes and persistent volume claims are two separate objects in the Kubernetes namespace.
- Multi-concept tags: Storage

### Evidence 1012: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E4
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: An administrator creates a set of persistent volumes, and a user creates persistent volume claims to use the storage.
- Multi-concept tags: Storage

### Evidence 1013: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E5
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Once the persistent volume claims are created, Kubernetes binds the persistent volumes to claims based on the request and properties set on the volume.
- Multi-concept tags: Storage

### Evidence 1014: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Every persistent volume claim is bound to a single persistent volume.
- Multi-concept tags: Storage

### Evidence 1015: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: During the binding process, Kubernetes tries to find a persistent volume that has sufficient capacity as requested by the claim and any other request.
- Multi-concept tags: Storage

### Evidence 1016: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Properties such as access modes, volume modes, storage class, etc.
- Multi-concept tags: Storage

### Evidence 1017: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E9
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: However, if there are multiple possible matches for a single claim and you would like to specifically use a particular volume, you could still use labels and selectors to bind to the right volumes.
- Multi-concept tags: Storage, Scheduling

### Evidence 1018: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Finally, note that a smaller claim may get bound to a larger volume if all the other criteria matches and there are no better options.
- Multi-concept tags: Storage, On-Prem

### Evidence 1019: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: There is a 1 to 1 relationship between claims and volumes, so no other claims can utilize the remaining capacity in the volume.
- Multi-concept tags: Storage

### Evidence 1020: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: If there are no volumes available, the persistent volume claim will remain in a pending state until newer volumes are made available to the cluster.
- Multi-concept tags: Storage, Architecture, Troubleshooting

### Evidence 1021: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Once newer volumes are available, the claim would automatically be bound to the newly available volume.
- Multi-concept tags: Storage

### Evidence 1022: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E14
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Let us now create a persistent volume claim.
- Multi-concept tags: Storage

### Evidence 1023: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: We start with a blank template, set the API version to v1, and kind to persistent volume claim.
- Multi-concept tags: Storage

### Evidence 1024: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: We will name it my claim under specification.
- Multi-concept tags: Storage

### Evidence 1025: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Set the access modes to read, write once and set resources to request the storage of 500MB.
- Multi-concept tags: Storage

### Evidence 1026: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E18
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Create the claim using cube control.
- Multi-concept tags: Storage

### Evidence 1027: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E19
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Create command to view the created claim.
- Multi-concept tags: Storage, Configuration

### Evidence 1028: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Run the cube control.
- Multi-concept tags: Storage

### Evidence 1029: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E21
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Get persistent volume claim command.
- Multi-concept tags: Storage, Configuration

### Evidence 1030: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: We see the claim in a pending state.
- Multi-concept tags: Storage, Troubleshooting

### Evidence 1031: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E23
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: When the claim is created, Kubernetes looks at the volume created previously.
- Multi-concept tags: Storage

### Evidence 1032: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: The access modes match.
- Multi-concept tags: Storage

### Evidence 1033: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E25
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: The capacity requested is 500MB, but the volume is configured with one GB of storage.
- Multi-concept tags: Storage

### Evidence 1034: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Since there are no other volumes available, the persistent volume claim is bound to the persistent volume.
- Multi-concept tags: Storage

### Evidence 1035: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E27
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: When we run the Get volumes command again, we see the claim is bound to the persistent volume we created.
- Multi-concept tags: Storage, Configuration

### Evidence 1036: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Perfect.
- Multi-concept tags: Storage

### Evidence 1037: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: To delete a PVC we run the kubectl delete persistent volume claim command.
- Multi-concept tags: Storage, Configuration

### Evidence 1038: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: But what happens to the underlying persistent volume when the claim is deleted?
- Multi-concept tags: Storage

### Evidence 1039: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E31
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: You can choose what is to happen to the volume.
- Multi-concept tags: Storage

### Evidence 1040: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: By default, it is set to retain meaning the persistent volume will remain until it is manually deleted by the administrator.
- Multi-concept tags: Storage

### Evidence 1041: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E33
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: It is not available for reuse by any other claims, or it can be deleted automatically.
- Multi-concept tags: Storage

### Evidence 1042: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: This way, as soon as the claim is deleted, the volume will be deleted as well.
- Multi-concept tags: Storage

### Evidence 1043: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E35
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Or a third option is to recycle.
- Multi-concept tags: Storage

### Evidence 1044: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E36
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: In this case, the data in the volume will be scrubbed before making it available to other claims.
- Multi-concept tags: Storage

### Evidence 1045: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E37
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: However, note that this is an older option and is deprecated now because the Recycle controller originally did a best effort wipe by launching a tiny recycler pod that mounted the volume and ran a shell command like rm rf scrub star to clear files.
- Multi-concept tags: Pods, Storage, Configuration

### Evidence 1046: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E38
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: It basically tried to do the admins manual cleanup for you with a simple file level delete.
- Multi-concept tags: Storage

### Evidence 1047: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E39
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: But this isn't sufficient in practice.
- Multi-concept tags: Storage

### Evidence 1048: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E40
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: It didn't guarantee secure erasure, didn't handle snapshots, or provide provider metadata, and only worked for certain entry volume plugins on cloud or block backends like EBS, Google Cloud PD, Azure Disk, or an network storage like NFS or Sis drivers.
- Multi-concept tags: Networking, Storage, Cross-Cloud

### Evidence 1049: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Proper cleanup can involve unmount, detach, filesystem, reformat, snapshot, retain, policy handling, encryption, key rotation, or provider level delete calls.
- Multi-concept tags: Storage, Platform Engineering

### Evidence 1050: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E42
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: A plain rm rf leaves a inode metadata and may fail under permissions.
- Multi-concept tags: Storage, Architecture, Troubleshooting

### Evidence 1051: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E43
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Because of these portability and security gaps, Kubernetes moved to a newer model.
- Multi-concept tags: Storage, Security-RBAC

### Evidence 1052: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E44
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: The modern approach is dynamic provisioning with a storage class and CSI drivers, which we will discuss next.
- Multi-concept tags: Storage

### Evidence 1053: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E45
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Well, that's it for this lecture.
- Multi-concept tags: Storage

### Evidence 1054: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E46
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Head over to the labs and practice configuring and troubleshooting persistent volumes and volume claims in Kubernetes.
- Multi-concept tags: Storage, Troubleshooting

### Evidence 1055: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: -: Okay, so let's go through the lab on persistent volumes and persistent volume claims.
- Multi-concept tags: Storage

### Evidence 1056: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E2
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, we have deployed a pod, inspect the pod, and wait for it to start running.
- Multi-concept tags: Pods, Storage

### Evidence 1057: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's do that.
- Multi-concept tags: Storage

### Evidence 1058: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: We have the web app pod and it's in running state.
- Multi-concept tags: Pods, Storage

### Evidence 1059: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: The application stores logs at location logapp.log/log/app.log.
- Multi-concept tags: Storage

### Evidence 1060: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, view the logs.
- Multi-concept tags: Storage

### Evidence 1061: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E7
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, for this, in order to view a file within the pod we'll do kubectl exec, and provide the pod name, and then the command.
- Multi-concept tags: Pods, Storage, Configuration

### Evidence 1062: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, cat log app.log.
- Multi-concept tags: Storage

### Evidence 1063: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so we're able to view the logs and we see that some of the events that are logged by the application.
- Multi-concept tags: Storage, Observability

### Evidence 1064: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now, if the pod was to get deleted now, would you be able to view the logs?
- Multi-concept tags: Pods, Storage

### Evidence 1065: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, let's check out where those logs are.
- Multi-concept tags: Storage

### Evidence 1066: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, describe pod web app?
- Multi-concept tags: Pods, Storage, On-Prem

### Evidence 1067: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And.
- Multi-concept tags: Storage

### Evidence 1068: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E14
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, there are no other volumes configured.
- Multi-concept tags: Storage

### Evidence 1069: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, you have the kube-api-access, which is the default volume, but there are no other volumes.
- Multi-concept tags: Storage

### Evidence 1070: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, anything that's stored in the log app.log is stored within the container within the pod.
- Multi-concept tags: Pods, Storage

### Evidence 1071: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, if the pod gets deleted, the logs get deleted as well.
- Multi-concept tags: Pods, Storage

### Evidence 1072: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Right, so, we're able to view the logs.
- Multi-concept tags: Storage

### Evidence 1073: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now, are we're not going be able to view the logs.
- Multi-concept tags: Storage

### Evidence 1074: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E20
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now, configure a volume to store these logs at this path on the host.
- Multi-concept tags: Storage

### Evidence 1075: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E21
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, currently all the logs are stored at /log/app.log within the pod or within the container.
- Multi-concept tags: Pods, Storage

### Evidence 1076: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now, we would like to store those.
- Multi-concept tags: Storage

### Evidence 1077: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: We would like to use a volume to store those logs at var/log/webapp.
- Multi-concept tags: Storage

### Evidence 1078: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, that's var/log/webapp on the host.
- Multi-concept tags: Storage

### Evidence 1079: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, currently there's nothing here.
- Multi-concept tags: Storage

### Evidence 1080: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, let's try and set up a volume.
- Multi-concept tags: Storage

### Evidence 1081: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so we're going to edit the pod.
- Multi-concept tags: Pods, Storage

### Evidence 1082: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, we'll do kubectl edit on web app.
- Multi-concept tags: Storage

### Evidence 1083: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And there are, there's a lot of information.
- Multi-concept tags: Storage

### Evidence 1084: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E30
- Type: Architecture
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, here we have the volume mount, which is the default volume mount for accessing the the kube-api server.
- Multi-concept tags: Storage, Architecture

### Evidence 1085: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E31
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And below we have the volumes, which is again, the default volume used for that.
- Multi-concept tags: Storage

### Evidence 1086: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, we're just gonna add our own volume here.
- Multi-concept tags: Storage

### Evidence 1087: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E33
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, we'll add, we'll call the the volume, log volume, because we're gonna use this to store the logs.
- Multi-concept tags: Storage

### Evidence 1088: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And this is going to be a host path.
- Multi-concept tags: Storage

### Evidence 1089: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E35
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And the path is going to be whatever path is given here, to var/log/webapp, var/log/webapp.
- Multi-concept tags: Storage

### Evidence 1090: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E36
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, So we have the volume.
- Multi-concept tags: Storage

### Evidence 1091: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E37
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, basically what's happening, what's gonna happen is when this part is recreated, and it's going to mount this directory.
- Multi-concept tags: Storage

### Evidence 1092: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E38
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we have to specify where it's gonna be mounted to.
- Multi-concept tags: Storage

### Evidence 1093: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E39
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: It is gonna create a volume out of that directory.
- Multi-concept tags: Storage

### Evidence 1094: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E40
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And then we have to specify where it's going to mount to it.
- Multi-concept tags: Storage

### Evidence 1095: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, we're gonna add a volume mount.
- Multi-concept tags: Storage

### Evidence 1096: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E42
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we'll call the mount path as it is above.
- Multi-concept tags: Storage

### Evidence 1097: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E43
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And that would be a log.
- Multi-concept tags: Storage

### Evidence 1098: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E44
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And then we will have a name for the volume.
- Multi-concept tags: Storage

### Evidence 1099: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E45
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And the name of the volume is, log volume.
- Multi-concept tags: Storage

### Evidence 1100: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E46
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay?
- Multi-concept tags: Storage

### Evidence 1101: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E47
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, what's gonna happen is when the pod is recreated, it's going to create a volume which will store all data in this path on the host.
- Multi-concept tags: Pods, Storage

### Evidence 1102: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E48
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we call this log volume.
- Multi-concept tags: Storage

### Evidence 1103: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E49
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And then we can mount this volume within any container on this pod.
- Multi-concept tags: Pods, Storage

### Evidence 1104: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E50
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, here, there's only one container.
- Multi-concept tags: Storage

### Evidence 1105: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E51
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, under volume mounts we have the mount path and we're gonna specify the name of the volume and it's gonna mount that here.
- Multi-concept tags: Storage

### Evidence 1106: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E52
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, basically this is going to be mount to this path within the container.
- Multi-concept tags: Storage

### Evidence 1107: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E53
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so, let's try and save that.
- Multi-concept tags: Storage

### Evidence 1108: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E54
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: It's a pod, it's not gonna allow us to save that.
- Multi-concept tags: Pods, Storage

### Evidence 1109: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E55
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, we're gonna do a kubectl replace force.
- Multi-concept tags: Storage

### Evidence 1110: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E56
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay.
- Multi-concept tags: Storage

### Evidence 1111: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E57
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Support is now recreated.
- Multi-concept tags: Storage

### Evidence 1112: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E58
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, now let's check the path, at var/log/webapp.
- Multi-concept tags: Storage

### Evidence 1113: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E59
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, and we can see that the file, the storage logs called app.log is in this path.
- Multi-concept tags: Storage

### Evidence 1114: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E60
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: We're gonna do app.log.
- Multi-concept tags: Storage

### Evidence 1115: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E61
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: We see the logs of the pod are indeed here.
- Multi-concept tags: Pods, Storage

### Evidence 1116: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E62
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, the logs of the pod are now available on the host at this particular path.
- Multi-concept tags: Pods, Storage

### Evidence 1117: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E63
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: That indicates that that's working.
- Multi-concept tags: Storage

### Evidence 1118: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E64
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so, the next task is to create a persistent volume with the given specification.
- Multi-concept tags: Storage

### Evidence 1119: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E65
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's go to the kubernetes documentation pages and find persistent volume, and go to persistent volumes.
- Multi-concept tags: Storage

### Evidence 1120: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E66
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And so, here, we have a template for a pod.
- Multi-concept tags: Pods, Storage

### Evidence 1121: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E67
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Persistent volume claim.
- Multi-concept tags: Storage

### Evidence 1122: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E68
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Persistent volume.
- Multi-concept tags: Storage

### Evidence 1123: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E69
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: But, this doesn't have enough information, so, I'm just gonna keep looking.
- Multi-concept tags: Storage

### Evidence 1124: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E70
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so this is a persistent volume.
- Multi-concept tags: Storage

### Evidence 1125: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E71
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, I'm going to get copy this much for your home and I'm going create a file called pv.yaml for persistent volume.
- Multi-concept tags: Storage, Configuration

### Evidence 1126: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E72
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay.
- Multi-concept tags: Storage

### Evidence 1127: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E73
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Then here we have pv-log.
- Multi-concept tags: Storage

### Evidence 1128: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E74
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: That's the persistent volume name.
- Multi-concept tags: Storage

### Evidence 1129: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E75
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Then we have storage.
- Multi-concept tags: Storage

### Evidence 1130: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E76
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, there's a 100 maybe, bytes.
- Multi-concept tags: Storage

### Evidence 1131: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E77
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And then we have volume modes.
- Multi-concept tags: Storage

### Evidence 1132: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E78
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: We don't need volume mode.
- Multi-concept tags: Storage

### Evidence 1133: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E79
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: We have access mode.
- Multi-concept tags: Storage

### Evidence 1134: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E80
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And the access mode is read, write.
- Multi-concept tags: Storage

### Evidence 1135: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E81
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Many.
- Multi-concept tags: Storage

### Evidence 1136: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E82
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And the persistent volume reclaim policy, we're going to be retained.
- Multi-concept tags: Storage, Platform Engineering

### Evidence 1137: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E83
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay.
- Multi-concept tags: Storage

### Evidence 1138: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E84
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And then the type is going to be host path.
- Multi-concept tags: Storage

### Evidence 1139: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E85
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, we're gonna, host path, and then specify the path, and that's going to be /pv/log.
- Multi-concept tags: Storage

### Evidence 1140: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E86
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, that's the path, Okay.
- Multi-concept tags: Storage

### Evidence 1141: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E87
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, let's create the file.
- Multi-concept tags: Storage

### Evidence 1142: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E88
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so let's create it, let's check it out.
- Multi-concept tags: Storage

### Evidence 1143: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E89
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: We have the pv log, 100, and my capacity, read, write, many.
- Multi-concept tags: Storage

### Evidence 1144: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E90
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, this indicates read, write many, and the reclaim policy is retained.
- Multi-concept tags: Storage, Platform Engineering

### Evidence 1145: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E91
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Check our work.
- Multi-concept tags: Storage

### Evidence 1146: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E92
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, now let us claim some of that storage for our application.
- Multi-concept tags: Storage

### Evidence 1147: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E93
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, create a persistent volume claim with a given specification.
- Multi-concept tags: Storage

### Evidence 1148: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E94
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, let's find a persistent volume claim template.
- Multi-concept tags: Storage

### Evidence 1149: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E95
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, we had one here.
- Multi-concept tags: Storage

### Evidence 1150: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E96
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Yeah, so right here we have persistent volume claims and we'll use this template.
- Multi-concept tags: Storage

### Evidence 1151: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E97
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, we don't need the advanced selectors.
- Multi-concept tags: Storage, Scheduling

### Evidence 1152: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E98
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Our use case is simple.
- Multi-concept tags: Storage

### Evidence 1153: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E99
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, we are just going to copy this much.
- Multi-concept tags: Storage

### Evidence 1154: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E100
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, let's do a pvc.yamal.
- Multi-concept tags: Storage

### Evidence 1155: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E101
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: If a persistent volume claim, the name is going to be claim-log-one, and access mode is going to be read, write.
- Multi-concept tags: Storage

### Evidence 1156: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E102
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Once.
- Multi-concept tags: Storage

### Evidence 1157: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E103
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: We don't need a volume mode, and the storage is gonna be 50 Mi.
- Multi-concept tags: Storage

### Evidence 1158: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E104
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, now we're gonna do a kubectl create minus half bc.
- Multi-concept tags: Storage

### Evidence 1159: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E105
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's check out the status.
- Multi-concept tags: Storage

### Evidence 1160: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E106
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so that's created.
- Multi-concept tags: Storage

### Evidence 1161: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E107
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's go Next.
- Multi-concept tags: Storage

### Evidence 1162: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E108
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, what is the state of the persistent volume claim?
- Multi-concept tags: Storage

### Evidence 1163: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E109
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: If you look at the state, it is in a pending state.
- Multi-concept tags: Storage, Troubleshooting

### Evidence 1164: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E110
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, that's that.
- Multi-concept tags: Storage

### Evidence 1165: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E111
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now, what is the state of the persistent volume, or the state of the persistent volume?
- Multi-concept tags: Storage

### Evidence 1166: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E112
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: It is available.
- Multi-concept tags: Storage

### Evidence 1167: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E113
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, let's check, try it now, again.
- Multi-concept tags: Storage

### Evidence 1168: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E114
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, it's in an available state.
- Multi-concept tags: Storage

### Evidence 1169: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E115
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, why is the claim not bound to the available persistent volume?
- Multi-concept tags: Storage

### Evidence 1170: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E116
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, we have a persistent volume which has a 100 megabytes of capacity.
- Multi-concept tags: Storage

### Evidence 1171: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E117
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And then, we have the PVC, which requested about 50, but it's still in a pending state.
- Multi-concept tags: Storage, Troubleshooting

### Evidence 1172: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E118
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, why is that?
- Multi-concept tags: Storage

### Evidence 1173: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E119
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, if you look at it, it's not a capacity mismatch because we know that when you create a persistent volume claim, if there's a volume that has higher capacity it's gonna bind that volume to that persistent volume claim.
- Multi-concept tags: Storage

### Evidence 1174: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E120
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, that's not the case here.
- Multi-concept tags: Storage

### Evidence 1175: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E121
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: We have the recurring policy set.
- Multi-concept tags: Storage, Platform Engineering

### Evidence 1176: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E122
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: The name of these policies, the PV and PVC, does not really matter.
- Multi-concept tags: Storage

### Evidence 1177: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E123
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: The only other thing that it looks at is the access mode, right?
- Multi-concept tags: Storage

### Evidence 1178: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E124
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, if you look at the PV that we created, it had an access mode of rewrite many, and if you look at the PVC, it has rewrite once.
- Multi-concept tags: Storage

### Evidence 1179: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E125
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, we're going to, and that's the reason.
- Multi-concept tags: Storage

### Evidence 1180: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E126
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, access mode mismatch is the reason.
- Multi-concept tags: Storage

### Evidence 1181: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E127
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now, the next question is, update the access mode on the claim to bind it to the PV.
- Multi-concept tags: Storage

### Evidence 1182: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E128
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, we're going to do an update on the claim.
- Multi-concept tags: Storage

### Evidence 1183: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E129
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, we wanna change it to... ... so we wanna change the access mode on the PVC to read, write, many, which is on the PV.
- Multi-concept tags: Storage

### Evidence 1184: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E130
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Right, so, that's what is requested here.
- Multi-concept tags: Storage

### Evidence 1185: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E131
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay.
- Multi-concept tags: Storage

### Evidence 1186: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E132
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, now we're going to do a replace force -f pvc.
- Multi-concept tags: Storage

### Evidence 1187: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E133
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, now you requested for 50 megabytes, how much capacity is now available to the PVC?
- Multi-concept tags: Storage

### Evidence 1188: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E134
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, let's look at that.
- Multi-concept tags: Storage

### Evidence 1189: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E135
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Lets do a kubectl get pv.
- Multi-concept tags: Storage

### Evidence 1190: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E136
- Type: Command
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Kubectl get pvc.
- Multi-concept tags: Storage

### Evidence 1191: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E137
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And, if you look at the PVC, the capacity that it has is 100 megabytes.
- Multi-concept tags: Storage

### Evidence 1192: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E138
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now, update the web app part to use the persistent volume claim as it's storage.
- Multi-concept tags: Storage

### Evidence 1193: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E139
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, what we are gonna do now is we're gonna replace host path with the persistent volume claim to use the persistent volume claim.
- Multi-concept tags: Storage

### Evidence 1194: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E140
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so, but, before that we've created the PV to store the logs to use the host path at lspv/log.
- Multi-concept tags: Storage

### Evidence 1195: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E141
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, right now there is nothing in there.
- Multi-concept tags: Storage

### Evidence 1196: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E142
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, let's go ahead and edit the pod web app.
- Multi-concept tags: Pods, Storage

### Evidence 1197: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E143
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And what we're gonna do is, so, this is okay, the mount path, we're gonna leave it as is.
- Multi-concept tags: Storage

### Evidence 1198: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E144
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: We're gonna go down and we're gonna change this from host path to persistent.
- Multi-concept tags: Storage

### Evidence 1199: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E145
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's see what that is.
- Multi-concept tags: Storage

### Evidence 1200: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E146
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, if you look here.
- Multi-concept tags: Storage

### Evidence 1201: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E147
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Should be able to see how to use a persistent volume in a pod.
- Multi-concept tags: Pods, Storage

### Evidence 1202: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E148
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, you have claim as volumes.
- Multi-concept tags: Storage

### Evidence 1203: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E149
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, within volumes you use a persistent volume claims.
- Multi-concept tags: Storage

### Evidence 1204: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E150
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, that's what we're looking for.
- Multi-concept tags: Storage

### Evidence 1205: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E151
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay.
- Multi-concept tags: Storage

### Evidence 1206: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E152
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we have claim name.
- Multi-concept tags: Storage

### Evidence 1207: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E153
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, we don't need these lines.
- Multi-concept tags: Storage

### Evidence 1208: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E154
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And then, the claim name is going to be claim log one.
- Multi-concept tags: Storage

### Evidence 1209: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E155
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, we have persistent log claim, claim name, and log one.
- Multi-concept tags: Storage

### Evidence 1210: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E156
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, that should be it.
- Multi-concept tags: Storage

### Evidence 1211: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E157
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's replace the file.
- Multi-concept tags: Storage

### Evidence 1212: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E158
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's replace the pod forcefully.
- Multi-concept tags: Pods, Storage

### Evidence 1213: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E159
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so that is done.
- Multi-concept tags: Storage

### Evidence 1214: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E160
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's check our work.
- Multi-concept tags: Storage

### Evidence 1215: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E161
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: All right, so now let's see, if you look at /pv/log, you see the logs there and you look at log app.log, you can see the logs of the application there.
- Multi-concept tags: Storage

### Evidence 1216: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E162
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, now, the PV is using a host path as the location for storing data, but then the PV is then claimed by the PVC, and then the PVC is configured as a volume for the pod, and then that's how it is mounted to the pod.
- Multi-concept tags: Pods, Storage

### Evidence 1217: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E163
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, that's how this is working right now.
- Multi-concept tags: Storage

### Evidence 1218: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E164
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so, the next question is what is the reclaim policy set on the persistent volume pv-log?
- Multi-concept tags: Storage, Platform Engineering

### Evidence 1219: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E165
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, let's see, kubectl get pv pv-log.
- Multi-concept tags: Storage

### Evidence 1220: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E166
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we can see that it is retained.
- Multi-concept tags: Storage

### Evidence 1221: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E167
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, retain is the answer.
- Multi-concept tags: Storage

### Evidence 1222: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E168
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now, what would happen to the PV if the PVC was destroyed?
- Multi-concept tags: Storage

### Evidence 1223: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E169
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, we know that with the reclaim policy set to retain, the PV is going to be retained.
- Multi-concept tags: Storage, Platform Engineering

### Evidence 1224: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E170
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, it's not going to be deleted along with the PVC.
- Multi-concept tags: Storage

### Evidence 1225: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E171
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, the PV is deleted as well.
- Multi-concept tags: Storage

### Evidence 1226: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E172
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now, the PV is made available again, No, it's not made available again, that would be recycling the PV scrub.
- Multi-concept tags: Storage

### Evidence 1227: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E173
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now, the PV is not deleted, but not available.
- Multi-concept tags: Storage

### Evidence 1228: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E174
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, it's not deleted, but it's not available either.
- Multi-concept tags: Storage

### Evidence 1229: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E175
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, that's the status.
- Multi-concept tags: Storage

### Evidence 1230: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E176
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now, try deleting the PVC and notice what happens.
- Multi-concept tags: Storage

### Evidence 1231: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E177
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's do that. kubectl pvc delete pvc claim log one.
- Multi-concept tags: Storage

### Evidence 1232: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E178
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, let's wait for that to be deleted.
- Multi-concept tags: Storage

### Evidence 1233: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E179
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so, it's not going to get deleted because it's actually going to be stuck.
- Multi-concept tags: Storage

### Evidence 1234: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E180
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's, let's look at the status in a new terminal.
- Multi-concept tags: Storage

### Evidence 1235: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E181
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, let's do a kubectl get pvc.
- Multi-concept tags: Storage

### Evidence 1236: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E182
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that it's in a terminating state, so, it's stuck in a terminating state.
- Multi-concept tags: Storage

### Evidence 1237: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E183
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, let's do a describe.
- Multi-concept tags: Storage, On-Prem

### Evidence 1238: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E184
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And yeah, so you see it's stuck in terminating state for the last 30 seconds or so.
- Multi-concept tags: Storage

### Evidence 1239: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E185
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, why is the PVC stuck in a terminating state?
- Multi-concept tags: Storage

### Evidence 1240: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E186
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, that's obviously because it is associated as a volume with a pod.
- Multi-concept tags: Pods, Storage

### Evidence 1241: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E187
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, it is being used by a pod.
- Multi-concept tags: Pods, Storage

### Evidence 1242: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E188
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: That's the reason it's stuck in a terminating state.
- Multi-concept tags: Storage

### Evidence 1243: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E189
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now, let's now delete the web app pod and let's go ahead and do that.
- Multi-concept tags: Pods, Storage

### Evidence 1244: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E190
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Do that.
- Multi-concept tags: Storage

### Evidence 1245: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E191
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, let's delete pod web app, and let's see what happens.
- Multi-concept tags: Pods, Storage

### Evidence 1246: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E192
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so, that was deleted and we see we're now unstuck and the PV was deleted as well.
- Multi-concept tags: Storage

### Evidence 1247: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E193
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Check that out.
- Multi-concept tags: Storage

### Evidence 1248: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E194
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Yep.
- Multi-concept tags: Storage

### Evidence 1249: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E195
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, the pod was deleted and the PVC was deleted as well.
- Multi-concept tags: Pods, Storage

### Evidence 1250: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E196
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, what is the state of the PVC now?
- Multi-concept tags: Storage

### Evidence 1251: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E197
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: It is deleted.
- Multi-concept tags: Storage

### Evidence 1252: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E198
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And what is state of the PV now.
- Multi-concept tags: Storage

### Evidence 1253: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E199
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's try that.
- Multi-concept tags: Storage

### Evidence 1254: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E200
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: We see that it is in a released state.
- Multi-concept tags: Storage

### Evidence 1255: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E201
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so, yeah, that's the end of this lab.
- Multi-concept tags: Storage

### Evidence 1256: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: In this lecture we will look at storage classes.
- Multi-concept tags: Storage

### Evidence 1257: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E2
- Type: Comparison
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: In the previous lectures, we discussed about how to create PVS and then create PVCs to claim that storage and then use the PVCs in the Pod definition files as volumes.
- Multi-concept tags: Pods, Storage

### Evidence 1258: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E3
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: In this case, we create a PVC from a Google Cloud persistent disk.
- Multi-concept tags: Storage, Cross-Cloud

### Evidence 1259: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E4
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: The problem here is that before this PV is created, you must have created the disk on Google Cloud.
- Multi-concept tags: Storage, Cross-Cloud

### Evidence 1260: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E5
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: Every time an application requires storage, you have to first manually provision the disk on Google Cloud and then manually create a persistent volume definition file using the same name as that of the disk that you created.
- Multi-concept tags: Storage, Cross-Cloud

### Evidence 1261: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: That's called static provisioning volumes.
- Multi-concept tags: Storage

### Evidence 1262: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: It would have been nice if the volume gets provisioned automatically when the application requires it, and that's where storage classes come in.
- Multi-concept tags: Storage

### Evidence 1263: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: With storage classes, you can define a provisioner, such as Google Storage, that can automatically provision storage on Google Cloud and attach that to pods.
- Multi-concept tags: Pods, Storage, Cross-Cloud

### Evidence 1264: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: When a claim is made, that's called dynamic provisioning of volumes.
- Multi-concept tags: Storage

### Evidence 1265: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: You do that by creating a storage class object with the API version set to storage IO v1.
- Multi-concept tags: Storage

### Evidence 1266: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: Specify a name and use provisioner as kubernetes.io/pd.
- Multi-concept tags: Storage

### Evidence 1267: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: So going back to our original state where we have a pod using a PVC for storage and the PVC is bound to a PV, we now have a storage class.
- Multi-concept tags: Pods, Storage

### Evidence 1268: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E13
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: So we no longer need the PV definition because the PV and any associated storage is going to be created automatically when the storage class is created for the PVC to use the storage class we defined, we specify the storage class name in the PVC definition.
- Multi-concept tags: Storage

### Evidence 1269: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: That's how the PVC knows which storage class to use.
- Multi-concept tags: Storage

### Evidence 1270: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E15
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: Next time a PVC is created, the storage class associated with it uses the defined provisioner to provision a new disk with the required size on GCP, and then creates a persistent volume and then binds the PVC to that volume.
- Multi-concept tags: Storage

### Evidence 1271: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E16
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: So remember that it still creates a PVC.
- Multi-concept tags: Storage

### Evidence 1272: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E17
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: It's just that you don't have to manually create PVC anymore.
- Multi-concept tags: Storage

### Evidence 1273: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E18
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: It's created automatically by the storage class.
- Multi-concept tags: Storage

### Evidence 1274: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E19
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: We used the GCE provisioner to create a volume on GCP.
- Multi-concept tags: Storage

### Evidence 1275: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: There are many other provisioners as well, such as for AWS, EBS, Azure File, Azure Disk, CIFs, Portworx, Scaleio, and so on With each of these provisioners, you can pass in additional parameters such as the type of disk to provision the replication type, etc. these parameters are very specific to the provisioner that you are using for Google Persistent Disk.
- Multi-concept tags: Storage, Cross-Cloud

### Evidence 1276: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E21
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: You can specify the type which could be standard or SSD.
- Multi-concept tags: Storage

### Evidence 1277: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: You can specify the replication mode which could be none or regional PD.
- Multi-concept tags: Storage

### Evidence 1278: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E23
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: So you see you can create different storage classes, each using different types of disks.
- Multi-concept tags: Storage

### Evidence 1279: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E24
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, a silver storage class with the standard disks, a gold class with SSD drives, and a platinum class with SSD drives and replication.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 1280: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: And that's why it's called storage class.
- Multi-concept tags: Storage

### Evidence 1281: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E26
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: You can create different classes of service.
- Multi-concept tags: Services, Storage

### Evidence 1282: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E27
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes.txt
- Line Context: Lines 1-1 from transcript
- Content: Next time you create a PVC, you can simply specify the class of storage you need for your volumes.
- Multi-concept tags: Storage

### Evidence 1283: certified-kubernetes-application-developer/08_State Persistence/134_Why Stateful Sets_.extraction.md::E78
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 134_Why Stateful Sets_.txt
- Line Context: Lines 1-1 from transcript
- Content: And we'll talk about persistent volumes and much more.
- Multi-concept tags: Storage

### Evidence 1284: certified-kubernetes-application-developer/08_State Persistence/135_Stateful Sets Introduction.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 135_Stateful Sets Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: -: In this lecture we will talk about, StatefulSets in Kubernetes.
- Multi-concept tags: Storage

### Evidence 1285: certified-kubernetes-application-developer/08_State Persistence/135_Stateful Sets Introduction.extraction.md::E2
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 135_Stateful Sets Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: Now, in the previous lecture we discussed why you need a StatefulSet.
- Multi-concept tags: Storage

### Evidence 1286: certified-kubernetes-application-developer/08_State Persistence/135_Stateful Sets Introduction.extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 135_Stateful Sets Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: Note that you might not always need a StatefulSet.
- Multi-concept tags: Storage

### Evidence 1287: certified-kubernetes-application-developer/08_State Persistence/135_Stateful Sets Introduction.extraction.md::E6
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 135_Stateful Sets Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: So once you evaluate your requirements and decide that StatefulSet is the right choice for you, you can create a StatefulSet, just like how you created a deployment.
- Multi-concept tags: Deployments, Storage

### Evidence 1288: certified-kubernetes-application-developer/08_State Persistence/135_Stateful Sets Introduction.extraction.md::E8
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 135_Stateful Sets Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: And then all you need to do, is change the kind to StatefulSet instead of deployment.
- Multi-concept tags: Deployments, Storage

### Evidence 1289: certified-kubernetes-application-developer/08_State Persistence/135_Stateful Sets Introduction.extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 135_Stateful Sets Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: Note that both SS in the StatefulSet is uppercase.
- Multi-concept tags: Storage

### Evidence 1290: certified-kubernetes-application-developer/08_State Persistence/135_Stateful Sets Introduction.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 135_Stateful Sets Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: Apart from that, a StatefulSet also requires a service name specified.
- Multi-concept tags: Services, Storage

### Evidence 1291: certified-kubernetes-application-developer/08_State Persistence/135_Stateful Sets Introduction.extraction.md::E12
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 135_Stateful Sets Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: As discussed before, when you create a StatefulSet using this definition file, it creates pods one after the other, that's ordered graceful deployment.
- Multi-concept tags: Pods, Deployments, Storage

### Evidence 1292: certified-kubernetes-application-developer/08_State Persistence/135_Stateful Sets Introduction.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 135_Stateful Sets Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: When you scale the StatefulSet, it scales in an ordered graceful fashion.
- Multi-concept tags: Storage

### Evidence 1293: certified-kubernetes-application-developer/08_State Persistence/135_Stateful Sets Introduction.extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 135_Stateful Sets Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: When you delete a StatefulSet, the pods are deleted in the reverse order.
- Multi-concept tags: Pods, Storage

### Evidence 1294: certified-kubernetes-application-developer/08_State Persistence/135_Stateful Sets Introduction.extraction.md::E21
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 08_State Persistence / 135_Stateful Sets Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: Now, that's the default behavior of a StatefulSet, but you can override that behavior to cause StatefulSet to not follow an ordered launch.
- Multi-concept tags: Storage

### Evidence 1295: certified-kubernetes-application-developer/08_State Persistence/135_Stateful Sets Introduction.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 135_Stateful Sets Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: But still have the other benefits of StatefulSet such as a stable and unique network ID.
- Multi-concept tags: Networking, Storage

### Evidence 1296: certified-kubernetes-application-developer/08_State Persistence/135_Stateful Sets Introduction.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 135_Stateful Sets Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: For that, you could set the pod management policy field to parallel to instruct StatefulSet to not follow an ordered approach.
- Multi-concept tags: Pods, Storage, Platform Engineering

### Evidence 1297: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets.txt
- Line Context: Lines 1-1 from transcript
- Content: Instructor: This lecture, we will talk about storage in stateful sets.
- Multi-concept tags: Storage

### Evidence 1298: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E2
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets.txt
- Line Context: Lines 1-1 from transcript
- Content: Before I begin, let me quickly recap what we know already about storage in Kubernetes.
- Multi-concept tags: Storage

### Evidence 1299: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets.txt
- Line Context: Lines 1-1 from transcript
- Content: It's only going to take a minute, so bear with me.
- Multi-concept tags: Storage

### Evidence 1300: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets.txt
- Line Context: Lines 1-1 from transcript
- Content: And I think this is important.
- Multi-concept tags: Storage

### Evidence 1301: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets.txt
- Line Context: Lines 1-1 from transcript
- Content: Earlier we discussed that with persistent volumes.
- Multi-concept tags: Storage

### Evidence 1302: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E6
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets.txt
- Line Context: Lines 1-1 from transcript
- Content: We create volume objects and Kubernetes which are then claimed by persistent volume claims and finally used in pod definition files within pods.
- Multi-concept tags: Pods, Storage

### Evidence 1303: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets.txt
- Line Context: Lines 1-1 from transcript
- Content: Now, that's a single persistent volume mapped to a single persistent volume claim to a single pod definition file.
- Multi-concept tags: Pods, Storage

### Evidence 1304: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E8
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets.txt
- Line Context: Lines 1-1 from transcript
- Content: Now with dynamic provisioning we then said with storage class definition we take out the manual creation of persistent volumes and use storage provisioners to automatically provision volume on cloud providers.
- Multi-concept tags: Storage

### Evidence 1305: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E9
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets.txt
- Line Context: Lines 1-1 from transcript
- Content: Now the PV is created automatically.
- Multi-concept tags: Storage

### Evidence 1306: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E10
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets.txt
- Line Context: Lines 1-1 from transcript
- Content: We still create a PVC manually and associate that to a pod.
- Multi-concept tags: Pods, Storage

### Evidence 1307: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets.txt
- Line Context: Lines 1-1 from transcript
- Content: Now this works just fine for a pod with a volume.
- Multi-concept tags: Pods, Storage

### Evidence 1308: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E12
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets.txt
- Line Context: Lines 1-1 from transcript
- Content: How does that change with deployments or stateful sets?
- Multi-concept tags: Deployments, Storage

### Evidence 1309: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E13
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets.txt
- Line Context: Lines 1-1 from transcript
- Content: With stateful sets, when you specify the same PVC under the pod definition, all pods created by that stateful set tries to use the same volume.
- Multi-concept tags: Pods, Storage

### Evidence 1310: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E14
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets.txt
- Line Context: Lines 1-1 from transcript
- Content: Now, that is possible if that is what is desired as in you really want multiple pods or multiple instances of your application to share and access the same storage.
- Multi-concept tags: Pods, Storage

### Evidence 1311: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E15
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets.txt
- Line Context: Lines 1-1 from transcript
- Content: That's how you would configure it.
- Multi-concept tags: Storage

### Evidence 1312: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E16
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets.txt
- Line Context: Lines 1-1 from transcript
- Content: And that also depends on the kind of volume created and the provision are used.
- Multi-concept tags: Storage

### Evidence 1313: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E17
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets.txt
- Line Context: Lines 1-1 from transcript
- Content: Note that, not all storage types support that operation read or write from multiple instances at the same time.
- Multi-concept tags: Storage

### Evidence 1314: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets.txt
- Line Context: Lines 1-1 from transcript
- Content: Now, what if you want separate volumes for each pod?
- Multi-concept tags: Pods, Storage

### Evidence 1315: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets.txt
- Line Context: Lines 1-1 from transcript
- Content: As in the My SQL replication use case that we have been talking about?
- Multi-concept tags: Storage

### Evidence 1316: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E20
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets.txt
- Line Context: Lines 1-1 from transcript
- Content: The pods don't want to share data.
- Multi-concept tags: Pods, Storage

### Evidence 1317: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E21
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets.txt
- Line Context: Lines 1-1 from transcript
- Content: Instead, each pod needs its own local storage.
- Multi-concept tags: Pods, Storage

### Evidence 1318: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets.txt
- Line Context: Lines 1-1 from transcript
- Content: Each instance has its own database, and the replication of data between the databases is done at the database level.
- Multi-concept tags: Storage

### Evidence 1319: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E23
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets.txt
- Line Context: Lines 1-1 from transcript
- Content: So then each pod needs a PVC for itself.
- Multi-concept tags: Pods, Storage

### Evidence 1320: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets.txt
- Line Context: Lines 1-1 from transcript
- Content: A PVC is bound to a pv, so each PVC needs a pv.
- Multi-concept tags: Storage

### Evidence 1321: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E25
- Type: Comparison
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets.txt
- Line Context: Lines 1-1 from transcript
- Content: And of course, these PVS can be created from a single or different storage classes.
- Multi-concept tags: Storage

### Evidence 1322: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E26
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets.txt
- Line Context: Lines 1-1 from transcript
- Content: So how do you automatically create a PVC for each part in a stateful set?
- Multi-concept tags: Storage

### Evidence 1323: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets.txt
- Line Context: Lines 1-1 from transcript
- Content: You can achieve that using a volume claim template.
- Multi-concept tags: Storage

### Evidence 1324: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E28
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets.txt
- Line Context: Lines 1-1 from transcript
- Content: A volume claim template is really a persistent volume claim but templateized, it just means instead of creating a PVC manually and then specifying it in the stateful set definition file you move the entire PVC definition into a section named volume claim templates under these stateful Set Specification.
- Multi-concept tags: Storage

### Evidence 1325: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets.txt
- Line Context: Lines 1-1 from transcript
- Content: Volume claim templates is an array.
- Multi-concept tags: Storage

### Evidence 1326: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E30
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets.txt
- Line Context: Lines 1-1 from transcript
- Content: So you can specify multiple templates here.
- Multi-concept tags: Storage

### Evidence 1327: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E31
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets.txt
- Line Context: Lines 1-1 from transcript
- Content: So how does it look now?
- Multi-concept tags: Storage

### Evidence 1328: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets.txt
- Line Context: Lines 1-1 from transcript
- Content: We now have a stateful set with volume claim templates and a storage class definition with the right provisioner for gce.
- Multi-concept tags: Storage

### Evidence 1329: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E33
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets.txt
- Line Context: Lines 1-1 from transcript
- Content: When the stateful set is created first it creates the first part, and during the creation of the pod, a PVC is created.
- Multi-concept tags: Pods, Storage

### Evidence 1330: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E34
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets.txt
- Line Context: Lines 1-1 from transcript
- Content: The PVC is associated to a storage class so the storage class provisions a volume on GCP and then creates a PV and associates the PV with the volume and binds the PVC to the pv.
- Multi-concept tags: Storage

### Evidence 1331: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E35
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets.txt
- Line Context: Lines 1-1 from transcript
- Content: Then the second part is created the second part creates a pvc.
- Multi-concept tags: Storage

### Evidence 1332: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E36
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets.txt
- Line Context: Lines 1-1 from transcript
- Content: Then the stories, class provisions a new volume associates that to a PV and binds the PV to the PVC and so on, for the third part.
- Multi-concept tags: Storage

### Evidence 1333: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E37
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets.txt
- Line Context: Lines 1-1 from transcript
- Content: What if one of these pods fail and is recreated or rescheduled onto a note?
- Multi-concept tags: Pods, Storage, Scheduling, Troubleshooting

### Evidence 1334: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E38
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets.txt
- Line Context: Lines 1-1 from transcript
- Content: State full sets do not automatically delete the PVC or the associated volume to the pod.
- Multi-concept tags: Pods, Storage

### Evidence 1335: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E39
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets.txt
- Line Context: Lines 1-1 from transcript
- Content: Instead, it ensures that the pod is reattached to the same PVC that it was attached to before.
- Multi-concept tags: Pods, Storage

### Evidence 1336: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E40
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets.txt
- Line Context: Lines 1-1 from transcript
- Content: Thus, state stateful sets ensure stable storage for pots.
- Multi-concept tags: Storage

### Evidence 1337: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets.txt
- Line Context: Lines 1-1 from transcript
- Content: Well, that's it for now, and thank you so much for listening.
- Multi-concept tags: Storage

### Evidence 1338: certified-kubernetes-application-developer/09_Security/139_Authentication.extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 139_Authentication.txt
- Line Context: Lines 1-1 from transcript
- Content: I also want to point out that if you were trying this out in a cube ADM setup, you must also consider volume mounts to pass in the auth file.
- Multi-concept tags: Storage, Security-RBAC

### Evidence 1339: certified-kubernetes-application-developer/09_Security/145_API Groups.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 145_API Groups.txt
- Line Context: Lines 1-1 from transcript
- Content: The core group is where all core functionality exists, such as namespaces, pods, replication controllers, events and points, nodes, bindings, persistent volumes, persistent volume claims, Configmaps secrets, services, etc. the named group APIs are more organized and going forward.
- Multi-concept tags: Pods, Deployments, Services, Storage, Security-RBAC, Configuration, Architecture, Observability

### Evidence 1340: certified-kubernetes-application-developer/09_Security/145_API Groups.extraction.md::E16
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 09_Security / 145_API Groups.txt
- Line Context: Lines 1-1 from transcript
- Content: It has groups under it for apps, extensions, networking, storage, authentication, authorization, etc. shown here are just a few.
- Multi-concept tags: Networking, Storage, Security-RBAC

### Evidence 1341: certified-kubernetes-application-developer/09_Security/146_Authorization.extraction.md::E10
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 09_Security / 146_Authorization.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, we don't want the developers to have access to modify our cluster configuration, like adding or deleting nodes or the storage or networking configurations.
- Multi-concept tags: Networking, Storage, Security-RBAC, Architecture, CKA-CKAD

### Evidence 1342: certified-kubernetes-application-developer/09_Security/150_Cluster Roles.extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 150_Cluster Roles.txt
- Line Context: Lines 1-1 from transcript
- Content: Like nodes, persistent volumes persist the cluster roles and cluster role bindings that we're going to look at in this lecture.
- Multi-concept tags: Storage, Security-RBAC, Architecture

### Evidence 1343: certified-kubernetes-application-developer/09_Security/150_Cluster Roles.extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 150_Cluster Roles.txt
- Line Context: Lines 1-1 from transcript
- Content: But how do we authorize users to cluster resources like nodes or persistent volumes?
- Multi-concept tags: Storage, Security-RBAC, Architecture

### Evidence 1344: certified-kubernetes-application-developer/09_Security/150_Cluster Roles.extraction.md::E30
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 09_Security / 150_Cluster Roles.txt
- Line Context: Lines 1-1 from transcript
- Content: Similarly, a storage administrator role can be created to authorize a storage admin to create persistent volumes and claims.
- Multi-concept tags: Storage, Security-RBAC, Architecture

### Evidence 1345: certified-kubernetes-application-developer/09_Security/152_Solution Cluster Roles.extraction.md::E73
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 09_Security / 152_Solution Cluster Roles.txt
- Line Context: Lines 1-1 from transcript
- Content: Now the next question is Michelle's responsibilities are growing and now she will be responsible for storage as well.
- Multi-concept tags: Storage, Security-RBAC, Architecture

### Evidence 1346: certified-kubernetes-application-developer/09_Security/152_Solution Cluster Roles.extraction.md::E74
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 09_Security / 152_Solution Cluster Roles.txt
- Line Context: Lines 1-1 from transcript
- Content: So create the required cluster role and role bindings to allow her access to storage.
- Multi-concept tags: Storage, Security-RBAC, Architecture

### Evidence 1347: certified-kubernetes-application-developer/09_Security/152_Solution Cluster Roles.extraction.md::E85
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 152_Solution Cluster Roles.txt
- Line Context: Lines 1-1 from transcript
- Content: So as we learned the personal volumes and personal volume claims, I'm sorry the cluster role bindings are not name space.
- Multi-concept tags: Storage, Security-RBAC, Architecture

### Evidence 1348: certified-kubernetes-application-developer/09_Security/152_Solution Cluster Roles.extraction.md::E91
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 09_Security / 152_Solution Cluster Roles.txt
- Line Context: Lines 1-1 from transcript
- Content: So we wanna create a cluster role to allow Michelle access to storage classes.
- Multi-concept tags: Storage, Security-RBAC, Architecture

### Evidence 1349: certified-kubernetes-application-developer/09_Security/152_Solution Cluster Roles.extraction.md::E93
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 152_Solution Cluster Roles.txt
- Line Context: Lines 1-1 from transcript
- Content: The name is storage admin.
- Multi-concept tags: Storage, Security-RBAC, Architecture

### Evidence 1350: certified-kubernetes-application-developer/09_Security/152_Solution Cluster Roles.extraction.md::E94
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 152_Solution Cluster Roles.txt
- Line Context: Lines 1-1 from transcript
- Content: So storage admin, and the resource, there are two resources, persistent volumes and storage classes.
- Multi-concept tags: Storage, Security-RBAC, Architecture

### Evidence 1351: certified-kubernetes-application-developer/09_Security/152_Solution Cluster Roles.extraction.md::E95
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 09_Security / 152_Solution Cluster Roles.txt
- Line Context: Lines 1-1 from transcript
- Content: So first resource is persistent volumes.
- Multi-concept tags: Storage, Security-RBAC, Architecture

### Evidence 1352: certified-kubernetes-application-developer/09_Security/152_Solution Cluster Roles.extraction.md::E96
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 152_Solution Cluster Roles.txt
- Line Context: Lines 1-1 from transcript
- Content: Skip that, and storage classes, skip that.
- Multi-concept tags: Storage, Security-RBAC, Architecture

### Evidence 1353: certified-kubernetes-application-developer/09_Security/152_Solution Cluster Roles.extraction.md::E101
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 152_Solution Cluster Roles.txt
- Line Context: Lines 1-1 from transcript
- Content: Kube cuddle describe cluster role storage admin.
- Multi-concept tags: Storage, Security-RBAC, Architecture, On-Prem

### Evidence 1354: certified-kubernetes-application-developer/09_Security/152_Solution Cluster Roles.extraction.md::E106
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 152_Solution Cluster Roles.txt
- Line Context: Lines 1-1 from transcript
- Content: Name a storage admin.
- Multi-concept tags: Storage, Security-RBAC, Architecture

### Evidence 1355: certified-kubernetes-application-developer/09_Security/152_Solution Cluster Roles.extraction.md::E109
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 09_Security / 152_Solution Cluster Roles.txt
- Line Context: Lines 1-1 from transcript
- Content: So you have persistent and volumes and then you have storage class.
- Multi-concept tags: Storage, Security-RBAC, Architecture

### Evidence 1356: certified-kubernetes-application-developer/09_Security/152_Solution Cluster Roles.extraction.md::E114
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 152_Solution Cluster Roles.txt
- Line Context: Lines 1-1 from transcript
- Content: So the name is Michelle storage admin.
- Multi-concept tags: Storage, Security-RBAC, Architecture

### Evidence 1357: certified-kubernetes-application-developer/09_Security/152_Solution Cluster Roles.extraction.md::E115
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 152_Solution Cluster Roles.txt
- Line Context: Lines 1-1 from transcript
- Content: The user is Michelle, and the cluster role is storage admin.
- Multi-concept tags: Storage, Security-RBAC, Architecture

### Evidence 1358: certified-kubernetes-application-developer/09_Security/152_Solution Cluster Roles.extraction.md::E117
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 152_Solution Cluster Roles.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, and we can see the cluster role that is associated to the storage admin, and the user is Michelle.
- Multi-concept tags: Storage, Security-RBAC, Architecture

### Evidence 1359: certified-kubernetes-application-developer/09_Security/152_Solution Cluster Roles.extraction.md::E118
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 152_Solution Cluster Roles.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's do a kube cuddle as well and get storage process and see that that's working as expected.
- Multi-concept tags: Storage, Security-RBAC, Architecture

### Evidence 1360: certified-kubernetes-application-developer/09_Security/153_Admission Controllers.extraction.md::E32
- Type: Architecture
- Source: certified-kubernetes-application-developer / 09_Security / 153_Admission Controllers.txt
- Line Context: Lines 1-1 from transcript
- Content: The default storage class admission controller that observes the creation of PVCs and automatically adds the default storage class to them if one is not specified, the event rate limit admission controller can help set a limit on the requests with the API server can handle at a time.
- Multi-concept tags: Storage, Security-RBAC, Architecture, Observability

### Evidence 1361: certified-kubernetes-application-developer/09_Security/155_Solution_ Admission Controllers.extraction.md::E58
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 09_Security / 155_Solution_ Admission Controllers.txt
- Line Context: Lines 1-1 from transcript
- Content: The next question is asking us to disable the default storage class admission controller.
- Multi-concept tags: Storage, Security-RBAC

### Evidence 1362: certified-kubernetes-application-developer/09_Security/155_Solution_ Admission Controllers.extraction.md::E62
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 09_Security / 155_Solution_ Admission Controllers.txt
- Line Context: Lines 1-1 from transcript
- Content: So I'm gonna go right below this line and I'm gonna say disable-admission-plugins equals and then we're gonna add DefaultStorageClass.
- Multi-concept tags: Storage, Security-RBAC

### Evidence 1363: certified-kubernetes-application-developer/09_Security/156_Validating and Mutating Admission Controllers.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 156_Validating and Mutating Admission Controllers.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's look at another type of admission controller plugin named as the default storage class plugin.
- Multi-concept tags: Storage, Security-RBAC

### Evidence 1364: certified-kubernetes-application-developer/09_Security/156_Validating and Mutating Admission Controllers.extraction.md::E7
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 09_Security / 156_Validating and Mutating Admission Controllers.txt
- Line Context: Lines 1-1 from transcript
- Content: Say for example, you're submitting a request to create a PVC.
- Multi-concept tags: Storage, Security-RBAC, CKA-CKAD

### Evidence 1365: certified-kubernetes-application-developer/09_Security/156_Validating and Mutating Admission Controllers.extraction.md::E9
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 09_Security / 156_Validating and Mutating Admission Controllers.txt
- Line Context: Lines 1-1 from transcript
- Content: The default storage class admission controller will watch for request to create a PVC and check if it has a storage class mentioned in it.
- Multi-concept tags: Storage, Security-RBAC

### Evidence 1366: certified-kubernetes-application-developer/09_Security/156_Validating and Mutating Admission Controllers.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 156_Validating and Mutating Admission Controllers.txt
- Line Context: Lines 1-1 from transcript
- Content: If not, which is true in our case, it will modify your request to add the default storage class to your request.
- Multi-concept tags: Storage, Security-RBAC

### Evidence 1367: certified-kubernetes-application-developer/09_Security/156_Validating and Mutating Admission Controllers.extraction.md::E11
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 09_Security / 156_Validating and Mutating Admission Controllers.txt
- Line Context: Lines 1-1 from transcript
- Content: This could be whatever storage class is configured as the default storage class in your cluster.
- Multi-concept tags: Storage, Security-RBAC, Architecture

### Evidence 1368: certified-kubernetes-application-developer/09_Security/156_Validating and Mutating Admission Controllers.extraction.md::E12
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 09_Security / 156_Validating and Mutating Admission Controllers.txt
- Line Context: Lines 1-1 from transcript
- Content: So when the PVC is created and you inspect it, you will see that a storage class default is added to it.
- Multi-concept tags: Storage, Security-RBAC

### Evidence 1369: certified-kubernetes-application-developer/09_Security/159_API Versions.extraction.md::E15
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 09_Security / 159_API Versions.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, at the time of this recording, the API group internal dot API server dot case dot io, which has the resource storage version is only available as V1 Alpha 1.
- Multi-concept tags: Storage, Security-RBAC, Architecture, CKA-CKAD

### Evidence 1370: certified-kubernetes-application-developer/09_Security/159_API Versions.extraction.md::E50
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 09_Security / 159_API Versions.txt
- Line Context: Lines 1-1 from transcript
- Content: But even though there are multiple versions supported at the same time, only one can be the preferred or storage version.
- Multi-concept tags: Storage, Security-RBAC

### Evidence 1371: certified-kubernetes-application-developer/09_Security/159_API Versions.extraction.md::E56
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 09_Security / 159_API Versions.txt
- Line Context: Lines 1-1 from transcript
- Content: Also, when multiple versions are present, only one version can be the storage version.
- Multi-concept tags: Storage, Security-RBAC

### Evidence 1372: certified-kubernetes-application-developer/09_Security/159_API Versions.extraction.md::E57
- Type: Architecture
- Source: certified-kubernetes-application-developer / 09_Security / 159_API Versions.txt
- Line Context: Lines 1-1 from transcript
- Content: This means if any object is created with the API version set to anything other than the storage version, such as V1 Alpha 1 or V1 Beta 1, then those will be converted to the storage version, which is V1 before storing them into the etcd database.
- Multi-concept tags: Storage, Security-RBAC, Architecture

### Evidence 1373: certified-kubernetes-application-developer/09_Security/159_API Versions.extraction.md::E58
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 159_API Versions.txt
- Line Context: Lines 1-1 from transcript
- Content: So that's what the preferred and storage versions mean.
- Multi-concept tags: Storage, Security-RBAC

### Evidence 1374: certified-kubernetes-application-developer/09_Security/159_API Versions.extraction.md::E60
- Type: Architecture
- Source: certified-kubernetes-application-developer / 09_Security / 159_API Versions.txt
- Line Context: Lines 1-1 from transcript
- Content: And the storage version is the version in which an object is stored in etcd respective of the version you have used in the yaml file while creating the object.
- Multi-concept tags: Storage, Security-RBAC, Configuration, Architecture

### Evidence 1375: certified-kubernetes-application-developer/09_Security/159_API Versions.extraction.md::E61
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 159_API Versions.txt
- Line Context: Lines 1-1 from transcript
- Content: Remember, only one can be the preferred or storage version.
- Multi-concept tags: Storage, Security-RBAC

### Evidence 1376: certified-kubernetes-application-developer/09_Security/159_API Versions.extraction.md::E62
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 159_API Versions.txt
- Line Context: Lines 1-1 from transcript
- Content: And even though the preferred and storage versions are usually the same they can be different.
- Multi-concept tags: Storage, Security-RBAC

### Evidence 1377: certified-kubernetes-application-developer/09_Security/159_API Versions.extraction.md::E67
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 159_API Versions.txt
- Line Context: Lines 1-1 from transcript
- Content: And as of now it is not possible to see which is the storage version of a particular API through an API or a command.
- Multi-concept tags: Storage, Security-RBAC, Configuration

### Evidence 1378: certified-kubernetes-application-developer/09_Security/160_API Deprecations.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 160_API Deprecations.txt
- Line Context: Lines 1-1 from transcript
- Content: But the preferred or storage version could be we one alpha two.
- Multi-concept tags: Storage, Security-RBAC

### Evidence 1379: certified-kubernetes-application-developer/09_Security/160_API Deprecations.extraction.md::E45
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 160_API Deprecations.txt
- Line Context: Lines 1-1 from transcript
- Content: Now since it is the only version it is the preferred and storage version.
- Multi-concept tags: Storage, Security-RBAC

### Evidence 1380: certified-kubernetes-application-developer/09_Security/160_API Deprecations.extraction.md::E69
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 160_API Deprecations.txt
- Line Context: Lines 1-1 from transcript
- Content: Why isn't the, v one beta two version the preferred and storage version because rule four B states that the preferred API version and the storage version for a given group may not advance until after a release has been made that supports both the new version and the previous version.
- Multi-concept tags: Storage, Security-RBAC

### Evidence 1381: certified-kubernetes-application-developer/09_Security/160_API Deprecations.extraction.md::E71
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 160_API Deprecations.txt
- Line Context: Lines 1-1 from transcript
- Content: So we cannot change the preferred storage version yet.
- Multi-concept tags: Storage, Security-RBAC

### Evidence 1382: certified-kubernetes-application-developer/09_Security/160_API Deprecations.extraction.md::E73
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 09_Security / 160_API Deprecations.txt
- Line Context: Lines 1-1 from transcript
- Content: The next release also has both versions except beta two now becomes the preferred storage version.
- Multi-concept tags: Storage, Security-RBAC

### Evidence 1383: certified-kubernetes-application-developer/09_Security/160_API Deprecations.extraction.md::E76
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 09_Security / 160_API Deprecations.txt
- Line Context: Lines 1-1 from transcript
- Content: V one beta two is still the preferred or storage version because this is the first release that has the V one version, but it now becomes deprecated.
- Multi-concept tags: Storage, Security-RBAC

### Evidence 1384: certified-kubernetes-application-developer/09_Security/160_API Deprecations.extraction.md::E80
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 160_API Deprecations.txt
- Line Context: Lines 1-1 from transcript
- Content: With x plus six V one can now be the preferred and storage version while beta two is going to stay around for another release to complete its three release support with X plus seven version, nothing changes as beta two continues to stay around for the last time before it will be removed.
- Multi-concept tags: Storage, Security-RBAC

### Evidence 1385: certified-kubernetes-application-developer/09_Security/163_Custom Resource Definition.extraction.md::E72
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 09_Security / 163_Custom Resource Definition.txt
- Line Context: Lines 1-1 from transcript
- Content: And we know that there are Namespaced and non namespaced scopes in Kubernetes for example, pods, replica sets, deployments are all scoped, whereas persistent volumes, nodes and namespace itself are non Unknown non scoped objects.
- Multi-concept tags: Pods, Deployments, Storage, Security-RBAC, Architecture, CKA-CKAD

### Evidence 1386: certified-kubernetes-application-developer/09_Security/163_Custom Resource Definition.extraction.md::E98
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 163_Custom Resource Definition.txt
- Line Context: Lines 1-1 from transcript
- Content: And we also define which is the storage version.
- Multi-concept tags: Storage, Security-RBAC

### Evidence 1387: certified-kubernetes-application-developer/09_Security/163_Custom Resource Definition.extraction.md::E99
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 09_Security / 163_Custom Resource Definition.txt
- Line Context: Lines 1-1 from transcript
- Content: If you have multiple versions, only one version can be marked as the storage version.
- Multi-concept tags: Storage, Security-RBAC

### Evidence 1388: certified-kubernetes-application-developer/09_Security/163_Custom Resource Definition.extraction.md::E100
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 163_Custom Resource Definition.txt
- Line Context: Lines 1-1 from transcript
- Content: We discussed about what are storage versions in the lecture about APIs earlier in this course.
- Multi-concept tags: Storage, Security-RBAC

### Evidence 1389: certified-kubernetes-application-developer/10_Helm Fundamentals/167_Helm Introduction.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-application-developer / 10_Helm Fundamentals / 167_Helm Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: A persistent volume to store the database, a persistent volume claim, a service to expose the web server running in a pod, and a secret to store the admin password and maybe even more if you want extra stuff like periodic backups and so on.
- Multi-concept tags: Pods, Services, Storage, Security-RBAC, Configuration

### Evidence 1390: certified-kubernetes-application-developer/10_Helm Fundamentals/167_Helm Introduction.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-application-developer / 10_Helm Fundamentals / 167_Helm Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: Persistent volumes are 20GB, but we know our website will need much more storage and we go to the YAML files where persistent volumes and claims are declared.
- Multi-concept tags: Storage, Configuration

### Evidence 1391: certified-kubernetes-application-developer/10_Helm Fundamentals/167_Helm Introduction.extraction.md::E29
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 10_Helm Fundamentals / 167_Helm Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: It doesn't really know that the persistent volume and that deployment and that secret and that service are all part of a big application called WordPress.
- Multi-concept tags: Deployments, Services, Storage, Security-RBAC, Configuration

### Evidence 1392: certified-kubernetes-application-developer/10_Helm Fundamentals/167_Helm Introduction.extraction.md::E51
- Type: Concept
- Source: certified-kubernetes-application-developer / 10_Helm Fundamentals / 167_Helm Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: It's called a value.yaml file, and this is where we can change the size of our persistent volumes, choose the name of our WordPress website, the admin password, settings for the database engine and so on.
- Multi-concept tags: Storage, Configuration

### Evidence 1393: certified-kubernetes-application-developer/10_Helm Fundamentals/171_Helm Concepts.extraction.md::E6
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 10_Helm Fundamentals / 171_Helm Concepts.txt
- Line Context: Lines 1-1 from transcript
- Content: We have the deployment dot yaml the secret dot yaml tv dot yaml, PVC dot yaml and the service dot yaml.
- Multi-concept tags: Deployments, Services, Storage, Security-RBAC, Configuration

### Evidence 1394: certified-kubernetes-application-developer/10_Helm Fundamentals/171_Helm Concepts.extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-application-developer / 10_Helm Fundamentals / 171_Helm Concepts.txt
- Line Context: Lines 1-1 from transcript
- Content: These, this file has the image storage and password encoded variables defined with the values We want these to have.
- Multi-concept tags: Storage, Configuration

### Evidence 1395: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E59
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: We're gonna change it to, it's gonna be prefixed with KodeCloud as well, but it's gonna end in -storage.
- Multi-concept tags: Storage, Configuration, Troubleshooting

### Evidence 1396: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E78
- Type: Concept
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: And for the db, I'm gonna do -storage.
- Multi-concept tags: Storage, Configuration

### Evidence 1397: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E79
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: So we'll do nameSuffix: -storage.
- Multi-concept tags: Storage, Configuration, Troubleshooting

### Evidence 1398: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E82
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: So for this case, we have our db-deployment file, and we can see that the name is KodeCloud, so the prefix is still there, and then the suffix is set to storage.
- Multi-concept tags: Deployments, Storage, Configuration, Troubleshooting

### Evidence 1399: certified-kubernetes-application-developer/13_Certification Tips/198_Time Management.extraction.md::E59
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 13_Certification Tips / 198_Time Management.txt
- Line Context: Lines 1-1 from transcript
- Content: And finally, remember to use alias names or shortcuts, such as po for pods, rs for replica sets, deploy for deployments, svc for services, and ns for namespaces, netpol for network policies, pv for persistent volumes, and pvc for persistent volume claims, sa for service accounts, etc.
- Multi-concept tags: Pods, Deployments, Services, Networking, Storage, Security-RBAC, CKA-CKAD

### Evidence 1400: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E2
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Line Context: Lines 1-1 from transcript
- Content: The first question, it's asking us to create a PersistentVolume called log-volume.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 1401: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E3
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Line Context: Lines 1-1 from transcript
- Content: And it's saying that this should make use of a StorageClass name manual, it should use RWX as the access mode and have a size of 1 Gi, and the volume should use the host path /opt/volume/nginx.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 1402: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E5
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Line Context: Lines 1-1 from transcript
- Content: And so what I'm gonna do is I'm gonna just create a new file and we'll just call this log-volume.yaml.
- Multi-concept tags: Storage, Configuration, CKA-CKAD

### Evidence 1403: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E6
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Line Context: Lines 1-1 from transcript
- Content: And if you want, at this point, you can pull up the Kubernetes documentation to get a baseline template of how to configure a PersistentVolume.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 1404: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E7
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Line Context: Lines 1-1 from transcript
- Content: So if you go to the PersistentVolume section, I'm just gonna copy this right here, and then we can paste that right in.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 1405: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E8
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Line Context: Lines 1-1 from transcript
- Content: So first thing, we're gonna change the name, this is gonna be log-volume.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 1406: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Line Context: Lines 1-1 from transcript
- Content: StorageClass name, this is gonna be set to manual.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 1407: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Line Context: Lines 1-1 from transcript
- Content: And finally, let's set the host path, so that be /opt/volume/nginx.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 1408: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Line Context: Lines 1-1 from transcript
- Content: And that's all we need to do for the PersistentVolume.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 1409: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E19
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Line Context: Lines 1-1 from transcript
- Content: Now the next step, we have to create a PersistentVolumeClaim called log claim with the following specs, so let's go ahead and create a new file vi, and I'll call this a log-claim.yaml.
- Multi-concept tags: Storage, Configuration, CKA-CKAD

### Evidence 1410: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E20
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Line Context: Lines 1-1 from transcript
- Content: And once again, we can go back to the documentation and find an example of a PersistentVolumeClaim, so we don't have to hand write everything out.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 1411: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Line Context: Lines 1-1 from transcript
- Content: I'm gonna delete the volume mode section.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 1412: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E25
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Line Context: Lines 1-1 from transcript
- Content: Then, for storage, it's saying that this should request a minimum of 200.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 1413: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E26
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Line Context: Lines 1-1 from transcript
- Content: And StorageClass name should be manual as well.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 1414: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Line Context: Lines 1-1 from transcript
- Content: And that's going to wrap up the configuration for the PVC.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 1415: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Line Context: Lines 1-1 from transcript
- Content: And if I do a kubectl get PVC, you see that we've got one PVC.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 1416: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E36
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Line Context: Lines 1-1 from transcript
- Content: And so to mount this, I'm gonna create a volume section, and we've got one volume, I'm just gonna call this log.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 1417: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E37
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Line Context: Lines 1-1 from transcript
- Content: And then here, we'll provide the PersistentVolume claim.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 1418: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E39
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Line Context: Lines 1-1 from transcript
- Content: And then under the container, I'll do volume mounts.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 1419: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E104
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Line Context: Lines 1-1 from transcript
- Content: And notice how this is going to make use of an environment variable that's going to reference the config map we created in the previous step and we have to write the result out to the following location here, and the path/opt/time on the Pod should mount a volume that lasts the lifetime of this Pod.
- Multi-concept tags: Pods, Storage, Configuration, CKA-CKAD

### Evidence 1420: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E120
- Type: Concept
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so now let's mount the volumes.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 1421: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E121
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Line Context: Lines 1-1 from transcript
- Content: So I'm gonna define the volumes first, so we'll do volumes.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 1422: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E122
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Line Context: Lines 1-1 from transcript
- Content: Name is gonna be called log-volume, and then we'll do emptydir.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 1423: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E123
- Type: Concept
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Line Context: Lines 1-1 from transcript
- Content: And this will be volume mount.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 1424: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E124
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Line Context: Lines 1-1 from transcript
- Content: The name of this is gonna be log-volume, and the mount path should be /opt/time.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 1425: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E157
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Line Context: Lines 1-1 from transcript
- Content: It should use a label of app=redis, and then we should also mount these two volumes.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 1426: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E163
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Line Context: Lines 1-1 from transcript
- Content: Now the next thing that we have to do is we have to specify the volumes.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 1427: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E164
- Type: Concept
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna have two volumes.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 1428: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E169
- Type: Concept
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Line Context: Lines 1-1 from transcript
- Content: So we'll do volume mount.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 1429: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E170
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Line Context: Lines 1-1 from transcript
- Content: The first one is gonna be the data, and the volume mount...
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 1430: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E171
- Type: Concept
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Line Context: Lines 1-1 from transcript
- Content: Sorry, not the volume mount, the mount path.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 1431: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E80
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Line Context: Lines 1-1 from transcript
- Content: The next thing that we have to do is the container should mount a read only secret volume called secret dash volume at the path of slash etc slash secret volume.
- Multi-concept tags: Storage, Security-RBAC, CKA-CKAD

### Evidence 1432: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E82
- Type: Concept
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's define our volumes.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 1433: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E83
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna do name and we'll call this secret dash volume and then the secret that we're gonna reference, which is dot file dash secret.
- Multi-concept tags: Storage, Security-RBAC, CKA-CKAD

### Evidence 1434: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E84
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Line Context: Lines 1-1 from transcript
- Content: And then we can go under the container and define our volume mount.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 1435: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E85
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Line Context: Lines 1-1 from transcript
- Content: And it should be secret dash volume.
- Multi-concept tags: Storage, Security-RBAC, CKA-CKAD

### Evidence 1436: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E89
- Type: Concept
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Line Context: Lines 1-1 from transcript
- Content: I'm gonna set this to be slash etc slash secret dash volume.
- Multi-concept tags: Storage, Security-RBAC, CKA-CKAD

### Evidence 1437: certified-kubernetes-application-developer/15_Mock Exams/206_Mock Exam -1 (Solution).extraction.md::E106
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 206_Mock Exam -1 (Solution).txt
- Line Context: Lines 1-1 from transcript
- Content: And for this, we have to create a persistent volume with the following requirements.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 1438: certified-kubernetes-application-developer/15_Mock Exams/206_Mock Exam -1 (Solution).extraction.md::E107
- Type: Concept
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 206_Mock Exam -1 (Solution).txt
- Line Context: Lines 1-1 from transcript
- Content: And for this, instead of writing everything out by hand, I'm gonna go pull up the documentation for persistent volumes.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 1439: certified-kubernetes-application-developer/15_Mock Exams/206_Mock Exam -1 (Solution).extraction.md::E108
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 206_Mock Exam -1 (Solution).txt
- Line Context: Lines 1-1 from transcript
- Content: So, there's gonna be a section here under storage persistent volume, which gonna give us an example.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 1440: certified-kubernetes-application-developer/15_Mock Exams/208_Mock Exam -2 (Solution).extraction.md::E126
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 208_Mock Exam -2 (Solution).txt
- Line Context: Lines 1-1 from transcript
- Content: And for the final question, we have to create a persistent volume called custom volume, with the size of 50 Mebibytes, a reclaim policy of retain, AccessMode to ReadWriteMany, and a host path of /op/data.
- Multi-concept tags: Storage, CKA-CKAD, Platform Engineering

### Evidence 1441: certified-kubernetes-application-developer/15_Mock Exams/208_Mock Exam -2 (Solution).extraction.md::E127
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 208_Mock Exam -2 (Solution).txt
- Line Context: Lines 1-1 from transcript
- Content: So if you want to, you can pull up the Kubernetes documentations for a volume, and you could just grab one of the examples, and then you use that as a base.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 1442: certified-kubernetes-application-developer/15_Mock Exams/208_Mock Exam -2 (Solution).extraction.md::E130
- Type: Concept
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 208_Mock Exam -2 (Solution).txt
- Line Context: Lines 1-1 from transcript
- Content: So the name is going to be called custom-volume.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 1443: certified-kubernetes-application-developer/15_Mock Exams/208_Mock Exam -2 (Solution).extraction.md::E131
- Type: Concept
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 208_Mock Exam -2 (Solution).txt
- Line Context: Lines 1-1 from transcript
- Content: The storage, this is gonna be 50 Mi, and we wanna change the AccessMode to ReadWriteMany.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 1444: certified-kubernetes-application-developer/15_Mock Exams/208_Mock Exam -2 (Solution).extraction.md::E132
- Type: Concept
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 208_Mock Exam -2 (Solution).txt
- Line Context: Lines 1-1 from transcript
- Content: We won't need the volume mode, the persistent volume claim is set to retain accordingly.
- Multi-concept tags: Storage, CKA-CKAD

### Evidence 1445: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E31
- Type: Concept
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Line Context: Lines 1-1 from transcript
- Content: There was support for volumes of security.
- Multi-concept tags: Storage, Security-RBAC, On-Prem

### Evidence 1446: learn-kubernetes/02_Kubernetes Overview/009_A note on Docker deprecation.extraction.md::E5
- Type: Operational Insight
- Source: learn-kubernetes / 02_Kubernetes Overview / 009_A note on Docker deprecation.txt
- Line Context: Lines 1-1 from transcript
- Content: There was support for volumes, auth, security and finally also the container runtime called Runc and the daemon that managed the runtime called the container.
- Multi-concept tags: Storage, Security-RBAC

### Evidence 1447: learn-kubernetes/02_Kubernetes Overview/009_A note on Docker deprecation.extraction.md::E10
- Type: Concept
- Source: learn-kubernetes / 02_Kubernetes Overview / 009_A note on Docker deprecation.txt
- Line Context: Lines 1-1 from transcript
- Content: The other tools that Docker supported like Docker CLI or the API, or build volumes or etc. as they were all taken care of of by Kubernetes itself.
- Multi-concept tags: Storage

### Evidence 1448: learn-kubernetes/03_Kubernetes Concepts/014_Pods.extraction.md::E37
- Type: Concept
- Source: learn-kubernetes / 03_Kubernetes Concepts / 014_Pods.txt
- Line Context: Lines 1-1 from transcript
- Content: Plus, they can easily share the same storage space as well.
- Multi-concept tags: Pods, Storage

### Evidence 1449: learn-kubernetes/03_Kubernetes Concepts/014_Pods.extraction.md::E51
- Type: Implementation Step
- Source: learn-kubernetes / 03_Kubernetes Concepts / 014_Pods.txt
- Line Context: Lines 1-1 from transcript
- Content: We would need to create shareable volumes and share it among the containers.
- Multi-concept tags: Pods, Storage

### Evidence 1450: learn-kubernetes/03_Kubernetes Concepts/014_Pods.extraction.md::E56
- Type: Implementation Step
- Source: learn-kubernetes / 03_Kubernetes Concepts / 014_Pods.txt
- Line Context: Lines 1-1 from transcript
- Content: We just need to define what containers a pod consists of, and the containers in a pod by default will have access to the same storage, the same network namespace, and same fate as in they will be created together and destroyed together.
- Multi-concept tags: Pods, Networking, Storage

### Evidence 1451: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E44
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Line Context: Lines 1-1 from transcript
- Content: So in this case it prompts me to create storage.
- Multi-concept tags: Storage, Cross-Cloud
