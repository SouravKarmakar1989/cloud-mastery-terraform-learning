# KB Concept Storage

## Normalized Concept View: Storage

Storage layer stateful workload-এর durability নিশ্চিত করে। Bengali mental model: Pod replace হলেও data lifecycle PV/PVC contract দিয়ে survive করে।

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

#### Evidence 1: certified-kubernetes-administrator-with-practice-tests/01_Introduction/004_The Kubernetes Trilogy.extraction.md::E16
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 01_Introduction / 004_The Kubernetes Trilogy / 004_The Kubernetes Trilogy.txt
- Topic: The Kubernetes Trilogy
- Line Context: Lines 1-1 from transcript
- Content: The Kubernetes for Administrators course focuses on advanced topics on Kubernetes and in-depth discussions into the various concepts around deploying a high availability cluster for production use case, understanding more about scheduling, monitoring, maintenance, securities, storage, and troubleshooting.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 2: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD / 008_Docker-vs-ContainerD.txt
- Topic: Docker-vs-ContainerD
- Line Context: Lines 1-1 from transcript
- Content: There was support for volumes of security.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

#### Evidence 3: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/009_A note on Docker deprecation.extraction.md::E5
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 009_A note on Docker deprecation / 009_A note on Docker deprecation.txt
- Topic: A note on Docker deprecation
- Line Context: Lines 1-1 from transcript
- Content: There was support for volumes, auth, security and finally also the container runtime called Runc and the daemon that managed the runtime called the container.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 4: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/009_A note on Docker deprecation.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 009_A note on Docker deprecation / 009_A note on Docker deprecation.txt
- Topic: A note on Docker deprecation
- Line Context: Lines 1-1 from transcript
- Content: The other tools that Docker supported like Docker CLI or the API, or build volumes or etc. as they were all taken care of of by Kubernetes itself.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

#### Evidence 5: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/010_ETCD For Beginners.extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 010_ETCD For Beginners / 010_ETCD For Beginners.txt
- Topic: ETCD For Beginners
- Line Context: Lines 1-1 from transcript
- Content: A third type of storage option is what we call a key value store.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 6: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/010_ETCD For Beginners.extraction.md::E48
- Type: Comparison
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 010_ETCD For Beginners / 010_ETCD For Beginners.txt
- Topic: ETCD For Beginners
- Line Context: Lines 1-1 from transcript
- Content: So how does a key value store compare to other storage models?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 7: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E69
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: And then this config file is passed in as a volume here as a config file.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 8: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E70
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: So basically whatever is the contents in the uh, in that particular config map is then mapped to a volume mount to a volume here the specific location.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 9: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E74
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers / 077_Multiple Schedulers.txt
- Topic: Multiple Schedulers
- Line Context: Lines 1-1 from transcript
- Content: But again if you haven't gone through the volume and volume mount sections of this course, then just hold off on this for now and you'll understand that when we talk about these and then again liveness probes, readiness probes, resources and security context, all of these are sections that we talk about later.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 10: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E21
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: And let's create a ConfigMap that the new scheduler will employ using the concept of ConfigMap as a volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 11: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E59
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler / 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript
- Content: And that basically passes through as a volume mount here.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 12: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/082_(2025 Updates)Admission Controllers.extraction.md::E31
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 082_(2025 Updates)Admission Controllers / 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript
- Content: The default storage class admission controller that observes the creation of PVCs and automatically adds the default storage class to them if one is not specified, the event rate limit admission controller can help set a limit on the requests with the the API server can handle at a time.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 13: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/084_(2025 Updates)Lab Solution_ Admission Controllers.extraction.md::E46
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 084_(2025 Updates)Lab Solution_ Admission Controllers / 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript
- Content: The next question is asking us to disable the DefaultStorageClass admission controller.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 14: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/084_(2025 Updates)Lab Solution_ Admission Controllers.extraction.md::E49
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 084_(2025 Updates)Lab Solution_ Admission Controllers / 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Topic: (2025 Updates)Lab Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript
- Content: So I'm gonna go right below this line, and I'm gonna say disable-admission-plugins= and then we're gonna add DefaultStorageClass.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 15: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/085_(2025 Updates)Validating and Mutating Admission Controllers.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 085_(2025 Updates)Validating and Mutating Admission Controllers / 085_(2025 Updates)Validating and Mutating Admission Controllers.txt
- Topic: (2025 Updates)Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript
- Content: Let's look at another type of admission controller plugin named as the default storage class plugin.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 16: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/085_(2025 Updates)Validating and Mutating Admission Controllers.extraction.md::E7
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 085_(2025 Updates)Validating and Mutating Admission Controllers / 085_(2025 Updates)Validating and Mutating Admission Controllers.txt
- Topic: (2025 Updates)Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript
- Content: Say for example, you're submitting a request to create a PVC.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 17: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/085_(2025 Updates)Validating and Mutating Admission Controllers.extraction.md::E9
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 085_(2025 Updates)Validating and Mutating Admission Controllers / 085_(2025 Updates)Validating and Mutating Admission Controllers.txt
- Topic: (2025 Updates)Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript
- Content: The default storage class admission controller will watch for requests to create a PVC and check if it has a storage class mentioned in it.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 18: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/085_(2025 Updates)Validating and Mutating Admission Controllers.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 085_(2025 Updates)Validating and Mutating Admission Controllers / 085_(2025 Updates)Validating and Mutating Admission Controllers.txt
- Topic: (2025 Updates)Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript
- Content: If not, which is true in our case, it will modify your request to add the default storage class to your request.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 19: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/085_(2025 Updates)Validating and Mutating Admission Controllers.extraction.md::E11
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 085_(2025 Updates)Validating and Mutating Admission Controllers / 085_(2025 Updates)Validating and Mutating Admission Controllers.txt
- Topic: (2025 Updates)Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript
- Content: This could be whatever storage class is configured as the default storage class in your cluster.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 20: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/085_(2025 Updates)Validating and Mutating Admission Controllers.extraction.md::E12
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 085_(2025 Updates)Validating and Mutating Admission Controllers / 085_(2025 Updates)Validating and Mutating Admission Controllers.txt
- Topic: (2025 Updates)Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript
- Content: So when the PVC is created and you inspect it, you will see that a storage class default is added to it even though you hadn't specified it during the creation.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 21: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/105_Configuring ConfigMaps in Applications.extraction.md::E51
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 105_Configuring ConfigMaps in Applications / 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
- Line Context: Lines 1-1 from transcript
- Content: You can inject it as a single environment variable, or you can inject the whole data as files in a volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 22: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/108_Secrets.extraction.md::E63
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 108_Secrets / 108_Secrets.txt
- Topic: Secrets
- Line Context: Lines 1-1 from transcript
- Content: You can inject as single environment variables or inject the whole secret as files in a volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 23: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/112_Demo_ Encrypting Secret Data at Rest.extraction.md::E135
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 112_Demo_ Encrypting Secret Data at Rest / 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript
- Content: Then, of course, we need to, since the file is created locally, I have to mount it inside, so I'm gonna use volumes and volume mount.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 24: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/112_Demo_ Encrypting Secret Data at Rest.extraction.md::E136
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 112_Demo_ Encrypting Secret Data at Rest / 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript
- Content: If you have not gone through the volumes and volume mounts yet, then you might want to take a look at that and come back.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 25: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/112_Demo_ Encrypting Secret Data at Rest.extraction.md::E154
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 112_Demo_ Encrypting Secret Data at Rest / 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript
- Content: I have volume mount.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 26: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/138_Backup and Restore Methods.extraction.md::E5
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 138_Backup and Restore Methods / 138_Backup and Restore Methods.txt
- Topic: Backup and Restore Methods
- Line Context: Lines 1-1 from transcript
- Content: And if your applications are configured with persistent storage, then that is another candidate for backups.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 27: certified-kubernetes-administrator-with-practice-tests/07_Security/145_Authentication.extraction.md::E40
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 145_Authentication / 145_Authentication.txt
- Topic: Authentication
- Line Context: Lines 1-1 from transcript
- Content: I also want to point out that if you were trying this out in a cube ADM setup, you must also consider volume mounts to pass in the auth file.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 28: certified-kubernetes-administrator-with-practice-tests/07_Security/166_Cluster Roles.extraction.md::E17
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 166_Cluster Roles / 166_Cluster Roles.txt
- Topic: Cluster Roles
- Line Context: Lines 1-1 from transcript
- Content: The cluster scoped resources are those where you don't specify a namespace when you create them like nodes, persistent volumes persist the cluster roles and cluster role bindings that we're going to look at in this lecture.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 29: certified-kubernetes-administrator-with-practice-tests/07_Security/166_Cluster Roles.extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 166_Cluster Roles / 166_Cluster Roles.txt
- Topic: Cluster Roles
- Line Context: Lines 1-1 from transcript
- Content: But how do we authorize users to cluster wide resources like nodes or persistent volumes?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 30: certified-kubernetes-administrator-with-practice-tests/07_Security/166_Cluster Roles.extraction.md::E29
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 166_Cluster Roles / 166_Cluster Roles.txt
- Topic: Cluster Roles
- Line Context: Lines 1-1 from transcript
- Content: Similarly, a storage administrator role can be created to authorize a storage admin to create persistent volumes and claims.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 31: certified-kubernetes-administrator-with-practice-tests/07_Security/168_Lab Solution - Cluster Roles.extraction.md::E72
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 168_Lab Solution - Cluster Roles / 168_Lab Solution - Cluster Roles.txt
- Topic: Lab Solution - Cluster Roles
- Line Context: Lines 1-1 from transcript
- Content: Now, the next question is Michelle's responsibilities are growing and now she will be responsible for storage as well, so create the required cluster role and role bindings to allow her access to storage.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 32: certified-kubernetes-administrator-with-practice-tests/07_Security/168_Lab Solution - Cluster Roles.extraction.md::E82
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 168_Lab Solution - Cluster Roles / 168_Lab Solution - Cluster Roles.txt
- Topic: Lab Solution - Cluster Roles
- Line Context: Lines 1-1 from transcript
- Content: So as we learned, the persistent volumes and persistent volume claims, I'm sorry, the cluster role bindings are not namespaced, so you should be able to see those here.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 33: certified-kubernetes-administrator-with-practice-tests/07_Security/168_Lab Solution - Cluster Roles.extraction.md::E86
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 168_Lab Solution - Cluster Roles / 168_Lab Solution - Cluster Roles.txt
- Topic: Lab Solution - Cluster Roles
- Line Context: Lines 1-1 from transcript
- Content: So what we want to do is we want to create back- so we want to create a cluster role to allow Michelle access to storage classes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 34: certified-kubernetes-administrator-with-practice-tests/07_Security/168_Lab Solution - Cluster Roles.extraction.md::E88
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 168_Lab Solution - Cluster Roles / 168_Lab Solution - Cluster Roles.txt
- Topic: Lab Solution - Cluster Roles
- Line Context: Lines 1-1 from transcript
- Content: The name is storage-admin.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 35: certified-kubernetes-administrator-with-practice-tests/07_Security/168_Lab Solution - Cluster Roles.extraction.md::E89
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 168_Lab Solution - Cluster Roles / 168_Lab Solution - Cluster Roles.txt
- Topic: Lab Solution - Cluster Roles
- Line Context: Lines 1-1 from transcript
- Content: So storage-admin, and the resource, there are two resources, persistent volumes and storage classes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 36: certified-kubernetes-administrator-with-practice-tests/07_Security/168_Lab Solution - Cluster Roles.extraction.md::E90
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 168_Lab Solution - Cluster Roles / 168_Lab Solution - Cluster Roles.txt
- Topic: Lab Solution - Cluster Roles
- Line Context: Lines 1-1 from transcript
- Content: So first resource is persistent volumes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 37: certified-kubernetes-administrator-with-practice-tests/07_Security/168_Lab Solution - Cluster Roles.extraction.md::E91
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 168_Lab Solution - Cluster Roles / 168_Lab Solution - Cluster Roles.txt
- Topic: Lab Solution - Cluster Roles
- Line Context: Lines 1-1 from transcript
- Content: Let's get that, and storage classes, let's get that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 38: certified-kubernetes-administrator-with-practice-tests/07_Security/168_Lab Solution - Cluster Roles.extraction.md::E96
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 168_Lab Solution - Cluster Roles / 168_Lab Solution - Cluster Roles.txt
- Topic: Lab Solution - Cluster Roles
- Line Context: Lines 1-1 from transcript
- Command:
```bash
Kubectl describe cluster role storage-admin.
```
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 39: certified-kubernetes-administrator-with-practice-tests/07_Security/168_Lab Solution - Cluster Roles.extraction.md::E99
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 168_Lab Solution - Cluster Roles / 168_Lab Solution - Cluster Roles.txt
- Topic: Lab Solution - Cluster Roles
- Line Context: Lines 1-1 from transcript
- Content: And we can see that the cluster role is created, name is storage-admin.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 40: certified-kubernetes-administrator-with-practice-tests/07_Security/168_Lab Solution - Cluster Roles.extraction.md::E101
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 168_Lab Solution - Cluster Roles / 168_Lab Solution - Cluster Roles.txt
- Topic: Lab Solution - Cluster Roles
- Line Context: Lines 1-1 from transcript
- Content: So it's created two rules, one for each resource, so we have persistent volumes, and then you have storage class.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 41: certified-kubernetes-administrator-with-practice-tests/07_Security/168_Lab Solution - Cluster Roles.extraction.md::E106
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 168_Lab Solution - Cluster Roles / 168_Lab Solution - Cluster Roles.txt
- Topic: Lab Solution - Cluster Roles
- Line Context: Lines 1-1 from transcript
- Content: So the name is Michelle-storage-admin.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 42: certified-kubernetes-administrator-with-practice-tests/07_Security/168_Lab Solution - Cluster Roles.extraction.md::E107
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 168_Lab Solution - Cluster Roles / 168_Lab Solution - Cluster Roles.txt
- Topic: Lab Solution - Cluster Roles
- Line Context: Lines 1-1 from transcript
- Content: The user is Michelle, and the cluster role is storage-admin.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 43: certified-kubernetes-administrator-with-practice-tests/07_Security/168_Lab Solution - Cluster Roles.extraction.md::E109
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 168_Lab Solution - Cluster Roles / 168_Lab Solution - Cluster Roles.txt
- Topic: Lab Solution - Cluster Roles
- Line Context: Lines 1-1 from transcript
- Content: Okay, and we can see the cluster role that is associated to a storage admin, and the user is Michelle.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 44: certified-kubernetes-administrator-with-practice-tests/07_Security/168_Lab Solution - Cluster Roles.extraction.md::E110
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 168_Lab Solution - Cluster Roles / 168_Lab Solution - Cluster Roles.txt
- Topic: Lab Solution - Cluster Roles
- Line Context: Lines 1-1 from transcript
- Content: So let's do kubectl as well and get storage classes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 45: certified-kubernetes-administrator-with-practice-tests/07_Security/184_(2025 Updates)Custorm Resource Definition (CRD).extraction.md::E98
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 184_(2025 Updates)Custorm Resource Definition (CRD) / 184_(2025 Updates)Custorm Resource Definition (CRD).txt
- Topic: (2025 Updates)Custorm Resource Definition (CRD)
- Line Context: Lines 1-1 from transcript
- Content: And we also define which is the storage version.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 46: certified-kubernetes-administrator-with-practice-tests/07_Security/184_(2025 Updates)Custorm Resource Definition (CRD).extraction.md::E99
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 184_(2025 Updates)Custorm Resource Definition (CRD) / 184_(2025 Updates)Custorm Resource Definition (CRD).txt
- Topic: (2025 Updates)Custorm Resource Definition (CRD)
- Line Context: Lines 1-1 from transcript
- Content: If you have multiple versions, only one version can be marked as the storage version.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 47: certified-kubernetes-administrator-with-practice-tests/07_Security/184_(2025 Updates)Custorm Resource Definition (CRD).extraction.md::E100
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 184_(2025 Updates)Custorm Resource Definition (CRD) / 184_(2025 Updates)Custorm Resource Definition (CRD).txt
- Topic: (2025 Updates)Custorm Resource Definition (CRD)
- Line Context: Lines 1-1 from transcript
- Content: We discussed about what are storage versions in the lecture about APIs earlier in this course.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 48: certified-kubernetes-administrator-with-practice-tests/08_Storage/188_Storage - Section Introduction.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 188_Storage - Section Introduction / 188_Storage - Section Introduction.txt
- Topic: Storage - Section Introduction
- Line Context: Lines 1-1 from transcript
- Content: -: Hello and welcome to this section on storage in Kubernetes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 49: certified-kubernetes-administrator-with-practice-tests/08_Storage/188_Storage - Section Introduction.extraction.md::E2
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 188_Storage - Section Introduction / 188_Storage - Section Introduction.txt
- Topic: Storage - Section Introduction
- Line Context: Lines 1-1 from transcript
- Content: This is Mumshad Mannambeth, and we are going through the Certified Kubernetes Administrators course.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 50: certified-kubernetes-administrator-with-practice-tests/08_Storage/188_Storage - Section Introduction.extraction.md::E3
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 188_Storage - Section Introduction / 188_Storage - Section Introduction.txt
- Topic: Storage - Section Introduction
- Line Context: Lines 1-1 from transcript
- Content: In this section, we look at the various storage related concepts, such as persistent volumes, persistent volume claims, access modes, and how to configure applications with persistent storage.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 51: certified-kubernetes-administrator-with-practice-tests/08_Storage/188_Storage - Section Introduction.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 188_Storage - Section Introduction / 188_Storage - Section Introduction.txt
- Topic: Storage - Section Introduction
- Line Context: Lines 1-1 from transcript
- Content: There are so many different storage options out there.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 52: certified-kubernetes-administrator-with-practice-tests/08_Storage/188_Storage - Section Introduction.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 188_Storage - Section Introduction / 188_Storage - Section Introduction.txt
- Topic: Storage - Section Introduction
- Line Context: Lines 1-1 from transcript
- Content: And depending on your environment, the options may vary.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 53: certified-kubernetes-administrator-with-practice-tests/08_Storage/188_Storage - Section Introduction.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 188_Storage - Section Introduction / 188_Storage - Section Introduction.txt
- Topic: Storage - Section Introduction
- Line Context: Lines 1-1 from transcript
- Content: However, looking at all of those options is out of scope for this course.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 54: certified-kubernetes-administrator-with-practice-tests/08_Storage/188_Storage - Section Introduction.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 188_Storage - Section Introduction / 188_Storage - Section Introduction.txt
- Topic: Storage - Section Introduction
- Line Context: Lines 1-1 from transcript
- Content: In this course, our focus is on the Kubernetes side of storage.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 55: certified-kubernetes-administrator-with-practice-tests/08_Storage/188_Storage - Section Introduction.extraction.md::E8
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 188_Storage - Section Introduction / 188_Storage - Section Introduction.txt
- Topic: Storage - Section Introduction
- Line Context: Lines 1-1 from transcript
- Content: Once you get that, you should be able to relate that knowledge to implement any third party storage solutions out there.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 56: certified-kubernetes-administrator-with-practice-tests/08_Storage/188_Storage - Section Introduction.extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 188_Storage - Section Introduction / 188_Storage - Section Introduction.txt
- Topic: Storage - Section Introduction
- Line Context: Lines 1-1 from transcript
- Content: So let's get started.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

#### Evidence 57: certified-kubernetes-administrator-with-practice-tests/08_Storage/189_Docker Storage - Introduction.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 189_Docker Storage - Introduction / 189_Docker Storage - Introduction.txt
- Topic: Docker Storage - Introduction
- Line Context: Lines 1-1 from transcript
- Content: Let us now look at storage in Kubernetes to understand storage in container orchestration tools like Kubernetes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 58: certified-kubernetes-administrator-with-practice-tests/08_Storage/189_Docker Storage - Introduction.extraction.md::E2
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 189_Docker Storage - Introduction / 189_Docker Storage - Introduction.txt
- Topic: Docker Storage - Introduction
- Line Context: Lines 1-1 from transcript
- Content: It is important to first understand how storage works with containers.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 59: certified-kubernetes-administrator-with-practice-tests/08_Storage/189_Docker Storage - Introduction.extraction.md::E3
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 189_Docker Storage - Introduction / 189_Docker Storage - Introduction.txt
- Topic: Docker Storage - Introduction
- Line Context: Lines 1-1 from transcript
- Content: Understanding how storage works with Docker first and getting all the basics right will later make it so much easier to understand how it works in Kubernetes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 60: certified-kubernetes-administrator-with-practice-tests/08_Storage/189_Docker Storage - Introduction.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 189_Docker Storage - Introduction / 189_Docker Storage - Introduction.txt
- Topic: Docker Storage - Introduction
- Line Context: Lines 1-1 from transcript
- Content: When it comes to storage in Docker, there are two concepts you must know about storage drivers and volume driver plugins.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 61: certified-kubernetes-administrator-with-practice-tests/08_Storage/189_Docker Storage - Introduction.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 189_Docker Storage - Introduction / 189_Docker Storage - Introduction.txt
- Topic: Docker Storage - Introduction
- Line Context: Lines 1-1 from transcript
- Content: In the upcoming video, we will discuss about storage drivers.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 62: certified-kubernetes-administrator-with-practice-tests/08_Storage/189_Docker Storage - Introduction.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 189_Docker Storage - Introduction / 189_Docker Storage - Introduction.txt
- Topic: Docker Storage - Introduction
- Line Context: Lines 1-1 from transcript
- Content: It's something that we've discussed in the Docker course, so if you have gone through that already, feel free to skip this video or you may choose to stay and refresh your memory.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 63: certified-kubernetes-administrator-with-practice-tests/08_Storage/189_Docker Storage - Introduction.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 189_Docker Storage - Introduction / 189_Docker Storage - Introduction.txt
- Topic: Docker Storage - Introduction
- Line Context: Lines 1-1 from transcript
- Content: Once done, we will talk about volume drivers.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 64: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: In this lecture we are going to talk about Docker storage drivers and file systems.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 65: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E2
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: We're going to see where and how Docker stores data and how it manages file systems of the containers.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 66: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: Let us start with how Docker stores data on the local file system.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 67: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E4
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: When you install Docker on a system, it creates this folder structure.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 68: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E5
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: At var lib docker you have multiple folders under it called aufs, containers, image volumes, etc. this is where Docker stores all its data by default.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 69: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: When I say data, I mean files related to images and containers running on the Docker host.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 70: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E7
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: For example, all files related to containers are stored under the containers folder, and the files related to images are stored under the image folder.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 71: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E8
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: Any volumes created by the Docker containers are created under the volumes folder.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 72: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E9
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: Well, don't worry about that for now.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 73: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: We will come back to that in a bit.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 74: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: For now, let's just understand where Docker stores its files and in what format.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 75: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: So how exactly does Docker store the files of an image and a container?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 76: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E13
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: To understand that, we need to understand Dockers layered architecture.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 77: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E14
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: Let's quickly recap something we learned when Docker builds images, it builds these in a layered architecture.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 78: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E15
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: Each line of instruction in the Docker file creates a new layer in the Docker image, with just the changes from the previous layer.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 79: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E16
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: For example, the first layer is a base ubuntu distribution, followed by the second instruction that creates a second layer which installs all the apt packages, and then the third instruction creates a third layer, which with the Python packages, followed by the fourth layer that copies the source code over, and then finally the fifth layer that updates the entry point of the image.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 80: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: Since each layer only stores the changes from the previous layer, it is reflected in the size as well.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 81: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: If you look at the base ubuntu image, it is around 120MB in size.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 82: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E19
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: The APT packages that are installed is around 300 MB and then the remaining layers are small.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 83: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E20
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: To understand the advantages of this layered architecture, let's consider a second application.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 84: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E21
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: This application has a different Docker file, but is very similar to our first application.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 85: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: As in, it uses the same base image as ubuntu.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 86: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E23
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: Uses the same Python and Flask dependencies, but uses a different source code to create a different application.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 87: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: And so a different entry point as well.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 88: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E25
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: When I run the docker build command to build a new image for this application, since the first three layers of both the applications are the same, Docker is not going to build the first three layers.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 89: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E26
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: Instead, it reuses the same three layers it built for the first application from the cache, and only creates the last two layers with the new sources and the new entry point.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 90: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: This way Docker builds images faster and efficiently saves disk space.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 91: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: This is also applicable if you were to update your application code whenever you update your application code, such as the app dot Pi.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 92: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: In this case, Docker simply reuses all the previous layers from cache and rebuilds the application image by updating the latest source code, thus saving us a lot of time during rebuilds and updates.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 93: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: Let's rearrange the layers bottom up so we can understand it better.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 94: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E31
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: At the bottom we have the base ubuntu layer, then the packages, then the dependencies, and then the source code of the application and then the entry point.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 95: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E32
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: All of these layers are created when we run the docker build command to form the final Docker image.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 96: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E33
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: So all of these are the Docker image layers.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 97: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: Once the build is complete, you cannot modify the contents of these layers.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 98: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E35
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: And so they are read only.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 99: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E36
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: And you can only modify them by initiating a new build.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 100: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E37
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: When you run a container based off of this image using the docker run command, Docker creates a container based off of these layers and creates a new writable layer on top of the image layer.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 101: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E38
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: The writable layer is used to store data created by the container, such as log files written by the applications.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 102: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E39
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: Any temporary files generated by the container, or just any file modified by the user on that container.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 103: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E40
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: The life of this layer, though, is only as long as the container is alive.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 104: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: When the container is destroyed, this layer and all of the changes stored in it are also destroyed.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 105: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E42
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: Remember that the same image layer is shared by all containers created using this image.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 106: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E43
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: If I were to log in to the newly created container and say create a new file called temp dot txt, it will create that file in the container layer which is read and write.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 107: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E44
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: We just said that the files in the image layer are read only, meaning you cannot edit anything in those layers.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 108: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E45
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: Let's take an example of our application code.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 109: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E46
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: Since we bake our code into the image, the code is part of the image layer and as such is read only after running a container.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 110: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E47
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: What if I wish to modify the source code to say, test a change?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 111: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E48
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: Remember, the same image layer may be shared between multiple containers created from this image.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 112: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E49
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: So does it mean that I cannot modify this file inside the container.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 113: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E50
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: No, I can still modify this file, but before I save the modified file, Docker automatically creates a copy of the file in the read write layer, and I will then be modifying a different version of the file in the read write layer.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 114: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E51
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: All future modifications will be done on this copy of the file in the read write layer.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 115: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E52
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: This is called copy on write mechanism.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 116: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E53
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: The image layer being read only just means that the files in these layers will not be modified in the image itself.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 117: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E54
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: So the image will remain the same all the time until you rebuild the image using the docker build command.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 118: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E55
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: What happens when we get rid of the container?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 119: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E56
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: All of the data that was stored in the container layer also gets deleted.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 120: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E57
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: The change we made to the App.py and the new temp file we created will also get removed.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 121: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E58
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: So what if we wish to persist this data.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 122: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E59
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: For example, if we were working with a database and we would like to preserve the data created by the container, we could add a persistent volume to the container.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 123: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E60
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: To do this, first create a volume using the Docker volume create command.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 124: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E61
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: So when I run the Docker volume create data underscore volume command, it creates a folder called data underscore volume under the var lib docker volumes directory.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 125: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E62
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: Then when I run the docker container using the docker run command, I could mount this volume inside the Docker containers rewrite layer using the dash v option like this.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 126: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E63
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: So I would do a docker run dash v, then specify my newly created volume name, followed by a colon and the location inside my container, which is the default location where MySQL stores data.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 127: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E64
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: And that is var lib MySQL.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 128: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E65
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: And then the image name MySQL.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 129: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E66
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: This will create a new container and mount the data volume we created into var lib MySQL folder inside the container.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 130: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E67
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: So all data written by the database is in fact stored on the volume created on the docker host.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 131: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E68
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: Even if the container is destroyed, the data is still active.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 132: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E69
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: Now what if you didn't run the Docker volume?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 133: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E70
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: Create command to create the volume before the docker run command.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 134: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E71
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: For example, if I run the docker run command to create a new instance of MySQL container with the volume data underscore volume two, which I have not created yet, Docker will automatically create a volume named data, underscore volume two and mount it to the container.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 135: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E72
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: You should be able to see all these volumes if you list the contents of the var lib docker volumes folder.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 136: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E73
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: This is called volume mounting as we are mounting a volume created by Docker under the var lib docker volumes folder.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 137: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E74
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: But what if we had our data already at another location?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 138: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E75
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: For example, let's say we have some external storage on the docker host at forward slash data, and we would like to store database data on that volume and not in the default var lib docker volumes folder.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 139: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E76
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: In that case we would run a container using the command docker run dash v, but in this case we will provide the complete path to the folder we would like to mount that is forward slash data or slash MySQL.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 140: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E77
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: And so it will create a container and mount the folder to the container.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 141: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E78
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: This is called bind mounting.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 142: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E79
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: So there are two types of mounts a volume mounting and a bind mount.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 143: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E80
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: Volume mount mounts a volume from the volumes directory and bind mount mounts a directory from any location on the docker host.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 144: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E81
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: One final point to note before I let you go using the dash V is an old style.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 145: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E82
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: The new way is to use dash mount option.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 146: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E83
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: The dash dash mount is the preferred way, as it is more verbose, so you have to specify each parameter in a key equals value format.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 147: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E84
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: For example, the previous command can be written with the dash mount option as this using the type, source and target options.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 148: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E85
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: The type in this case is bind.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 149: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E86
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: The source is the location on my host, and target is the location on my container.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 150: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E87
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: So who is responsible for doing all of these operations?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 151: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E88
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: Maintaining the layered architecture, creating a writable layer, moving files across layers to enable copy and write, etc..
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 152: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E89
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: It's the storage drivers.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 153: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E90
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: So Docker uses storage drivers to enable layered architecture.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 154: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E91
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: Some of the common storage drivers are UFS btrfs, DFS Device Mapper, Overlay and Overlay.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 155: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E92
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: Two.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 156: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E93
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: The selection of the storage driver depends on the underlying OS being used.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 157: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E94
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: For example, with ubuntu, the default storage driver is UFS, whereas the storage driver is not available on other operating systems like fedora or CentOS.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 158: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E95
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: In that case, Device Mapper may be a better option.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 159: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E96
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Command:
```bash
Docker will choose the best storage driver available automatically based on the operating system.
```
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 160: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E97
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: The different storage drivers also provide different performance and stability characteristics, so you may want to choose one that fits the needs of your application and your organization.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 161: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E98
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: If you would like to read more on any of these storage drivers, please refer to the links in the attached documentation.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 162: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E99
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: For now, that is all from the Docker architecture concepts.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 163: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E100
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker / 190_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: See you in the next lecture.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 164: certified-kubernetes-administrator-with-practice-tests/08_Storage/191_Volume Driver Plugins in Docker.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 191_Volume Driver Plugins in Docker / 191_Volume Driver Plugins in Docker.txt
- Topic: Volume Driver Plugins in Docker
- Line Context: Lines 1-1 from transcript
- Content: Okay, so in the previous lecture we discussed about storage drivers.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 165: certified-kubernetes-administrator-with-practice-tests/08_Storage/191_Volume Driver Plugins in Docker.extraction.md::E2
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 191_Volume Driver Plugins in Docker / 191_Volume Driver Plugins in Docker.txt
- Topic: Volume Driver Plugins in Docker
- Line Context: Lines 1-1 from transcript
- Content: Storage drivers help manage storage on images and containers.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 166: certified-kubernetes-administrator-with-practice-tests/08_Storage/191_Volume Driver Plugins in Docker.extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 191_Volume Driver Plugins in Docker / 191_Volume Driver Plugins in Docker.txt
- Topic: Volume Driver Plugins in Docker
- Line Context: Lines 1-1 from transcript
- Content: We also briefly touched upon volumes in the previous lecture.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 167: certified-kubernetes-administrator-with-practice-tests/08_Storage/191_Volume Driver Plugins in Docker.extraction.md::E4
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 191_Volume Driver Plugins in Docker / 191_Volume Driver Plugins in Docker.txt
- Topic: Volume Driver Plugins in Docker
- Line Context: Lines 1-1 from transcript
- Content: We learned that if you want to persist storage, you must create volumes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 168: certified-kubernetes-administrator-with-practice-tests/08_Storage/191_Volume Driver Plugins in Docker.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 191_Volume Driver Plugins in Docker / 191_Volume Driver Plugins in Docker.txt
- Topic: Volume Driver Plugins in Docker
- Line Context: Lines 1-1 from transcript
- Content: Remember that volumes are not handled by storage drivers.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 169: certified-kubernetes-administrator-with-practice-tests/08_Storage/191_Volume Driver Plugins in Docker.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 191_Volume Driver Plugins in Docker / 191_Volume Driver Plugins in Docker.txt
- Topic: Volume Driver Plugins in Docker
- Line Context: Lines 1-1 from transcript
- Content: Volumes are handled by volume driver plugins.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 170: certified-kubernetes-administrator-with-practice-tests/08_Storage/191_Volume Driver Plugins in Docker.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 191_Volume Driver Plugins in Docker / 191_Volume Driver Plugins in Docker.txt
- Topic: Volume Driver Plugins in Docker
- Line Context: Lines 1-1 from transcript
- Content: The default volume driver plugin is local.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 171: certified-kubernetes-administrator-with-practice-tests/08_Storage/191_Volume Driver Plugins in Docker.extraction.md::E8
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 191_Volume Driver Plugins in Docker / 191_Volume Driver Plugins in Docker.txt
- Topic: Volume Driver Plugins in Docker
- Line Context: Lines 1-1 from transcript
- Content: The local volume plugin helps create a volume on the Docker host and store its data under the var lib docker volumes directory.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 172: certified-kubernetes-administrator-with-practice-tests/08_Storage/191_Volume Driver Plugins in Docker.extraction.md::E9
- Type: Comparison
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 191_Volume Driver Plugins in Docker / 191_Volume Driver Plugins in Docker.txt
- Topic: Volume Driver Plugins in Docker
- Line Context: Lines 1-1 from transcript
- Content: There are many other volume driver plugins that allow you to create a volume on third party solutions like Azure File Storage, convoy, DigitalOcean, Block Storage Locker, Google Compute Persistent Disks, Glusterfs, NetApp X-ray Portworx, and VMware vSphere storage.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 173: certified-kubernetes-administrator-with-practice-tests/08_Storage/191_Volume Driver Plugins in Docker.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 191_Volume Driver Plugins in Docker / 191_Volume Driver Plugins in Docker.txt
- Topic: Volume Driver Plugins in Docker
- Line Context: Lines 1-1 from transcript
- Content: These are just a few of the many.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 174: certified-kubernetes-administrator-with-practice-tests/08_Storage/191_Volume Driver Plugins in Docker.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 191_Volume Driver Plugins in Docker / 191_Volume Driver Plugins in Docker.txt
- Topic: Volume Driver Plugins in Docker
- Line Context: Lines 1-1 from transcript
- Content: Some of these volume drivers support different storage providers.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 175: certified-kubernetes-administrator-with-practice-tests/08_Storage/191_Volume Driver Plugins in Docker.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 191_Volume Driver Plugins in Docker / 191_Volume Driver Plugins in Docker.txt
- Topic: Volume Driver Plugins in Docker
- Line Context: Lines 1-1 from transcript
- Content: For instance, X-ray storage driver can be used to provision storage on AWS, EBS, S3, EMC storage arrays like Isilon and Scaleio, or Google Persistent Disk or OpenStack cinder.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 176: certified-kubernetes-administrator-with-practice-tests/08_Storage/191_Volume Driver Plugins in Docker.extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 191_Volume Driver Plugins in Docker / 191_Volume Driver Plugins in Docker.txt
- Topic: Volume Driver Plugins in Docker
- Line Context: Lines 1-1 from transcript
- Content: When you run a Docker container, you can choose to use a specific volume driver, such as the X-ray EBS, to provision a volume from Amazon EBS.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 177: certified-kubernetes-administrator-with-practice-tests/08_Storage/191_Volume Driver Plugins in Docker.extraction.md::E14
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 191_Volume Driver Plugins in Docker / 191_Volume Driver Plugins in Docker.txt
- Topic: Volume Driver Plugins in Docker
- Line Context: Lines 1-1 from transcript
- Content: This will create a container and attach a volume from the AWS cloud.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 178: certified-kubernetes-administrator-with-practice-tests/08_Storage/191_Volume Driver Plugins in Docker.extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 191_Volume Driver Plugins in Docker / 191_Volume Driver Plugins in Docker.txt
- Topic: Volume Driver Plugins in Docker
- Line Context: Lines 1-1 from transcript
- Content: When the container exits, your data is saved in the cloud.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 179: certified-kubernetes-administrator-with-practice-tests/08_Storage/191_Volume Driver Plugins in Docker.extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 191_Volume Driver Plugins in Docker / 191_Volume Driver Plugins in Docker.txt
- Topic: Volume Driver Plugins in Docker
- Line Context: Lines 1-1 from transcript
- Content: In the upcoming lectures, we will see more about volumes in Kubernetes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 180: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface / 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript
- Content: Let us now look at the container storage interface.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 181: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E2
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface / 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript
- Content: In the past, Kubernetes used container D alone as the container runtime engine, and all the code to work with container D was embedded within the Kubernetes source code, with other container runtimes coming in, such as rocket and Cri-o.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 182: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E3
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface / 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript
- Content: It was important to open up and extend support to work with different container runtimes, and not be dependent on the Kubernetes source code.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 183: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E4
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface / 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript
- Content: And that's how Container Runtime Interface came to be.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 184: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E5
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface / 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript
- Content: The container runtime interface is a standard that defines how an orchestration solution like Kubernetes would communicate with container runtimes like Docker.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 185: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E6
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface / 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript
- Content: So in the future, if any new container runtime interface is developed, they can simply follow the CRI standards, and that new container runtime would work with Kubernetes without really having to work with Kubernetes team of developers, or touch the Kubernetes source code.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 186: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E9
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface / 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript
- Content: And as you can guess, the container storage interface was developed to support multiple storage solutions with CSI.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 187: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface / 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript
- Content: You can now write your own drivers for your own storage to work with.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 188: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface / 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript
- Content: Kubernetes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 189: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface / 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript
- Content: Portworx.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 190: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface / 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript
- Content: Amazon EBS.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 191: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface / 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript
- Content: Azure disk.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 192: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface / 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript
- Content: Dell EMC Isilon Powermax.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 193: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface / 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript
- Content: Unity.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 194: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface / 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript
- Content: Xtremio NetApp.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 195: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface / 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript
- Content: Nutanix HPE Hitachi.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 196: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface / 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript
- Content: Pure Storage.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 197: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface / 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript
- Content: Everyone's got their own CSI drivers.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 198: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E21
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface / 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript
- Content: Note that CSI is not a Kubernetes specific standard.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 199: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface / 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript
- Content: It is meant to be a universal standard and if implemented, allows any container orchestration tool to work with any storage vendor with a supported plugin.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 200: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface / 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript
- Content: Currently, Kubernetes, Cloud Foundry, and Mesos are on board with CSI.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 201: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface / 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript
- Content: So here's what the CSI kind of looks like.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 202: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface / 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript
- Content: It defines a set of rpcs, or remote procedure calls that will be called by the container orchestrator, and these must be implemented by the storage drivers.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 203: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E27
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface / 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript
- Content: The storage driver should implement this RPC and handle that request, and provision a new volume on the storage array and return the results of the operation.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 204: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E28
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface / 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript
- Content: Similarly, container orchestrator should call the delete volume RPC when a volume is to be deleted, and the storage driver should implement the code to decommission the volume from the array when that call is made.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 205: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E29
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface / 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript
- Content: And the specification details exactly what parameters should be sent by the caller, what should be received by the solution, and what error codes should be exchanged.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 206: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface / 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript
- Content: If you're interested, you can view all these details in the CSI specification on GitHub at this URL.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 207: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E31
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface / 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript
- Content: So that's about it for now.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 208: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface / 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript
- Content: About container storage interface.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 209: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E33
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface / 192_Container Storage Interface.txt
- Topic: Container Storage Interface
- Line Context: Lines 1-1 from transcript
- Content: I'll see you in the next lecture.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 210: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes / 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript
- Content: Before we head into persistent volumes, let us start with volumes in Kubernetes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 211: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E2
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes / 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript
- Content: Let us look at volumes in Docker first.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 212: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E3
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes / 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript
- Command:
```bash
Docker containers are meant to be transient in nature, which means they are meant to last only for a short period of time.
```
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 213: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes / 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript
- Content: They are called upon when required to process data and destroyed once finished.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 214: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes / 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript
- Content: The same is true for the data within the container.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 215: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes / 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript
- Content: The data is destroyed along with the container.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 216: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes / 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript
- Content: To persist data processed by the containers, we attach a volume to the containers.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 217: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E8
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes / 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript
- Content: When they are created.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 218: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes / 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript
- Content: The data processed by the container is now placed in this volume, thereby retaining it permanently.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 219: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes / 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript
- Content: Even if the container is deleted, the data generated or processed by it remains.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 220: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes / 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript
- Content: So how does that work in the Kubernetes world?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 221: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes / 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript
- Content: Let's look at a simple implementation of volumes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 222: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes / 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript
- Content: We have a single node Kubernetes cluster.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 223: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E19
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes / 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript
- Content: It then gets deleted along with the random number.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 224: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E21
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes / 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript
- Content: When you create a volume, you can choose to configure its storage in different ways.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 225: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E22
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes / 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript
- Content: We will look at the various options in a bit, but for now we will simply configure it to use a directory on the host.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 226: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes / 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript
- Content: In this case, I specify a path forward slash data on the host.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 227: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E24
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes / 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript
- Content: This way any files created in the volume would be stored in the directory data on my node.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 228: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E25
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes / 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript
- Content: Once the volume is created to access it from a container, we mount the volume to a directory inside the container.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 229: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes / 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript
- Content: We use the volume mounts field in each container to mount the data volume to the directory.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 230: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes / 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript
- Content: Slash opt within the container.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 231: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes / 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript
- Content: The random number will now be written to opt mount inside the container, which happens to be on the data volume, which is in fact the data directory on the host.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 232: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E30
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes / 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript
- Content: Let's take a step back and look at the volume storage options.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 233: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E31
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes / 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript
- Content: We just used the host path option to configure a directory on the host as storage space for the volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 234: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes / 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript
- Content: Now that works fine on a single node.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 235: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E33
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes / 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript
- Content: However, it is not recommended for use in a multi node cluster.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 236: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E35
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes / 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript
- Content: Since they are on different servers, they are in fact not the same.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 237: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E36
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes / 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript
- Content: Unless you configure some kind of external replicated cluster storage solution.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 238: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E37
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes / 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript
- Content: Kubernetes supports several types of different storage solutions such as NFS cluster, NFS, Flocker, Fibre Channel, Cephfs, Scaleio, or public cloud solutions like AWS, EBS, Azure Disk or File or Google's Persistent Disk.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 239: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E38
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes / 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript
- Content: For example, to configure an AWS Elastic Block Store volume as the storage option for the volume, we replace Hostpath field of the volume with the AWS Elastic Block Store field, along with the volume, ID and filesystem type.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 240: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E39
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes / 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript
- Content: The volume storage will now be on AWS EBS.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 241: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E40
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes / 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript
- Content: Well, that's it about volumes in Kubernetes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 242: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes / 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript
- Content: We will now head over to discuss persistent volumes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 243: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E42
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes / 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript
- Content: Next.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 244: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes / 194_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript
- Content: In the last lecture, we learned about volumes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 245: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E2
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes / 194_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript
- Content: Now we will discuss persistent volumes in Kubernetes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 246: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes / 194_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript
- Content: Instead, you would like to manage storage more centrally.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 247: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E9
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes / 194_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript
- Content: You would like it to be configured in a way that an administrator can create a large pool of storage, and then have users carve out pieces from it as required.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 248: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes / 194_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript
- Content: That is where persistent volumes can help us.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 249: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E11
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes / 194_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript
- Content: A persistent volume is a cluster wide pool of storage volumes configured by an administrator, to be used by users deploying applications on the cluster.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 250: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes / 194_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript
- Content: The users can now select storage from this pool using persistent volume claims.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 251: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E13
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes / 194_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript
- Content: Let us now create a persistent volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 252: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes / 194_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript
- Content: We start with the base template and update the API version.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 253: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes / 194_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript
- Content: Set the kind to persistent volume and name it PV Vol one.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 254: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes / 194_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript
- Content: Under the specs section, specify the access modes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 255: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E17
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes / 194_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript
- Content: Access mode defines how a volume should be mounted on the hosts, whether in a read only mode or read write mode, etc. the supported values are read only.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 256: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes / 194_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript
- Content: Many read write once or read write.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 257: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes / 194_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript
- Content: Mini mode.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 258: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E20
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes / 194_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript
- Content: Next is the capacity.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 259: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E21
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes / 194_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript
- Content: Specify the amount of storage to be reserved for this persistent volume, which is set to one GB here.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 260: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E22
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes / 194_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript
- Content: Next comes the volume type.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 261: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes / 194_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript
- Content: We will start with the host path option that uses storage from the node's local directory.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 262: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes / 194_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript
- Content: Remember, this option is not to be used in a production environment.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 263: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E25
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes / 194_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript
- Content: To create the volume, run kube control, create command and to list the created volume from the kube control.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 264: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes / 194_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript
- Content: Get persistent volume command.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 265: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes / 194_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript
- Content: Replace the host path option with one of the supported storage solutions.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 266: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes / 194_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript
- Content: As we saw in the previous lecture, like AWS Elastic Block Store, etc..
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 267: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes / 194_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript
- Content: Well, that's it on persistent volumes in this lecture.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 268: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E30
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes / 194_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript
- Content: In the next lecture, we will look at how we use persistent volume claims to claim the volume configured with persistent volumes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 269: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E1
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims / 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: In the previous lecture, we created a persistent volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 270: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims / 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Persistent volumes and persistent volume claims are two separate objects in the Kubernetes namespace.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 271: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E4
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims / 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: An administrator creates a set of persistent volumes, and a user creates persistent volume claims to use the storage.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 272: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E5
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims / 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Once the persistent volume claims are created, Kubernetes binds the persistent volumes to claims based on the request and properties set on the volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 273: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims / 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Every persistent volume claim is bound to a single persistent volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 274: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims / 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: During the binding process, Kubernetes tries to find a persistent volume that has sufficient capacity as requested by the claim and any other request.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 275: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims / 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Properties such as access modes, volume modes, storage class, etc.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 276: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E9
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims / 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: However, if there are multiple possible matches for a single claim and you would like to specifically use a particular volume, you could still use labels and selectors to bind to the right volumes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 277: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims / 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Finally, note that a smaller claim may get bound to a larger volume if all the other criteria matches and there are no better options.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 278: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims / 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: There is a 1 to 1 relationship between claims and volumes, so no other claims can utilize the remaining capacity in the volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 279: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims / 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: If there are no volumes available, the persistent volume claim will remain in a pending state until newer volumes are made available to the cluster.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 280: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims / 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Once newer volumes are available.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 281: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims / 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: The claim would automatically be bound to the newly available volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 282: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E15
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims / 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Let us now create a persistent volume claim.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 283: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims / 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: We start with a blank template.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 284: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims / 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Set the API version to v1 and kind to persistent volume claim.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 285: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims / 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: We will name it my claim.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 286: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims / 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Under specification, set the access modes to read.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 287: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims / 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Write once and set resources to request the storage of 500MB.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 288: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E21
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims / 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Create the claim using cube control.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 289: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E22
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims / 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Create command to view the created claim.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 290: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims / 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Run the cube control.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 291: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims / 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Get persistent volume claim command.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 292: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims / 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: We see the claim in a pending state.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 293: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E26
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims / 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: When the claim is created, Kubernetes looks at the volume created.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 294: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims / 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Previously.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 295: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims / 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: The access modes match.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 296: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E29
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims / 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: The capacity requested is 500MB, but the volume is configured with one GB of storage.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 297: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims / 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Since there are no other volumes available, the persistent volume claim is bound to the persistent volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 298: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E31
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims / 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: When we run the Get volumes command again, we see the claim is bound to the persistent volume we created.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 299: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims / 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Perfect.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 300: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E33
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims / 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: To delete a PVC we run the kubectl delete persistent volume claim command.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 301: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims / 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: But what happens to the underlying persistent volume when the claim is deleted?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 302: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E35
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims / 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: You can choose what is to happen to the volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 303: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E36
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims / 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: By default, it is set to retain meaning the persistent volume will remain until it is manually deleted by the administrator.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 304: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E37
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims / 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: It is not available for reuse by any other claims.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 305: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E38
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims / 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Or it can be deleted automatically this way, as soon as the claim is deleted, the volume will be deleted as well, or a third option is to recycle.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 306: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E39
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims / 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: In this case, the data in the volume will be scrubbed before making it available to other claims.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 307: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims / 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: It basically tried to do the admins manual cleanup for you with a simple file level delete.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 308: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E42
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims / 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: But this isn't sufficient in practice.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 309: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E44
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims / 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Proper cleanup can involve unmount, detach, file system, reformat, snapshot, retain policy handling, encryption, key rotation, or provider level delete calls.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 310: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E45
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims / 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: A plain rm rf leaves a inode metadata and may fail under permissions.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 311: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E46
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims / 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Because of these portability and security gaps, Kubernetes moved to a newer model.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 312: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E47
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims / 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: The modern approach is dynamic provisioning with a storage class and CSI drivers, which we will discuss next.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 313: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E48
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims / 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Well, that's it for this lecture.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 314: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E49
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims / 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Head over to the labs and practice configuring and troubleshooting persistent volumes and volume claims in Kubernetes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 315: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: -: Okay, so let's go through the lab on persistent volumes and persistent volume claims.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 316: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So let's do that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 317: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: The application stores logs at location log app dot log slash log slash app dot log.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 318: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So view the logs.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 319: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So cat log app dot log.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 320: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Okay, so we're able to view the logs and we see that it's it some of the events that are logged by the application.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 321: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So let's check out where those logs are.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 322: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E13
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: And... so there are no other volumes configured.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 323: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So you have the Q A P I access which is the default volume, but there are no other volumes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 324: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E17
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So we're able to view the logs, now we're not going to be able to view the logs now configure a volume to store these logs at this path on the host.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 325: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Now we would like to store those.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 326: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: We, we'd like to use a volume to store those logs at wire log web app.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 327: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E21
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So that's wire log web app.... on the host.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 328: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So currently there's nothing here.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 329: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So let's, let's try and set up a volumes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 330: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: And there are, there's a lot of information.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 331: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E27
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So here we have the volume amount which is the default volume amount for accessing the the Cube API server.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 332: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: And below we have the volumes which is again the default volume used for that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 333: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So we're just gonna add our own volume here.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 334: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So ... we'll add... we'll call the name we'll call the volume log volume because we're gonna use this to store the logs.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 335: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E31
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: And this is going to be a host path.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 336: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: And... the path is going to be... whatever path is given here to wire log app.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 337: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E33
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Wire log app, Okay, so we have the volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 338: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E35
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: It's gonna create a volume out of that directory.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 339: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E36
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: And then we have to specify where it's going to mount it is we're gonna add a volume mount and we'll call... the mount path as it is above.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 340: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E37
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: And that would be a log.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 341: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E38
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: And then we will have a name... for the volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 342: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E39
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: And the name of the volume is log volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 343: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E40
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Okay?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 344: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E41
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So what's gonna happen is when the part is recreated it's going to create a volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 345: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E42
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Which will store all data in this path on the host, and it will be called this log volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 346: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E44
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So here there's only one container.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 347: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E45
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So under volume mounts we have the mount path we're gonna specify the name of the volume and it's gonna mount that here.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 348: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E46
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So basically this is going to be mount to this path within the container.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 349: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E47
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Okay?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 350: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E49
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna do a cubicle... replace force, Okay.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 351: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E50
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Support is now recreated.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 352: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E51
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So now let's check the path at wire log app, okay?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 353: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E52
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: And we can see that the file the storage logs called app dot log is in this path.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 354: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E53
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: We're gonna do app dot log.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 355: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E56
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Okay?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 356: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E57
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So the next task is to create a persistent volume with the given specification.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 357: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E58
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Let's go to the coordinated documentation pages and find persistent ... volume and go to persistent volumes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 358: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E60
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So I'm just gonna keep looking.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 359: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E61
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Okay, so this is a persistent volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 360: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E62
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So I'm going to ... get copy this much and I'm gonna create a file called PV dot... yamo for persistent volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 361: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E63
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Okay?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 362: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E64
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Then here we have PPV dash log that's the persistent volume name.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 363: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E65
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Then we have storage.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 364: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E66
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So there's hundred maybe bytes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 365: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E67
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: And then we have volume modes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 366: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E68
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: We don't need volume mode, we have access mode.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 367: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E69
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: The access mode is read, write many and the persistent volume reclaim policy going to be... retained.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 368: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E70
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Okay?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 369: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E71
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: And then... the type is going to be host path.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 370: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E72
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna host path and then... specify the path and that's going to be... slash PV slash log.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 371: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E73
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So that's the path.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 372: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E74
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Okay, so let's create the file.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 373: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E75
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Okay, so let's create it, let's check it out.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 374: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E76
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: We have the PV law kind.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 375: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E77
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: My capacity rewrite many.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 376: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E78
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So this indicates rewrite many.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 377: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E79
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: And the reclaim policy is retained.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 378: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E80
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Let's check our work.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 379: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E81
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Okay?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 380: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E82
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Now let us claim some of that storage for our application.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 381: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E83
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So create a persistent volume claim with a given specification.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 382: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E84
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So let's find a persistent ... volume claim template.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 383: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E85
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So we had one... here.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 384: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E86
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Yeah, so right here you have persistent volume claims and we'll use this template.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 385: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E87
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So we don't need the advanced selectors.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 386: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E88
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Our use case is simple.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 387: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E89
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So we are just going to copy this much.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 388: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E90
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So let's do a PVC dot yamo person volume claim.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 389: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E91
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: The name is going to be claim dash log dash one and access mode is going to be read write once.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 390: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E92
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: We don't have, we don't need a volume mode and the storage is gonna be 50 mi.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 391: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E93
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Okay, now we're gonna do a create minus f, ac let's check out the status.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 392: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E94
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Okay, so that's created.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 393: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E95
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So go next.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 394: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E96
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So what is the state of the precision volume claim?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 395: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E97
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So if you look at the state, it is in a pending state.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 396: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E98
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So that's that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 397: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E99
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Now what is the state of the persistent volume?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 398: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E100
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: The state of the persistent volume, it is... available.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 399: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E101
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So let's check, try it now again.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 400: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E102
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So it's, it's in an available state.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 401: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E103
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So why is the claim not bound to the available persistent volume?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 402: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E104
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So we have a persistent volume, which is which has a hundred megabytes of capacity.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 403: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E105
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: And then we have the PVC, which requested about 50 but it's still in a pending state.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 404: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E106
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So why is that?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 405: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E107
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So if you look at it it's not a capacity mismatch because we know that if when you create a persistent volume claim if there's a volume that has higher capacity it is gonna bind that volume to that precision volume claim.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 406: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E108
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So that's not the case here.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 407: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E109
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: We have the reclaim policy set.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 408: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E110
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: The name of these policy is the PV and PVC does not really matter.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 409: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E111
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: The only other thing that it looks at is the access mode, right?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 410: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E112
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So if you look at the PV that we created it had an access mode of rewrite many, and if you look at the PV PVC, it had rewrite, it has rewrite once.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 411: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E113
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So we're going to, now that's the reason.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 412: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E114
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So access mode mismatch is the reason.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 413: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E115
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Now the next question is update the access mode on the claim to bind it to the PV.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 414: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E116
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So we're going to, lets do an update on the, on the claim.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 415: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E117
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So we wanna change it to, so we wanna change the access mode on the PVC to rewrite many, which is on the, on the PV.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 416: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E118
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So that's what is requested here.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 417: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E119
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Okay, so now we're going to do a replace force dash F ...
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 418: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E120
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: PVC.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 419: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E121
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Okay, now you, you requested for 50 megabytes how much capacity is now available to the PVC?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 420: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E122
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So let's look at that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 421: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E123
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Let's do cubicle, get PV Cubicle... get PVC.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 422: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E124
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Now if you look at the PVC the capacity that it has is a hundred, a hundred megabytes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 423: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E125
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Now update the web app part to use the persistent volume claim as its storage.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 424: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E126
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So what we are gonna do now is we're gonna replace host path with the persistent volume claim to use the persistent volume claim.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 425: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E127
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Okay?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 426: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E128
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So but before that we've created the PV to store the logs to use the host path at PV slash log.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 427: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E129
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So right now there is nothing in there.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 428: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E131
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: And what we're gonna do is, so this is, okay the mount path, we're gonna leave it as is.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 429: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E132
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: We're gonna go down and we're gonna change this... from host pad... to persistent.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 430: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E133
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Let's see what that is.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 431: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E135
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So you have claim as volumes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 432: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E136
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So within volumes you have you use persistent volume claims.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 433: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E137
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: That's what we're looking for, okay?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 434: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E138
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: And we have claim name, so we don't need these lines.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 435: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E139
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: And then the claim name is going to be claim log one.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 436: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E140
- Type: Comparison
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So you have versus volume claim, Claim name and ... log one.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 437: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E141
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: That should be it.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 438: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E142
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Let's replace the file.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 439: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E144
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Okay, so that is done.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 440: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E145
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Let's check our work.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 441: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E146
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: All right, so now let's see if you look at slash PV slash log, you see the logs there and you look at log app dot log can see the logs of the application there.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 442: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E147
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So now the PV is using a host path as ... um... the location for storing data.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 443: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E150
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So that's, that's how this is working right now.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 444: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E151
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Okay, so the next question is what is the reclaim policy set on the persistent volume PV dash log?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 445: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E152
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So let's see, you got, will get PV PV dash log and we can see that it is retained.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 446: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E153
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So retain is the answer.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 447: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E154
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Now what would happen to the PV if the PVC was destroyed?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 448: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E155
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So we know that with the reclaim policy set to retain, the PV is going to be... retained.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 449: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E156
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So it's not going to be deleted along with the PVC.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 450: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E157
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So the PV is deleted as well.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 451: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E158
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Now the PV is made available again now it's not made available.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 452: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E159
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Again, that would be recycling the PV scrub.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 453: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E160
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Now the PV is not deleted but not available.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 454: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E161
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So it's not deleted, but it's not available either.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 455: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E162
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So that's the status.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 456: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E163
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Now try deleting the PVC and notice what happens.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 457: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E164
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Let's do that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 458: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E165
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Get PVC, delete PVC claim log one.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 459: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E166
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So let's wait for that to be deleted.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 460: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E167
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Okay, so it's not going to get deleted because it's actually going to be stockless.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 461: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E168
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Let's look at the status in a new terminal.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 462: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E169
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So let's do a go get PVC and we see that it's in a terminating state so it's stuck in a terminating state.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 463: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E170
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Let's do a describe and ... yeah, so you see it's stuck in a terminating state for the last 30 seconds or so.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 464: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E171
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So why is the PVC stuck in a terminating state?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 465: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E174
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: That's the reason it's, it's stuck in a terminating state.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 466: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E176
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Do that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 467: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E178
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Okay, so that was deleted and we see we're now unstuck and the PV was deleted as well.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 468: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E179
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Check that out.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 469: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E180
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Yep.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 470: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E182
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: So what is the state of the PVC now?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 471: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E183
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: It is deleted.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 472: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E184
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: And what is state of the PV now let's try that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 473: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E185
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: We see that it is in a released state.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 474: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E186
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Topic: Lab Solution - Persistent Volumes and Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Okay, So yeah, that's the end of this lab.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 475: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class / 201_Storage Class.txt
- Topic: Storage Class
- Line Context: Lines 1-1 from transcript
- Content: In this lecture we will look at storage classes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 476: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E3
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class / 201_Storage Class.txt
- Topic: Storage Class
- Line Context: Lines 1-1 from transcript
- Content: In this case, we create a PV from a Google Cloud Persistent disk.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 477: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E4
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class / 201_Storage Class.txt
- Topic: Storage Class
- Line Context: Lines 1-1 from transcript
- Content: The problem here is that before this PV is created, you must have created the disk on Google Cloud.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 478: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E5
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class / 201_Storage Class.txt
- Topic: Storage Class
- Line Context: Lines 1-1 from transcript
- Content: Every time an application requires storage, you have to first manually provision the disk on Google Cloud and then manually create a persistent volume definition file using the same name as that of the disk that you created.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 479: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class / 201_Storage Class.txt
- Topic: Storage Class
- Line Context: Lines 1-1 from transcript
- Content: That's called static provisioning volumes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 480: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class / 201_Storage Class.txt
- Topic: Storage Class
- Line Context: Lines 1-1 from transcript
- Content: It would have been nice if the volume gets provisioned automatically when the application requires it.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 481: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class / 201_Storage Class.txt
- Topic: Storage Class
- Line Context: Lines 1-1 from transcript
- Content: And that's where storage classes come in.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 482: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class / 201_Storage Class.txt
- Topic: Storage Class
- Line Context: Lines 1-1 from transcript
- Content: That's called dynamic provisioning of volumes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 483: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class / 201_Storage Class.txt
- Topic: Storage Class
- Line Context: Lines 1-1 from transcript
- Content: You do that by creating a storage class object with the API version set to storage.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 484: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class / 201_Storage Class.txt
- Topic: Storage Class
- Line Context: Lines 1-1 from transcript
- Content: IO v1.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 485: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class / 201_Storage Class.txt
- Topic: Storage Class
- Line Context: Lines 1-1 from transcript
- Content: Specify a name and use provisioner as Kubernetes.io slash GCE.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 486: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E15
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class / 201_Storage Class.txt
- Topic: Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So we no longer need the PVC definition because the PV and any associated storage is going to be created automatically when the storage class is created for the PVC to use the storage class we defined, we specify the storage class name in the PVC definition.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 487: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class / 201_Storage Class.txt
- Topic: Storage Class
- Line Context: Lines 1-1 from transcript
- Content: That's how the PVC knows which storage class to use.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 488: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E17
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class / 201_Storage Class.txt
- Topic: Storage Class
- Line Context: Lines 1-1 from transcript
- Content: Next time a PVC is created, the storage class associated with it uses the defined provisioner to provision a new disk with the required size on GCP, and then creates a persistent volume and then binds the PVC to that volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 489: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E18
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class / 201_Storage Class.txt
- Topic: Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So remember that it still creates a PVC.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 490: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E19
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class / 201_Storage Class.txt
- Topic: Storage Class
- Line Context: Lines 1-1 from transcript
- Content: It's just that you don't have to manually create PVC anymore.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 491: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E20
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class / 201_Storage Class.txt
- Topic: Storage Class
- Line Context: Lines 1-1 from transcript
- Content: It's created automatically by the storage class.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 492: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E21
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class / 201_Storage Class.txt
- Topic: Storage Class
- Line Context: Lines 1-1 from transcript
- Content: We used the GCE provisioner to create a volume on GCP.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 493: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class / 201_Storage Class.txt
- Topic: Storage Class
- Line Context: Lines 1-1 from transcript
- Content: There are many other provisioners as well, such as for AWS, EBS, Azure File, Azure Disk, CIFs, Portworx, Scaleio, and so on.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 494: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class / 201_Storage Class.txt
- Topic: Storage Class
- Line Context: Lines 1-1 from transcript
- Content: With each of these provisioners, you can pass in additional parameters such as the type of disk to provision the replication type, etc. these parameters are very specific to the provisioner that you're using for Google Persistent Disk.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 495: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class / 201_Storage Class.txt
- Topic: Storage Class
- Line Context: Lines 1-1 from transcript
- Content: You can specify the type which could be standard or SSD.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 496: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class / 201_Storage Class.txt
- Topic: Storage Class
- Line Context: Lines 1-1 from transcript
- Content: You can specify the replication mode which could be none or regional PD.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 497: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E26
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class / 201_Storage Class.txt
- Topic: Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So you see you can create different storage classes, each using different types of disks.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 498: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E27
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class / 201_Storage Class.txt
- Topic: Storage Class
- Line Context: Lines 1-1 from transcript
- Content: For example, a silver storage class with the standard disks, a gold class with SSD drives, and a platinum class with SSD drives and replication.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 499: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class / 201_Storage Class.txt
- Topic: Storage Class
- Line Context: Lines 1-1 from transcript
- Content: And that's why it's called storage class.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 500: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class / 201_Storage Class.txt
- Topic: Storage Class
- Line Context: Lines 1-1 from transcript
- Content: You can simply specify the class of storage you need for your volumes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 501: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: -: Let us now review the lab on storage class.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 502: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E2
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So the first question is how many storage classes exist in the cluster?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 503: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: Let's do a queue code to get storage class.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 504: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So we see one, we can also do a SC to the storage classes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 505: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So that's the short form.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 506: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: We see that there's just one storage class.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 507: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So let's select one.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 508: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: How about now?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 509: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: How many storage classes exist in the cluster?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 510: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E10
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: We just created a few more.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 511: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So let's try it again.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 512: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: And we see that there are three setting things up.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 513: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So what is the name of the storage class that does not support dynamic volume provisioning?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 514: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So we know that the provisionary is what defines how the storage class volumes are provisioned.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 515: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So the no provisioner is one that does not support dynamic volume provisioning.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 516: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So that's the provisioner.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 517: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So that's the storage class that does not support dynamic volume provisioning.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 518: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So that's local storage.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 519: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: Now what is the volume binding mode used for the storage class?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 520: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: The one identified in the previous question.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 521: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E21
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So for this the volume binding mode is wait for first consumer.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 522: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So this is the answer.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 523: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So what is the provisioner used for?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 524: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: The storage class called WoodworksIO, priority high.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 525: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So this is the stories class called WoodworksIO priority high and provisioner is port works volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 526: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: Now is there a persistent volume claim that is consuming the persistent volume called Local PV?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 527: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So is there a persistent volume claim?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 528: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So let's look at persistent volumes and persistent volume claims.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 529: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: And there are no persistent volume claims at all.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 530: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So no is the answer.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 531: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E31
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So create a persistent volume claim by the name of local PVC that should bind to the volume local PV.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 532: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E32
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So we need to create a PVC with the name local PVC.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 533: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E33
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: And if it is to bind to the PV they must have capacity, which is, yeah, 500 megabytes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 534: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So that's correct.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 535: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E35
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: And then the access modes should match.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 536: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E36
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So this is ReadWrite ones and the storage class should also match; so that's local storage.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 537: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E37
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna create PVC.YAML with all that information.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 538: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E38
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So let's go and find persistent volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 539: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E39
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: Let's select persistent volume and let's look at PVC.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 540: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E40
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: And here you have PVC.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 541: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So we'll copy until here.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 542: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E42
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: We don't need the the selectors.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 543: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E43
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So let's paste that here.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 544: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E44
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So the name is local PVC.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 545: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E45
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: The access mode, as we discuss it, has to be rewrite once, which is fine.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 546: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E46
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: We don't need to specify the volume mode for now.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 547: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E47
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: And storage is 500 megabytes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 548: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E48
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: And the storage class name is local storage.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 549: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E49
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: That's what we saw.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 550: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E50
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: Right, so local storage.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 551: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E51
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So that's it.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 552: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E52
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: Let's create the PVC.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 553: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E53
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: Let's make sure it's created.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 554: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E54
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: Okay.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 555: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E55
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: Now what is the status of the newly created persistent volume claim?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 556: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E56
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So it's in a pending state.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 557: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E57
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: Now why is the PVC in a pending state despite making a valid request to claim the volume call local PV.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 558: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E58
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So we made sure that we got everything right that 500 megabytes of capacity, rewrite ones access model matching, the local storage class is also matching.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 559: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E59
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So then why is it that it was not created?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 560: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E60
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So let's look at the events.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 561: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E61
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So let's do a queue code: describe PVC local PVC.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 562: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E62
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: And here we see that the reason is that it's waiting for first consumer, waiting for the first consumer to be created before binding.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 563: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E63
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So as we discussed, the wait for first consumer means that it's not going to bind to a PV if it's not used.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 564: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E64
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So it's just waiting for someone to use it for a ideally a volume to use it.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 565: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E66
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So this is the right answer.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 566: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E67
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So the storage class called local storage makes use of volume binding mode set to wait for first consumer.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 567: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E70
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: Let's do that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 568: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E73
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So for that we're going to have to convert this to ammo.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 569: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E74
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna run it, we're gonna create the ammo file redirect it to EngineX.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 570: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E75
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: Start the ammo.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 571: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E76
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: Okay, so we have all of this details in there.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 572: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E77
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: Now what we need to do is we need to first configure the volume and the volume amount, right?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 573: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E78
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So we need, we need the volume section and the volume has to come from the local PVC.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 574: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E79
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So let's look at claims as volumes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 575: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E80
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: And here you have example of using a claim as volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 576: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E81
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So you have, you already have a volume section so we just need this.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 577: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E82
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: Okay, make sure to fix the format.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 578: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E83
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So we have volumes and the name is going to be, let's name it as local PVC volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 579: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E84
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: Okay?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 580: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E85
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: Now the claim name has to be local PVC.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 581: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E86
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: Okay?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 582: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E87
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: And the next thing is we need the volume mount which is inside the container.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 583: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E89
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So let's do that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 584: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E90
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: We have the volume mount and the volume mount says you can see here is at (indistinct), which is right.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 585: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E91
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: And this, the name of the volume is the name that we've given here.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 586: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E92
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: It's gonna be this.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 587: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E93
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So if the question does not ask you to use a specific name, you can use any name.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 588: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E94
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: Just make sure that this name and this name matches.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 589: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E95
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So that's when this volume is going to get mount to this directory.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 590: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E96
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: Okay, let's save that and let's create a file.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 591: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E97
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: Let's see the status of the part.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 592: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E98
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: Okay, it's created, but it's not in a running stage.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 593: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E99
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: Give it a second.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 594: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E100
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: Yep, it's in the running stage.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 595: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E101
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: Okay, so that's successful.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 596: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E102
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So let's check the status of the PVC now.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 597: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E103
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: And we now see that it's in a bound state - so it's in a bound state.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 598: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E104
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So as soon as a volume use that PVC, it went into a bound state.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 599: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E105
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So create a new storage called storage class called delayed volume SC that makes use of the below specs provisioner and volume binding mode.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 600: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E106
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: Okay, so let's do that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 601: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E107
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: Let's first create a file called Delete volume SE.ammo.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 602: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E108
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: And we need a template for a storage class.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 603: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E109
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: That search for storage class.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 604: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E110
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna use this.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 605: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E111
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So let's use the first lines.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 606: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E112
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: Okay, now the name is going to be delayed volume sc.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 607: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E113
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: The provisioner is going to be: no provisioner.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 608: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E114
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: And volume Binding Mode..
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 609: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E115
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: The volume binding mode is this.. is going to be wait for first consumer.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 610: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E116
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: Let's wait for first consumer.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 611: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E117
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: Yep.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 612: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E118
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So this seems to be it.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 613: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E119
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So let's create that storage class.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 614: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E120
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: Yes, the storage class is created.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 615: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E121
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: Let's check it out.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 616: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E122
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: Yep.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 617: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E123
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: It's created with the No Provisioner provisioner and the wait for first consumer while in binding mount. (indistinct) Okay, That's successful.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 618: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E124
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: Yep.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 619: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E125
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class / 203_Lab Solution - Storage Class.txt
- Topic: Lab Solution - Storage Class
- Line Context: Lines 1-1 from transcript
- Content: So that's the end of this lab.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 620: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/241_Design a Kubernetes Cluster.extraction.md::E39
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 241_Design a Kubernetes Cluster / 241_Design a Kubernetes Cluster.txt
- Topic: Design a Kubernetes Cluster
- Line Context: Lines 1-1 from transcript
- Content: For high performance workloads, rely on SSD backed storage for multiple concurrent Current access.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 621: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/241_Design a Kubernetes Cluster.extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 241_Design a Kubernetes Cluster / 241_Design a Kubernetes Cluster.txt
- Topic: Design a Kubernetes Cluster
- Line Context: Lines 1-1 from transcript
- Content: Consider persistent storage volumes that we discussed in the storage section.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 622: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/241_Design a Kubernetes Cluster.extraction.md::E42
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 241_Design a Kubernetes Cluster / 241_Design a Kubernetes Cluster.txt
- Topic: Design a Kubernetes Cluster
- Line Context: Lines 1-1 from transcript
- Content: Consider defining different classes of storage and allocating the right class to the right applications.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 623: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/252_Helm - Introduction.extraction.md::E10
- Type: Comparison
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 252_Helm - Introduction / 252_Helm - Introduction.txt
- Topic: Helm - Introduction
- Line Context: Lines 1-1 from transcript
- Content: The persistent volumes are 20 GB, but we know our website will need much more storage than that, so we go to the YAML files where the PVs and PVCs are declared, and we change 20 to 100.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 624: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/252_Helm - Introduction.extraction.md::E36
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 252_Helm - Introduction / 252_Helm - Introduction.txt
- Topic: Helm - Introduction
- Line Context: Lines 1-1 from transcript
- Content: In a file like values.yaml, we can change the size of our persistent volumes, choose the name of our WordPress website, the admin password, settings for the database engine, and so on.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 625: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E61
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo / 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript
- Content: We're gonna change it to, it's gonna be prefixed with KodeKloud as well, but it's gonna end in -storage.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 626: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E81
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo / 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript
- Content: And for the db, I'm gonna do -storage.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 627: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E82
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo / 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript
- Content: So we'll do nameSuffix: -storage.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 628: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E86
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo / 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript
- Content: So the prefix is still there, and the suffix is set to storage.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 629: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E122
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional) / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And then we use volumes to mount these directories within the same directory within the controller manager, right?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 630: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E125
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional) / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And we see that all of these all of these that are configured here so ATC Kubernetes, ATC Kubernetes PKI these are all in fact on the host, but they're mapped as a volume through to these containers.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 631: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E126
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional) / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And the way that's done is through volume mounts.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 632: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E127
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional) / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we look at volume mounts here and we can see there are multiple volume mounts.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 633: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E128
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional) / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So you have the CSSL certs, the CS certs but what we want is the coordinate PKI volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 634: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E130
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional) / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So here the mounting looks good but the volume that is mounted is called K eight certs.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 635: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E131
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional) / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So let's take a look at the K eight certs volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 636: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E132
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional) / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So these are the volumes that are configured here.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 637: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E133
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional) / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And here we have the K eight certs volume and this is the section for that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 638: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional) / 304_Solution - Mock Exam -1 (Optional).txt
- Topic: Solution - Mock Exam -1 (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So for them to have access to the same file system, we have to set up a volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 639: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E42
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional) / 304_Solution - Mock Exam -1 (Optional).txt
- Topic: Solution - Mock Exam -1 (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And it also says use a shared non-persistent volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 640: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E43
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional) / 304_Solution - Mock Exam -1 (Optional).txt
- Topic: Solution - Mock Exam -1 (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So I'm gonna add a volume here.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 641: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E44
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional) / 304_Solution - Mock Exam -1 (Optional).txt
- Topic: Solution - Mock Exam -1 (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So you just say volumes, and then we'll give it a name, we'll just call it shared-volume and then what we wanna do is we wanna look at this keyword non-persistent volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 642: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E45
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional) / 304_Solution - Mock Exam -1 (Optional).txt
- Topic: Solution - Mock Exam -1 (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So a non-persistent volume that we can use is called emptyDir.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 643: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E50
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional) / 304_Solution - Mock Exam -1 (Optional).txt
- Topic: Solution - Mock Exam -1 (Optional)
- Line Context: Lines 1-1 from transcript
- Content: It's called shared-volume and then we wanna set the mountPath to where do we wanna mount it?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 644: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E61
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional) / 304_Solution - Mock Exam -1 (Optional).txt
- Topic: Solution - Mock Exam -1 (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And we can do that because once again, we're mounting that volume in var/log/shared so we have access to that date.log file.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 645: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E191
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional) / 304_Solution - Mock Exam -1 (Optional).txt
- Topic: Solution - Mock Exam -1 (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So question eight says, create a persistent volume with the following specifications.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 646: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E192
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional) / 304_Solution - Mock Exam -1 (Optional).txt
- Topic: Solution - Mock Exam -1 (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we have to call it pv-analytics, provide storage of a hundred mebibytes, access mode, rewrite many, and we have to use the type host path.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 647: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E194
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional) / 304_Solution - Mock Exam -1 (Optional).txt
- Topic: Solution - Mock Exam -1 (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So if you don't know how to create a persistent volume off the top of your head, remember you always have access to the documentation.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 648: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E198
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional) / 304_Solution - Mock Exam -1 (Optional).txt
- Topic: Solution - Mock Exam -1 (Optional)
- Line Context: Lines 1-1 from transcript
- Content: That's a persistent volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 649: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E199
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional) / 304_Solution - Mock Exam -1 (Optional).txt
- Topic: Solution - Mock Exam -1 (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Here we go persistent volumes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 650: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E207
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional) / 304_Solution - Mock Exam -1 (Optional).txt
- Topic: Solution - Mock Exam -1 (Optional)
- Line Context: Lines 1-1 from transcript
- Content: It doesn't say anything about persistent volume reclaim policy.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 651: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E209
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional) / 304_Solution - Mock Exam -1 (Optional).txt
- Topic: Solution - Mock Exam -1 (Optional)
- Line Context: Lines 1-1 from transcript
- Content: It doesn't say anything about storage class, so I will delete that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 652: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E4
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional) / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Topic: Mock Exam - 2 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And it says that we have to create a storage class named local SC with the following specifications and set it as the default storage class.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 653: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E6
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional) / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Topic: Mock Exam - 2 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And let's go ahead and create a storage class.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 654: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional) / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Topic: Mock Exam - 2 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And I'm going to search for the storage class.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 655: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E14
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional) / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Topic: Mock Exam - 2 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: It says that this should be set as the default storage class.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 656: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E22
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional) / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Topic: Mock Exam - 2 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And then the next two things that we need is a volume binding mode and the volume expansion mode.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 657: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E25
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional) / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Topic: Mock Exam - 2 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Volume expansion should be enabled.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 658: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E29
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional) / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Topic: Mock Exam - 2 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Volume binding mode should be wait for first consumer.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 659: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E98
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional) / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Topic: Mock Exam - 2 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we have to create a volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 660: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E99
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional) / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Topic: Mock Exam - 2 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So let's go under spec and let's create a volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 661: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E100
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional) / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Topic: Mock Exam - 2 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: We're going to call this log volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 662: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E103
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional) / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Topic: Mock Exam - 2 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: We can use the empty volume type, and this will allow us to essentially treat the var log app log and share it between the container.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 663: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E104
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional) / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Topic: Mock Exam - 2 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we have the volume, and then we have to mount it in the same exact location which is var log app inside both of the containers.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 664: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E105
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional) / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Topic: Mock Exam - 2 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So here I'll go down and I will do volume mounts.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 665: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E106
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional) / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Topic: Mock Exam - 2 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And I'll say name log volume which is referencing this volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 666: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E111
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional) / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Topic: Mock Exam - 2 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we're taking this volume and we're mounting it in var log app inside the first container.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 667: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E131
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional) / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Topic: Mock Exam - 2 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So that confirms that they both have access to the same data using the volume and the volume mounts.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 668: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E41
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional) / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Topic: Mock Exam - 3 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: That should be able to list all persistent volumes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 669: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E48
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional) / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Topic: Mock Exam - 3 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So it should be able to list all persistent volumes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 670: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E49
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional) / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Topic: Mock Exam - 3 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we'll say resource=persistentvolumes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 671: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E52
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional) / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Topic: Mock Exam - 3 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So this will basically create a cluster role and it'll allow us to list persistent volumes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 672: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E55
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional) / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Topic: Mock Exam - 3 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And we can see that for persistent volumes, he's able to list them.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 673: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E85
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional) / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Topic: Mock Exam - 3 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So for question number three, we have to create a StorageClass called rancher-sc, and it's gotta have the following configurations.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 674: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E86
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional) / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Topic: Mock Exam - 3 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So for this, if you don't remember how to create a storageclass off the top of your head, we can always just go to the documentation and just search for storageclass.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 675: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E87
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional) / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Topic: Mock Exam - 3 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And we'll take a look at the documentation for Storage Classes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 676: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E93
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional) / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Topic: Mock Exam - 3 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So does it expect us to set this to be the default storageclass?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 677: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E94
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional) / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Topic: Mock Exam - 3 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Let's see, provisioners should be this volume binding, volume expansion.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 678: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E105
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional) / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Topic: Mock Exam - 3 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Volume expansion should be enabled.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 679: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E106
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional) / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Topic: Mock Exam - 3 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So allow volume expansion should set to be true.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 680: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E109
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional) / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Topic: Mock Exam - 3 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Volume binding mode should be WaitForFirstConsumer.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 681: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E255
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional) / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Topic: Mock Exam - 3 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay, so for this question it says a persistent volume claim named app-pvc exist in the namespace stored-ns but it's not getting bound to the available persistent volume named app-pv.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 682: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E256
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional) / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Topic: Mock Exam - 3 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: It's telling us to inspect both the pvc and the pv and identify why the pvc is not being bound and to fix the issue so that the pvc successfully binds to the pv, do not modify the pv resource.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 683: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E257
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional) / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Topic: Mock Exam - 3 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay, so basically we've got a pv, we've got a pvc.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 684: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E258
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional) / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Topic: Mock Exam - 3 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: The pvc is not getting bound to the pv.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 685: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E263
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional) / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Topic: Mock Exam - 3 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: We'll then do kubectl get pvc and then it's gonna be in the storage-ns namespace and we could see it's in a pending state.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 686: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E268
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional) / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Topic: Mock Exam - 3 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So the pvc is requesting one gig.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 687: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E274
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional) / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Topic: Mock Exam - 3 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And if we take a look at the pvc access mode, ReadWrite many, okay, so this is why it's not binding.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 688: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E276
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional) / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Topic: Mock Exam - 3 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we have to adjust the pvc to match with the pv, which is ReadWrite once.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 689: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E280
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional) / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Topic: Mock Exam - 3 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And then we will change this to be ReadWrite once, and then I'm going to delete the pvc and then apply the new config.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 690: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E281
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional) / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Topic: Mock Exam - 3 - Solution _ (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So we've applied the new one and now if I do a kubectl get pvc, we should see that now the app pvc is bound and is bound to the app-pv.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 691: certified-kubernetes-application-developer/01_Introduction/001_Introduction.extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-application-developer / 01_Introduction / 001_Introduction / 001_Introduction.txt
- Topic: Introduction
- Line Context: Lines 1-1 from transcript
- Content: Finally, we cover persistent storage with persistent volumes and claims to ensure data durability across containers.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 692: certified-kubernetes-application-developer/01_Introduction/002_Kubernetes Series of Courses.extraction.md::E18
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 01_Introduction / 002_Kubernetes Series of Courses / 002_Kubernetes Series of Courses.txt
- Topic: Kubernetes Series of Courses
- Line Context: Lines 1-1 from transcript
- Content: The Kubernetes for administrators course focuses on advanced topics on Kubernetes, and in-depth discussions into the various concepts around deploying a high-availability cluster for production use case, understanding more about scheduling, monitoring, maintenance, security, storage, and troubleshooting.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 693: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD / 008_Docker-vs-ContainerD.txt
- Topic: Docker-vs-ContainerD
- Line Context: Lines 1-1 from transcript
- Content: There was support for volumes or security.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 694: certified-kubernetes-application-developer/02_Core Concepts/009_A note on Docker deprecation.extraction.md::E5
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 009_A note on Docker deprecation / 009_A note on Docker deprecation.txt
- Topic: A note on Docker deprecation
- Line Context: Lines 1-1 from transcript
- Content: There was support for volumes, auth, security and finally also the container runtime called Runc and the daemon that managed the runtime called the container.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 695: certified-kubernetes-application-developer/02_Core Concepts/009_A note on Docker deprecation.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 009_A note on Docker deprecation / 009_A note on Docker deprecation.txt
- Topic: A note on Docker deprecation
- Line Context: Lines 1-1 from transcript
- Content: The other tools that Docker supported like Docker CLI or the API, or build volumes or etc. as they were all taken care of by Kubernetes itself.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 696: certified-kubernetes-application-developer/03_Configuration/049_ConfigMaps.extraction.md::E51
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 049_ConfigMaps / 049_ConfigMaps.txt
- Topic: ConfigMaps
- Line Context: Lines 1-1 from transcript
- Content: You can inject it as a single environment variable, or you can inject the whole data as files in a volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 697: certified-kubernetes-application-developer/03_Configuration/052_Secrets.extraction.md::E61
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 052_Secrets / 052_Secrets.txt
- Topic: Secrets
- Line Context: Lines 1-1 from transcript
- Content: You can inject a single environment variables or inject the whole secret as files in a volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 698: certified-kubernetes-application-developer/03_Configuration/057_Demo_ Encrypting Secret Data at Rest.extraction.md::E160
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 057_Demo_ Encrypting Secret Data at Rest / 057_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript
- Content: So I'm gonna use volumes and volume ones.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 699: certified-kubernetes-application-developer/03_Configuration/057_Demo_ Encrypting Secret Data at Rest.extraction.md::E161
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 057_Demo_ Encrypting Secret Data at Rest / 057_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript
- Content: If you have not gone through the volumes and volume ones yet that you might want to take a look at that and come back.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 700: certified-kubernetes-application-developer/03_Configuration/057_Demo_ Encrypting Secret Data at Rest.extraction.md::E179
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 057_Demo_ Encrypting Secret Data at Rest / 057_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript
- Content: I have volume mounts.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 701: certified-kubernetes-application-developer/08_State Persistence/122_Introduction to Docker Storage.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 122_Introduction to Docker Storage / 122_Introduction to Docker Storage.txt
- Topic: Introduction to Docker Storage
- Line Context: Lines 1-1 from transcript
- Content: Let us now look at storage in Kubernetes to understand storage in container orchestration tools like Kubernetes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 702: certified-kubernetes-application-developer/08_State Persistence/122_Introduction to Docker Storage.extraction.md::E2
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 122_Introduction to Docker Storage / 122_Introduction to Docker Storage.txt
- Topic: Introduction to Docker Storage
- Line Context: Lines 1-1 from transcript
- Content: It is important to first understand how storage works with containers.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 703: certified-kubernetes-application-developer/08_State Persistence/122_Introduction to Docker Storage.extraction.md::E3
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 122_Introduction to Docker Storage / 122_Introduction to Docker Storage.txt
- Topic: Introduction to Docker Storage
- Line Context: Lines 1-1 from transcript
- Content: Understanding how storage works with Docker first and getting all the basics right will later make it so much easier to understand how it works in Kubernetes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 704: certified-kubernetes-application-developer/08_State Persistence/122_Introduction to Docker Storage.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 122_Introduction to Docker Storage / 122_Introduction to Docker Storage.txt
- Topic: Introduction to Docker Storage
- Line Context: Lines 1-1 from transcript
- Content: When it comes to storage in Docker, there are two concepts you must know about storage drivers and volume driver plugins.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 705: certified-kubernetes-application-developer/08_State Persistence/122_Introduction to Docker Storage.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 122_Introduction to Docker Storage / 122_Introduction to Docker Storage.txt
- Topic: Introduction to Docker Storage
- Line Context: Lines 1-1 from transcript
- Content: In the upcoming video, we will discuss about storage drivers.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 706: certified-kubernetes-application-developer/08_State Persistence/122_Introduction to Docker Storage.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 122_Introduction to Docker Storage / 122_Introduction to Docker Storage.txt
- Topic: Introduction to Docker Storage
- Line Context: Lines 1-1 from transcript
- Content: It's something that we've discussed in the Docker course, so if you have gone through that already, feel free to skip this video or you may choose to stay and refresh your memory.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 707: certified-kubernetes-application-developer/08_State Persistence/122_Introduction to Docker Storage.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 122_Introduction to Docker Storage / 122_Introduction to Docker Storage.txt
- Topic: Introduction to Docker Storage
- Line Context: Lines 1-1 from transcript
- Content: Once done, we will talk about volume drivers.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 708: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: In this lecture we are going to talk about Docker storage drivers and file systems.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 709: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E2
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: We're going to see where and how Docker stores data and how it manages file systems of the containers.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 710: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: Let us start with how Docker stores data on the local file system.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 711: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E4
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: When you install Docker on a system, it creates this folder structure at var lib docker.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 712: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E5
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: You have multiple folders under it called aufs, containers, image volumes, etc. this is where Docker stores all its data by default.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 713: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: When I say data, I mean files related to images and containers running on the Docker host.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 714: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E7
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: For example, all files related to containers are stored under the containers folder, and the files related to images are stored under the image folder.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 715: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E8
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: Any volumes created by the Docker containers are created under the volumes folder.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 716: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E9
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: Well, don't worry about that for now.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 717: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: We will come back to that in a bit.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 718: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: For now, let's just understand where Docker stores its files and in what format.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 719: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: So how exactly does Docker store the files of an image and a container?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 720: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E13
- Type: Architecture
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: To understand that, we need to understand Docker's layered architecture.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 721: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E14
- Type: Architecture
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: Let's quickly recap something we learned when Docker builds images, it builds these in a layered architecture.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 722: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E15
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: Each line of instruction in the Docker file creates a new layer in the Docker image, with just the changes from the previous layer.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 723: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E16
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: For example, the first layer is a base ubuntu distribution, followed by the second instruction that creates a second layer which installs all the apt packages, and then the third instruction creates a third layer, which with the Python packages, followed by the fourth layer that copies the source code over, and then finally the fifth layer that updates the entry point of the image.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 724: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: Since each layer only stores the changes from the previous layer, it is reflected in the size as well.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 725: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: If you look at the base ubuntu image, it is around 120MB in size.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 726: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E19
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: The APT packages that are installed is around 300 MB and then the remaining layers are small.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 727: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E20
- Type: Architecture
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: To understand the advantages of this layered architecture, let's consider a second application.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 728: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E21
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: This application has a different Docker file, but is very similar to our first application, as it uses the same base image as ubuntu, uses the same Python and Flask dependencies, but uses a different source code to create a different application, and so a different entry point as well.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 729: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E22
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: When I run the docker build command to build a new image for this application, since the first three layers of both the applications are the same, Docker is not going to build the first three layers.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 730: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E23
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: Instead, it reuses the same three layers it built for the first application from the cache, and only creates the last two layers with the new sources and the new entry point.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 731: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: This way Docker builds images faster and efficiently saves disk space.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 732: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: This is also applicable if you were to update your application code whenever you update your application code, such as the App.py.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 733: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: In this case, Docker simply reuses all the previous layers from cache and rebuilds the application image by updating the latest source code, thus saving us a lot of time during rebuilds and updates.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 734: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: Let's rearrange the layers bottom up so we can understand it better.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 735: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E28
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: At the bottom we have the base ubuntu layer, then the packages, then the dependencies, and then the source code of the application and then the entry point.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 736: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E29
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: All of these layers are created when we run the docker build command to form the final Docker image.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 737: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: So all of these are the Docker image layers.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 738: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E31
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: Once the build is complete, you cannot modify the contents of these layers.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 739: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: And so they are read only.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 740: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E33
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: And you can only modify them by initiating a new build.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 741: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E34
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: When you run a container based off of this image using the docker run command, Docker creates a container based off of these layers and creates a new writable layer on top of the image layer.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 742: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E35
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: The writable layer is used to store data created by the container, such as log files written by the applications.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 743: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E36
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: Any temporary files generated by the container, or just any file modified by the user on that container.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 744: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E37
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: The life of this layer, though, is only as long as the container is alive.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 745: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E38
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: When the container is destroyed, this layer and all of the changes stored in it are also destroyed.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 746: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E39
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: Remember that the same image layer is shared by all containers created using this image.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 747: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E40
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: If I were to log in to the newly created container and say create a new file called temp dot txt, it will create that file in the container layer which is read and write.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 748: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: We just said that the files in the image layer are read only, meaning you cannot edit anything in those layers.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 749: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E42
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: Let's take an example of our application code.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 750: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E43
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: Since we bake our code into the image, the code is part of the image layer and as such is read only.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 751: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E44
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: After running a container, what if I wish to modify the source code to say test a change?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 752: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E45
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: Remember, the same image layer may be shared between multiple containers created from this image.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 753: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E46
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: So does it mean that I cannot modify this file inside the container?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 754: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E47
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: No.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 755: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E48
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: I can still modify this file.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 756: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E49
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: But before I save the modified file.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 757: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E50
- Type: Command
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Command:
```bash
Docker automatically creates a copy of the file in the read write layer, and I will then be modifying a different version of the file in the read write layer.
```
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 758: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E51
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: All future modifications will be done on this copy of the file in the read write layer.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 759: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E52
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: This is called copy on write mechanism.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 760: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E53
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: The image layer being read only just means that the files in these layers will not be modified in the image itself.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 761: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E54
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: So the image will remain the same all the time until you rebuild the image using the docker build command.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 762: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E55
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: What happens when we get rid of the container?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 763: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E56
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: All of the data that was stored in the container layer also gets deleted.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 764: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E57
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: The change we made to the App.py and the new temp file we created will also get removed.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 765: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E58
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: So what if we wish to persist this data.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 766: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E59
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: For example, if we were working with a database and we would like to preserve the data created by the container, we could add a persistent volume to the container.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 767: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E60
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: To do this, first create a volume using the Docker volume create command.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 768: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E61
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: So when I run the Docker volume create data underscore volume command, it creates a folder called data underscore volume under the var lib docker volumes directory.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 769: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E62
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: Then when I run the docker container using the docker run command, I could mount this volume inside the Docker containers.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 770: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E63
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: Read write layer using the dash v option like this.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 771: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E64
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: So I would do a docker run dash v, then specify my newly created volume name, followed by a colon and the location inside my container, which is the default location where MySQL stores data.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 772: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E65
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: And that is var lib MySQL and then the image name MySQL.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 773: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E66
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: This will create a new container and mount the data volume we created into var lib mysql folder inside the container.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 774: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E67
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: So all data written by the database is in fact stored on the volume created on the docker host.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 775: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E68
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: Even if the container is destroyed, the data is still active.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 776: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E69
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: Now what if you didn't run the Docker volume?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 777: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E70
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: Create command to create the volume before the docker run command.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 778: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E71
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: For example, if I run the docker run command to create a new instance of MySQL container with the volume data underscore volume two, which I have not created yet, Docker will automatically create a volume named data, underscore volume two and mount it to the container.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 779: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E72
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: You should be able to see all these volumes if you list the contents of the var lib docker volumes folder.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 780: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E73
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: This is called volume mounting as we are mounting a volume created by Docker under the var lib docker volumes folder.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 781: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E74
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: But what if we had our data already at another location?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 782: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E75
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: For example, let's say we have some external storage on the docker host at forward slash data, and we would like to store database data on that volume and not in the default var lib docker volumes folder.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 783: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E76
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: In that case we would run a container using the command docker run dash v, but in this case we will provide the complete path to the folder we would like to mount.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 784: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E77
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: That is slash data or slash MySQL.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 785: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E78
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: And so it will create a container and mount the folder to the container.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 786: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E79
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: This is called bind mounting.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 787: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E80
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: So there are two types of mounts a volume mounting and a bind mount.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 788: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E81
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: Volume mount mounts a volume from the volumes directory and bind mount mounts a directory from any location on the docker host.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 789: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E82
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: One final point to note before I let you go.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 790: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E83
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: Using the dash V is an old style.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 791: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E84
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: The new way is to use dash mount option.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 792: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E85
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: The dash dash mount is the preferred way, as it is more verbose, so you have to specify each parameter in a key equals value format.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 793: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E86
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: For example, the previous command can be written with the dash mount option as this using the type, source and target options.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 794: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E87
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: The type in this case is bind.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 795: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E88
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: The source is the location on my host, and target is the location on my container.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 796: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E89
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: So who is responsible for doing all of these operations?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 797: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E90
- Type: Architecture
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: Maintaining the layered architecture, creating a writable layer, moving files across layers to enable copy and write, etc. it's the storage drivers.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 798: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E91
- Type: Architecture
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: So Docker uses storage drivers to enable layered architecture, some of the common storage drivers are UFS, btrfs, ZFS Device Mapper, overlay and Overlay.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 799: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E92
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: Two.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 800: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E93
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: The selection of the storage driver depends on the underlying OS being used.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 801: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E94
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: For example, with ubuntu, the default storage driver is UFS, whereas this storage driver is not available on other operating systems like fedora or CentOS.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 802: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E95
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: In that case, device Mapper may be a better option.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 803: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E96
- Type: Command
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Command:
```bash
Docker will choose the best storage driver available automatically based on the operating system.
```
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 804: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E97
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: The different storage drivers also provide different performance and stability characteristics, so you may want to choose one that fits the needs of your application and your organization.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 805: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E98
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: If you would like to read more on any of these storage drivers, please refer to the links in the attached documentation.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 806: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E99
- Type: Architecture
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: For now, that is all from the Docker architecture concepts.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 807: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E100
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker / 123_Storage in Docker.txt
- Topic: Storage in Docker
- Line Context: Lines 1-1 from transcript
- Content: See you in the next lecture.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 808: certified-kubernetes-application-developer/08_State Persistence/124_Volume Driver Plugins in Docker.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 124_Volume Driver Plugins in Docker / 124_Volume Driver Plugins in Docker.txt
- Topic: Volume Driver Plugins in Docker
- Line Context: Lines 1-1 from transcript
- Content: Okay, so in the previous lecture we discussed about storage drivers.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 809: certified-kubernetes-application-developer/08_State Persistence/124_Volume Driver Plugins in Docker.extraction.md::E2
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 124_Volume Driver Plugins in Docker / 124_Volume Driver Plugins in Docker.txt
- Topic: Volume Driver Plugins in Docker
- Line Context: Lines 1-1 from transcript
- Content: Storage drivers help manage storage on images and containers.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 810: certified-kubernetes-application-developer/08_State Persistence/124_Volume Driver Plugins in Docker.extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 124_Volume Driver Plugins in Docker / 124_Volume Driver Plugins in Docker.txt
- Topic: Volume Driver Plugins in Docker
- Line Context: Lines 1-1 from transcript
- Content: We also briefly touched upon volumes in the previous lecture.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 811: certified-kubernetes-application-developer/08_State Persistence/124_Volume Driver Plugins in Docker.extraction.md::E4
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 124_Volume Driver Plugins in Docker / 124_Volume Driver Plugins in Docker.txt
- Topic: Volume Driver Plugins in Docker
- Line Context: Lines 1-1 from transcript
- Content: We learned that if you want to persist storage, you must create volumes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 812: certified-kubernetes-application-developer/08_State Persistence/124_Volume Driver Plugins in Docker.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 124_Volume Driver Plugins in Docker / 124_Volume Driver Plugins in Docker.txt
- Topic: Volume Driver Plugins in Docker
- Line Context: Lines 1-1 from transcript
- Content: Remember that volumes are not handled by storage drivers.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 813: certified-kubernetes-application-developer/08_State Persistence/124_Volume Driver Plugins in Docker.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 124_Volume Driver Plugins in Docker / 124_Volume Driver Plugins in Docker.txt
- Topic: Volume Driver Plugins in Docker
- Line Context: Lines 1-1 from transcript
- Content: Volumes are handled by volume driver plugins.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 814: certified-kubernetes-application-developer/08_State Persistence/124_Volume Driver Plugins in Docker.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 124_Volume Driver Plugins in Docker / 124_Volume Driver Plugins in Docker.txt
- Topic: Volume Driver Plugins in Docker
- Line Context: Lines 1-1 from transcript
- Content: The default volume driver plugin is local.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 815: certified-kubernetes-application-developer/08_State Persistence/124_Volume Driver Plugins in Docker.extraction.md::E8
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 124_Volume Driver Plugins in Docker / 124_Volume Driver Plugins in Docker.txt
- Topic: Volume Driver Plugins in Docker
- Line Context: Lines 1-1 from transcript
- Content: The local volume plugin helps create a volume on the Docker host and store its data under the var lib docker volumes directory.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 816: certified-kubernetes-application-developer/08_State Persistence/124_Volume Driver Plugins in Docker.extraction.md::E9
- Type: Comparison
- Source: certified-kubernetes-application-developer / 08_State Persistence / 124_Volume Driver Plugins in Docker / 124_Volume Driver Plugins in Docker.txt
- Topic: Volume Driver Plugins in Docker
- Line Context: Lines 1-1 from transcript
- Content: There are many other volume driver plugins that allow you to create a volume on third party solutions like Azure File Storage, convoy, DigitalOcean, Block Storage Locker, Google Compute, Persistent Disks, cluster, EFS, NetApp, Rex, Ray, Port Works, and VMware vSphere storage.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 817: certified-kubernetes-application-developer/08_State Persistence/124_Volume Driver Plugins in Docker.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 124_Volume Driver Plugins in Docker / 124_Volume Driver Plugins in Docker.txt
- Topic: Volume Driver Plugins in Docker
- Line Context: Lines 1-1 from transcript
- Content: These are just a few of the many.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 818: certified-kubernetes-application-developer/08_State Persistence/124_Volume Driver Plugins in Docker.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 124_Volume Driver Plugins in Docker / 124_Volume Driver Plugins in Docker.txt
- Topic: Volume Driver Plugins in Docker
- Line Context: Lines 1-1 from transcript
- Content: Some of these volume drivers support different storage providers.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 819: certified-kubernetes-application-developer/08_State Persistence/124_Volume Driver Plugins in Docker.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 124_Volume Driver Plugins in Docker / 124_Volume Driver Plugins in Docker.txt
- Topic: Volume Driver Plugins in Docker
- Line Context: Lines 1-1 from transcript
- Content: For instance, Rex Ray storage driver can be used to provision storage on AWS, EBS, S3, EMC storage arrays like Isilon and Scaleio or Google Persistent Disk or OpenStack cinder.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 820: certified-kubernetes-application-developer/08_State Persistence/124_Volume Driver Plugins in Docker.extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 124_Volume Driver Plugins in Docker / 124_Volume Driver Plugins in Docker.txt
- Topic: Volume Driver Plugins in Docker
- Line Context: Lines 1-1 from transcript
- Content: When you run a Docker container, you can choose to use a specific volume driver, such as the Rex ray EBS to provision a volume from Amazon EBS.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 821: certified-kubernetes-application-developer/08_State Persistence/124_Volume Driver Plugins in Docker.extraction.md::E14
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 124_Volume Driver Plugins in Docker / 124_Volume Driver Plugins in Docker.txt
- Topic: Volume Driver Plugins in Docker
- Line Context: Lines 1-1 from transcript
- Content: This will create a container and attach a volume from the AWS cloud.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 822: certified-kubernetes-application-developer/08_State Persistence/124_Volume Driver Plugins in Docker.extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 124_Volume Driver Plugins in Docker / 124_Volume Driver Plugins in Docker.txt
- Topic: Volume Driver Plugins in Docker
- Line Context: Lines 1-1 from transcript
- Content: When the container exits, your data is safe in the cloud.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 823: certified-kubernetes-application-developer/08_State Persistence/124_Volume Driver Plugins in Docker.extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 124_Volume Driver Plugins in Docker / 124_Volume Driver Plugins in Docker.txt
- Topic: Volume Driver Plugins in Docker
- Line Context: Lines 1-1 from transcript
- Content: In the upcoming lectures, we will see more about volumes in Kubernetes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 824: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes / 125_Volumes in Kubernetes.txt
- Topic: Volumes in Kubernetes
- Line Context: Lines 1-1 from transcript
- Content: Before we head into persistent volumes, let us start with volumes in Kubernetes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 825: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E2
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes / 125_Volumes in Kubernetes.txt
- Topic: Volumes in Kubernetes
- Line Context: Lines 1-1 from transcript
- Content: Let us look at volumes in Docker first.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 826: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E3
- Type: Command
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes / 125_Volumes in Kubernetes.txt
- Topic: Volumes in Kubernetes
- Line Context: Lines 1-1 from transcript
- Command:
```bash
Docker containers are meant to be transient in nature, which means they are meant to last only for a short period of time.
```
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 827: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes / 125_Volumes in Kubernetes.txt
- Topic: Volumes in Kubernetes
- Line Context: Lines 1-1 from transcript
- Content: They are called upon when required to process data and destroyed once finished.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 828: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes / 125_Volumes in Kubernetes.txt
- Topic: Volumes in Kubernetes
- Line Context: Lines 1-1 from transcript
- Content: The same is true for the data within the container.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 829: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes / 125_Volumes in Kubernetes.txt
- Topic: Volumes in Kubernetes
- Line Context: Lines 1-1 from transcript
- Content: The data is destroyed along with the container to persist data processed by the containers.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 830: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E7
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes / 125_Volumes in Kubernetes.txt
- Topic: Volumes in Kubernetes
- Line Context: Lines 1-1 from transcript
- Content: We attach a volume to the containers when they are created.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 831: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes / 125_Volumes in Kubernetes.txt
- Topic: Volumes in Kubernetes
- Line Context: Lines 1-1 from transcript
- Content: The data processed by the container is now placed in this volume, thereby retaining it permanently even if the container is deleted.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 832: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes / 125_Volumes in Kubernetes.txt
- Topic: Volumes in Kubernetes
- Line Context: Lines 1-1 from transcript
- Content: The data generated or processed by it remains.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 833: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes / 125_Volumes in Kubernetes.txt
- Topic: Volumes in Kubernetes
- Line Context: Lines 1-1 from transcript
- Content: So how does that work in the Kubernetes world?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 834: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes / 125_Volumes in Kubernetes.txt
- Topic: Volumes in Kubernetes
- Line Context: Lines 1-1 from transcript
- Content: Let's look at a simple implementation of volumes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 835: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes / 125_Volumes in Kubernetes.txt
- Topic: Volumes in Kubernetes
- Line Context: Lines 1-1 from transcript
- Content: We have a single node Kubernetes cluster.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 836: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E19
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes / 125_Volumes in Kubernetes.txt
- Topic: Volumes in Kubernetes
- Line Context: Lines 1-1 from transcript
- Content: We create a volume, and a volume needs a storage.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 837: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E20
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes / 125_Volumes in Kubernetes.txt
- Topic: Volumes in Kubernetes
- Line Context: Lines 1-1 from transcript
- Content: When you create a volume, you can choose to configure its storage in different ways.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 838: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E21
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes / 125_Volumes in Kubernetes.txt
- Topic: Volumes in Kubernetes
- Line Context: Lines 1-1 from transcript
- Content: We will look at the various options in a bit, but for now we will simply configure it to use a directory on the host.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 839: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes / 125_Volumes in Kubernetes.txt
- Topic: Volumes in Kubernetes
- Line Context: Lines 1-1 from transcript
- Content: In this case, I specify a path forward slash data on the host.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 840: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E23
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes / 125_Volumes in Kubernetes.txt
- Topic: Volumes in Kubernetes
- Line Context: Lines 1-1 from transcript
- Content: This way any files created in the volume would be stored in the directory data on my node.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 841: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E24
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes / 125_Volumes in Kubernetes.txt
- Topic: Volumes in Kubernetes
- Line Context: Lines 1-1 from transcript
- Content: Once the volume is created to access it from a container, we mount the volume to a directory inside the container.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 842: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes / 125_Volumes in Kubernetes.txt
- Topic: Volumes in Kubernetes
- Line Context: Lines 1-1 from transcript
- Content: We use the volume mounts field in each container to mount the data volume to the directory slash opt.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 843: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes / 125_Volumes in Kubernetes.txt
- Topic: Volumes in Kubernetes
- Line Context: Lines 1-1 from transcript
- Content: Within the container, the random number will now be written to opt mount inside the container, which happens to be on the data volume, which is in fact the data directory on the host.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 844: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E28
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes / 125_Volumes in Kubernetes.txt
- Topic: Volumes in Kubernetes
- Line Context: Lines 1-1 from transcript
- Content: Let's take a step back and look at the volume storage options.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 845: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E29
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes / 125_Volumes in Kubernetes.txt
- Topic: Volumes in Kubernetes
- Line Context: Lines 1-1 from transcript
- Content: We just used the host path option to configure a directory on the host as storage space for the volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 846: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes / 125_Volumes in Kubernetes.txt
- Topic: Volumes in Kubernetes
- Line Context: Lines 1-1 from transcript
- Content: Now that works fine on a single node.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 847: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E31
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes / 125_Volumes in Kubernetes.txt
- Topic: Volumes in Kubernetes
- Line Context: Lines 1-1 from transcript
- Content: However, it is not recommended for use in a multi node cluster.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 848: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E33
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes / 125_Volumes in Kubernetes.txt
- Topic: Volumes in Kubernetes
- Line Context: Lines 1-1 from transcript
- Content: They are in fact not the same unless you configure some kind of external replicated cluster storage solution.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 849: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes / 125_Volumes in Kubernetes.txt
- Topic: Volumes in Kubernetes
- Line Context: Lines 1-1 from transcript
- Content: Kubernetes supports several types of different storage solutions such as NFS, Glusterfs, Flocker.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 850: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E35
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes / 125_Volumes in Kubernetes.txt
- Topic: Volumes in Kubernetes
- Line Context: Lines 1-1 from transcript
- Content: Fibre channel CFS, Scaleio or public cloud solutions like AWS, EBS, Azure Disk or File or Google's Persistent Disk.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 851: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E36
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes / 125_Volumes in Kubernetes.txt
- Topic: Volumes in Kubernetes
- Line Context: Lines 1-1 from transcript
- Content: For example, to configure an AWS Elastic Block Store volume as the storage option for the volume, we replace Hostpath field of the volume with the AWS Elastic Block Store field.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 852: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E37
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes / 125_Volumes in Kubernetes.txt
- Topic: Volumes in Kubernetes
- Line Context: Lines 1-1 from transcript
- Content: Along with the volume ID and filesystem type.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 853: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E38
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes / 125_Volumes in Kubernetes.txt
- Topic: Volumes in Kubernetes
- Line Context: Lines 1-1 from transcript
- Content: The volume storage will now be on AWS EBS.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 854: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E39
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes / 125_Volumes in Kubernetes.txt
- Topic: Volumes in Kubernetes
- Line Context: Lines 1-1 from transcript
- Content: Well, that's it about volumes in Kubernetes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 855: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E40
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes / 125_Volumes in Kubernetes.txt
- Topic: Volumes in Kubernetes
- Line Context: Lines 1-1 from transcript
- Content: We will now head over to discuss persistent volumes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 856: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E41
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes / 125_Volumes in Kubernetes.txt
- Topic: Volumes in Kubernetes
- Line Context: Lines 1-1 from transcript
- Content: Next.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 857: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes / 126_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript
- Content: In the last lecture, we learned about volumes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 858: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E2
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes / 126_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript
- Content: Now we will discuss persistent volumes in Kubernetes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 859: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes / 126_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript
- Content: Instead, you would like to manage storage more centrally.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 860: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E9
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes / 126_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript
- Content: You would like it to be configured in a way that an administrator can create a large pool of storage, and then have users carve out pieces from it as required.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 861: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes / 126_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript
- Content: That is where persistent volumes can help us.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 862: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E11
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes / 126_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript
- Content: A persistent volume is a cluster wide pool of storage volumes configured by an administrator, to be used by users deploying applications on the cluster.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 863: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes / 126_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript
- Content: The users can now select storage from this pool using persistent volume claims.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 864: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E13
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes / 126_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript
- Content: Let us now create a persistent volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 865: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes / 126_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript
- Content: We start with the base template and update the API version.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 866: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes / 126_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript
- Content: Set the kind to persistent volume and name it PV Vol one.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 867: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes / 126_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript
- Content: Under the specs section, specify the access modes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 868: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E17
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes / 126_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript
- Content: Access mode defines how a volume should be mounted on the hosts, whether in a read only mode or read write mode, etc. the supported values are read only, read write once or read write.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 869: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes / 126_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript
- Content: Mini mode.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 870: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E19
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes / 126_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript
- Content: Next is the capacity.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 871: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes / 126_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript
- Content: Specify the amount of storage to be reserved for this persistent volume, which is set to one GB here.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 872: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E21
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes / 126_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript
- Content: Next comes the volume type.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 873: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes / 126_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript
- Content: We will start with the host path option that uses storage from the node's local directory.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 874: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes / 126_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript
- Content: Remember, this option is not to be used in a production environment.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 875: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E24
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes / 126_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript
- Content: To create the volume, run kube control, create command and to list the created volume from the kube control.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 876: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes / 126_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript
- Content: Get persistent volume command.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 877: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes / 126_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript
- Content: Replace the host path option with one of the supported storage solutions.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 878: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes / 126_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript
- Content: As we saw in the previous lecture like AWS Elastic Block Store, etc..
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 879: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes / 126_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript
- Content: Well, that's it on persistent volumes in this lecture.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 880: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E29
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes / 126_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript
- Content: In the next lecture, we will look at how we use persistent volume claims to claim the volume configured with persistent volumes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 881: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E1
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims / 127_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: In the previous lecture, we created a persistent volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 882: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims / 127_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Persistent volumes and persistent volume claims are two separate objects in the Kubernetes namespace.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 883: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E4
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims / 127_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: An administrator creates a set of persistent volumes, and a user creates persistent volume claims to use the storage.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 884: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E5
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims / 127_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Once the persistent volume claims are created, Kubernetes binds the persistent volumes to claims based on the request and properties set on the volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 885: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims / 127_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Every persistent volume claim is bound to a single persistent volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 886: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims / 127_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: During the binding process, Kubernetes tries to find a persistent volume that has sufficient capacity as requested by the claim and any other request.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 887: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims / 127_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Properties such as access modes, volume modes, storage class, etc.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 888: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E9
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims / 127_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: However, if there are multiple possible matches for a single claim and you would like to specifically use a particular volume, you could still use labels and selectors to bind to the right volumes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 889: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims / 127_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Finally, note that a smaller claim may get bound to a larger volume if all the other criteria matches and there are no better options.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 890: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims / 127_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: There is a 1 to 1 relationship between claims and volumes, so no other claims can utilize the remaining capacity in the volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 891: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims / 127_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: If there are no volumes available, the persistent volume claim will remain in a pending state until newer volumes are made available to the cluster.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 892: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims / 127_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Once newer volumes are available, the claim would automatically be bound to the newly available volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 893: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E14
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims / 127_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Let us now create a persistent volume claim.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 894: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims / 127_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: We start with a blank template, set the API version to v1, and kind to persistent volume claim.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 895: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims / 127_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: We will name it my claim under specification.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 896: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims / 127_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Set the access modes to read, write once and set resources to request the storage of 500MB.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 897: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E18
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims / 127_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Create the claim using cube control.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 898: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E19
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims / 127_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Create command to view the created claim.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 899: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims / 127_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Run the cube control.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 900: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E21
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims / 127_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Get persistent volume claim command.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 901: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims / 127_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: We see the claim in a pending state.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 902: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E23
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims / 127_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: When the claim is created, Kubernetes looks at the volume created previously.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 903: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims / 127_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: The access modes match.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 904: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E25
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims / 127_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: The capacity requested is 500MB, but the volume is configured with one GB of storage.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 905: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims / 127_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Since there are no other volumes available, the persistent volume claim is bound to the persistent volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 906: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E27
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims / 127_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: When we run the Get volumes command again, we see the claim is bound to the persistent volume we created.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 907: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims / 127_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Perfect.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 908: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims / 127_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: To delete a PVC we run the kubectl delete persistent volume claim command.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 909: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims / 127_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: But what happens to the underlying persistent volume when the claim is deleted?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 910: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E31
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims / 127_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: You can choose what is to happen to the volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 911: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims / 127_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: By default, it is set to retain meaning the persistent volume will remain until it is manually deleted by the administrator.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 912: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E33
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims / 127_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: It is not available for reuse by any other claims, or it can be deleted automatically.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 913: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims / 127_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: This way, as soon as the claim is deleted, the volume will be deleted as well.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 914: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E35
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims / 127_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Or a third option is to recycle.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 915: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E36
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims / 127_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: In this case, the data in the volume will be scrubbed before making it available to other claims.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 916: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E38
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims / 127_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: It basically tried to do the admins manual cleanup for you with a simple file level delete.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 917: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E39
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims / 127_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: But this isn't sufficient in practice.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 918: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims / 127_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Proper cleanup can involve unmount, detach, filesystem, reformat, snapshot, retain, policy handling, encryption, key rotation, or provider level delete calls.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 919: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E42
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims / 127_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: A plain rm rf leaves a inode metadata and may fail under permissions.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 920: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E43
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims / 127_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Because of these portability and security gaps, Kubernetes moved to a newer model.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 921: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E44
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims / 127_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: The modern approach is dynamic provisioning with a storage class and CSI drivers, which we will discuss next.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 922: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E45
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims / 127_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Well, that's it for this lecture.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 923: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E46
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims / 127_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript
- Content: Head over to the labs and practice configuring and troubleshooting persistent volumes and volume claims in Kubernetes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 924: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: -: Okay, so let's go through the lab on persistent volumes and persistent volume claims.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 925: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Let's do that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 926: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: The application stores logs at location logapp.log/log/app.log.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 927: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, view the logs.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 928: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, cat log app.log.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 929: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay, so we're able to view the logs and we see that some of the events that are logged by the application.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 930: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, let's check out where those logs are.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 931: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 932: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E14
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, there are no other volumes configured.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 933: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, you have the kube-api-access, which is the default volume, but there are no other volumes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 934: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Right, so, we're able to view the logs.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 935: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Now, are we're not going be able to view the logs.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 936: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E20
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Now, configure a volume to store these logs at this path on the host.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 937: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Now, we would like to store those.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 938: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: We would like to use a volume to store those logs at var/log/webapp.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 939: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, that's var/log/webapp on the host.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 940: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, currently there's nothing here.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 941: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, let's try and set up a volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 942: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, we'll do kubectl edit on web app.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 943: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And there are, there's a lot of information.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 944: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E30
- Type: Architecture
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, here we have the volume mount, which is the default volume mount for accessing the the kube-api server.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 945: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E31
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And below we have the volumes, which is again, the default volume used for that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 946: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, we're just gonna add our own volume here.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 947: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E33
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, we'll add, we'll call the the volume, log volume, because we're gonna use this to store the logs.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 948: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And this is going to be a host path.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 949: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E35
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And the path is going to be whatever path is given here, to var/log/webapp, var/log/webapp.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 950: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E36
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay, So we have the volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 951: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E37
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, basically what's happening, what's gonna happen is when this part is recreated, and it's going to mount this directory.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 952: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E38
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And we have to specify where it's gonna be mounted to.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 953: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E39
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: It is gonna create a volume out of that directory.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 954: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E40
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And then we have to specify where it's going to mount to it.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 955: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, we're gonna add a volume mount.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 956: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E42
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And we'll call the mount path as it is above.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 957: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E43
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And that would be a log.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 958: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E44
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And then we will have a name for the volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 959: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E45
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And the name of the volume is, log volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 960: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E46
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 961: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E48
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And we call this log volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 962: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E50
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, here, there's only one container.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 963: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E51
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, under volume mounts we have the mount path and we're gonna specify the name of the volume and it's gonna mount that here.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 964: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E52
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, basically this is going to be mount to this path within the container.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 965: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E53
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay, so, let's try and save that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 966: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E55
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, we're gonna do a kubectl replace force.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 967: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E56
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 968: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E57
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Support is now recreated.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 969: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E58
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, now let's check the path, at var/log/webapp.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 970: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E59
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay, and we can see that the file, the storage logs called app.log is in this path.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 971: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E60
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: We're gonna do app.log.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 972: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E63
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: That indicates that that's working.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 973: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E64
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay, so, the next task is to create a persistent volume with the given specification.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 974: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E65
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Let's go to the kubernetes documentation pages and find persistent volume, and go to persistent volumes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 975: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E67
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Persistent volume claim.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 976: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E68
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Persistent volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 977: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E69
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: But, this doesn't have enough information, so, I'm just gonna keep looking.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 978: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E70
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay, so this is a persistent volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 979: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E71
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, I'm going to get copy this much for your home and I'm going create a file called pv.yaml for persistent volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 980: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E72
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 981: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E73
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Then here we have pv-log.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 982: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E74
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: That's the persistent volume name.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 983: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E75
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Then we have storage.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 984: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E76
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, there's a 100 maybe, bytes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 985: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E77
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And then we have volume modes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 986: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E78
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: We don't need volume mode.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 987: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E79
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: We have access mode.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 988: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E80
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And the access mode is read, write.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 989: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E81
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Many.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 990: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E82
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And the persistent volume reclaim policy, we're going to be retained.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 991: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E83
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 992: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E84
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And then the type is going to be host path.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 993: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E85
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, we're gonna, host path, and then specify the path, and that's going to be /pv/log.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 994: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E86
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, that's the path, Okay.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 995: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E87
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, let's create the file.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 996: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E88
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay, so let's create it, let's check it out.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 997: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E89
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: We have the pv log, 100, and my capacity, read, write, many.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 998: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E90
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, this indicates read, write many, and the reclaim policy is retained.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 999: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E91
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Check our work.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 1000: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E92
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay, now let us claim some of that storage for our application.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1001: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E93
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, create a persistent volume claim with a given specification.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1002: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E94
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, let's find a persistent volume claim template.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1003: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E95
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, we had one here.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1004: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E96
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Yeah, so right here we have persistent volume claims and we'll use this template.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1005: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E97
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, we don't need the advanced selectors.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1006: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E98
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Our use case is simple.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1007: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E99
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, we are just going to copy this much.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1008: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E100
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, let's do a pvc.yamal.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1009: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E101
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: If a persistent volume claim, the name is going to be claim-log-one, and access mode is going to be read, write.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1010: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E102
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Once.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1011: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E103
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: We don't need a volume mode, and the storage is gonna be 50 Mi.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1012: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E104
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay, now we're gonna do a kubectl create minus half bc.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1013: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E105
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Let's check out the status.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1014: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E106
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay, so that's created.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1015: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E107
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Let's go Next.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1016: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E108
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, what is the state of the persistent volume claim?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1017: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E109
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: If you look at the state, it is in a pending state.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1018: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E110
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, that's that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1019: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E111
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Now, what is the state of the persistent volume, or the state of the persistent volume?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1020: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E112
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: It is available.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1021: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E113
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, let's check, try it now, again.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1022: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E114
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, it's in an available state.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1023: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E115
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, why is the claim not bound to the available persistent volume?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1024: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E116
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, we have a persistent volume which has a 100 megabytes of capacity.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1025: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E117
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And then, we have the PVC, which requested about 50, but it's still in a pending state.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1026: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E118
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, why is that?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1027: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E119
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, if you look at it, it's not a capacity mismatch because we know that when you create a persistent volume claim, if there's a volume that has higher capacity it's gonna bind that volume to that persistent volume claim.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1028: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E120
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, that's not the case here.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1029: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E121
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: We have the recurring policy set.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1030: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E122
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: The name of these policies, the PV and PVC, does not really matter.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1031: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E123
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: The only other thing that it looks at is the access mode, right?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1032: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E124
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, if you look at the PV that we created, it had an access mode of rewrite many, and if you look at the PVC, it has rewrite once.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1033: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E125
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, we're going to, and that's the reason.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1034: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E126
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, access mode mismatch is the reason.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1035: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E127
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Now, the next question is, update the access mode on the claim to bind it to the PV.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1036: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E128
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, we're going to do an update on the claim.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1037: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E129
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, we wanna change it to... ... so we wanna change the access mode on the PVC to read, write, many, which is on the PV.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1038: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E130
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Right, so, that's what is requested here.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1039: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E131
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 1040: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E132
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, now we're going to do a replace force -f pvc.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1041: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E133
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay, now you requested for 50 megabytes, how much capacity is now available to the PVC?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1042: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E134
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, let's look at that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1043: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E135
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Lets do a kubectl get pv.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1044: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E136
- Type: Command
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Command:
```bash
Kubectl get pvc.
```
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1045: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E137
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And, if you look at the PVC, the capacity that it has is 100 megabytes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1046: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E138
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Now, update the web app part to use the persistent volume claim as it's storage.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1047: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E139
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, what we are gonna do now is we're gonna replace host path with the persistent volume claim to use the persistent volume claim.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1048: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E140
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay, so, but, before that we've created the PV to store the logs to use the host path at lspv/log.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1049: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E141
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, right now there is nothing in there.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1050: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E143
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And what we're gonna do is, so, this is okay, the mount path, we're gonna leave it as is.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1051: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E144
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: We're gonna go down and we're gonna change this from host path to persistent.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1052: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E145
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Let's see what that is.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1053: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E146
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, if you look here.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1054: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E148
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, you have claim as volumes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1055: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E149
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, within volumes you use a persistent volume claims.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1056: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E150
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, that's what we're looking for.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1057: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E151
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 1058: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E152
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And we have claim name.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1059: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E153
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, we don't need these lines.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1060: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E154
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And then, the claim name is going to be claim log one.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1061: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E155
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, we have persistent log claim, claim name, and log one.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1062: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E156
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, that should be it.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1063: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E157
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Let's replace the file.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1064: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E159
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay, so that is done.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1065: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E160
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Let's check our work.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1066: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E161
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: All right, so now let's see, if you look at /pv/log, you see the logs there and you look at log app.log, you can see the logs of the application there.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1067: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E163
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, that's how this is working right now.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1068: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E164
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay, so, the next question is what is the reclaim policy set on the persistent volume pv-log?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1069: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E165
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, let's see, kubectl get pv pv-log.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1070: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E166
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And we can see that it is retained.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1071: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E167
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, retain is the answer.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1072: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E168
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Now, what would happen to the PV if the PVC was destroyed?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1073: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E169
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, we know that with the reclaim policy set to retain, the PV is going to be retained.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1074: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E170
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, it's not going to be deleted along with the PVC.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1075: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E171
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, the PV is deleted as well.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1076: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E172
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Now, the PV is made available again, No, it's not made available again, that would be recycling the PV scrub.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1077: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E173
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Now, the PV is not deleted, but not available.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1078: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E174
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, it's not deleted, but it's not available either.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1079: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E175
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, that's the status.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1080: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E176
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Now, try deleting the PVC and notice what happens.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1081: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E177
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Let's do that. kubectl pvc delete pvc claim log one.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1082: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E178
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, let's wait for that to be deleted.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1083: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E179
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay, so, it's not going to get deleted because it's actually going to be stuck.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1084: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E180
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Let's, let's look at the status in a new terminal.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1085: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E181
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, let's do a kubectl get pvc.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1086: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E182
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And we see that it's in a terminating state, so, it's stuck in a terminating state.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1087: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E183
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, let's do a describe.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1088: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E184
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And yeah, so you see it's stuck in terminating state for the last 30 seconds or so.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1089: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E185
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, why is the PVC stuck in a terminating state?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1090: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E188
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: That's the reason it's stuck in a terminating state.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1091: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E190
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Do that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1092: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E192
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay, so, that was deleted and we see we're now unstuck and the PV was deleted as well.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1093: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E193
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Check that out.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1094: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E194
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Yep.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1095: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E196
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: So, what is the state of the PVC now?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1096: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E197
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: It is deleted.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1097: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E198
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: And what is state of the PV now.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1098: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E199
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Let's try that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 1099: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E200
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: We see that it is in a released state.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1100: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E201
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional) / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript
- Content: Okay, so, yeah, that's the end of this lab.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1101: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes / 132_Storage Classes.txt
- Topic: Storage Classes
- Line Context: Lines 1-1 from transcript
- Content: In this lecture we will look at storage classes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1102: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E3
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes / 132_Storage Classes.txt
- Topic: Storage Classes
- Line Context: Lines 1-1 from transcript
- Content: In this case, we create a PVC from a Google Cloud persistent disk.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1103: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E4
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes / 132_Storage Classes.txt
- Topic: Storage Classes
- Line Context: Lines 1-1 from transcript
- Content: The problem here is that before this PV is created, you must have created the disk on Google Cloud.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1104: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E5
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes / 132_Storage Classes.txt
- Topic: Storage Classes
- Line Context: Lines 1-1 from transcript
- Content: Every time an application requires storage, you have to first manually provision the disk on Google Cloud and then manually create a persistent volume definition file using the same name as that of the disk that you created.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1105: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes / 132_Storage Classes.txt
- Topic: Storage Classes
- Line Context: Lines 1-1 from transcript
- Content: That's called static provisioning volumes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1106: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes / 132_Storage Classes.txt
- Topic: Storage Classes
- Line Context: Lines 1-1 from transcript
- Content: It would have been nice if the volume gets provisioned automatically when the application requires it, and that's where storage classes come in.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1107: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes / 132_Storage Classes.txt
- Topic: Storage Classes
- Line Context: Lines 1-1 from transcript
- Content: When a claim is made, that's called dynamic provisioning of volumes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1108: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes / 132_Storage Classes.txt
- Topic: Storage Classes
- Line Context: Lines 1-1 from transcript
- Content: You do that by creating a storage class object with the API version set to storage IO v1.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1109: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes / 132_Storage Classes.txt
- Topic: Storage Classes
- Line Context: Lines 1-1 from transcript
- Content: Specify a name and use provisioner as kubernetes.io/pd.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1110: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E13
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes / 132_Storage Classes.txt
- Topic: Storage Classes
- Line Context: Lines 1-1 from transcript
- Content: So we no longer need the PV definition because the PV and any associated storage is going to be created automatically when the storage class is created for the PVC to use the storage class we defined, we specify the storage class name in the PVC definition.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1111: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes / 132_Storage Classes.txt
- Topic: Storage Classes
- Line Context: Lines 1-1 from transcript
- Content: That's how the PVC knows which storage class to use.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1112: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E15
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes / 132_Storage Classes.txt
- Topic: Storage Classes
- Line Context: Lines 1-1 from transcript
- Content: Next time a PVC is created, the storage class associated with it uses the defined provisioner to provision a new disk with the required size on GCP, and then creates a persistent volume and then binds the PVC to that volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1113: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E16
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes / 132_Storage Classes.txt
- Topic: Storage Classes
- Line Context: Lines 1-1 from transcript
- Content: So remember that it still creates a PVC.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1114: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E17
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes / 132_Storage Classes.txt
- Topic: Storage Classes
- Line Context: Lines 1-1 from transcript
- Content: It's just that you don't have to manually create PVC anymore.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1115: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E18
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes / 132_Storage Classes.txt
- Topic: Storage Classes
- Line Context: Lines 1-1 from transcript
- Content: It's created automatically by the storage class.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1116: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E19
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes / 132_Storage Classes.txt
- Topic: Storage Classes
- Line Context: Lines 1-1 from transcript
- Content: We used the GCE provisioner to create a volume on GCP.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1117: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes / 132_Storage Classes.txt
- Topic: Storage Classes
- Line Context: Lines 1-1 from transcript
- Content: There are many other provisioners as well, such as for AWS, EBS, Azure File, Azure Disk, CIFs, Portworx, Scaleio, and so on With each of these provisioners, you can pass in additional parameters such as the type of disk to provision the replication type, etc. these parameters are very specific to the provisioner that you are using for Google Persistent Disk.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1118: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E21
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes / 132_Storage Classes.txt
- Topic: Storage Classes
- Line Context: Lines 1-1 from transcript
- Content: You can specify the type which could be standard or SSD.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1119: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes / 132_Storage Classes.txt
- Topic: Storage Classes
- Line Context: Lines 1-1 from transcript
- Content: You can specify the replication mode which could be none or regional PD.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1120: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E23
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes / 132_Storage Classes.txt
- Topic: Storage Classes
- Line Context: Lines 1-1 from transcript
- Content: So you see you can create different storage classes, each using different types of disks.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1121: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E24
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes / 132_Storage Classes.txt
- Topic: Storage Classes
- Line Context: Lines 1-1 from transcript
- Content: For example, a silver storage class with the standard disks, a gold class with SSD drives, and a platinum class with SSD drives and replication.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1122: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes / 132_Storage Classes.txt
- Topic: Storage Classes
- Line Context: Lines 1-1 from transcript
- Content: And that's why it's called storage class.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1123: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E27
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes / 132_Storage Classes.txt
- Topic: Storage Classes
- Line Context: Lines 1-1 from transcript
- Content: Next time you create a PVC, you can simply specify the class of storage you need for your volumes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1124: certified-kubernetes-application-developer/08_State Persistence/134_Why Stateful Sets_.extraction.md::E78
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 134_Why Stateful Sets_ / 134_Why Stateful Sets_.txt
- Topic: Why Stateful Sets_
- Line Context: Lines 1-1 from transcript
- Content: And we'll talk about persistent volumes and much more.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1125: certified-kubernetes-application-developer/08_State Persistence/135_Stateful Sets Introduction.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 135_Stateful Sets Introduction / 135_Stateful Sets Introduction.txt
- Topic: Stateful Sets Introduction
- Line Context: Lines 1-1 from transcript
- Content: -: In this lecture we will talk about, StatefulSets in Kubernetes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1126: certified-kubernetes-application-developer/08_State Persistence/135_Stateful Sets Introduction.extraction.md::E2
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 135_Stateful Sets Introduction / 135_Stateful Sets Introduction.txt
- Topic: Stateful Sets Introduction
- Line Context: Lines 1-1 from transcript
- Content: Now, in the previous lecture we discussed why you need a StatefulSet.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1127: certified-kubernetes-application-developer/08_State Persistence/135_Stateful Sets Introduction.extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 135_Stateful Sets Introduction / 135_Stateful Sets Introduction.txt
- Topic: Stateful Sets Introduction
- Line Context: Lines 1-1 from transcript
- Content: Note that you might not always need a StatefulSet.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1128: certified-kubernetes-application-developer/08_State Persistence/135_Stateful Sets Introduction.extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 135_Stateful Sets Introduction / 135_Stateful Sets Introduction.txt
- Topic: Stateful Sets Introduction
- Line Context: Lines 1-1 from transcript
- Content: Note that both SS in the StatefulSet is uppercase.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1129: certified-kubernetes-application-developer/08_State Persistence/135_Stateful Sets Introduction.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 135_Stateful Sets Introduction / 135_Stateful Sets Introduction.txt
- Topic: Stateful Sets Introduction
- Line Context: Lines 1-1 from transcript
- Content: When you scale the StatefulSet, it scales in an ordered graceful fashion.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1130: certified-kubernetes-application-developer/08_State Persistence/135_Stateful Sets Introduction.extraction.md::E21
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 08_State Persistence / 135_Stateful Sets Introduction / 135_Stateful Sets Introduction.txt
- Topic: Stateful Sets Introduction
- Line Context: Lines 1-1 from transcript
- Content: Now, that's the default behavior of a StatefulSet, but you can override that behavior to cause StatefulSet to not follow an ordered launch.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1131: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets / 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript
- Content: Instructor: This lecture, we will talk about storage in stateful sets.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1132: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E2
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets / 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript
- Content: Before I begin, let me quickly recap what we know already about storage in Kubernetes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1133: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets / 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript
- Content: It's only going to take a minute, so bear with me.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1134: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets / 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript
- Content: And I think this is important.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1135: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets / 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript
- Content: Earlier we discussed that with persistent volumes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1136: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E8
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets / 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript
- Content: Now with dynamic provisioning we then said with storage class definition we take out the manual creation of persistent volumes and use storage provisioners to automatically provision volume on cloud providers.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1137: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E9
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets / 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript
- Content: Now the PV is created automatically.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1138: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E15
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets / 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript
- Content: That's how you would configure it.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1139: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E16
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets / 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript
- Content: And that also depends on the kind of volume created and the provision are used.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1140: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E17
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets / 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript
- Content: Note that, not all storage types support that operation read or write from multiple instances at the same time.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1141: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets / 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript
- Content: As in the My SQL replication use case that we have been talking about?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1142: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets / 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript
- Content: Each instance has its own database, and the replication of data between the databases is done at the database level.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1143: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets / 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript
- Content: A PVC is bound to a pv, so each PVC needs a pv.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1144: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E25
- Type: Comparison
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets / 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript
- Content: And of course, these PVS can be created from a single or different storage classes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1145: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E26
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets / 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript
- Content: So how do you automatically create a PVC for each part in a stateful set?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1146: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets / 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript
- Content: You can achieve that using a volume claim template.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1147: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E28
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets / 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript
- Content: A volume claim template is really a persistent volume claim but templateized, it just means instead of creating a PVC manually and then specifying it in the stateful set definition file you move the entire PVC definition into a section named volume claim templates under these stateful Set Specification.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1148: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets / 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript
- Content: Volume claim templates is an array.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1149: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E30
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets / 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript
- Content: So you can specify multiple templates here.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1150: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E31
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets / 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript
- Content: So how does it look now?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1151: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets / 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript
- Content: We now have a stateful set with volume claim templates and a storage class definition with the right provisioner for gce.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1152: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E34
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets / 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript
- Content: The PVC is associated to a storage class so the storage class provisions a volume on GCP and then creates a PV and associates the PV with the volume and binds the PVC to the pv.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1153: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E35
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets / 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript
- Content: Then the second part is created the second part creates a pvc.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1154: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E36
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets / 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript
- Content: Then the stories, class provisions a new volume associates that to a PV and binds the PV to the PVC and so on, for the third part.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1155: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E40
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets / 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript
- Content: Thus, state stateful sets ensure stable storage for pots.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1156: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets / 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript
- Content: Well, that's it for now, and thank you so much for listening.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1157: certified-kubernetes-application-developer/09_Security/139_Authentication.extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 139_Authentication / 139_Authentication.txt
- Topic: Authentication
- Line Context: Lines 1-1 from transcript
- Content: I also want to point out that if you were trying this out in a cube ADM setup, you must also consider volume mounts to pass in the auth file.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1158: certified-kubernetes-application-developer/09_Security/150_Cluster Roles.extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 150_Cluster Roles / 150_Cluster Roles.txt
- Topic: Cluster Roles
- Line Context: Lines 1-1 from transcript
- Content: Like nodes, persistent volumes persist the cluster roles and cluster role bindings that we're going to look at in this lecture.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1159: certified-kubernetes-application-developer/09_Security/150_Cluster Roles.extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 150_Cluster Roles / 150_Cluster Roles.txt
- Topic: Cluster Roles
- Line Context: Lines 1-1 from transcript
- Content: But how do we authorize users to cluster resources like nodes or persistent volumes?
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1160: certified-kubernetes-application-developer/09_Security/150_Cluster Roles.extraction.md::E30
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 09_Security / 150_Cluster Roles / 150_Cluster Roles.txt
- Topic: Cluster Roles
- Line Context: Lines 1-1 from transcript
- Content: Similarly, a storage administrator role can be created to authorize a storage admin to create persistent volumes and claims.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1161: certified-kubernetes-application-developer/09_Security/152_Solution Cluster Roles.extraction.md::E73
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 09_Security / 152_Solution Cluster Roles / 152_Solution Cluster Roles.txt
- Topic: Solution Cluster Roles
- Line Context: Lines 1-1 from transcript
- Content: Now the next question is Michelle's responsibilities are growing and now she will be responsible for storage as well.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1162: certified-kubernetes-application-developer/09_Security/152_Solution Cluster Roles.extraction.md::E74
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 09_Security / 152_Solution Cluster Roles / 152_Solution Cluster Roles.txt
- Topic: Solution Cluster Roles
- Line Context: Lines 1-1 from transcript
- Content: So create the required cluster role and role bindings to allow her access to storage.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1163: certified-kubernetes-application-developer/09_Security/152_Solution Cluster Roles.extraction.md::E85
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 152_Solution Cluster Roles / 152_Solution Cluster Roles.txt
- Topic: Solution Cluster Roles
- Line Context: Lines 1-1 from transcript
- Content: So as we learned the personal volumes and personal volume claims, I'm sorry the cluster role bindings are not name space.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1164: certified-kubernetes-application-developer/09_Security/152_Solution Cluster Roles.extraction.md::E91
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 09_Security / 152_Solution Cluster Roles / 152_Solution Cluster Roles.txt
- Topic: Solution Cluster Roles
- Line Context: Lines 1-1 from transcript
- Content: So we wanna create a cluster role to allow Michelle access to storage classes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1165: certified-kubernetes-application-developer/09_Security/152_Solution Cluster Roles.extraction.md::E93
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 152_Solution Cluster Roles / 152_Solution Cluster Roles.txt
- Topic: Solution Cluster Roles
- Line Context: Lines 1-1 from transcript
- Content: The name is storage admin.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1166: certified-kubernetes-application-developer/09_Security/152_Solution Cluster Roles.extraction.md::E94
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 152_Solution Cluster Roles / 152_Solution Cluster Roles.txt
- Topic: Solution Cluster Roles
- Line Context: Lines 1-1 from transcript
- Content: So storage admin, and the resource, there are two resources, persistent volumes and storage classes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1167: certified-kubernetes-application-developer/09_Security/152_Solution Cluster Roles.extraction.md::E95
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 09_Security / 152_Solution Cluster Roles / 152_Solution Cluster Roles.txt
- Topic: Solution Cluster Roles
- Line Context: Lines 1-1 from transcript
- Content: So first resource is persistent volumes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1168: certified-kubernetes-application-developer/09_Security/152_Solution Cluster Roles.extraction.md::E96
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 152_Solution Cluster Roles / 152_Solution Cluster Roles.txt
- Topic: Solution Cluster Roles
- Line Context: Lines 1-1 from transcript
- Content: Skip that, and storage classes, skip that.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1169: certified-kubernetes-application-developer/09_Security/152_Solution Cluster Roles.extraction.md::E101
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 152_Solution Cluster Roles / 152_Solution Cluster Roles.txt
- Topic: Solution Cluster Roles
- Line Context: Lines 1-1 from transcript
- Content: Kube cuddle describe cluster role storage admin.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1170: certified-kubernetes-application-developer/09_Security/152_Solution Cluster Roles.extraction.md::E106
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 152_Solution Cluster Roles / 152_Solution Cluster Roles.txt
- Topic: Solution Cluster Roles
- Line Context: Lines 1-1 from transcript
- Content: Name a storage admin.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1171: certified-kubernetes-application-developer/09_Security/152_Solution Cluster Roles.extraction.md::E109
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 09_Security / 152_Solution Cluster Roles / 152_Solution Cluster Roles.txt
- Topic: Solution Cluster Roles
- Line Context: Lines 1-1 from transcript
- Content: So you have persistent and volumes and then you have storage class.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1172: certified-kubernetes-application-developer/09_Security/152_Solution Cluster Roles.extraction.md::E114
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 152_Solution Cluster Roles / 152_Solution Cluster Roles.txt
- Topic: Solution Cluster Roles
- Line Context: Lines 1-1 from transcript
- Content: So the name is Michelle storage admin.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1173: certified-kubernetes-application-developer/09_Security/152_Solution Cluster Roles.extraction.md::E115
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 152_Solution Cluster Roles / 152_Solution Cluster Roles.txt
- Topic: Solution Cluster Roles
- Line Context: Lines 1-1 from transcript
- Content: The user is Michelle, and the cluster role is storage admin.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1174: certified-kubernetes-application-developer/09_Security/152_Solution Cluster Roles.extraction.md::E117
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 152_Solution Cluster Roles / 152_Solution Cluster Roles.txt
- Topic: Solution Cluster Roles
- Line Context: Lines 1-1 from transcript
- Content: Okay, and we can see the cluster role that is associated to the storage admin, and the user is Michelle.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1175: certified-kubernetes-application-developer/09_Security/152_Solution Cluster Roles.extraction.md::E118
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 152_Solution Cluster Roles / 152_Solution Cluster Roles.txt
- Topic: Solution Cluster Roles
- Line Context: Lines 1-1 from transcript
- Content: So let's do a kube cuddle as well and get storage process and see that that's working as expected.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1176: certified-kubernetes-application-developer/09_Security/153_Admission Controllers.extraction.md::E32
- Type: Architecture
- Source: certified-kubernetes-application-developer / 09_Security / 153_Admission Controllers / 153_Admission Controllers.txt
- Topic: Admission Controllers
- Line Context: Lines 1-1 from transcript
- Content: The default storage class admission controller that observes the creation of PVCs and automatically adds the default storage class to them if one is not specified, the event rate limit admission controller can help set a limit on the requests with the API server can handle at a time.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1177: certified-kubernetes-application-developer/09_Security/155_Solution_ Admission Controllers.extraction.md::E58
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 09_Security / 155_Solution_ Admission Controllers / 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript
- Content: The next question is asking us to disable the default storage class admission controller.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1178: certified-kubernetes-application-developer/09_Security/155_Solution_ Admission Controllers.extraction.md::E62
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 09_Security / 155_Solution_ Admission Controllers / 155_Solution_ Admission Controllers.txt
- Topic: Solution_ Admission Controllers
- Line Context: Lines 1-1 from transcript
- Content: So I'm gonna go right below this line and I'm gonna say disable-admission-plugins equals and then we're gonna add DefaultStorageClass.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1179: certified-kubernetes-application-developer/09_Security/156_Validating and Mutating Admission Controllers.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 156_Validating and Mutating Admission Controllers / 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript
- Content: Let's look at another type of admission controller plugin named as the default storage class plugin.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1180: certified-kubernetes-application-developer/09_Security/156_Validating and Mutating Admission Controllers.extraction.md::E7
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 09_Security / 156_Validating and Mutating Admission Controllers / 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript
- Content: Say for example, you're submitting a request to create a PVC.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1181: certified-kubernetes-application-developer/09_Security/156_Validating and Mutating Admission Controllers.extraction.md::E9
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 09_Security / 156_Validating and Mutating Admission Controllers / 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript
- Content: The default storage class admission controller will watch for request to create a PVC and check if it has a storage class mentioned in it.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1182: certified-kubernetes-application-developer/09_Security/156_Validating and Mutating Admission Controllers.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 156_Validating and Mutating Admission Controllers / 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript
- Content: If not, which is true in our case, it will modify your request to add the default storage class to your request.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1183: certified-kubernetes-application-developer/09_Security/156_Validating and Mutating Admission Controllers.extraction.md::E11
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 09_Security / 156_Validating and Mutating Admission Controllers / 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript
- Content: This could be whatever storage class is configured as the default storage class in your cluster.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1184: certified-kubernetes-application-developer/09_Security/156_Validating and Mutating Admission Controllers.extraction.md::E12
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 09_Security / 156_Validating and Mutating Admission Controllers / 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript
- Content: So when the PVC is created and you inspect it, you will see that a storage class default is added to it.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1185: certified-kubernetes-application-developer/09_Security/159_API Versions.extraction.md::E15
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 09_Security / 159_API Versions / 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript
- Content: For example, at the time of this recording, the API group internal dot API server dot case dot io, which has the resource storage version is only available as V1 Alpha 1.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1186: certified-kubernetes-application-developer/09_Security/159_API Versions.extraction.md::E50
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 09_Security / 159_API Versions / 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript
- Content: But even though there are multiple versions supported at the same time, only one can be the preferred or storage version.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1187: certified-kubernetes-application-developer/09_Security/159_API Versions.extraction.md::E56
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 09_Security / 159_API Versions / 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript
- Content: Also, when multiple versions are present, only one version can be the storage version.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1188: certified-kubernetes-application-developer/09_Security/159_API Versions.extraction.md::E57
- Type: Architecture
- Source: certified-kubernetes-application-developer / 09_Security / 159_API Versions / 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript
- Content: This means if any object is created with the API version set to anything other than the storage version, such as V1 Alpha 1 or V1 Beta 1, then those will be converted to the storage version, which is V1 before storing them into the etcd database.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1189: certified-kubernetes-application-developer/09_Security/159_API Versions.extraction.md::E58
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 159_API Versions / 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript
- Content: So that's what the preferred and storage versions mean.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1190: certified-kubernetes-application-developer/09_Security/159_API Versions.extraction.md::E60
- Type: Architecture
- Source: certified-kubernetes-application-developer / 09_Security / 159_API Versions / 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript
- Content: And the storage version is the version in which an object is stored in etcd respective of the version you have used in the yaml file while creating the object.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1191: certified-kubernetes-application-developer/09_Security/159_API Versions.extraction.md::E61
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 159_API Versions / 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript
- Content: Remember, only one can be the preferred or storage version.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1192: certified-kubernetes-application-developer/09_Security/159_API Versions.extraction.md::E62
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 159_API Versions / 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript
- Content: And even though the preferred and storage versions are usually the same they can be different.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1193: certified-kubernetes-application-developer/09_Security/159_API Versions.extraction.md::E67
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 159_API Versions / 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript
- Content: And as of now it is not possible to see which is the storage version of a particular API through an API or a command.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1194: certified-kubernetes-application-developer/09_Security/160_API Deprecations.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 160_API Deprecations / 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript
- Content: But the preferred or storage version could be we one alpha two.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1195: certified-kubernetes-application-developer/09_Security/160_API Deprecations.extraction.md::E45
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 160_API Deprecations / 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript
- Content: Now since it is the only version it is the preferred and storage version.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1196: certified-kubernetes-application-developer/09_Security/160_API Deprecations.extraction.md::E69
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 160_API Deprecations / 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript
- Content: Why isn't the, v one beta two version the preferred and storage version because rule four B states that the preferred API version and the storage version for a given group may not advance until after a release has been made that supports both the new version and the previous version.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1197: certified-kubernetes-application-developer/09_Security/160_API Deprecations.extraction.md::E71
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 160_API Deprecations / 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript
- Content: So we cannot change the preferred storage version yet.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1198: certified-kubernetes-application-developer/09_Security/160_API Deprecations.extraction.md::E73
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 09_Security / 160_API Deprecations / 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript
- Content: The next release also has both versions except beta two now becomes the preferred storage version.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1199: certified-kubernetes-application-developer/09_Security/160_API Deprecations.extraction.md::E76
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 09_Security / 160_API Deprecations / 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript
- Content: V one beta two is still the preferred or storage version because this is the first release that has the V one version, but it now becomes deprecated.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1200: certified-kubernetes-application-developer/09_Security/160_API Deprecations.extraction.md::E80
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 160_API Deprecations / 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript
- Content: With x plus six V one can now be the preferred and storage version while beta two is going to stay around for another release to complete its three release support with X plus seven version, nothing changes as beta two continues to stay around for the last time before it will be removed.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1201: certified-kubernetes-application-developer/09_Security/163_Custom Resource Definition.extraction.md::E98
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 163_Custom Resource Definition / 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript
- Content: And we also define which is the storage version.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1202: certified-kubernetes-application-developer/09_Security/163_Custom Resource Definition.extraction.md::E99
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 09_Security / 163_Custom Resource Definition / 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript
- Content: If you have multiple versions, only one version can be marked as the storage version.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1203: certified-kubernetes-application-developer/09_Security/163_Custom Resource Definition.extraction.md::E100
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 163_Custom Resource Definition / 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript
- Content: We discussed about what are storage versions in the lecture about APIs earlier in this course.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1204: certified-kubernetes-application-developer/10_Helm Fundamentals/167_Helm Introduction.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-application-developer / 10_Helm Fundamentals / 167_Helm Introduction / 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript
- Content: Persistent volumes are 20GB, but we know our website will need much more storage and we go to the YAML files where persistent volumes and claims are declared.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1205: certified-kubernetes-application-developer/10_Helm Fundamentals/167_Helm Introduction.extraction.md::E51
- Type: Concept
- Source: certified-kubernetes-application-developer / 10_Helm Fundamentals / 167_Helm Introduction / 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript
- Content: It's called a value.yaml file, and this is where we can change the size of our persistent volumes, choose the name of our WordPress website, the admin password, settings for the database engine and so on.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1206: certified-kubernetes-application-developer/10_Helm Fundamentals/171_Helm Concepts.extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-application-developer / 10_Helm Fundamentals / 171_Helm Concepts / 171_Helm Concepts.txt
- Topic: Helm Concepts
- Line Context: Lines 1-1 from transcript
- Content: These, this file has the image storage and password encoded variables defined with the values We want these to have.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1207: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E59
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo / 185_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript
- Content: We're gonna change it to, it's gonna be prefixed with KodeCloud as well, but it's gonna end in -storage.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1208: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E78
- Type: Concept
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo / 185_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript
- Content: And for the db, I'm gonna do -storage.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1209: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E79
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo / 185_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript
- Content: So we'll do nameSuffix: -storage.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

#### Evidence 1210: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E2
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1 / 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript
- Content: The first question, it's asking us to create a PersistentVolume called log-volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1211: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E3
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1 / 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript
- Content: And it's saying that this should make use of a StorageClass name manual, it should use RWX as the access mode and have a size of 1 Gi, and the volume should use the host path /opt/volume/nginx.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1212: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E5
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1 / 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript
- Content: And so what I'm gonna do is I'm gonna just create a new file and we'll just call this log-volume.yaml.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1213: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E6
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1 / 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript
- Content: And if you want, at this point, you can pull up the Kubernetes documentation to get a baseline template of how to configure a PersistentVolume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1214: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E7
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1 / 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript
- Content: So if you go to the PersistentVolume section, I'm just gonna copy this right here, and then we can paste that right in.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1215: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E8
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1 / 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript
- Content: So first thing, we're gonna change the name, this is gonna be log-volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1216: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1 / 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript
- Content: StorageClass name, this is gonna be set to manual.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1217: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1 / 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript
- Content: And finally, let's set the host path, so that be /opt/volume/nginx.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1218: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1 / 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript
- Content: And that's all we need to do for the PersistentVolume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1219: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E19
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1 / 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript
- Content: Now the next step, we have to create a PersistentVolumeClaim called log claim with the following specs, so let's go ahead and create a new file vi, and I'll call this a log-claim.yaml.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1220: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E20
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1 / 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript
- Content: And once again, we can go back to the documentation and find an example of a PersistentVolumeClaim, so we don't have to hand write everything out.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1221: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1 / 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript
- Content: I'm gonna delete the volume mode section.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1222: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E25
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1 / 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript
- Content: Then, for storage, it's saying that this should request a minimum of 200.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1223: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E26
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1 / 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript
- Content: And StorageClass name should be manual as well.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1224: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1 / 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript
- Content: And that's going to wrap up the configuration for the PVC.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1225: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1 / 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript
- Content: And if I do a kubectl get PVC, you see that we've got one PVC.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1226: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E36
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1 / 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript
- Content: And so to mount this, I'm gonna create a volume section, and we've got one volume, I'm just gonna call this log.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1227: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E37
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1 / 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript
- Content: And then here, we'll provide the PersistentVolume claim.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1228: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E39
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1 / 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript
- Content: And then under the container, I'll do volume mounts.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1229: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E120
- Type: Concept
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1 / 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript
- Content: Okay, so now let's mount the volumes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1230: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E121
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1 / 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript
- Content: So I'm gonna define the volumes first, so we'll do volumes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1231: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E122
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1 / 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript
- Content: Name is gonna be called log-volume, and then we'll do emptydir.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1232: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E123
- Type: Concept
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1 / 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript
- Content: And this will be volume mount.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1233: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E124
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1 / 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript
- Content: The name of this is gonna be log-volume, and the mount path should be /opt/time.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1234: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E157
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1 / 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript
- Content: It should use a label of app=redis, and then we should also mount these two volumes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1235: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E163
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1 / 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript
- Content: Now the next thing that we have to do is we have to specify the volumes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1236: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E164
- Type: Concept
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1 / 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna have two volumes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1237: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E169
- Type: Concept
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1 / 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript
- Content: So we'll do volume mount.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1238: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E170
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1 / 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript
- Content: The first one is gonna be the data, and the volume mount...
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1239: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E171
- Type: Concept
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1 / 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript
- Content: Sorry, not the volume mount, the mount path.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1240: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E80
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2 / 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript
- Content: The next thing that we have to do is the container should mount a read only secret volume called secret dash volume at the path of slash etc slash secret volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1241: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E82
- Type: Concept
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2 / 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript
- Content: So let's define our volumes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1242: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E83
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2 / 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript
- Content: So we're gonna do name and we'll call this secret dash volume and then the secret that we're gonna reference, which is dot file dash secret.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1243: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E84
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2 / 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript
- Content: And then we can go under the container and define our volume mount.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1244: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E85
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2 / 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript
- Content: And it should be secret dash volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1245: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E89
- Type: Concept
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2 / 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript
- Content: I'm gonna set this to be slash etc slash secret dash volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1246: certified-kubernetes-application-developer/15_Mock Exams/206_Mock Exam -1 (Solution).extraction.md::E106
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 206_Mock Exam -1 (Solution) / 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript
- Content: And for this, we have to create a persistent volume with the following requirements.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1247: certified-kubernetes-application-developer/15_Mock Exams/206_Mock Exam -1 (Solution).extraction.md::E107
- Type: Concept
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 206_Mock Exam -1 (Solution) / 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript
- Content: And for this, instead of writing everything out by hand, I'm gonna go pull up the documentation for persistent volumes.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1248: certified-kubernetes-application-developer/15_Mock Exams/206_Mock Exam -1 (Solution).extraction.md::E108
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 206_Mock Exam -1 (Solution) / 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript
- Content: So, there's gonna be a section here under storage persistent volume, which gonna give us an example.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1249: certified-kubernetes-application-developer/15_Mock Exams/208_Mock Exam -2 (Solution).extraction.md::E126
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 208_Mock Exam -2 (Solution) / 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript
- Content: And for the final question, we have to create a persistent volume called custom volume, with the size of 50 Mebibytes, a reclaim policy of retain, AccessMode to ReadWriteMany, and a host path of /op/data.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1250: certified-kubernetes-application-developer/15_Mock Exams/208_Mock Exam -2 (Solution).extraction.md::E127
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 208_Mock Exam -2 (Solution) / 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript
- Content: So if you want to, you can pull up the Kubernetes documentations for a volume, and you could just grab one of the examples, and then you use that as a base.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1251: certified-kubernetes-application-developer/15_Mock Exams/208_Mock Exam -2 (Solution).extraction.md::E130
- Type: Concept
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 208_Mock Exam -2 (Solution) / 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript
- Content: So the name is going to be called custom-volume.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1252: certified-kubernetes-application-developer/15_Mock Exams/208_Mock Exam -2 (Solution).extraction.md::E131
- Type: Concept
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 208_Mock Exam -2 (Solution) / 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript
- Content: The storage, this is gonna be 50 Mi, and we wanna change the AccessMode to ReadWriteMany.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1253: certified-kubernetes-application-developer/15_Mock Exams/208_Mock Exam -2 (Solution).extraction.md::E132
- Type: Concept
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 208_Mock Exam -2 (Solution) / 208_Mock Exam -2 (Solution).txt
- Topic: Mock Exam -2 (Solution)
- Line Context: Lines 1-1 from transcript
- Content: We won't need the volume mode, the persistent volume claim is set to retain accordingly.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

#### Evidence 1254: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E31
- Type: Concept
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD / 008_Docker-vs-ContainerD.txt
- Topic: Docker-vs-ContainerD
- Line Context: Lines 1-1 from transcript
- Content: There was support for volumes of security.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

#### Evidence 1255: learn-kubernetes/02_Kubernetes Overview/009_A note on Docker deprecation.extraction.md::E5
- Type: Operational Insight
- Source: learn-kubernetes / 02_Kubernetes Overview / 009_A note on Docker deprecation / 009_A note on Docker deprecation.txt
- Topic: A note on Docker deprecation
- Line Context: Lines 1-1 from transcript
- Content: There was support for volumes, auth, security and finally also the container runtime called Runc and the daemon that managed the runtime called the container.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

#### Evidence 1256: learn-kubernetes/02_Kubernetes Overview/009_A note on Docker deprecation.extraction.md::E10
- Type: Concept
- Source: learn-kubernetes / 02_Kubernetes Overview / 009_A note on Docker deprecation / 009_A note on Docker deprecation.txt
- Topic: A note on Docker deprecation
- Line Context: Lines 1-1 from transcript
- Content: The other tools that Docker supported like Docker CLI or the API, or build volumes or etc. as they were all taken care of of by Kubernetes itself.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
  - Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

#### Evidence 1257: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E44
- Type: Implementation Step
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS) / 054_Kubernetes on Azure (AKS).txt
- Topic: Kubernetes on Azure (AKS)
- Line Context: Lines 1-1 from transcript
- Content: So in this case it prompts me to create storage.
- Notes:
  - Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
