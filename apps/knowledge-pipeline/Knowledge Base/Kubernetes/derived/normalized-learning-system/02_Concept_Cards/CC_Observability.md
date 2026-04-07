# Concept Card: Observability

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

### Evidence 3: certified-kubernetes-administrator-with-practice-tests/01_Introduction/004_The Kubernetes Trilogy.extraction.md::E21
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 01_Introduction / 004_The Kubernetes Trilogy.txt
- Line Context: Lines 1-1 from transcript
- Content: This course focuses on topics relevant for a developer such as ConfigMaps, secrets and service accounts, multi container pods, readiness and liveness probes, logging and monitoring, jobs, services, and networking.
- Multi-concept tags: Pods, Services, Networking, Security-RBAC, Configuration, Observability

### Evidence 4: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/007_Cluster Architecture.extraction.md::E10
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 007_Cluster Architecture.txt
- Line Context: Lines 1-1 from transcript
- Content: We have two kinds of shapes in this example cargo ships that does the actual work of carrying containers across the sea, and control ships that are responsible for monitoring and managing the cargo ships.
- Multi-concept tags: Architecture, Observability, CKA-CKAD

### Evidence 5: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/007_Cluster Architecture.extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 007_Cluster Architecture.txt
- Line Context: Lines 1-1 from transcript
- Content: Monitor and track the location of containers on the ships.
- Multi-concept tags: Architecture, Observability

### Evidence 6: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/007_Cluster Architecture.extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 007_Cluster Architecture.txt
- Line Context: Lines 1-1 from transcript
- Content: Monitoring equipment's, communication equipments, cranes for moving containers between ships, etc.. the control shifts relate to the master node in the Kubernetes cluster.
- Multi-concept tags: Architecture, Observability

### Evidence 7: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/007_Cluster Architecture.extraction.md::E21
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 007_Cluster Architecture.txt
- Line Context: Lines 1-1 from transcript
- Content: The master node is responsible for managing the Kubernetes cluster, storing information regarding the different nodes, planning which containers goes where, monitoring the nodes and containers on them, etc..
- Multi-concept tags: Architecture, Observability

### Evidence 8: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/007_Cluster Architecture.extraction.md::E46
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 007_Cluster Architecture.txt
- Line Context: Lines 1-1 from transcript
- Content: It exposes the Kubernetes API, which is used by external users to perform management operations on the cluster, as well as the various controllers to monitor the state of the cluster and make necessary changes as required by the worker nodes to communicate with the server.
- Multi-concept tags: Architecture, Observability

### Evidence 9: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/007_Cluster Architecture.extraction.md::E67
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 007_Cluster Architecture.txt
- Line Context: Lines 1-1 from transcript
- Content: The kube API server periodically fetches status reports from the Kubelet to monitor the status of nodes and containers on them.
- Multi-concept tags: Architecture, Observability

### Evidence 10: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E66
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Line Context: Lines 1-1 from transcript
- Content: So for example, we can work with the encrypted container images or other new feature that will eventually be implemented into the Docker commands in the future.
- Multi-concept tags: Configuration, Observability, CKA-CKAD, On-Prem

### Evidence 11: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E90
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Line Context: Lines 1-1 from transcript
- Content: So if you kind of go through the CRI control, uh, utility and try and create containers with it, then eventually Kubelet is going to delete them because the Kubelet is unaware of, uh, some of those containers or pods that are created outside of its knowledge.
- Multi-concept tags: Pods, Architecture, Observability, On-Prem

### Evidence 12: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/013_Kube-API Server.extraction.md::E13
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 013_Kube-API Server.txt
- Line Context: Lines 1-1 from transcript
- Content: The scheduler continuously monitors the API server and realizes that there is a new pod with no node assigned.
- Multi-concept tags: Pods, Scheduling, Architecture, Observability

### Evidence 13: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/014_Kube Controller Manager.extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 014_Kube Controller Manager.txt
- Line Context: Lines 1-1 from transcript
- Content: A controller is like an office or department within the master ship that have their own set of responsibilities, such as an office for the ships would be responsible for monitoring and taking necessary actions about the ships.
- Multi-concept tags: Architecture, Observability

### Evidence 14: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/014_Kube Controller Manager.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 014_Kube Controller Manager.txt
- Line Context: Lines 1-1 from transcript
- Content: In the Kubernetes terms, a controller is a process that continuously monitors the state of various components within the system, and works towards bringing the whole system to the desired functioning state.
- Multi-concept tags: Architecture, Observability

### Evidence 15: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/014_Kube Controller Manager.extraction.md::E8
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 014_Kube Controller Manager.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, the node controller is responsible for monitoring the status of the notes and taking necessary actions to keep the applications running.
- Multi-concept tags: Architecture, Observability, CKA-CKAD

### Evidence 16: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/014_Kube Controller Manager.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 014_Kube Controller Manager.txt
- Line Context: Lines 1-1 from transcript
- Content: That way the node controller can monitor the health of the nodes.
- Multi-concept tags: Architecture, Observability

### Evidence 17: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/014_Kube Controller Manager.extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 014_Kube Controller Manager.txt
- Line Context: Lines 1-1 from transcript
- Content: It is responsible for monitoring the status of replica sets, and ensuring that the desired number of pods are available at all times within the set.
- Multi-concept tags: Pods, Architecture, Observability

### Evidence 18: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/014_Kube Controller Manager.extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 014_Kube Controller Manager.txt
- Line Context: Lines 1-1 from transcript
- Content: Remember some of the default settings for node controller we discussed earlier, such as the node monitor period, the grace period, and the eviction timeout.
- Multi-concept tags: Architecture, Observability

### Evidence 19: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/016_Kubelet.extraction.md::E10
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 016_Kubelet.txt
- Line Context: Lines 1-1 from transcript
- Content: The Cubelet then continues to monitor the state of the pod and containers in it, and reports to the kube API server on a timely basis.
- Multi-concept tags: Pods, Architecture, Observability

### Evidence 20: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/018_Pods.extraction.md::E53
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 018_Pods.txt
- Line Context: Lines 1-1 from transcript
- Content: And most importantly, we would need to monitor the state of the application container and when it dies, manually kill the helper container as well, as it's no longer required.
- Multi-concept tags: Pods, Observability

### Evidence 21: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/019_Pods with YAML.extraction.md::E60
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 019_Pods with YAML.txt
- Line Context: Lines 1-1 from transcript
- Content: This will tell you information about the pod when it was created, what labels are assigned to it, what Docker containers are part of it, and the events associated with that pod.
- Multi-concept tags: Pods, Configuration, Observability

### Evidence 22: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/025_Lab Solution - Pods (optional).extraction.md::E40
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 025_Lab Solution - Pods (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So try to figure it out from the Events section of the pod.
- Multi-concept tags: Pods, Observability

### Evidence 23: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/025_Lab Solution - Pods (optional).extraction.md::E41
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 025_Lab Solution - Pods (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So if you look at one of the section here, under state, you have the reason called as Error Image Pull, or if you just look at it below here in the Event section, you can see the error which is basically this one, it says, "Fail to pull image, Agent x," and, "at docker.io/library/agentx." So this image by the name Agent x does not exist.
- Multi-concept tags: Pods, Observability, Troubleshooting

### Evidence 24: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/026_Recap - ReplicaSets.extraction.md::E2
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 026_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: They are the processes that monitor Kubernetes objects and respond accordingly.
- Multi-concept tags: Deployments, Observability

### Evidence 25: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/026_Recap - ReplicaSets.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 026_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: To prevent users from losing access to our application, we would like to have more than one instance or pod running at the same time.
- Multi-concept tags: Pods, Deployments, Observability

### Evidence 26: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/026_Recap - ReplicaSets.extraction.md::E99
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 026_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: You can use it to monitor existing pods if you have them already created as it is in this example.
- Multi-concept tags: Pods, Deployments, Observability, CKA-CKAD

### Evidence 27: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/026_Recap - ReplicaSets.extraction.md::E101
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 026_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: The role of the replica set is to monitor the pods and if any of them were to fail, deploy new ones.
- Multi-concept tags: Pods, Deployments, Security-RBAC, Observability, Troubleshooting

### Evidence 28: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/026_Recap - ReplicaSets.extraction.md::E102
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 026_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: The replica set is in fact a process that monitors the pods.
- Multi-concept tags: Pods, Deployments, Observability

### Evidence 29: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/026_Recap - ReplicaSets.extraction.md::E103
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 026_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: Now, how does the replica set know what pods to monitor?
- Multi-concept tags: Pods, Deployments, Observability

### Evidence 30: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/026_Recap - ReplicaSets.extraction.md::E107
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 026_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: This way, the replica set knows which pods to monitor.
- Multi-concept tags: Pods, Deployments, Observability

### Evidence 31: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/026_Recap - ReplicaSets.extraction.md::E113
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 026_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: And we need to create a replica set to monitor the pods to ensure there are a minimum of three running at all times.
- Multi-concept tags: Pods, Deployments, Observability

### Evidence 32: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/038_Namespaces.extraction.md::E20
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 038_Namespaces.txt
- Line Context: Lines 1-1 from transcript
- Content: When the cluster is first set up, Kubernetes creates a set of pods and services for its internal purpose, such as those required by the networking solution, the DNS service, etc. to isolate these from the user and to prevent you from accidentally deleting or modifying these services, Kubernetes creates them under another namespace created at cluster startup Dub named kube system.
- Multi-concept tags: Pods, Services, Networking, Architecture, Observability

### Evidence 33: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/050_Scheduling - Section Introduction.extraction.md::E7
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 050_Scheduling - Section Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: We also see how to configure multiple schedulers and how to view the scheduler events.
- Multi-concept tags: Scheduling, Observability

### Evidence 34: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/051_Manual Scheduling.extraction.md::E13
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 051_Manual Scheduling.txt
- Line Context: Lines 1-1 from transcript
- Content: So if there is no scheduler to monitor and schedule pods onto nodes, what happens?
- Multi-concept tags: Pods, Scheduling, Architecture, Observability

### Evidence 35: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/053_Lab Solution - Manual Scheduling (optional).extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 053_Lab Solution - Manual Scheduling (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And what it's gonna do is it's going to continue to monitor that pod and it's gonna update the status if something changes.
- Multi-concept tags: Pods, Observability

### Evidence 36: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: Now my apologies in advance, but this is the best I could come up with to prevent the bug from landing on the person.
- Multi-concept tags: Scheduling, Observability

### Evidence 37: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E19
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: First, we prevent all pods from being placed on the node by placing a taint on the node.
- Multi-concept tags: Pods, Scheduling, Architecture, Observability

### Evidence 38: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E71
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: That prevents any pods from being scheduled on this node.
- Multi-concept tags: Pods, Scheduling, Architecture, Observability

### Evidence 39: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/064_Taints and Tolerations vs Node Affinity.extraction.md::E21
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 064_Taints and Tolerations vs Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: We first use taints and tolerations to prevent other pods from being placed on our nodes, and then we use node affinity to prevent our pods from being placed on their nodes.
- Multi-concept tags: Pods, Scheduling, Architecture, Observability

### Evidence 40: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements.txt
- Line Context: Lines 1-1 from transcript
- Content: And if you look at the events using the cube control describe pod command, you will see there is an insufficient CPU.
- Multi-concept tags: Pods, Configuration, Observability, On-Prem

### Evidence 41: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E69
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements.txt
- Line Context: Lines 1-1 from transcript
- Content: So without a resource or a limit set, one pod can consume all the CPU resources on the node and prevent the second part of required resources.
- Multi-concept tags: Pods, Architecture, Observability

### Evidence 42: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E93
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements.txt
- Line Context: Lines 1-1 from transcript
- Content: And since it's made accessible to public and um, users, uh, can run any kind of workload that they want, we set limits to prevent the user from misusing the infrastructure to, let's say, perform Bitcoin mining or, um, other resource consuming activities.
- Multi-concept tags: Observability

### Evidence 43: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E109
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements.txt
- Line Context: Lines 1-1 from transcript
- Content: And without a resource or limit set, one pod can consume all the memory resources on the node and prevent the second pod of required resources.
- Multi-concept tags: Pods, Architecture, Observability

### Evidence 44: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/069_DaemonSets.extraction.md::E8
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 069_DaemonSets.txt
- Line Context: Lines 1-1 from transcript
- Content: Say you would like to deploy a monitoring agent or log collector on each of your nodes in the cluster so you can monitor your cluster better.
- Multi-concept tags: Architecture, Observability

### Evidence 45: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/069_DaemonSets.extraction.md::E9
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 069_DaemonSets.txt
- Line Context: Lines 1-1 from transcript
- Content: A daemonset is perfect for that, as it can deploy your monitoring agent in the form of a pod in all the nodes in your cluster.
- Multi-concept tags: Pods, Architecture, Observability

### Evidence 46: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/069_DaemonSets.extraction.md::E10
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 069_DaemonSets.txt
- Line Context: Lines 1-1 from transcript
- Content: Then you don't have to worry about adding or removing monitoring agents from these nodes when there are changes in your cluster, as the Daemonset will take care of that for you.
- Multi-concept tags: Architecture, Observability

### Evidence 47: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/069_DaemonSets.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 069_DaemonSets.txt
- Line Context: Lines 1-1 from transcript
- Content: We will set the name to Monitoring daemon.
- Multi-concept tags: Observability

### Evidence 48: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E74
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: But again if you haven't gone through the volume and volume mount sections of this course, then just hold off on this for now and you'll understand that when we talk about these and then again liveness probes, readiness probes, resources and security context, all of these are sections that we talk about later.
- Multi-concept tags: Storage, Scheduling, Security-RBAC, Observability

### Evidence 49: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E96
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: Now we can view this in the events using the kubectl get events command with the dash o wire option.
- Multi-concept tags: Scheduling, Configuration, Observability

### Evidence 50: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E97
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: And this will list all the events in the current namespace and look for the scheduled events.
- Multi-concept tags: Scheduling, Observability

### Evidence 51: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E98
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Line Context: Lines 1-1 from transcript
- Content: And as you can see, the source of the event is the custom scheduler that we created.
- Multi-concept tags: Scheduling, Observability

### Evidence 52: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E45
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Line Context: Lines 1-1 from transcript
- Content: The liveness probe, the readiness probe are all set so we don't really have to worry about that.
- Multi-concept tags: Scheduling, Observability

### Evidence 53: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/082_(2025 Updates)Admission Controllers.extraction.md::E31
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 082_(2025 Updates)Admission Controllers.txt
- Line Context: Lines 1-1 from transcript
- Content: The default storage class admission controller that observes the creation of PVCs and automatically adds the default storage class to them if one is not specified, the event rate limit admission controller can help set a limit on the requests with the the API server can handle at a time.
- Multi-concept tags: Storage, Security-RBAC, Architecture, Observability

### Evidence 54: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/082_(2025 Updates)Admission Controllers.extraction.md::E32
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 082_(2025 Updates)Admission Controllers.txt
- Line Context: Lines 1-1 from transcript
- Content: To prevent the API server from flooding with requests, the namespace exists.
- Multi-concept tags: Security-RBAC, Architecture, Observability

### Evidence 55: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/088_Logging and Monitoring - Section Introduction.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 088_Logging and Monitoring - Section Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: In this section, we discuss about the various logging and monitoring options available.
- Multi-concept tags: Observability

### Evidence 56: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/088_Logging and Monitoring - Section Introduction.extraction.md::E2
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 088_Logging and Monitoring - Section Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: We first see how to monitor the Kubernetes cluster components as well as the applications hosted on them.
- Multi-concept tags: Architecture, Observability

### Evidence 57: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/088_Logging and Monitoring - Section Introduction.extraction.md::E3
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 088_Logging and Monitoring - Section Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: We then see how to view and manage the logs for the cluster components as well as the applications.
- Multi-concept tags: Architecture, Observability

### Evidence 58: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/088_Logging and Monitoring - Section Introduction.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 088_Logging and Monitoring - Section Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: We practice what we learn through a set of fun and challenging exercises.
- Multi-concept tags: Observability

### Evidence 59: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/088_Logging and Monitoring - Section Introduction.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 088_Logging and Monitoring - Section Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: Well, I hope you like the upcoming lectures and practice tests.
- Multi-concept tags: Observability, CKA-CKAD

### Evidence 60: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/088_Logging and Monitoring - Section Introduction.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 088_Logging and Monitoring - Section Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's get started.
- Multi-concept tags: Observability

### Evidence 61: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/089_Monitor Cluster Components.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 089_Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: In this lecture we talk about monitoring a Kubernetes cluster.
- Multi-concept tags: Architecture, Observability

### Evidence 62: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/089_Monitor Cluster Components.extraction.md::E2
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 089_Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: So how do you monitor resource consumption on Kubernetes?
- Multi-concept tags: Architecture, Observability

### Evidence 63: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/089_Monitor Cluster Components.extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 089_Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: Or more importantly, what would you like to monitor?
- Multi-concept tags: Architecture, Observability

### Evidence 64: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/089_Monitor Cluster Components.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 089_Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: I'd like to know node level metrics, such as the number of nodes in the cluster, how many of them are healthy, as well as performance metrics such as CPU, memory, network, and disk utilization, as well as pod level metrics such as the number of pods and the performance metrics of each pod, such as the CPU and memory consumption on them.
- Multi-concept tags: Pods, Networking, Architecture, Observability

### Evidence 65: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/089_Monitor Cluster Components.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 089_Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: So we need a solution that will monitor these metrics, store them, and provide analytics around this data.
- Multi-concept tags: Architecture, Observability

### Evidence 66: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/089_Monitor Cluster Components.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 089_Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: As of this recording, Kubernetes does not come with a full featured built in monitoring solution.
- Multi-concept tags: Architecture, Observability

### Evidence 67: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/089_Monitor Cluster Components.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 089_Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: However, there are a number of open source solutions available today, such as Metrics Server, Prometheus, Elastic Stack, and proprietary solutions like Datadog and Dynatrace.
- Multi-concept tags: Architecture, Observability

### Evidence 68: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/089_Monitor Cluster Components.extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 089_Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: Hipster was one of the original projects that enabled monitoring and analysis features for Kubernetes.
- Multi-concept tags: Architecture, Observability

### Evidence 69: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/089_Monitor Cluster Components.extraction.md::E9
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 089_Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: You will see a lot of reference online when you look for reference architectures on monitoring Kubernetes.
- Multi-concept tags: Architecture, Observability

### Evidence 70: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/089_Monitor Cluster Components.extraction.md::E10
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 089_Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: However, hipster is now deprecated and a slimmed down version was formed, known as the Metrics Server.
- Multi-concept tags: Architecture, Observability, Platform Engineering

### Evidence 71: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/089_Monitor Cluster Components.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 089_Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: You can have one metric server per Kubernetes cluster.
- Multi-concept tags: Architecture, Observability

### Evidence 72: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/089_Monitor Cluster Components.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 089_Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: The metrics server retrieves metrics from each of the Kubernetes nodes and pods, aggregates them, and stores them in memory.
- Multi-concept tags: Pods, Architecture, Observability

### Evidence 73: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/089_Monitor Cluster Components.extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 089_Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: Note that the metrics server is only an in-memory monitoring solution and does not store the metrics on the disk, and as a result, you cannot see historical performance data.
- Multi-concept tags: Architecture, Observability

### Evidence 74: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/089_Monitor Cluster Components.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 089_Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: For that, you must rely on one of the advanced monitoring solutions we talked about earlier in this lecture.
- Multi-concept tags: Architecture, Observability

### Evidence 75: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/089_Monitor Cluster Components.extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 089_Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: So how are the metrics generated for the pods on these nodes?
- Multi-concept tags: Pods, Architecture, Observability

### Evidence 76: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/089_Monitor Cluster Components.extraction.md::E16
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 089_Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: Kubernetes runs an agent on each node known as the Kubelet, which is responsible for receiving instructions from the Kubernetes API, master server, and running pods on the nodes.
- Multi-concept tags: Pods, Architecture, Observability

### Evidence 77: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/089_Monitor Cluster Components.extraction.md::E17
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 089_Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: The Kubelet also contains a subcomponent known as the C advisor or Container Advisor.
- Multi-concept tags: Architecture, Observability

### Evidence 78: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/089_Monitor Cluster Components.extraction.md::E18
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 089_Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: C advisor is responsible for retrieving performance metrics from Pods and exposing them through the Kubelet API to make the metrics available for the metrics server.
- Multi-concept tags: Pods, Architecture, Observability

### Evidence 79: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/089_Monitor Cluster Components.extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 089_Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: If you're using minikube for your local cluster, run the command minikube add ons.
- Multi-concept tags: Configuration, Architecture, Observability, On-Prem

### Evidence 80: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/089_Monitor Cluster Components.extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 089_Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: Enable metrics dash server for all other environments.
- Multi-concept tags: Configuration, Architecture, Observability

### Evidence 81: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/089_Monitor Cluster Components.extraction.md::E21
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 089_Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: Deploy the metrics server by cloning the metric server deployment files from the GitHub repository, and then deploying the required components using the kube control create command.
- Multi-concept tags: Deployments, Configuration, Architecture, Observability

### Evidence 82: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/089_Monitor Cluster Components.extraction.md::E22
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 089_Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: This command deploys a set of pods, services and roles to enable metrics.
- Multi-concept tags: Pods, Services, Security-RBAC, Configuration, Architecture, Observability

### Evidence 83: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/089_Monitor Cluster Components.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 089_Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: Server to poll for performance metrics from the nodes in the cluster.
- Multi-concept tags: Architecture, Observability

### Evidence 84: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/089_Monitor Cluster Components.extraction.md::E24
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 089_Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: Once deployed, give the metrics server some time to collect and process data.
- Multi-concept tags: Architecture, Observability

### Evidence 85: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/089_Monitor Cluster Components.extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 089_Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: Once processed, cluster performance can be viewed by running the command kube control top node.
- Multi-concept tags: Configuration, Architecture, Observability

### Evidence 86: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/089_Monitor Cluster Components.extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 089_Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: This provides the CPU and memory consumption of each of the nodes.
- Multi-concept tags: Architecture, Observability

### Evidence 87: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/089_Monitor Cluster Components.extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 089_Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: As you can see, 8% of the CPU on my master node is consumed, which is about 166 milli cores.
- Multi-concept tags: Architecture, Observability

### Evidence 88: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/089_Monitor Cluster Components.extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 089_Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: Use the kube control top pod command to view performance metrics of pods in Kubernetes.
- Multi-concept tags: Pods, Configuration, Architecture, Observability

### Evidence 89: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/089_Monitor Cluster Components.extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 089_Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: Well, that's it for this lecture.
- Multi-concept tags: Architecture, Observability

### Evidence 90: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/089_Monitor Cluster Components.extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 089_Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: Head over to the Coding Exercises section and practice viewing performance metrics on Kubernetes cluster.
- Multi-concept tags: Architecture, Observability

### Evidence 91: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/089_Monitor Cluster Components.extraction.md::E31
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 089_Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: Thank you.
- Multi-concept tags: Architecture, Observability

### Evidence 92: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: -: Okay, In this lab we get familiar with monitoring cluster components.
- Multi-concept tags: Architecture, Observability

### Evidence 93: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E2
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: So the first question is we have deployed a few pods running workloads so inspect them.
- Multi-concept tags: Pods, Architecture, Observability

### Evidence 94: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's do kubectl get pods command.
- Multi-concept tags: Pods, Configuration, Architecture, Observability

### Evidence 95: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that there are indeed three pods, elephant, lion, and rabbit, and they're all in a running state.
- Multi-concept tags: Pods, Architecture, Observability

### Evidence 96: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's go ahead and what we need to do is monitor the resources consumed by each of these pods.
- Multi-concept tags: Pods, Architecture, Observability

### Evidence 97: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E6
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: And for that we need to deploy the metric server.
- Multi-concept tags: Architecture, Observability

### Evidence 98: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: And for this, we have a get repo with the settings for the metric server that will work for our labs.
- Multi-concept tags: Architecture, Observability

### Evidence 99: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: So we're just going to use that.
- Multi-concept tags: Architecture, Observability

### Evidence 100: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E9
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: But if you're trying this in your own environment or for a production environment, so remember do not use this for production use-cases because there are changes that are in here that are done just to make this work with this particular lab exercise and just to make it easy for us to deploy it.
- Multi-concept tags: Configuration, Architecture, Observability

### Evidence 101: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E10
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: So do not use this for a production use-case.
- Multi-concept tags: Architecture, Observability

### Evidence 102: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E11
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: Always remember to refer to the official recommendation on the metric server to deploy one in your environment.
- Multi-concept tags: Configuration, Architecture, Observability

### Evidence 103: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's wait for, okay, so this is cloned.
- Multi-concept tags: Architecture, Observability

### Evidence 104: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E13
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: And if you look at this, you have the files here that are required to deploy the metric server.
- Multi-concept tags: Architecture, Observability

### Evidence 105: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's go ahead.
- Multi-concept tags: Architecture, Observability

### Evidence 106: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay.
- Multi-concept tags: Architecture, Observability

### Evidence 107: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E16
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: So the next step is to deploy the metric server by creating these components.
- Multi-concept tags: Architecture, Observability

### Evidence 108: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E17
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: So we're just going to do a kubectl create-f., that creates all of the objects required to deploy the metric server.
- Multi-concept tags: Architecture, Observability

### Evidence 109: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E18
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, let's go next.
- Multi-concept tags: Architecture, Observability

### Evidence 110: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: And at times it might take a few minutes for the metric servers to start gathering and reporting data.
- Multi-concept tags: Architecture, Observability

### Evidence 111: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: And so if you do a kubectl top node, yeah, it seems to be working already.
- Multi-concept tags: Architecture, Observability

### Evidence 112: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E21
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: So yes, that's working now so we can proceed.
- Multi-concept tags: Architecture, Observability

### Evidence 113: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E22
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, the next question is to identify the node that consumes the most CPU.
- Multi-concept tags: Architecture, Observability

### Evidence 114: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: So here you can see two nodes and the CPU consumption of the two.
- Multi-concept tags: Architecture, Observability

### Evidence 115: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: So node 01 has 57 milli cores and the control plane consumes about 470 milli cores.
- Multi-concept tags: Architecture, Observability

### Evidence 116: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E25
- Type: Comparison
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: And if you look at it the percentage is just 1%, but still you can see there's a difference between the two.
- Multi-concept tags: Architecture, Observability

### Evidence 117: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: And of course that's because the control plane has all the control plane components running on it.
- Multi-concept tags: Architecture, Observability

### Evidence 118: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: So to answer this question the most CPU consumption is by the control plane.
- Multi-concept tags: Architecture, Observability

### Evidence 119: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's select that.
- Multi-concept tags: Architecture, Observability

### Evidence 120: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E29
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: The next one is to identify the node that consumes the most memory.
- Multi-concept tags: Architecture, Observability

### Evidence 121: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: If you look at the memory consumption here, again, we know we can see that the control plane consumes most memory.
- Multi-concept tags: Architecture, Observability

### Evidence 122: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E31
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: So answer to this is control plane again.
- Multi-concept tags: Architecture, Observability

### Evidence 123: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E32
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: The next question is to identify the pod that consumes the most memory.
- Multi-concept tags: Pods, Architecture, Observability

### Evidence 124: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E33
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: So the pod this time.
- Multi-concept tags: Pods, Architecture, Observability

### Evidence 125: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: So you can get that by running the kubectl top pod command.
- Multi-concept tags: Pods, Configuration, Architecture, Observability

### Evidence 126: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E35
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: And here you can see the memory consumption and the CPU consumption.
- Multi-concept tags: Architecture, Observability

### Evidence 127: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E36
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: If you look at the memory consumption you can see that it's rabbit.
- Multi-concept tags: Architecture, Observability

### Evidence 128: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E37
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: Rabbit consumes the most memory.
- Multi-concept tags: Architecture, Observability

### Evidence 129: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E38
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: So that's the answer to this is rabbit.
- Multi-concept tags: Architecture, Observability

### Evidence 130: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E39
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: And the next question is to identify the pod that consumes the least CPU.
- Multi-concept tags: Pods, Architecture, Observability

### Evidence 131: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E40
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: So here you can see it's lion.
- Multi-concept tags: Architecture, Observability

### Evidence 132: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E41
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: This consumes one milli core of CPU so select lion and that should be it.
- Multi-concept tags: Architecture, Observability

### Evidence 133: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E42
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: So basically that's a quick introduction to deploying the metric server and also just using the commands to look at its reporting and identify basic information.
- Multi-concept tags: Configuration, Architecture, Observability

### Evidence 134: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E43
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Line Context: Lines 1-1 from transcript
- Content: All right, thank you.
- Multi-concept tags: Architecture, Observability

### Evidence 135: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/092_Managing Application Logs.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 092_Managing Application Logs.txt
- Line Context: Lines 1-1 from transcript
- Content: In this lecture we will talk about various logging mechanisms in Kubernetes.
- Multi-concept tags: Observability

### Evidence 136: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/092_Managing Application Logs.extraction.md::E2
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 092_Managing Application Logs.txt
- Line Context: Lines 1-1 from transcript
- Content: Let us start with logging in Docker.
- Multi-concept tags: Observability

### Evidence 137: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/092_Managing Application Logs.extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 092_Managing Application Logs.txt
- Line Context: Lines 1-1 from transcript
- Content: I run a Docker container called Event Simulator, and all that it does is generate random events simulating a web server.
- Multi-concept tags: Observability

### Evidence 138: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/092_Managing Application Logs.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 092_Managing Application Logs.txt
- Line Context: Lines 1-1 from transcript
- Content: These are events streamed to the standard output by the application.
- Multi-concept tags: Observability

### Evidence 139: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/092_Managing Application Logs.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 092_Managing Application Logs.txt
- Line Context: Lines 1-1 from transcript
- Content: Now, if I were to run the Docker container in the background in a detached mode using the dash D option, I wouldn't see the logs.
- Multi-concept tags: Observability

### Evidence 140: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/092_Managing Application Logs.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 092_Managing Application Logs.txt
- Line Context: Lines 1-1 from transcript
- Content: If I wanted to view the logs, I could use the docker logs command followed by the container id.
- Multi-concept tags: Configuration, Observability

### Evidence 141: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/092_Managing Application Logs.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 092_Managing Application Logs.txt
- Line Context: Lines 1-1 from transcript
- Content: The dash f option helps us see the live log trail.
- Multi-concept tags: Observability

### Evidence 142: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/092_Managing Application Logs.extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 092_Managing Application Logs.txt
- Line Context: Lines 1-1 from transcript
- Content: Now back to Kubernetes.
- Multi-concept tags: Observability

### Evidence 143: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/092_Managing Application Logs.extraction.md::E9
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 092_Managing Application Logs.txt
- Line Context: Lines 1-1 from transcript
- Content: We create a pod with the same Docker image using the Pod definition file.
- Multi-concept tags: Pods, Observability

### Evidence 144: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/092_Managing Application Logs.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 092_Managing Application Logs.txt
- Line Context: Lines 1-1 from transcript
- Content: Once the pod is running, we can view the logs using the kube control logs command.
- Multi-concept tags: Pods, Configuration, Observability

### Evidence 145: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/092_Managing Application Logs.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 092_Managing Application Logs.txt
- Line Context: Lines 1-1 from transcript
- Content: With the pod name, use the dash f option to stream the logs live, just like the docker command.
- Multi-concept tags: Pods, Configuration, Observability

### Evidence 146: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/092_Managing Application Logs.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 092_Managing Application Logs.txt
- Line Context: Lines 1-1 from transcript
- Content: Now these logs are specific to the container running inside the pod.
- Multi-concept tags: Pods, Observability

### Evidence 147: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/092_Managing Application Logs.extraction.md::E13
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 092_Managing Application Logs.txt
- Line Context: Lines 1-1 from transcript
- Content: As we learned before, Kubernetes pods can have multiple Docker containers in them.
- Multi-concept tags: Pods, Observability

### Evidence 148: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/092_Managing Application Logs.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 092_Managing Application Logs.txt
- Line Context: Lines 1-1 from transcript
- Content: In this case, I modify my Pod definition file to include an additional container called image processor.
- Multi-concept tags: Pods, Observability

### Evidence 149: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/092_Managing Application Logs.extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 092_Managing Application Logs.txt
- Line Context: Lines 1-1 from transcript
- Content: If you run the cube control logs command now with the pod name, which containers logs would it show?
- Multi-concept tags: Pods, Configuration, Observability

### Evidence 150: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/092_Managing Application Logs.extraction.md::E16
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 092_Managing Application Logs.txt
- Line Context: Lines 1-1 from transcript
- Content: If there are multiple containers within a pod, you must specify the name of the container explicitly in the command.
- Multi-concept tags: Pods, Configuration, Observability

### Evidence 151: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/092_Managing Application Logs.extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 092_Managing Application Logs.txt
- Line Context: Lines 1-1 from transcript
- Content: Otherwise it would fail asking you to specify a name.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 152: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/092_Managing Application Logs.extraction.md::E18
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 092_Managing Application Logs.txt
- Line Context: Lines 1-1 from transcript
- Content: In this case, I will specify the name of the first container event simulator and that prints the relevant log messages.
- Multi-concept tags: Observability

### Evidence 153: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/092_Managing Application Logs.extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 092_Managing Application Logs.txt
- Line Context: Lines 1-1 from transcript
- Content: Now that is the simple logging functionality implemented within Kubernetes.
- Multi-concept tags: Observability

### Evidence 154: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/092_Managing Application Logs.extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 092_Managing Application Logs.txt
- Line Context: Lines 1-1 from transcript
- Content: And that is all that an application developer really needs to know to get started with Kubernetes.
- Multi-concept tags: Observability

### Evidence 155: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/092_Managing Application Logs.extraction.md::E21
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 092_Managing Application Logs.txt
- Line Context: Lines 1-1 from transcript
- Content: And that is all you really need to know as part of the certification program.
- Multi-concept tags: Observability, CKA-CKAD

### Evidence 156: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/092_Managing Application Logs.extraction.md::E22
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 092_Managing Application Logs.txt
- Line Context: Lines 1-1 from transcript
- Content: However, in the next lecture, we will see more about some advanced logging configuration and third party support for logging in Kubernetes.
- Multi-concept tags: Observability

### Evidence 157: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/092_Managing Application Logs.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 092_Managing Application Logs.txt
- Line Context: Lines 1-1 from transcript
- Content: We also have a nice demo that shows how a popular logging framework is integrated with Kubernetes.
- Multi-concept tags: Observability

### Evidence 158: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/092_Managing Application Logs.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 092_Managing Application Logs.txt
- Line Context: Lines 1-1 from transcript
- Content: Well, that's it for this lecture.
- Multi-concept tags: Observability

### Evidence 159: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/092_Managing Application Logs.extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 092_Managing Application Logs.txt
- Line Context: Lines 1-1 from transcript
- Content: Head over to the Coding Exercises section and practice working with logs.
- Multi-concept tags: Observability

### Evidence 160: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/092_Managing Application Logs.extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 092_Managing Application Logs.txt
- Line Context: Lines 1-1 from transcript
- Content: Thank you.
- Multi-concept tags: Observability

### Evidence 161: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: -: Let's just now go through the lab for managing application logs.
- Multi-concept tags: Observability

### Evidence 162: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E2
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we'll go through and review a few applications.
- Multi-concept tags: Observability

### Evidence 163: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E3
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And then how to review the logs of these applications and get useful in information.
- Multi-concept tags: Observability

### Evidence 164: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Right?
- Multi-concept tags: Observability

### Evidence 165: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E5
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we've deployed a pod hosting an application inspected and, wait for it to start, suspect you can get pods and we see that it's running.
- Multi-concept tags: Pods, Observability

### Evidence 166: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And let's click on, okay.
- Multi-concept tags: Observability

### Evidence 167: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now at user, user five has expressed concerns accessing the application.
- Multi-concept tags: Observability

### Evidence 168: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Identify the cause and inspect the logs.
- Multi-concept tags: Observability

### Evidence 169: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's take a look at the logs, of this application.
- Multi-concept tags: Observability

### Evidence 170: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that there are logs here and it says user five.
- Multi-concept tags: Observability

### Evidence 171: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So user five.
- Multi-concept tags: Observability

### Evidence 172: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: That's user five.
- Multi-concept tags: Observability

### Evidence 173: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that the, the cause is the, the user failed to log in as the account is locked due to too many failed attempts.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 174: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So it's account locked due to many failed attempts.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 175: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: That's the correct answer.
- Multi-concept tags: Observability

### Evidence 176: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E16
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, the next one is, now have a new application deployed as web app two.
- Multi-concept tags: Observability

### Evidence 177: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E17
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And if you see a user is reporting issues while trying to purchase an item.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 178: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E18
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Identify the user and the cause of the issue.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 179: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Inspect the logs of the web app.
- Multi-concept tags: Observability

### Evidence 180: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's look at the logs.
- Multi-concept tags: Observability

### Evidence 181: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E21
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Logs again.
- Multi-concept tags: Observability

### Evidence 182: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now it says a container name must be specified for the Paul Web app, too.
- Multi-concept tags: Observability

### Evidence 183: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So this is because if you look at this, this web application has two containers and they're ready.
- Multi-concept tags: Observability

### Evidence 184: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So if, if there are two containers you must specify which containers' logs is it that we wanna see.
- Multi-concept tags: Observability

### Evidence 185: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So there's a simple web app and there's a db.
- Multi-concept tags: Observability

### Evidence 186: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're looking at the web application.
- Multi-concept tags: Observability

### Evidence 187: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, we'll just specify web app and we can see the logs.
- Multi-concept tags: Observability

### Evidence 188: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E28
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And the question is, a user is reporting issues while trying to purchase an item.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 189: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E29
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we've gotta identify the user and the cause of the issue.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 190: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E30
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So if you look at this, these are all normal events, but these are warnings.
- Multi-concept tags: Observability

### Evidence 191: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E31
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's look at the warnings.
- Multi-concept tags: Observability

### Evidence 192: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So user five, failed to log in.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 193: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E33
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: That's not the issue here.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 194: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: This one says user thirty order order failed as the item is out of stock.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 195: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E35
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that seems to be, and that's those are the only two issues.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 196: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E36
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So this, this seems to be the correct one.
- Multi-concept tags: Observability

### Evidence 197: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E37
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: It's user thirty and item out of stock.
- Multi-concept tags: Observability

### Evidence 198: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E38
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, So that's a quick lab for viewing logs of an application.
- Multi-concept tags: Observability

### Evidence 199: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/096_Rolling Updates and Rollbacks.extraction.md::E33
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 096_Rolling Updates and Rollbacks.txt
- Line Context: Lines 1-1 from transcript
- Content: The events indicate that the old replica set was scaled down to zero first, and then the new replica sets scaled up to five.
- Multi-concept tags: Deployments, Observability

### Evidence 200: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Line Context: Lines 1-1 from transcript
- Content: So I would run the kubectl top pod command and monitor the resource consumption of the pod.
- Multi-concept tags: Pods, Configuration, Observability

### Evidence 201: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Line Context: Lines 1-1 from transcript
- Content: Now remember that you must have the metrics server running on the cluster to be able to monitor the resource usage like this.
- Multi-concept tags: Pods, Architecture, Observability

### Evidence 202: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Line Context: Lines 1-1 from transcript
- Content: The problems with this approach is that I have to sit in front of my computer and continuously monitor resource usage.
- Multi-concept tags: Pods, Observability

### Evidence 203: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Line Context: Lines 1-1 from transcript
- Content: So the horizontal Pod autoscaler continuously monitors the metrics as we did manually using the top command.
- Multi-concept tags: Pods, Configuration, Observability

### Evidence 204: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.extraction.md::E19
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Line Context: Lines 1-1 from transcript
- Content: It then automatically increases or decreases the number of pods in a deployment Statefulset or replica set based on the CPU, memory, or custom metrics.
- Multi-concept tags: Pods, Deployments, Storage, Observability

### Evidence 205: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.extraction.md::E21
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Line Context: Lines 1-1 from transcript
- Content: And note that it can also track multiple different types of metrics, which we will refer to in in a few minutes.
- Multi-concept tags: Pods, Observability

### Evidence 206: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.extraction.md::E25
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Line Context: Lines 1-1 from transcript
- Content: It then continuously pulls the metric server to monitor the usage, and when the usage goes beyond 50%, it modifies the number of replicas to scale up or down, depending on the usage.
- Multi-concept tags: Pods, Observability, Troubleshooting

### Evidence 207: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Line Context: Lines 1-1 from transcript
- Content: This is the target resource we want the HPA to monitor.
- Multi-concept tags: Pods, Observability

### Evidence 208: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.extraction.md::E37
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Line Context: Lines 1-1 from transcript
- Content: And then we have configured the metrics and resources to monitor in this case the resource being CPU and target utilization, uh being 50%.
- Multi-concept tags: Pods, Observability

### Evidence 209: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.extraction.md::E42
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Line Context: Lines 1-1 from transcript
- Content: But there are also other sources that we can refer to, such as a custom metrics adapter that can retrieve information from other internal sources, like a workload deployed in a cluster.
- Multi-concept tags: Pods, Architecture, Observability

### Evidence 210: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Line Context: Lines 1-1 from transcript
- Content: So as I did before, I would run the kubectl top pod command and monitor the resource consumption of the pod.
- Multi-concept tags: Pods, Configuration, Observability

### Evidence 211: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Line Context: Lines 1-1 from transcript
- Content: And so remember that you must have the metric server running on the cluster to be able to monitor as the same as before.
- Multi-concept tags: Pods, Architecture, Observability

### Evidence 212: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.extraction.md::E14
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Line Context: Lines 1-1 from transcript
- Content: So similar to the horizontal pod autoscaler, the vertical pod autoscaler continuously monitors the metrics and then it automatically increases or decreases the resources assigned to the pods in a deployment and thus balances the workload.
- Multi-concept tags: Pods, Deployments, Observability

### Evidence 213: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.extraction.md::E23
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Line Context: Lines 1-1 from transcript
- Content: So the recommender is responsible for continuously monitoring resource usage from the Kubernetes metrics API, and collects historical and live usage data for pods, and then provides recommendations on optimal CPU and memory values.
- Multi-concept tags: Pods, Observability

### Evidence 214: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Line Context: Lines 1-1 from transcript
- Content: So it gets the information from the recommender and monitors the pod.
- Multi-concept tags: Pods, Observability

### Evidence 215: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.extraction.md::E31
- Type: Comparison
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Line Context: Lines 1-1 from transcript
- Content: So basically the VPA recommender collects information, the updater monitors or gets the information from the recommender, compares that to the actual pod.
- Multi-concept tags: Pods, Observability

### Evidence 216: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.extraction.md::E40
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Line Context: Lines 1-1 from transcript
- Content: The target to monitor is the my app deployment.
- Multi-concept tags: Pods, Deployments, Observability

### Evidence 217: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.extraction.md::E41
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Line Context: Lines 1-1 from transcript
- Content: The container policies define what is monitored, in this case, the CPU minimum allowed and max allowed are configured.
- Multi-concept tags: Pods, Observability

### Evidence 218: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.extraction.md::E59
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Line Context: Lines 1-1 from transcript
- Content: Now VPA will monitor resource usage and suggest adjustments.
- Multi-concept tags: Pods, Observability

### Evidence 219: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.extraction.md::E77
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Line Context: Lines 1-1 from transcript
- Content: So VPA prevents over provisioning by adjusting CPU and memory allocation to match actual usage.
- Multi-concept tags: Pods, Observability

### Evidence 220: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/138_Backup and Restore Methods.extraction.md::E44
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 138_Backup and Restore Methods.txt
- Line Context: Lines 1-1 from transcript
- Content: This is to prevent a new member from accidentally joining an existing cluster on running this command.
- Multi-concept tags: Configuration, Architecture, Observability

### Evidence 221: certified-kubernetes-administrator-with-practice-tests/07_Security/148_TLS in Kubernetes.extraction.md::E63
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 148_TLS in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: That's how it monitors the worker nodes.
- Multi-concept tags: Security-RBAC, Architecture, Observability

### Evidence 222: certified-kubernetes-administrator-with-practice-tests/07_Security/149_TLS in Kubernetes - Certificate Creation.extraction.md::E110
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 149_TLS in Kubernetes - Certificate Creation.txt
- Line Context: Lines 1-1 from transcript
- Content: That's who the API server talks to to monitor the node, as well as send information regarding what pods to schedule on this node.
- Multi-concept tags: Pods, Scheduling, Security-RBAC, Architecture, Observability

### Evidence 223: certified-kubernetes-administrator-with-practice-tests/07_Security/150_View Certificate Details.extraction.md::E39
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 150_View Certificate Details.txt
- Line Context: Lines 1-1 from transcript
- Content: If you set up the cluster from scratch by yourself and the services are configured as native services in the OS, you want to start looking at the service logs using the operating system's logging functionality.
- Multi-concept tags: Services, Security-RBAC, Architecture, Observability

### Evidence 224: certified-kubernetes-administrator-with-practice-tests/07_Security/154_Certificates API.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 154_Certificates API.txt
- Line Context: Lines 1-1 from transcript
- Content: Every time you want to sign a certificate, you can only do it by logging into that server.
- Multi-concept tags: Security-RBAC, Observability

### Evidence 225: certified-kubernetes-administrator-with-practice-tests/07_Security/154_Certificates API.extraction.md::E32
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 154_Certificates API.txt
- Line Context: Lines 1-1 from transcript
- Content: This time when the administrator receives a certificate signing request, instead of logging onto the master node and signing the certificate by himself, he creates a Kubernetes API object called CertificateSigningRequest.
- Multi-concept tags: Security-RBAC, Architecture, Observability

### Evidence 226: certified-kubernetes-administrator-with-practice-tests/07_Security/161_API Groups.extraction.md::E9
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 161_API Groups.txt
- Line Context: Lines 1-1 from transcript
- Content: The Kubernetes API is grouped into multiple such groups based on their purpose, such as one for APIs, one for health, one for metrics and logs, etc. the version API is for viewing the version of the cluster.
- Multi-concept tags: Security-RBAC, Architecture, Observability

### Evidence 227: certified-kubernetes-administrator-with-practice-tests/07_Security/161_API Groups.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 161_API Groups.txt
- Line Context: Lines 1-1 from transcript
- Content: As we just saw, the metrics and health API are used to monitor the health of the cluster.
- Multi-concept tags: Security-RBAC, Architecture, Observability

### Evidence 228: certified-kubernetes-administrator-with-practice-tests/07_Security/161_API Groups.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 161_API Groups.txt
- Line Context: Lines 1-1 from transcript
- Content: The logs are used for integrating with third party logging applications.
- Multi-concept tags: Security-RBAC, Observability

### Evidence 229: certified-kubernetes-administrator-with-practice-tests/07_Security/161_API Groups.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 161_API Groups.txt
- Line Context: Lines 1-1 from transcript
- Content: The core group is where all core functionality exists, such as namespaces, pods, replication, controllers, events, endpoints, nodes, bindings, persistent volumes, persistent volume claims, config maps, secrets, services, etc..
- Multi-concept tags: Pods, Services, Storage, Security-RBAC, Architecture, Observability

### Evidence 230: certified-kubernetes-administrator-with-practice-tests/07_Security/162_Authorization.extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 162_Authorization.txt
- Line Context: Lines 1-1 from transcript
- Content: As an admin, we're able to perform any operation, but soon we will have others accessing the cluster as well, such as the other administrators, developers, testers, or other applications like monitoring applications or continuous delivery applications like Jenkins, etc. so we will be creating accounts for them to access the cluster by creating usernames and passwords or tokens or signed TLS certificates or service accounts, as we saw in the previous lectures.
- Multi-concept tags: Services, Security-RBAC, Architecture, Observability

### Evidence 231: certified-kubernetes-administrator-with-practice-tests/07_Security/169_Service Accounts.extraction.md::E7
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 169_Service Accounts.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, a monitoring application like Prometheus uses a service account to poll the Kubernetes API for performance metrics.
- Multi-concept tags: Services, Security-RBAC, Observability, CKA-CKAD

### Evidence 232: certified-kubernetes-administrator-with-practice-tests/07_Security/169_Service Accounts.extraction.md::E54
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 169_Service Accounts.txt
- Line Context: Lines 1-1 from transcript
- Content: At times, you might want to create a token that is to be used outside of the cluster, maybe to paste into the Kubernetes dashboard that we had created, or to put it into a CI CD tool or an external monitoring tool.
- Multi-concept tags: Services, Security-RBAC, Architecture, Observability

### Evidence 233: certified-kubernetes-administrator-with-practice-tests/07_Security/169_Service Accounts.extraction.md::E69
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 169_Service Accounts.txt
- Line Context: Lines 1-1 from transcript
- Content: To use the service account from an external application, such as a CI, CD tool or monitoring tools.
- Multi-concept tags: Services, Security-RBAC, Observability

### Evidence 234: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E29
- Type: Exam Tip
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Line Context: Lines 1-1 from transcript
- Content: Say for example, your security teams and audits require you to prevent that from happening.
- Multi-concept tags: Networking, Security-RBAC, Observability, CKA-CKAD, Platform Engineering

### Evidence 235: certified-kubernetes-administrator-with-practice-tests/07_Security/184_(2025 Updates)Custorm Resource Definition (CRD).extraction.md::E12
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 184_(2025 Updates)Custorm Resource Definition (CRD).txt
- Line Context: Lines 1-1 from transcript
- Content: So the controller is a process that runs in the background, and its job is to continuously monitor the status of resources that it's supposed to manage, in this case, the deployment that we created.
- Multi-concept tags: Deployments, Security-RBAC, Observability

### Evidence 236: certified-kubernetes-administrator-with-practice-tests/07_Security/186_(2025 Updates) Custom Controllers.extraction.md::E5
- Type: Architecture
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 186_(2025 Updates) Custom Controllers.txt
- Line Context: Lines 1-1 from transcript
- Content: Now what we need to do is monitor the status of the objects in etcd and perform actions such as making calls to the flight booking API to book, edit, or cancel flight tickets.
- Multi-concept tags: Security-RBAC, Architecture, Observability

### Evidence 237: certified-kubernetes-administrator-with-practice-tests/07_Security/186_(2025 Updates) Custom Controllers.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 186_(2025 Updates) Custom Controllers.txt
- Line Context: Lines 1-1 from transcript
- Content: So a controller is any process or code that runs in a loop and is continuously monitoring the Kubernetes cluster and listening to events of specific objects being changed, in this case, the flight ticket object.
- Multi-concept tags: Security-RBAC, Architecture, Observability

### Evidence 238: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so we're able to view the logs and we see that it's it some of the events that are logged by the application.
- Multi-concept tags: Storage, Observability

### Evidence 239: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E60
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's look at the events.
- Multi-concept tags: Storage, Observability

### Evidence 240: certified-kubernetes-administrator-with-practice-tests/09_Networking/208_Prerequisite Network Namespaces.extraction.md::E43
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 208_Prerequisite Network Namespaces.txt
- Line Context: Lines 1-1 from transcript
- Content: So with namespaces, we have successfully prevented the container from seeing the host's interface.
- Multi-concept tags: Networking, Observability

### Evidence 241: certified-kubernetes-administrator-with-practice-tests/09_Networking/228_CoreDNS in Kubernetes.extraction.md::E34
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 228_CoreDNS in Kubernetes.txt
- Line Context: Lines 1-1 from transcript
- Content: The ones highlighted in orange plugins are configured for handling errors, reporting, health monitoring, metrics, cache, etc. the plugin that makes core DNS work with Kubernetes is the Kubernetes plugin, and that is where the top level domain name of the cluster is set.
- Multi-concept tags: Networking, Architecture, Observability, Troubleshooting

### Evidence 242: certified-kubernetes-administrator-with-practice-tests/09_Networking/231_Ingress.extraction.md::E89
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 231_Ingress.txt
- Line Context: Lines 1-1 from transcript
- Content: Ingress controllers have additional intelligence built into them to monitor the Kubernetes cluster for new definitions or ingress resources, and configure the nginx server accordingly, and nginx controller is deployed as just another deployment in Kubernetes.
- Multi-concept tags: Deployments, Networking, Architecture, Observability

### Evidence 243: certified-kubernetes-administrator-with-practice-tests/09_Networking/231_Ingress.extraction.md::E107
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 231_Ingress.txt
- Line Context: Lines 1-1 from transcript
- Content: As mentioned before, the ingress controllers have additional intelligence built into them to monitor the Kubernetes cluster for ingress resources and configure the underlying nginx server when something is changed.
- Multi-concept tags: Networking, Architecture, Observability

### Evidence 244: certified-kubernetes-administrator-with-practice-tests/09_Networking/237_Lab Solution - Ingress Networking - 2 (optional).extraction.md::E163
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 237_Lab Solution - Ingress Networking - 2 (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And then this is, so to prevent the redirect SSL redirect we have to add the false, the SSL redirect to false.
- Multi-concept tags: Networking, Observability

### Evidence 245: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/241_Design a Kubernetes Cluster.extraction.md::E51
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 241_Design a Kubernetes Cluster.txt
- Line Context: Lines 1-1 from transcript
- Content: Deployment tools like kube ADM prevent workloads from being hosted on master nodes by adding a taint to the master node.
- Multi-concept tags: Deployments, Scheduling, Architecture, Observability

### Evidence 246: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E93
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: I'm just gonna say logging, it's gonna be set to debugging, or let's just say verbose.
- Multi-concept tags: Configuration, Observability, Troubleshooting

### Evidence 247: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E94
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: And now, if we take a look at all of our resources, we should see a annotation of logging: verbose.
- Multi-concept tags: Configuration, Observability

### Evidence 248: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/286_Application Failure.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 286_Application Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: Check the events related to the pod using the describe command.
- Multi-concept tags: Pods, Configuration, Observability, Troubleshooting, On-Prem

### Evidence 249: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/289_Control Plane Failure.extraction.md::E5
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 289_Control Plane Failure.txt
- Line Context: Lines 1-1 from transcript
- Content: In case of services configured natively on the master nodes, view the service logs using the host's logging solution.
- Multi-concept tags: Services, Architecture, Observability, Troubleshooting

### Evidence 250: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And here you have the events and it says creating pod.
- Multi-concept tags: Pods, Architecture, Observability, Troubleshooting

### Evidence 251: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see the events have not started yet but everything else seems okay but it's in a pending state.
- Multi-concept tags: Architecture, Observability, Troubleshooting

### Evidence 252: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E75
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: We don't see anything useful here in the events.
- Multi-concept tags: Architecture, Observability, Troubleshooting

### Evidence 253: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And here we see a set of events.
- Multi-concept tags: Architecture, Observability, Troubleshooting

### Evidence 254: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: We see that all of these, all of these events are normal.
- Multi-concept tags: Architecture, Observability, Troubleshooting

### Evidence 255: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E225
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And what we wanna do is ensure that the HPA scales the deployment based on CPU utilization, maintaining an average CPU usage of 50% across all pods and configure the HPA to cautiously scale down pods by setting a stabilization window of 300 seconds to prevent rapid fluctuations.
- Multi-concept tags: Pods, Deployments, Observability, CKA-CKAD

### Evidence 256: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E240
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So here we're gonna say metrics and we're gonna say of type resource, and then we'll say the resource, the name is gonna be cpu.
- Multi-concept tags: Observability, CKA-CKAD

### Evidence 257: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E39
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And what we need to do is we have to create a deployment named logging deployment in the namespace logging dash ns with the replica of one.
- Multi-concept tags: Deployments, Observability, CKA-CKAD

### Evidence 258: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E57
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So this should be logging dash deployment.
- Multi-concept tags: Deployments, Observability, CKA-CKAD

### Evidence 259: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E58
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: It should be in the logging ns namespace.
- Multi-concept tags: Observability, CKA-CKAD

### Evidence 260: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E242
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And then that will eventually give him the final certificate that will allow him to access the Kubernetes cluster.
- Multi-concept tags: Security-RBAC, Architecture, Observability, CKA-CKAD

### Evidence 261: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E511
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And then now let's go ahead and set up the metrics.
- Multi-concept tags: Observability, CKA-CKAD

### Evidence 262: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E513
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we'll say metrics dash type resource.
- Multi-concept tags: Observability, CKA-CKAD

### Evidence 263: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E522
- Type: Concept
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we could see we've got minimum replicas, three max 15 metrics resource memory and pods 65%.
- Multi-concept tags: Pods, Observability, CKA-CKAD

### Evidence 264: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E332
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: If you see anything that's like pointing to an error, whether it's in the configs here, the conditions, or especially the events, a lot of times the events will tell us something.
- Multi-concept tags: Observability, Troubleshooting, CKA-CKAD

### Evidence 265: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E383
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And then once again there's a note deployment name is available in the api namespace, ignore errors due to the metric not being tracked in the metrics server.
- Multi-concept tags: Deployments, Observability, Troubleshooting, CKA-CKAD

### Evidence 266: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E402
- Type: Implementation Step
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Then we'll say metrics and we'll say type.
- Multi-concept tags: Observability, CKA-CKAD

### Evidence 267: certified-kubernetes-application-developer/01_Introduction/001_Introduction.extraction.md::E20
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 01_Introduction / 001_Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: We then cover probes, monitoring, logging, and debugging, key skills to keep applications healthy and resolve issues.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 268: certified-kubernetes-application-developer/01_Introduction/001_Introduction.extraction.md::E21
- Type: Concept
- Source: certified-kubernetes-application-developer / 01_Introduction / 001_Introduction.txt
- Line Context: Lines 1-1 from transcript
- Content: And this includes setting up readiness and liveness probes for proactive monitoring.
- Multi-concept tags: Observability

### Evidence 269: certified-kubernetes-application-developer/01_Introduction/002_Kubernetes Series of Courses.extraction.md::E7
- Type: Architecture
- Source: certified-kubernetes-application-developer / 01_Introduction / 002_Kubernetes Series of Courses.txt
- Line Context: Lines 1-1 from transcript
- Content: A lot of concepts to cover, such as the architecture, networking, load balancing, a variety of monitoring tools, auto scaling, configuration, security, storage, et cetera.
- Multi-concept tags: Networking, Storage, Security-RBAC, Architecture, Observability

### Evidence 270: certified-kubernetes-application-developer/01_Introduction/002_Kubernetes Series of Courses.extraction.md::E18
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 01_Introduction / 002_Kubernetes Series of Courses.txt
- Line Context: Lines 1-1 from transcript
- Content: The Kubernetes for administrators course focuses on advanced topics on Kubernetes, and in-depth discussions into the various concepts around deploying a high-availability cluster for production use case, understanding more about scheduling, monitoring, maintenance, security, storage, and troubleshooting.
- Multi-concept tags: Storage, Security-RBAC, Architecture, Observability, Troubleshooting

### Evidence 271: certified-kubernetes-application-developer/01_Introduction/002_Kubernetes Series of Courses.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-application-developer / 01_Introduction / 002_Kubernetes Series of Courses.txt
- Line Context: Lines 1-1 from transcript
- Content: This course focuses on topics relevant for a developer, such as config maps, secrets and service accounts, multi-container pods, readiness and liveness probes, logging and monitoring, jobs, services and networking.
- Multi-concept tags: Pods, Services, Networking, Security-RBAC, Observability

### Evidence 272: certified-kubernetes-application-developer/02_Core Concepts/007_Recap - Kubernetes Architecture.extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 007_Recap - Kubernetes Architecture.txt
- Line Context: Lines 1-1 from transcript
- Content: How are the nodes monitored?
- Multi-concept tags: Architecture, Observability

### Evidence 273: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E65
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, we can work with the encrypted container images or other new feature that will eventually be implemented into the Docker commands in the future.
- Multi-concept tags: Configuration, Observability, CKA-CKAD, On-Prem

### Evidence 274: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E90
- Type: Architecture
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Line Context: Lines 1-1 from transcript
- Content: So if you go through the CRI control utility and try and create containers with it, then eventually Kubelet is going to delete them because the Kubelet is unaware of some of those containers are pods that are created outside of its knowledge, so anything that it sees is going to go and delete it.
- Multi-concept tags: Pods, Architecture, Observability, On-Prem

### Evidence 275: certified-kubernetes-application-developer/02_Core Concepts/010_Recap - Pods.extraction.md::E53
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 010_Recap - Pods.txt
- Line Context: Lines 1-1 from transcript
- Content: And most importantly, we would need to monitor the state of the application container.
- Multi-concept tags: Pods, Observability

### Evidence 276: certified-kubernetes-application-developer/02_Core Concepts/012_Recap - Pods with YAML.extraction.md::E63
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 012_Recap - Pods with YAML.txt
- Line Context: Lines 1-1 from transcript
- Content: This will tell you information about the pod when it was created, what labels are assigned to it, what Docker containers are part of it, and the events associated with that pod.
- Multi-concept tags: Pods, Configuration, Observability

### Evidence 277: certified-kubernetes-application-developer/02_Core Concepts/013_Recap - Demo - Creating Pods with YAML.extraction.md::E117
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 013_Recap - Demo - Creating Pods with YAML.txt
- Line Context: Lines 1-1 from transcript
- Content: And I will now monitor it.
- Multi-concept tags: Pods, Configuration, Observability

### Evidence 278: certified-kubernetes-application-developer/02_Core Concepts/019_Solution - Pods (optional).extraction.md::E69
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 019_Solution - Pods (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So try to figure it out from the event section of the pod.
- Multi-concept tags: Pods, Observability

### Evidence 279: certified-kubernetes-application-developer/02_Core Concepts/019_Solution - Pods (optional).extraction.md::E71
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 019_Solution - Pods (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Or if you just look at it below here in the event section, you can see the error.
- Multi-concept tags: Pods, Observability, Troubleshooting

### Evidence 280: certified-kubernetes-application-developer/02_Core Concepts/021_Recap - ReplicaSets.extraction.md::E2
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 021_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: They are the processes that monitor Kubernetes objects and respond accordingly.
- Multi-concept tags: Deployments, Observability

### Evidence 281: certified-kubernetes-application-developer/02_Core Concepts/021_Recap - ReplicaSets.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 021_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: To prevent users from losing access to our application, we would like to have more than one instance or pod running at the same time.
- Multi-concept tags: Pods, Deployments, Observability

### Evidence 282: certified-kubernetes-application-developer/02_Core Concepts/021_Recap - ReplicaSets.extraction.md::E95
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 021_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: You can use it to monitor existing pods if you have them already created as it is in this example.
- Multi-concept tags: Pods, Deployments, Observability, CKA-CKAD

### Evidence 283: certified-kubernetes-application-developer/02_Core Concepts/021_Recap - ReplicaSets.extraction.md::E97
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 021_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: The role of the replica set is to monitor the pods and if any of them were to fail, deploy new ones.
- Multi-concept tags: Pods, Deployments, Security-RBAC, Observability, Troubleshooting

### Evidence 284: certified-kubernetes-application-developer/02_Core Concepts/021_Recap - ReplicaSets.extraction.md::E98
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 021_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: The replica set is in fact a process that monitors the pods.
- Multi-concept tags: Pods, Deployments, Observability

### Evidence 285: certified-kubernetes-application-developer/02_Core Concepts/021_Recap - ReplicaSets.extraction.md::E99
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 021_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: Now, how does the replica set know what pods to monitor?
- Multi-concept tags: Pods, Deployments, Observability

### Evidence 286: certified-kubernetes-application-developer/02_Core Concepts/021_Recap - ReplicaSets.extraction.md::E103
- Type: Concept
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 021_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: This way, the replica set knows which pods to monitor.
- Multi-concept tags: Pods, Deployments, Observability

### Evidence 287: certified-kubernetes-application-developer/02_Core Concepts/021_Recap - ReplicaSets.extraction.md::E108
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 021_Recap - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: Say for instance, we have the same scenario as in the previous slide where we have three existing parts that were created already, and we need to create a replica set to monitor the pods to ensure there are a minimum of three running at all times.
- Multi-concept tags: Pods, Deployments, Observability, Platform Engineering

### Evidence 288: certified-kubernetes-application-developer/02_Core Concepts/027_Recap - Namespaces.extraction.md::E20
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 027_Recap - Namespaces.txt
- Line Context: Lines 1-1 from transcript
- Content: When the cluster is first set up, Kubernetes creates a set of pods and services for its internal purpose, such as those required by the networking solution, the DNS service, etc. to isolate these from the user and to prevent you from accidentally deleting or modifying these services, Kubernetes creates them under another namespace created at cluster startup Order named kube system.
- Multi-concept tags: Pods, Services, Networking, Architecture, Observability

### Evidence 289: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements.txt
- Line Context: Lines 1-1 from transcript
- Content: And if you look at the events using the kube control describe pod command, you will see there is an insufficient CPU.
- Multi-concept tags: Pods, Configuration, Observability, On-Prem

### Evidence 290: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E68
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements.txt
- Line Context: Lines 1-1 from transcript
- Content: So without a resource or a limit set, one pod can consume all the CPU resources on the node and prevent the second part of required resources.
- Multi-concept tags: Pods, Architecture, Observability

### Evidence 291: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E91
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements.txt
- Line Context: Lines 1-1 from transcript
- Content: And since it's made accessible to public and um, users, uh, can run any kind of workload that they want, we set limits to prevent the user from misusing the infrastructure to, let's say, perform Bitcoin mining or, um, other resource consuming activities.
- Multi-concept tags: Observability

### Evidence 292: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E107
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements.txt
- Line Context: Lines 1-1 from transcript
- Content: And without a resource or limit set, one pod can consume all the memory resources on the node and prevent the second pod of required resources.
- Multi-concept tags: Pods, Architecture, Observability

### Evidence 293: certified-kubernetes-application-developer/03_Configuration/065_Service Account.extraction.md::E10
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 03_Configuration / 065_Service Account.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, a monitoring application like Prometheus uses a service account to pull the Kubernetes API for performance metrics.
- Multi-concept tags: Services, Security-RBAC, Observability, CKA-CKAD

### Evidence 294: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: To prevent the bug from landing on the person, we spray the person with repellent spray or taint as we will call it in this lecture.
- Multi-concept tags: Scheduling, Observability

### Evidence 295: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E19
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: First, we prevent all parts from being placed on the node by placing a taint on the node.
- Multi-concept tags: Scheduling, Architecture, Observability

### Evidence 296: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E72
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Line Context: Lines 1-1 from transcript
- Content: When the Kubernetes cluster is first set up, a tent is set on the master node automatically that prevents any pods from being scheduled on this node.
- Multi-concept tags: Pods, Scheduling, Architecture, Observability

### Evidence 297: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: In this lecture we will talk about node selectors in Kubernetes.
- Multi-concept tags: Scheduling, Architecture, Observability

### Evidence 298: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E2
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: Let us start with a simple example.
- Multi-concept tags: Scheduling, Architecture, Observability, CKA-CKAD

### Evidence 299: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E3
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: You have a three node cluster of which two are smaller nodes with lower hardware resources, and one of them is a larger node configured with higher resources.
- Multi-concept tags: Scheduling, Architecture, Observability

### Evidence 300: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: You have different kinds of workloads running in your cluster.
- Multi-concept tags: Scheduling, Architecture, Observability

### Evidence 301: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: You would like to dedicate the data processing workloads that require higher horsepower to the larger node, as that is the only node that will not run out of resources in case the job demands extra resources.
- Multi-concept tags: Scheduling, Architecture, Observability

### Evidence 302: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: However, in the current default setup, any pods can go to any nodes.
- Multi-concept tags: Pods, Scheduling, Architecture, Observability

### Evidence 303: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: So pod C in this case may very well end up on nodes 2 or 3, which is not desired.
- Multi-concept tags: Pods, Scheduling, Architecture, Observability

### Evidence 304: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: To solve this, we can set a limitation on the pods so that they only run on particular nodes.
- Multi-concept tags: Pods, Scheduling, Architecture, Observability

### Evidence 305: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: There are two ways to do this.
- Multi-concept tags: Scheduling, Architecture, Observability

### Evidence 306: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E10
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: The first is using node selectors, which is the simple and easier method.
- Multi-concept tags: Scheduling, Architecture, Observability

### Evidence 307: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E11
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: For this we look at the pod definition file we created earlier.
- Multi-concept tags: Pods, Scheduling, Architecture, Observability

### Evidence 308: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E12
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: This file has a simple definition to create a pod with a data processing image.
- Multi-concept tags: Pods, Scheduling, Architecture, Observability

### Evidence 309: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: To limit this pod to run on the larger node, we add a new property called node selector to the spec section and specify the size as large.
- Multi-concept tags: Pods, Scheduling, Architecture, Observability

### Evidence 310: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: But wait a minute, where did the size large come from?
- Multi-concept tags: Scheduling, Architecture, Observability

### Evidence 311: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: And how does Kubernetes know which is the large node?
- Multi-concept tags: Scheduling, Architecture, Observability

### Evidence 312: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: The key value pair of size and large are in fact labels assigned to the nodes.
- Multi-concept tags: Scheduling, Architecture, Observability

### Evidence 313: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E17
- Type: Architecture
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: The scheduler uses these labels to match and identify the right node to place the pods on.
- Multi-concept tags: Pods, Scheduling, Architecture, Observability

### Evidence 314: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E18
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: Labels and selectors are a topic we have seen many times throughout this Kubernetes course, such as with services, replica sets and deployments.
- Multi-concept tags: Deployments, Services, Scheduling, Architecture, Observability

### Evidence 315: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E19
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: To use labels in a node selector like this, you must have first labeled your nodes prior to creating this pod.
- Multi-concept tags: Pods, Scheduling, Architecture, Observability

### Evidence 316: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: So let us go back and see how we can label the nodes to label a node.
- Multi-concept tags: Scheduling, Architecture, Observability

### Evidence 317: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E21
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: Use the command Kube cube control.
- Multi-concept tags: Scheduling, Configuration, Architecture, Observability

### Evidence 318: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: Label nodes followed by the name of the node and the label in a key value pair format.
- Multi-concept tags: Scheduling, Architecture, Observability

### Evidence 319: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: In this case it would be cube control label nodes.
- Multi-concept tags: Scheduling, Architecture, Observability

### Evidence 320: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: Node one, followed by the label in a key value format such as size equals large.
- Multi-concept tags: Scheduling, Architecture, Observability

### Evidence 321: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: Now that we have labeled the node, we can get back to creating the pod, this time with the node selector set to a size of large.
- Multi-concept tags: Pods, Scheduling, Architecture, Observability

### Evidence 322: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E26
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: When the pod is now created, it is placed on node one as desired.
- Multi-concept tags: Pods, Scheduling, Architecture, Observability

### Evidence 323: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: Node selector served our purpose, but it has limitations.
- Multi-concept tags: Scheduling, Architecture, Observability

### Evidence 324: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: We used a single label and selector to achieve our goal here.
- Multi-concept tags: Scheduling, Architecture, Observability

### Evidence 325: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: But what if our requirement is much more complex?
- Multi-concept tags: Scheduling, Architecture, Observability

### Evidence 326: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E30
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, we would like to say something like place the pod on a large or medium node or something like place the pod on any nodes that are not small.
- Multi-concept tags: Pods, Scheduling, Architecture, Observability, CKA-CKAD

### Evidence 327: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E31
- Type: Concept
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: You cannot achieve this using node selectors.
- Multi-concept tags: Scheduling, Architecture, Observability

### Evidence 328: certified-kubernetes-application-developer/03_Configuration/072_Node Selectors Logging.extraction.md::E32
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 072_Node Selectors Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: For this node affinity and anti-affinity features were introduced and we will look at that next.
- Multi-concept tags: Scheduling, Architecture, Observability

### Evidence 329: certified-kubernetes-application-developer/03_Configuration/076_Taints & Tolerations vs Node Affinity.extraction.md::E21
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 03_Configuration / 076_Taints & Tolerations vs Node Affinity.txt
- Line Context: Lines 1-1 from transcript
- Content: We first use taints and tolerations to prevent other pods from being placed on our nodes, and then we use node affinity to prevent our pods from being placed on their nodes.
- Multi-concept tags: Pods, Scheduling, Architecture, Observability

### Evidence 330: certified-kubernetes-application-developer/04_Multi-Container Pods/085_Solution – Init Containers (Optional).extraction.md::E70
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 04_Multi-Container Pods / 085_Solution – Init Containers (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So under events, I don't really see anything interesting other than we can see that it's restarting.
- Multi-concept tags: Pods, Observability

### Evidence 331: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: -: Hello, and welcome to this section.
- Multi-concept tags: Observability

### Evidence 332: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E2
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: In this section, we learn about observability in Kubernetes.
- Multi-concept tags: Observability

### Evidence 333: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: We will discuss about readiness and liveness probes, logging and monitoring concepts.
- Multi-concept tags: Observability

### Evidence 334: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: Let us start with readiness probes.
- Multi-concept tags: Observability

### Evidence 335: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: We discuss about pod lifecycle in detail in another lecture, however, as a prerequisite for this lecture, we will quickly recap a few different stages in the life cycle of a pod.
- Multi-concept tags: Pods, Observability

### Evidence 336: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: A pod has a pod status, and some conditions.
- Multi-concept tags: Pods, Observability

### Evidence 337: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: The pod status tells us where the pod is in its lifecycle.
- Multi-concept tags: Pods, Observability

### Evidence 338: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E8
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: When a pod is first created, it is in a pending state.
- Multi-concept tags: Pods, Observability, Troubleshooting

### Evidence 339: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E9
- Type: Architecture
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: This is when the scheduler tries to figure out where to place the pod.
- Multi-concept tags: Pods, Scheduling, Observability

### Evidence 340: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E10
- Type: Architecture
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: If the scheduler cannot find the node to place the pod, it remains in a pending state.
- Multi-concept tags: Pods, Scheduling, Architecture, Observability, Troubleshooting

### Evidence 341: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: To find out why it's stuck in a pending state, run the kubectl describe pod command and it will tell you exactly why.
- Multi-concept tags: Pods, Configuration, Observability, Troubleshooting, On-Prem

### Evidence 342: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: Once the pod is scheduled, it goes into a container creating status where the images required for the application are pulled and the container starts.
- Multi-concept tags: Pods, Scheduling, Observability

### Evidence 343: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: Once all the containers in a pod starts, it goes into a running state where it continues to be until the program completes successfully or is terminated.
- Multi-concept tags: Pods, Observability

### Evidence 344: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: You can see the pod status in the output of the kubectl get pods command.
- Multi-concept tags: Pods, Configuration, Observability

### Evidence 345: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: So remember, at any point in time, the pod status can only be one of these values, and only gives us a high-level summary of a pod.
- Multi-concept tags: Pods, Observability

### Evidence 346: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: However, at times, you may want additional information.
- Multi-concept tags: Observability

### Evidence 347: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: Conditions complement pod status.
- Multi-concept tags: Pods, Observability

### Evidence 348: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: It is an array of true or false values that tell us the state of a pod.
- Multi-concept tags: Pods, Observability

### Evidence 349: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: When a pod is scheduled on a node, the pod scheduled condition is set to true.
- Multi-concept tags: Pods, Scheduling, Architecture, Observability

### Evidence 350: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: When the pod is initialized, its value is set to true.
- Multi-concept tags: Pods, Observability

### Evidence 351: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E21
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: We know that a pod has multiple containers.
- Multi-concept tags: Pods, Observability

### Evidence 352: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: When all the containers in the pod are ready, the container's ready condition is set to true.
- Multi-concept tags: Pods, Observability

### Evidence 353: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And finally, the pod itself is considered to be ready.
- Multi-concept tags: Pods, Observability

### Evidence 354: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: To see the state of pod conditions, run the kubectl describe pod command and look for the conditions section.
- Multi-concept tags: Pods, Configuration, Observability, On-Prem

### Evidence 355: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: You can also see the ready state of the pod in the output of the kubectl get pods command.
- Multi-concept tags: Pods, Configuration, Observability

### Evidence 356: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And that is the condition we are interested in for this lecture.
- Multi-concept tags: Observability

### Evidence 357: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: The ready conditions indicate that the application inside the pod is running and is ready to accept user traffic.
- Multi-concept tags: Pods, Observability

### Evidence 358: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: What does that really mean?
- Multi-concept tags: Observability

### Evidence 359: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: The containers could be running different kinds of applications in them.
- Multi-concept tags: Observability

### Evidence 360: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: It could be a simple script that performs the job.
- Multi-concept tags: Observability, On-Prem

### Evidence 361: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E31
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: It could be a database service or a large web server serving front end users.
- Multi-concept tags: Services, Observability

### Evidence 362: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: The script may take a few milliseconds to get ready.
- Multi-concept tags: Observability, On-Prem

### Evidence 363: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E33
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: The database service may take a few seconds to power up.
- Multi-concept tags: Services, Observability

### Evidence 364: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: Some web servers could take several minutes to warm up.
- Multi-concept tags: Observability

### Evidence 365: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E35
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: If you try to run an instance of a Jenkins server, you will notice that it takes about 10 to 15 seconds for the server to initialize before a user can access the web UI.
- Multi-concept tags: Observability

### Evidence 366: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E36
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: Even after the web UI is initialized, it takes a few seconds for the server to warm up and be ready to serve users.
- Multi-concept tags: Observability

### Evidence 367: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E37
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: During this wait period, if you look at the state of the pod, it continues to indicate that the pod is ready, which is not very true.
- Multi-concept tags: Pods, Observability

### Evidence 368: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E38
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: So why is that happening and how does Kubernetes know whether the application inside the container is actually running or not?
- Multi-concept tags: Observability

### Evidence 369: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E39
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: But before we get into that discussion, why does it matter if the state is reported incorrectly?
- Multi-concept tags: Observability

### Evidence 370: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E40
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's look at a simple scenario where you create a pod and expose it to external users using a service.
- Multi-concept tags: Pods, Services, Observability

### Evidence 371: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: The service will route traffic to the pod immediately.
- Multi-concept tags: Pods, Services, Observability

### Evidence 372: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E42
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: The service relies on the pod's ready condition to route traffic.
- Multi-concept tags: Pods, Services, Observability

### Evidence 373: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E43
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: By default, Kubernetes assumes that as soon as the container is created, it is ready to serve user traffic.
- Multi-concept tags: Observability

### Evidence 374: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E44
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: So it sets the value after ready condition for each container to true.
- Multi-concept tags: Observability

### Evidence 375: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E45
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: But if the application within the container took longer to get ready, the service is unaware of it and sends traffic through as a container is already in a ready state, causing users to hit a pod that isn't yet running a live application.
- Multi-concept tags: Pods, Services, Observability

### Evidence 376: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E46
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: What we need here is a way to tie the ready condition to the actual state of the application inside the container.
- Multi-concept tags: Observability

### Evidence 377: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E47
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: As a developer of the application, you know better what it means for the application to be ready.
- Multi-concept tags: Observability

### Evidence 378: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E48
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: There are different ways that you can define if an application inside a container is actually ready.
- Multi-concept tags: Observability

### Evidence 379: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E49
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: You can set up different kinds of tests or probes, which is the appropriate term.
- Multi-concept tags: Observability

### Evidence 380: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E50
- Type: Architecture
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: In case of a web application, it could be when the API server is up and running.
- Multi-concept tags: Architecture, Observability

### Evidence 381: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E51
- Type: Architecture
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: So you could run an HTTP test to see if the API server responds.
- Multi-concept tags: Architecture, Observability

### Evidence 382: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E52
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: In case of a database, you may test to see if a particular TCP socket is listening.
- Multi-concept tags: Observability

### Evidence 383: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E53
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: Or you may simply execute a command within the container to run a custom script that would exit successfully if the application is ready.
- Multi-concept tags: Configuration, Observability, On-Prem

### Evidence 384: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E54
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: So how do you configure that test?
- Multi-concept tags: Observability

### Evidence 385: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E55
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: In the pod definition file, add a new field called readiness probe and use the HTTP get option.
- Multi-concept tags: Pods, Observability

### Evidence 386: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E56
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: Specify the port and the ready API.
- Multi-concept tags: Observability

### Evidence 387: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E57
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: Now when the container is created, Kubernetes does not immediately set the ready condition on the container to true.
- Multi-concept tags: Observability

### Evidence 388: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E58
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: Instead, it performs a test to see if the API responds positively.
- Multi-concept tags: Observability

### Evidence 389: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E59
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: Until then, the service does not forward any traffic to the pod as it sees that the pod is not ready.
- Multi-concept tags: Pods, Services, Observability

### Evidence 390: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E60
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: There are different ways a probe can be configured.
- Multi-concept tags: Observability

### Evidence 391: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E61
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: For HTTP, use the HTTP get option with the path and the port.
- Multi-concept tags: Observability

### Evidence 392: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E62
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: For TCP, use the TCP socket option with the port.
- Multi-concept tags: Observability

### Evidence 393: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E63
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And for executing a command, specify the exec option with the command and options in an array format.
- Multi-concept tags: Configuration, Observability

### Evidence 394: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E64
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: There are some additional options as well.
- Multi-concept tags: Observability

### Evidence 395: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E65
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: If you know that your application will take a minimum of say 10 seconds to warm up, you can add an additional delay to the probe.
- Multi-concept tags: Observability

### Evidence 396: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E66
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: If you'd like to specify how often to probe, you can do that using the period seconds option.
- Multi-concept tags: Observability

### Evidence 397: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E67
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: By default, if the application is not not ready after three attempts, the probe will stop.
- Multi-concept tags: Observability

### Evidence 398: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E68
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: If you'd like to make more attempts, use the failure threshold option.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 399: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E69
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: We will look through more options in the documentation walkthrough.
- Multi-concept tags: Observability

### Evidence 400: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E70
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: Finally, let us look at how readiness probes are useful in a multi-pod setup.
- Multi-concept tags: Pods, Observability

### Evidence 401: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E71
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: Say you have a replica set or deployment with multiple pods and a service serving traffic to all the pods.
- Multi-concept tags: Pods, Deployments, Services, Observability

### Evidence 402: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E72
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: There are two pods already serving users.
- Multi-concept tags: Pods, Observability

### Evidence 403: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E73
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: Say you were to add an additional pod and let's say the pod takes a minute to warm up, without the readiness probe configured correctly, the service would immediately start routing traffic to the new pod.
- Multi-concept tags: Pods, Services, Observability

### Evidence 404: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E74
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: That will result in service disruption to at least some of the users.
- Multi-concept tags: Services, Observability

### Evidence 405: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E75
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: Instead, if the pods were configured with the correct readiness probe, the service will continue to serve traffic only to the older pods and wait until the new pod is ready.
- Multi-concept tags: Pods, Services, Observability

### Evidence 406: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E76
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: Once ready, the traffic will be routed to the new pod as well, ensuring no users are affected.
- Multi-concept tags: Pods, Observability

### Evidence 407: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E77
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: Well, that's it for this lecture.
- Multi-concept tags: Observability

### Evidence 408: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E78
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: Head over and practice what you learned in the coding exercises section.
- Multi-concept tags: Observability

### Evidence 409: certified-kubernetes-application-developer/05_Observability/087_Liveness Probes.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 087_Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: -: Hello and welcome to this lecture.
- Multi-concept tags: Observability

### Evidence 410: certified-kubernetes-application-developer/05_Observability/087_Liveness Probes.extraction.md::E2
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 087_Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: My name is Mumshad Mannambeth, and we are learning the certified Kubernetes application developers course.
- Multi-concept tags: Observability

### Evidence 411: certified-kubernetes-application-developer/05_Observability/087_Liveness Probes.extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 087_Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: In this lecture, we will talk about liveness probes.
- Multi-concept tags: Observability

### Evidence 412: certified-kubernetes-application-developer/05_Observability/087_Liveness Probes.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 087_Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's start from the basics.
- Multi-concept tags: Observability

### Evidence 413: certified-kubernetes-application-developer/05_Observability/087_Liveness Probes.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 087_Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: You run an image of NGINX using Docker, and it starts to serve users.
- Multi-concept tags: Observability

### Evidence 414: certified-kubernetes-application-developer/05_Observability/087_Liveness Probes.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 087_Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: For some reason, the web server crashes, and the NGINX process exits.
- Multi-concept tags: Observability

### Evidence 415: certified-kubernetes-application-developer/05_Observability/087_Liveness Probes.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 087_Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: The container exits as well.
- Multi-concept tags: Observability

### Evidence 416: certified-kubernetes-application-developer/05_Observability/087_Liveness Probes.extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 087_Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And you can see the status of the container when you run the Docker ps command.
- Multi-concept tags: Configuration, Observability

### Evidence 417: certified-kubernetes-application-developer/05_Observability/087_Liveness Probes.extraction.md::E9
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 087_Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: Since Docker is not an orchestration engine, the container continues to stay dead and deny services to users until you manually create a new container.
- Multi-concept tags: Services, Observability

### Evidence 418: certified-kubernetes-application-developer/05_Observability/087_Liveness Probes.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 087_Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: Enter Kubernetes orchestration.
- Multi-concept tags: Observability

### Evidence 419: certified-kubernetes-application-developer/05_Observability/087_Liveness Probes.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 087_Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: You run the same web application with Kubernetes.
- Multi-concept tags: Observability

### Evidence 420: certified-kubernetes-application-developer/05_Observability/087_Liveness Probes.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 087_Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: Every time the application crashes, Kubernetes makes an attempt to restart the container to restore service to users.
- Multi-concept tags: Services, Observability

### Evidence 421: certified-kubernetes-application-developer/05_Observability/087_Liveness Probes.extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 087_Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: You can see the count of restarts increase in the output of kube control, get Pods command.
- Multi-concept tags: Pods, Configuration, Observability

### Evidence 422: certified-kubernetes-application-developer/05_Observability/087_Liveness Probes.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 087_Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: Now this works just fine.
- Multi-concept tags: Observability

### Evidence 423: certified-kubernetes-application-developer/05_Observability/087_Liveness Probes.extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 087_Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: However, what if the application is not really working, but the container continues to stay alive?
- Multi-concept tags: Observability

### Evidence 424: certified-kubernetes-application-developer/05_Observability/087_Liveness Probes.extraction.md::E16
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 05_Observability / 087_Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: Say for example, due to a bug in the code, the application is stuck in an infinite loop.
- Multi-concept tags: Observability, CKA-CKAD

### Evidence 425: certified-kubernetes-application-developer/05_Observability/087_Liveness Probes.extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 087_Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: As far as Kubernetes is concerned, the container is up so the application is assumed to be up.
- Multi-concept tags: Observability

### Evidence 426: certified-kubernetes-application-developer/05_Observability/087_Liveness Probes.extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 087_Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: But the users, hitting the container, are not served.
- Multi-concept tags: Observability

### Evidence 427: certified-kubernetes-application-developer/05_Observability/087_Liveness Probes.extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 087_Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: In that case, the container needs to be restarted or destroyed, and a new container is to be brought up.
- Multi-concept tags: Observability

### Evidence 428: certified-kubernetes-application-developer/05_Observability/087_Liveness Probes.extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 087_Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: That is where the liveness probe can help us.
- Multi-concept tags: Observability

### Evidence 429: certified-kubernetes-application-developer/05_Observability/087_Liveness Probes.extraction.md::E21
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 087_Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: A liveness probe can be configured on the container to periodically test whether the application within the container is actually healthy.
- Multi-concept tags: Observability

### Evidence 430: certified-kubernetes-application-developer/05_Observability/087_Liveness Probes.extraction.md::E22
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 05_Observability / 087_Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: If the test fails, the container is considered unhealthy and is destroyed and recreated.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 431: certified-kubernetes-application-developer/05_Observability/087_Liveness Probes.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 087_Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: But again, as a developer, you get to define what it means for an application to be healthy.
- Multi-concept tags: Observability

### Evidence 432: certified-kubernetes-application-developer/05_Observability/087_Liveness Probes.extraction.md::E24
- Type: Architecture
- Source: certified-kubernetes-application-developer / 05_Observability / 087_Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: In case of a web application, it could be when the API server is up and running.
- Multi-concept tags: Architecture, Observability

### Evidence 433: certified-kubernetes-application-developer/05_Observability/087_Liveness Probes.extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 087_Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: In case of database, you may test to see if a particular TCP Socket is listening, or you may simply execute a command to perform a test.
- Multi-concept tags: Configuration, Observability

### Evidence 434: certified-kubernetes-application-developer/05_Observability/087_Liveness Probes.extraction.md::E26
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 087_Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: The liveness probe is configured in the pod definition file as you did with the readiness probe.
- Multi-concept tags: Pods, Observability

### Evidence 435: certified-kubernetes-application-developer/05_Observability/087_Liveness Probes.extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 087_Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: Except here you use liveness instead of readiness.
- Multi-concept tags: Observability

### Evidence 436: certified-kubernetes-application-developer/05_Observability/087_Liveness Probes.extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 087_Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: Similar to readiness probe, you have a SCTP get option for APIs, TCP Socket for ports, and exec for commands.
- Multi-concept tags: Configuration, Observability

### Evidence 437: certified-kubernetes-application-developer/05_Observability/087_Liveness Probes.extraction.md::E29
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 05_Observability / 087_Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: As well as additional options like initial delay before the test is run, periodSeconds to define the frequency, and success and failure thresholds.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 438: certified-kubernetes-application-developer/05_Observability/087_Liveness Probes.extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 087_Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: Well, that's it for this lecture.
- Multi-concept tags: Observability

### Evidence 439: certified-kubernetes-application-developer/05_Observability/087_Liveness Probes.extraction.md::E31
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 087_Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: Head over and practice what you learn in the coding exercises section.
- Multi-concept tags: Observability

### Evidence 440: certified-kubernetes-application-developer/05_Observability/087_Liveness Probes.extraction.md::E32
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 05_Observability / 087_Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: We have some fun and challenging exercises where you will be required to configure probes as well as troubleshoot and fix issues with existing probes.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 441: certified-kubernetes-application-developer/05_Observability/087_Liveness Probes.extraction.md::E33
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 087_Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: See you in the next lecture.
- Multi-concept tags: Observability

### Evidence 442: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: -: In this video, I'm gonna walk you through these solutions for the Readiness Probe Lab.
- Multi-concept tags: Observability

### Evidence 443: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E2
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: So for the first question, it's just letting us know that an application has been deployed and to go ahead and inspect the pods and services.
- Multi-concept tags: Pods, Services, Observability

### Evidence 444: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: So if we do a kubectl get pod, we can see that there's one pod called simple-webapp-1.
- Multi-concept tags: Pods, Observability

### Evidence 445: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And if I do a kubectl get service, we can see that there's two different services.
- Multi-concept tags: Services, Observability

### Evidence 446: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E5
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: The next question is just letting us know that if we click on the web portal icon it's going to open up the application in a new tab.
- Multi-concept tags: Observability

### Evidence 447: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And so that's going to be our web app right there.
- Multi-concept tags: Observability

### Evidence 448: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: I'll hit Okay, we'll move on to the third question.
- Multi-concept tags: Observability

### Evidence 449: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And so there's been a test script provided.
- Multi-concept tags: Observability, On-Prem

### Evidence 450: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: That's going to send requests to our web application.
- Multi-concept tags: Observability

### Evidence 451: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E10
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And you can access this script by doing a ./ and then calling curl-test.sh.
- Multi-concept tags: Observability, On-Prem

### Evidence 452: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And so you can see the response that's coming from the web server.
- Multi-concept tags: Observability

### Evidence 453: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E12
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: For this next question, a new pod has been added to help scale up the application.
- Multi-concept tags: Pods, Observability

### Evidence 454: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And it's telling us to go ahead and run the script again just to see if we notice anything that's been changed.
- Multi-concept tags: Observability, On-Prem

### Evidence 455: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: So if I do a kubectl get pod, we can see that now there's two pods, Pod 1, Pod 2.
- Multi-concept tags: Pods, Observability

### Evidence 456: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E15
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And then if I run the same script again, which is by running ./curl-test.sh, okay, so everything looks the same.
- Multi-concept tags: Observability, On-Prem

### Evidence 457: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E16
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: But then now you can see that there's a couple of failures.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 458: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: I'm gonna stop this, I'm gonna hit Okay.
- Multi-concept tags: Observability

### Evidence 459: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E18
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: Next question is just telling us to notice the fact that, you know, there have been some failures.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 460: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: So if you actually take a look at the output, it looks like anytime the request goes to webapp-1 everything is working.
- Multi-concept tags: Observability

### Evidence 461: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: But when things go to webapp-2 for some reason it's failing.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 462: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E21
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And so to address this, the next question is telling us to set up a readiness probe for webapp two so that we don't send a request to it when it's not ready.
- Multi-concept tags: Observability

### Evidence 463: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And so the requirements are we have to keep the same pod name, same image name.
- Multi-concept tags: Pods, Observability

### Evidence 464: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: But we have to send a HTTP GET readiness probe to this /ready path on port 8080.
- Multi-concept tags: Observability

### Evidence 465: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's get that done.
- Multi-concept tags: Observability

### Evidence 466: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: What I'm gonna do is I'm gonna do a kubectl get pod.
- Multi-concept tags: Pods, Observability

### Evidence 467: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E26
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And then I'm gonna do a kubectl get pod simple-webapp-2.
- Multi-concept tags: Pods, Observability

### Evidence 468: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: I'm gonna do -o dash YAML.
- Multi-concept tags: Configuration, Observability

### Evidence 469: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: So this is going to get the configurations currently so that we can use the same configs.
- Multi-concept tags: Observability

### Evidence 470: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: I'm just gonna pipe it to a file.
- Multi-concept tags: Observability

### Evidence 471: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And I'll call this webapp2.yaml.
- Multi-concept tags: Configuration, Observability

### Evidence 472: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E31
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And then I'm gonna do a kubectl delete pod simple-webapp-2 'cause we're gonna redeploy it.
- Multi-concept tags: Pods, Observability

### Evidence 473: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E32
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And once that's deleted I'm gonna open up that new YAML file that we created.
- Multi-concept tags: Configuration, Observability

### Evidence 474: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E33
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And we wanna go under Spec and then Containers.
- Multi-concept tags: Observability

### Evidence 475: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E34
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And then we can add the configuration anywhere there.
- Multi-concept tags: Observability

### Evidence 476: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E35
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: I'm just gonna put this under Ports.
- Multi-concept tags: Observability

### Evidence 477: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E36
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: It doesn't actually matter where as long as it's under the container.
- Multi-concept tags: Observability

### Evidence 478: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E37
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And we wanna add a readiness probe.
- Multi-concept tags: Observability

### Evidence 479: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E38
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And it's gonna be an HTTP GET.
- Multi-concept tags: Observability

### Evidence 480: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E39
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: The path is gonna be /ready, and the port is gonna be 8080.
- Multi-concept tags: Observability

### Evidence 481: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E40
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And that should be all that we have to do for the readiness probe.
- Multi-concept tags: Observability

### Evidence 482: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E41
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: So I'll save that.
- Multi-concept tags: Observability

### Evidence 483: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E42
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And we're going to then deploy this by doing a kubectl apply -f and then webapp2.yaml.
- Multi-concept tags: Configuration, Observability

### Evidence 484: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E43
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And so after that's been deployed we'll run the validation.
- Multi-concept tags: Observability

### Evidence 485: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E44
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And it looks like it's successful.
- Multi-concept tags: Observability

### Evidence 486: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E45
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: So we'll go to the next question.
- Multi-concept tags: Observability

### Evidence 487: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E46
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: The next question is just telling us to run the script again.
- Multi-concept tags: Observability, On-Prem

### Evidence 488: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E47
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: So I'm gonna run the curl-test.sh.
- Multi-concept tags: Observability

### Evidence 489: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E48
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And we can see that the script is working.
- Multi-concept tags: Observability, On-Prem

### Evidence 490: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E49
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: But all requests are going to the same exact pod.
- Multi-concept tags: Pods, Observability

### Evidence 491: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E50
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: We can see all of them are going to webapp-1.
- Multi-concept tags: Observability

### Evidence 492: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E51
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: We'll hit Okay, we'll go to the next question.
- Multi-concept tags: Observability

### Evidence 493: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E52
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And so the reason why all the requests are going to webapp-1 is because the pod isn't ready.
- Multi-concept tags: Pods, Observability

### Evidence 494: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E53
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: Pod 2 isn't ready, so let's wait for Pod 2 to get ready.
- Multi-concept tags: Pods, Observability

### Evidence 495: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E54
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And then we're gonna run the script again.
- Multi-concept tags: Observability, On-Prem

### Evidence 496: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E55
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And we should see that traffic should be load balanced between the two pods.
- Multi-concept tags: Pods, Observability

### Evidence 497: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E56
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: All right, and so now we can see that traffic is successfully getting load balanced between the two pods.
- Multi-concept tags: Pods, Observability

### Evidence 498: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E57
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: The next question provides us a script that's going to crash one of our pods so that we can take a look and see what happens when one of our pods crashes.
- Multi-concept tags: Pods, Observability, On-Prem

### Evidence 499: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E58
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: So we can run the script by doing a ./crash-app.sh.
- Multi-concept tags: Observability, On-Prem

### Evidence 500: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E59
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And so this is going to crash simple-webapp-2.
- Multi-concept tags: Observability

### Evidence 501: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E60
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And if we run the same curl-test.sh command, you could see traffic is getting load balanced to one at the moment.
- Multi-concept tags: Configuration, Observability

### Evidence 502: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E61
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And if I do a kubectl get pod, you can see that it did in fact restart web app two.
- Multi-concept tags: Pods, Observability

### Evidence 503: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E62
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And we're just waiting for this application to be in a ready state.
- Multi-concept tags: Observability

### Evidence 504: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E63
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: So because it crashed we're automatically going to restart it.
- Multi-concept tags: Observability

### Evidence 505: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E64
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: So the answer to this question is the container inside the pod was restarted.
- Multi-concept tags: Pods, Observability

### Evidence 506: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E65
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And the next question is just telling us that, you know, when the application has gone down, web app two specifically, all the traffic is gonna be redirected to web app one.
- Multi-concept tags: Observability

### Evidence 507: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E66
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And we saw that when we ran the script all the requests go to web app one.
- Multi-concept tags: Observability, On-Prem

### Evidence 508: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E67
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: The next question is telling us to run a freeze-app.sh script, which is actually going to cause one of the pods to freeze so that we can inspect and see what happens.
- Multi-concept tags: Pods, Observability, On-Prem

### Evidence 509: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E68
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: So I'm gonna do a ./freeze-app.
- Multi-concept tags: Observability

### Evidence 510: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E69
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: This is going to freeze one of the pods.
- Multi-concept tags: Pods, Observability

### Evidence 511: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E70
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And then we're gonna run the same curl script.
- Multi-concept tags: Observability, On-Prem

### Evidence 512: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E71
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's see what happens.
- Multi-concept tags: Observability

### Evidence 513: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E72
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And so we can see that there's several failures as well as a couple of successes.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 514: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E73
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: So once again, it looks like we froze Pod 2.
- Multi-concept tags: Pods, Observability

### Evidence 515: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E74
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And any of the requests that go to Pod 1 is okay.
- Multi-concept tags: Pods, Observability

### Evidence 516: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E75
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: But anything that goes to Pod 2 is gonna fail.
- Multi-concept tags: Pods, Observability, Troubleshooting

### Evidence 517: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E76
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: So the correct answer is gonna be new users are in fact impacted.
- Multi-concept tags: Observability

### Evidence 518: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E77
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: For the next question, we need to update both pods to include a liveness probe in the scenarios where one of them freezes.
- Multi-concept tags: Pods, Observability

### Evidence 519: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E78
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: So let's first get the configuration for both pods.
- Multi-concept tags: Pods, Observability

### Evidence 520: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E79
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And I'm gonna do a kubectl get pod -o yaml.
- Multi-concept tags: Pods, Configuration, Observability

### Evidence 521: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E80
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And I'll call this webapp.yaml.
- Multi-concept tags: Configuration, Observability

### Evidence 522: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E81
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And then I'm gonna do a kubectl delete pod.
- Multi-concept tags: Pods, Observability

### Evidence 523: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E82
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: Instead of going one by one, I'm just gonna do a --all.
- Multi-concept tags: Observability

### Evidence 524: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E83
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And after those are deleted we'll open up the webapp.yaml file.
- Multi-concept tags: Configuration, Observability

### Evidence 525: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E84
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And now what we wanna do is we wanna add a liveness probe.
- Multi-concept tags: Observability

### Evidence 526: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E85
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: So we're under web app one.
- Multi-concept tags: Observability

### Evidence 527: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E86
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And so I'm gonna go just find a place under the container section.
- Multi-concept tags: Observability

### Evidence 528: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E87
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And I'm gonna add a liveness probe.
- Multi-concept tags: Observability

### Evidence 529: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E88
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And this is going to be an HTTP GET.
- Multi-concept tags: Observability

### Evidence 530: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E89
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And the path is gonna be /live.
- Multi-concept tags: Observability

### Evidence 531: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E90
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And the port is gonna be 8080.
- Multi-concept tags: Observability

### Evidence 532: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E91
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: Then we're gonna set the period seconds to be one and the initial delay seconds to be 80.
- Multi-concept tags: Observability

### Evidence 533: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E92
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And what I'm gonna do is I'm just gonna copy that for now.
- Multi-concept tags: Observability

### Evidence 534: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E93
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And we can paste this into web app two as well.
- Multi-concept tags: Observability

### Evidence 535: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E94
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: So we'll scroll down to web app two.
- Multi-concept tags: Observability

### Evidence 536: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E95
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: So here we're at web app two.
- Multi-concept tags: Observability

### Evidence 537: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E96
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And we're gonna go under Container.
- Multi-concept tags: Observability

### Evidence 538: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E97
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And I'm gonna just put this in the same section, so under Ports.
- Multi-concept tags: Observability

### Evidence 539: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E98
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And so we've got that added in there.
- Multi-concept tags: Observability

### Evidence 540: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E99
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And so now I'll save this.
- Multi-concept tags: Observability

### Evidence 541: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E100
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, we've got no pods running.
- Multi-concept tags: Pods, Observability

### Evidence 542: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E101
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And I'm gonna do a kubectl apply -f webapp.yaml.
- Multi-concept tags: Configuration, Observability

### Evidence 543: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E102
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And so let's run the validation now.
- Multi-concept tags: Observability

### Evidence 544: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E103
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And everything passed, so we'll go to the next question.
- Multi-concept tags: Observability

### Evidence 545: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E104
- Type: Comparison
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: For the next question it's telling us to run the freeze script so we can freeze one of the pods and then run the curl test again to see if there's any difference in impact.
- Multi-concept tags: Pods, Observability, On-Prem

### Evidence 546: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E105
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: I'm gonna run the freeze script again.
- Multi-concept tags: Observability, On-Prem

### Evidence 547: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E106
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: So this is gonna freeze one of the pods.
- Multi-concept tags: Pods, Observability

### Evidence 548: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E107
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And so if we do a kubectl get pod now, we can see that simple web app two was in fact restarted.
- Multi-concept tags: Pods, Observability

### Evidence 549: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E108
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: We see one restart that happened 93 seconds ago.
- Multi-concept tags: Observability

### Evidence 550: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E109
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And now if I run the curl script you see that there's no loss.
- Multi-concept tags: Observability, On-Prem

### Evidence 551: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E110
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Line Context: Lines 1-1 from transcript
- Content: And so that's going to wrap up the Readiness Probe Lab.
- Multi-concept tags: Observability

### Evidence 552: certified-kubernetes-application-developer/05_Observability/090_Logging.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 090_Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: In this lecture we will talk about various logging mechanisms in Kubernetes.
- Multi-concept tags: Observability

### Evidence 553: certified-kubernetes-application-developer/05_Observability/090_Logging.extraction.md::E2
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 090_Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: Let us start with logging in Docker.
- Multi-concept tags: Observability

### Evidence 554: certified-kubernetes-application-developer/05_Observability/090_Logging.extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 090_Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: I run a Docker container called Event Simulator, and all that it does is generate random events simulating a web server.
- Multi-concept tags: Observability

### Evidence 555: certified-kubernetes-application-developer/05_Observability/090_Logging.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 090_Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: These are events streamed to the standard output by the application.
- Multi-concept tags: Observability

### Evidence 556: certified-kubernetes-application-developer/05_Observability/090_Logging.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 090_Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: Now, if I were to run the Docker container in the background in a detached mode using the dash D option, I wouldn't see the logs.
- Multi-concept tags: Observability

### Evidence 557: certified-kubernetes-application-developer/05_Observability/090_Logging.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 090_Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: If I wanted to view the logs, I could use the docker logs command followed by the container id.
- Multi-concept tags: Configuration, Observability

### Evidence 558: certified-kubernetes-application-developer/05_Observability/090_Logging.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 090_Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: The dash f option helps us see the live log trail.
- Multi-concept tags: Observability

### Evidence 559: certified-kubernetes-application-developer/05_Observability/090_Logging.extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 090_Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: Now back to Kubernetes.
- Multi-concept tags: Observability

### Evidence 560: certified-kubernetes-application-developer/05_Observability/090_Logging.extraction.md::E9
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 090_Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: We create a pod with the same Docker image using the Pod definition file.
- Multi-concept tags: Pods, Observability

### Evidence 561: certified-kubernetes-application-developer/05_Observability/090_Logging.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 090_Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: Once the pod is running, we can view the logs using the kube control logs command with the pod name.
- Multi-concept tags: Pods, Configuration, Observability

### Evidence 562: certified-kubernetes-application-developer/05_Observability/090_Logging.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 090_Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: Use the dash f option to stream the logs live.
- Multi-concept tags: Observability

### Evidence 563: certified-kubernetes-application-developer/05_Observability/090_Logging.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 090_Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: Just like the docker command.
- Multi-concept tags: Configuration, Observability

### Evidence 564: certified-kubernetes-application-developer/05_Observability/090_Logging.extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 090_Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: Now these logs are specific to the container running inside the pod.
- Multi-concept tags: Pods, Observability

### Evidence 565: certified-kubernetes-application-developer/05_Observability/090_Logging.extraction.md::E14
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 05_Observability / 090_Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: As we learned before, Kubernetes pods can have multiple Docker containers in them.
- Multi-concept tags: Pods, Observability

### Evidence 566: certified-kubernetes-application-developer/05_Observability/090_Logging.extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 090_Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: In this case, I modify my Pod definition file to include an additional container called image processor.
- Multi-concept tags: Pods, Observability

### Evidence 567: certified-kubernetes-application-developer/05_Observability/090_Logging.extraction.md::E16
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 090_Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: If you run the kube control logs command now with the pod name, which containers logs would it show?
- Multi-concept tags: Pods, Configuration, Observability

### Evidence 568: certified-kubernetes-application-developer/05_Observability/090_Logging.extraction.md::E17
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 05_Observability / 090_Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: If there are multiple containers within a pod, you must specify the name of the container explicitly in the command.
- Multi-concept tags: Pods, Configuration, Observability

### Evidence 569: certified-kubernetes-application-developer/05_Observability/090_Logging.extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 090_Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: Otherwise it would fail asking you to specify a name.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 570: certified-kubernetes-application-developer/05_Observability/090_Logging.extraction.md::E19
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 090_Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: In this case, I will specify the name of the first container event simulator, and that prints the relevant log messages.
- Multi-concept tags: Observability

### Evidence 571: certified-kubernetes-application-developer/05_Observability/090_Logging.extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 090_Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: Now that is the simple logging functionality implemented within Kubernetes, and that is all that an application developer really needs to know to get started with Kubernetes.
- Multi-concept tags: Observability

### Evidence 572: certified-kubernetes-application-developer/05_Observability/090_Logging.extraction.md::E21
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 05_Observability / 090_Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: And that is all you really need to know as part of the certification program.
- Multi-concept tags: Observability, CKA-CKAD

### Evidence 573: certified-kubernetes-application-developer/05_Observability/090_Logging.extraction.md::E22
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 090_Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: However, in the next lecture, we will see more about some advanced logging configuration and third party support for logging in Kubernetes.
- Multi-concept tags: Observability

### Evidence 574: certified-kubernetes-application-developer/05_Observability/090_Logging.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 090_Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: We also have a nice demo that shows how a popular logging framework is integrated with Kubernetes.
- Multi-concept tags: Observability

### Evidence 575: certified-kubernetes-application-developer/05_Observability/090_Logging.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 090_Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: Well, that's it for this lecture.
- Multi-concept tags: Observability

### Evidence 576: certified-kubernetes-application-developer/05_Observability/090_Logging.extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 090_Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: Head over to the Coding exercises section and practice working with logs.
- Multi-concept tags: Observability

### Evidence 577: certified-kubernetes-application-developer/05_Observability/090_Logging.extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 090_Logging.txt
- Line Context: Lines 1-1 from transcript
- Content: Thank you.
- Multi-concept tags: Observability

### Evidence 578: certified-kubernetes-application-developer/05_Observability/092_Solution - Logging (optional).extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 092_Solution - Logging (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Instructor: Let us now go through the lab for managing application logs.
- Multi-concept tags: Observability

### Evidence 579: certified-kubernetes-application-developer/05_Observability/092_Solution - Logging (optional).extraction.md::E2
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 092_Solution - Logging (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we'll go through and review a few applications and then how to review the logs of these applications and get useful information.
- Multi-concept tags: Observability

### Evidence 580: certified-kubernetes-application-developer/05_Observability/092_Solution - Logging (optional).extraction.md::E3
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 092_Solution - Logging (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Right, so we've deployed a pod hosting an application inspected and wait for it to start.
- Multi-concept tags: Pods, Observability

### Evidence 581: certified-kubernetes-application-developer/05_Observability/092_Solution - Logging (optional).extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 092_Solution - Logging (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So it's the kubectl pods and we see that it's running.
- Multi-concept tags: Pods, Observability

### Evidence 582: certified-kubernetes-application-developer/05_Observability/092_Solution - Logging (optional).extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 092_Solution - Logging (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Yeah, let's click on okay.
- Multi-concept tags: Observability

### Evidence 583: certified-kubernetes-application-developer/05_Observability/092_Solution - Logging (optional).extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 092_Solution - Logging (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now, a user, user five has expressed concerns accessing the application.
- Multi-concept tags: Observability

### Evidence 584: certified-kubernetes-application-developer/05_Observability/092_Solution - Logging (optional).extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 092_Solution - Logging (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Identify the cause and inspect the logs.
- Multi-concept tags: Observability

### Evidence 585: certified-kubernetes-application-developer/05_Observability/092_Solution - Logging (optional).extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 092_Solution - Logging (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's take a look... at the logs.
- Multi-concept tags: Observability

### Evidence 586: certified-kubernetes-application-developer/05_Observability/092_Solution - Logging (optional).extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 092_Solution - Logging (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: This application.
- Multi-concept tags: Observability

### Evidence 587: certified-kubernetes-application-developer/05_Observability/092_Solution - Logging (optional).extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 092_Solution - Logging (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that there are, logs here and it says, user five.
- Multi-concept tags: Observability

### Evidence 588: certified-kubernetes-application-developer/05_Observability/092_Solution - Logging (optional).extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 092_Solution - Logging (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So user five, that's user five.
- Multi-concept tags: Observability

### Evidence 589: certified-kubernetes-application-developer/05_Observability/092_Solution - Logging (optional).extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 092_Solution - Logging (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that the, the cause is the the user failed to login as the account is locked due to too many failed attempts.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 590: certified-kubernetes-application-developer/05_Observability/092_Solution - Logging (optional).extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 092_Solution - Logging (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So it's account logged due to many failed attempts.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 591: certified-kubernetes-application-developer/05_Observability/092_Solution - Logging (optional).extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 092_Solution - Logging (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: That's the correct answer.
- Multi-concept tags: Observability

### Evidence 592: certified-kubernetes-application-developer/05_Observability/092_Solution - Logging (optional).extraction.md::E15
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 092_Solution - Logging (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, the next one is, now have a new application deployed as web app two.
- Multi-concept tags: Observability

### Evidence 593: certified-kubernetes-application-developer/05_Observability/092_Solution - Logging (optional).extraction.md::E16
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 05_Observability / 092_Solution - Logging (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And if you see a user is reporting issues while trying to purchase an item, identify the user and the cause of the issue, inspect the logs of the web app.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 594: certified-kubernetes-application-developer/05_Observability/092_Solution - Logging (optional).extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 092_Solution - Logging (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's look at the logs.
- Multi-concept tags: Observability

### Evidence 595: certified-kubernetes-application-developer/05_Observability/092_Solution - Logging (optional).extraction.md::E18
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 092_Solution - Logging (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Logs again.
- Multi-concept tags: Observability

### Evidence 596: certified-kubernetes-application-developer/05_Observability/092_Solution - Logging (optional).extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 092_Solution - Logging (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Now it says a container name must be specified for the pod web app two.
- Multi-concept tags: Pods, Observability

### Evidence 597: certified-kubernetes-application-developer/05_Observability/092_Solution - Logging (optional).extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 092_Solution - Logging (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So this is because if you look at this, this web application has two containers and they're ready.
- Multi-concept tags: Observability

### Evidence 598: certified-kubernetes-application-developer/05_Observability/092_Solution - Logging (optional).extraction.md::E21
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 092_Solution - Logging (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So if, if there are two containers, you must specify which containers logs that is it, that we wanna see.
- Multi-concept tags: Observability

### Evidence 599: certified-kubernetes-application-developer/05_Observability/092_Solution - Logging (optional).extraction.md::E22
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 092_Solution - Logging (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So there's a simple web app and there's a db.
- Multi-concept tags: Observability

### Evidence 600: certified-kubernetes-application-developer/05_Observability/092_Solution - Logging (optional).extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 092_Solution - Logging (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're looking at the web application.
- Multi-concept tags: Observability

### Evidence 601: certified-kubernetes-application-developer/05_Observability/092_Solution - Logging (optional).extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 092_Solution - Logging (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we'll just specify web app and we can see the logs.
- Multi-concept tags: Observability

### Evidence 602: certified-kubernetes-application-developer/05_Observability/092_Solution - Logging (optional).extraction.md::E25
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 05_Observability / 092_Solution - Logging (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And the question is a user is reporting issues while trying to purchase an item.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 603: certified-kubernetes-application-developer/05_Observability/092_Solution - Logging (optional).extraction.md::E26
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 05_Observability / 092_Solution - Logging (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we've gotta identify the user and the cause of the issue.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 604: certified-kubernetes-application-developer/05_Observability/092_Solution - Logging (optional).extraction.md::E27
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 05_Observability / 092_Solution - Logging (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So if you look at this, these are all normal events, but these are warnings.
- Multi-concept tags: Observability

### Evidence 605: certified-kubernetes-application-developer/05_Observability/092_Solution - Logging (optional).extraction.md::E28
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 05_Observability / 092_Solution - Logging (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's look at the warnings.
- Multi-concept tags: Observability

### Evidence 606: certified-kubernetes-application-developer/05_Observability/092_Solution - Logging (optional).extraction.md::E29
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 05_Observability / 092_Solution - Logging (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So user five, failed to log in, that's not the issue here.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 607: certified-kubernetes-application-developer/05_Observability/092_Solution - Logging (optional).extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 092_Solution - Logging (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: This one says user 30 order, order failed as item is out of stock.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 608: certified-kubernetes-application-developer/05_Observability/092_Solution - Logging (optional).extraction.md::E31
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 05_Observability / 092_Solution - Logging (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that seems to be, and that's those are the only two issues.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 609: certified-kubernetes-application-developer/05_Observability/092_Solution - Logging (optional).extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 092_Solution - Logging (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So this, this seems to be the correct one.
- Multi-concept tags: Observability

### Evidence 610: certified-kubernetes-application-developer/05_Observability/092_Solution - Logging (optional).extraction.md::E33
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 092_Solution - Logging (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: It's user 30 and item out of stock.
- Multi-concept tags: Observability

### Evidence 611: certified-kubernetes-application-developer/05_Observability/092_Solution - Logging (optional).extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 092_Solution - Logging (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so that's a quick lab for viewing logs of an application.
- Multi-concept tags: Observability

### Evidence 612: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: In this lecture we talk about monitoring a Kubernetes cluster.
- Multi-concept tags: Architecture, Observability, Troubleshooting

### Evidence 613: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E2
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: So how do you monitor resource consumption on Kubernetes?
- Multi-concept tags: Observability, Troubleshooting

### Evidence 614: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E3
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: Or more importantly, what would you like to monitor?
- Multi-concept tags: Observability, Troubleshooting

### Evidence 615: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: I'd like to know node level metrics, such as the number of nodes in the cluster, how many of them are healthy, as well as performance metrics such as CPU, memory, network, and disk utilization, as well as pod level metrics such as the number of pods and the performance metrics of each pod, such as CPU and memory consumption on them.
- Multi-concept tags: Pods, Networking, Architecture, Observability, Troubleshooting

### Evidence 616: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: So we need a solution that will monitor these metrics, store them, and provide analytics around this data.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 617: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: As of this recording, Kubernetes does not come with a full featured built in monitoring solution.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 618: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: However, there are a number of open source solutions available today, such as Metrics Server, Prometheus, Elastic Stack, and proprietary solutions like Datadog and Dynatrace.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 619: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: Hipster was one of the original projects that enabled monitoring and analysis features for Kubernetes.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 620: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E9
- Type: Architecture
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: You will see a lot of reference online when you look for reference architectures on monitoring Kubernetes.
- Multi-concept tags: Architecture, Observability, Troubleshooting

### Evidence 621: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E10
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: However, hipster is now deprecated and a slimmed down version was formed, known as the Metrics Server.
- Multi-concept tags: Observability, Troubleshooting, Platform Engineering

### Evidence 622: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: You can have one metric server per Kubernetes cluster.
- Multi-concept tags: Architecture, Observability, Troubleshooting

### Evidence 623: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: The metric server retrieves metrics from each of the Kubernetes nodes and pods, aggregates them, and stores them in memory.
- Multi-concept tags: Pods, Architecture, Observability, Troubleshooting

### Evidence 624: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E13
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: Note that the metric server is only an in-memory monitoring solution and does not store the metrics on the disk, and as a result, you cannot see historical performance data.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 625: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: For that, you must rely on one of the advanced monitoring solutions we talked about earlier in this lecture.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 626: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: So how are the metrics generated for the pods on these nodes?
- Multi-concept tags: Pods, Architecture, Observability, Troubleshooting

### Evidence 627: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E16
- Type: Architecture
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: Kubernetes runs an agent on each node known as the Kubelet, which is responsible for receiving instructions from the Kubernetes API, master server, and running pods on the nodes.
- Multi-concept tags: Pods, Architecture, Observability, Troubleshooting

### Evidence 628: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E17
- Type: Architecture
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: The Kubelet also contains a subcomponent known as the Sea Advisor or Container Advisor.
- Multi-concept tags: Architecture, Observability, Troubleshooting

### Evidence 629: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E18
- Type: Architecture
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: Sea advisor is responsible for retrieving performance metrics from pods and exposing them through Kubelet API to make the metrics available for the metrics server.
- Multi-concept tags: Pods, Architecture, Observability, Troubleshooting

### Evidence 630: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: If you're using minikube for your local cluster, run the command minikube add ons.
- Multi-concept tags: Configuration, Architecture, Observability, Troubleshooting, On-Prem

### Evidence 631: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E20
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: Enable metrics dash server for all other environments.
- Multi-concept tags: Configuration, Observability, Troubleshooting

### Evidence 632: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E21
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: Deploy the metrics server by cloning the metric server deployment files from the GitHub repository, and then deploying the required components using the kube control create command.
- Multi-concept tags: Deployments, Configuration, Observability, Troubleshooting

### Evidence 633: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E22
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: This command deploys a set of pods, services and roles to enable metric server to poll for performance metrics from the nodes in the cluster.
- Multi-concept tags: Pods, Services, Security-RBAC, Configuration, Architecture, Observability, Troubleshooting

### Evidence 634: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E23
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: Once deployed, give the metrics server some time to collect and process data.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 635: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: Once processed, cluster performance can be viewed by running the command kube control top node.
- Multi-concept tags: Configuration, Architecture, Observability, Troubleshooting

### Evidence 636: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: This provides the CPU and memory consumption of each of the nodes.
- Multi-concept tags: Architecture, Observability, Troubleshooting

### Evidence 637: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: As you can see, 8% of the CPU on my master node is consumed, which is about 166 milli cores.
- Multi-concept tags: Architecture, Observability, Troubleshooting

### Evidence 638: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: Use the kube control top pod command to view performance metrics of pods in Kubernetes.
- Multi-concept tags: Pods, Configuration, Observability, Troubleshooting

### Evidence 639: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: Well, that's it for this lecture.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 640: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: Head over to the Coding Exercises section and practice viewing performance metrics on the Kubernetes cluster.
- Multi-concept tags: Architecture, Observability, Troubleshooting

### Evidence 641: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E30
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Line Context: Lines 1-1 from transcript
- Content: Thank you.
- Multi-concept tags: Observability, Troubleshooting

### Evidence 642: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E1
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: -: Okay.
- Multi-concept tags: Observability

### Evidence 643: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E2
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: In this lab we get familiar with the, um, monitoring cluster components.
- Multi-concept tags: Architecture, Observability

### Evidence 644: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E3
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, the first, um, question is we have deployed a few pods running workloads, so inspect them.
- Multi-concept tags: Pods, Observability

### Evidence 645: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E4
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's do a Kubectl pods command.
- Multi-concept tags: Pods, Configuration, Observability

### Evidence 646: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E5
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And we see that there are indeed three pods, elephant, lion and rabbit.
- Multi-concept tags: Pods, Observability

### Evidence 647: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And they have, they're all in, in a running state.
- Multi-concept tags: Observability

### Evidence 648: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E7
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, let's go ahead and what we need to do is monitor the resources consumed by each of these pods.
- Multi-concept tags: Pods, Observability

### Evidence 649: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E8
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And, for that, we need to deploy the metric server.
- Multi-concept tags: Observability

### Evidence 650: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And, and, for this, uh, we have a Git-repo with the settings for the metric server, uh, that will work for our labs.
- Multi-concept tags: Observability

### Evidence 651: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, we're just going to use that.
- Multi-concept tags: Observability

### Evidence 652: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: But, if you're, if you're trying this in your own environment or in, um, for a production environment.
- Multi-concept tags: Configuration, Observability

### Evidence 653: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E12
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So remember, do not use this for production use cases because there are changes that are in here and that are done just to make this work with this particular lab exercise.
- Multi-concept tags: Observability

### Evidence 654: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E13
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And just to make it easy for, for us to deploy it.
- Multi-concept tags: Observability

### Evidence 655: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E14
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So do not use this for a production use case.
- Multi-concept tags: Observability

### Evidence 656: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E15
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Always remember to refer to the official documentation on the metric server.
- Multi-concept tags: Observability

### Evidence 657: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E16
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: To, to deploy one, one in your environment.
- Multi-concept tags: Configuration, Observability

### Evidence 658: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So let's wait for, okay, so this is cloned.
- Multi-concept tags: Observability

### Evidence 659: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E18
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And if you look at this, you have you have the files here that are required to deploy the metric server.
- Multi-concept tags: Observability

### Evidence 660: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E19
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Let's go ahead.
- Multi-concept tags: Observability

### Evidence 661: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E20
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so the next step is to deploy the metric server by creating this component.
- Multi-concept tags: Observability

### Evidence 662: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E21
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we're just going to do a Kubectl create -F dot.
- Multi-concept tags: Observability

### Evidence 663: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E22
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And that creates all, all of the objects required to deploy the metric server.
- Multi-concept tags: Observability

### Evidence 664: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E23
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, let's go next.
- Multi-concept tags: Observability

### Evidence 665: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And at times, it might take a few minutes for the metric servers to start gathering and reporting data.
- Multi-concept tags: Observability

### Evidence 666: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And so if you do Kubectl up node.
- Multi-concept tags: Architecture, Observability

### Evidence 667: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E26
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Yep, it seems to be working already.
- Multi-concept tags: Observability

### Evidence 668: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E27
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So yes, that's, that's working now.
- Multi-concept tags: Observability

### Evidence 669: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E28
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So we can, we can proceed.
- Multi-concept tags: Observability

### Evidence 670: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E29
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay.
- Multi-concept tags: Observability

### Evidence 671: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E30
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: The next question is to identify the node that consumes the most CPU.
- Multi-concept tags: Architecture, Observability

### Evidence 672: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E31
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So here you can see two nodes, and the CPU consumption of, of the two.
- Multi-concept tags: Architecture, Observability

### Evidence 673: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E32
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, node zero one has 57 millicores and the control plane consumes about 470 millicores.
- Multi-concept tags: Architecture, Observability

### Evidence 674: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E33
- Type: Comparison
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And if you look at it, the percentage is just 1%, but,but still, you can see there's a difference between the two.
- Multi-concept tags: Observability

### Evidence 675: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E34
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And of course that's because the control plane has all the control plane components running on it.
- Multi-concept tags: Architecture, Observability

### Evidence 676: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E35
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So to answer this question the most CPU consumption is by the control plane.
- Multi-concept tags: Architecture, Observability

### Evidence 677: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E36
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, let's select that.
- Multi-concept tags: Observability

### Evidence 678: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E37
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: The next one is to identify the node that consumes the most memory.
- Multi-concept tags: Architecture, Observability

### Evidence 679: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E38
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: If you look at the memory consumption here.
- Multi-concept tags: Observability

### Evidence 680: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E39
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Again, we know we can see that the control plane consumes most memory.
- Multi-concept tags: Architecture, Observability

### Evidence 681: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E40
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, The answer to this is control plane, again.
- Multi-concept tags: Architecture, Observability

### Evidence 682: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E41
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Um, the next question is to identify the pod that consumes the most memory.
- Multi-concept tags: Pods, Observability

### Evidence 683: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E42
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, the pod this time.
- Multi-concept tags: Pods, Observability

### Evidence 684: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E43
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So you can get that by running the Kubectl top pod command.
- Multi-concept tags: Pods, Configuration, Observability

### Evidence 685: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E44
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And here you can see the memory consumption and the CPU consumption.
- Multi-concept tags: Observability

### Evidence 686: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E45
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: If you look at the memory consumption you can see that it's rabbit.
- Multi-concept tags: Observability

### Evidence 687: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E46
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Rabbit consumes the most memory.
- Multi-concept tags: Observability

### Evidence 688: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E47
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So that's um, the answer to this, is rabbit.
- Multi-concept tags: Observability

### Evidence 689: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E48
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: And the next question is to identify the pod that consumes the least CPU.
- Multi-concept tags: Pods, Observability

### Evidence 690: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E49
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, here you can see it's lion.
- Multi-concept tags: Observability

### Evidence 691: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E50
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: This consumes one millicore of CPU.
- Multi-concept tags: Observability

### Evidence 692: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E51
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So, select lion and that should be it.
- Multi-concept tags: Observability

### Evidence 693: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E52
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: So basically, that's a quick introduction to deploying the metrics server and also, just, using the commands to look at its reporting and identify basic information.
- Multi-concept tags: Configuration, Observability

### Evidence 694: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E53
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Right.
- Multi-concept tags: Observability

### Evidence 695: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E54
- Type: Concept
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Thank you.
- Multi-concept tags: Observability

### Evidence 696: certified-kubernetes-application-developer/06_POD Design/099_Rolling Updates & Rollbacks in Deployments.extraction.md::E33
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 06_POD Design / 099_Rolling Updates & Rollbacks in Deployments.txt
- Line Context: Lines 1-1 from transcript
- Content: The events indicate that the old replica set was scaled down to zero first, and then the new replica sets scaled up to five.
- Multi-concept tags: Pods, Deployments, Observability

### Evidence 697: certified-kubernetes-application-developer/06_POD Design/110_Solution - Jobs and Cronjobs (optional).extraction.md::E41
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 06_POD Design / 110_Solution - Jobs and Cronjobs (optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, then it's just telling us, monitor and wait for the job to succeed.
- Multi-concept tags: Pods, Observability

### Evidence 698: certified-kubernetes-application-developer/07_Services & Networking/111_Network Policies.extraction.md::E30
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 111_Network Policies.txt
- Line Context: Lines 1-1 from transcript
- Content: Say for example, your security teams and audits require you to prevent that from happening.
- Multi-concept tags: Services, Networking, Security-RBAC, Observability, CKA-CKAD

### Evidence 699: certified-kubernetes-application-developer/07_Services & Networking/115_Ingress Networking.extraction.md::E89
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 115_Ingress Networking.txt
- Line Context: Lines 1-1 from transcript
- Content: Ingress controllers have additional intelligence built into them to monitor the Kubernetes cluster for new definitions or ingress resources, and configure the nginx server accordingly, and nginx controller is deployed as just another deployment in Kubernetes.
- Multi-concept tags: Deployments, Services, Networking, Architecture, Observability

### Evidence 700: certified-kubernetes-application-developer/07_Services & Networking/115_Ingress Networking.extraction.md::E107
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 115_Ingress Networking.txt
- Line Context: Lines 1-1 from transcript
- Content: As mentioned before, the ingress controllers have additional intelligence built into them to monitor the Kubernetes cluster for ingress resources and configure the underlying nginx server when something is changed.
- Multi-concept tags: Services, Networking, Architecture, Observability

### Evidence 701: certified-kubernetes-application-developer/07_Services & Networking/120_Solution_ Ingress Networking - 2.extraction.md::E150
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 120_Solution_ Ingress Networking - 2.txt
- Line Context: Lines 1-1 from transcript
- Content: Then we need to add the annotations, so the annotations for the rewrite target, because as we discussed earlier we don't want it to go to a wear and watch URL and then this is, so to prevent the redirect, SSL redirect we have to add the false, the SSL redirect to false.
- Multi-concept tags: Services, Networking, Observability

### Evidence 702: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E9
- Type: Concept
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Line Context: Lines 1-1 from transcript
- Content: Okay, so we're able to view the logs and we see that some of the events that are logged by the application.
- Multi-concept tags: Storage, Observability

### Evidence 703: certified-kubernetes-application-developer/09_Security/145_API Groups.extraction.md::E9
- Type: Exam Tip
- Source: certified-kubernetes-application-developer / 09_Security / 145_API Groups.txt
- Line Context: Lines 1-1 from transcript
- Content: The Kubernetes API is grouped into multiple such groups based on their purpose, such as one for APIs, one for health, one for metrics and logs, etc. the version API is for viewing the version of the cluster as we just saw.
- Multi-concept tags: Security-RBAC, Architecture, Observability

### Evidence 704: certified-kubernetes-application-developer/09_Security/145_API Groups.extraction.md::E10
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 145_API Groups.txt
- Line Context: Lines 1-1 from transcript
- Content: The metrics and health API are used to monitor the health of the cluster.
- Multi-concept tags: Security-RBAC, Architecture, Observability

### Evidence 705: certified-kubernetes-application-developer/09_Security/145_API Groups.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 145_API Groups.txt
- Line Context: Lines 1-1 from transcript
- Content: The logs are used for integrating with third party logging applications.
- Multi-concept tags: Security-RBAC, Observability

### Evidence 706: certified-kubernetes-application-developer/09_Security/145_API Groups.extraction.md::E14
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 145_API Groups.txt
- Line Context: Lines 1-1 from transcript
- Content: The core group is where all core functionality exists, such as namespaces, pods, replication controllers, events and points, nodes, bindings, persistent volumes, persistent volume claims, Configmaps secrets, services, etc. the named group APIs are more organized and going forward.
- Multi-concept tags: Pods, Deployments, Services, Storage, Security-RBAC, Configuration, Architecture, Observability

### Evidence 707: certified-kubernetes-application-developer/09_Security/146_Authorization.extraction.md::E8
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 146_Authorization.txt
- Line Context: Lines 1-1 from transcript
- Content: As an admin, we're able to perform any operation, but soon we will have others accessing the cluster as well, such as the other administrators, developers, testers, or other applications like monitoring applications or continuous delivery applications like Jenkins, etc. so we will be creating accounts for them to access the cluster by creating usernames and passwords or tokens or signed TLS certificates or service accounts, as we saw in the previous lectures.
- Multi-concept tags: Services, Security-RBAC, Architecture, Observability

### Evidence 708: certified-kubernetes-application-developer/09_Security/153_Admission Controllers.extraction.md::E32
- Type: Architecture
- Source: certified-kubernetes-application-developer / 09_Security / 153_Admission Controllers.txt
- Line Context: Lines 1-1 from transcript
- Content: The default storage class admission controller that observes the creation of PVCs and automatically adds the default storage class to them if one is not specified, the event rate limit admission controller can help set a limit on the requests with the API server can handle at a time.
- Multi-concept tags: Storage, Security-RBAC, Architecture, Observability

### Evidence 709: certified-kubernetes-application-developer/09_Security/153_Admission Controllers.extraction.md::E33
- Type: Architecture
- Source: certified-kubernetes-application-developer / 09_Security / 153_Admission Controllers.txt
- Line Context: Lines 1-1 from transcript
- Content: To prevent the API server from flooding with requests, the namespace exists.
- Multi-concept tags: Security-RBAC, Architecture, Observability

### Evidence 710: certified-kubernetes-application-developer/09_Security/163_Custom Resource Definition.extraction.md::E12
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 09_Security / 163_Custom Resource Definition.txt
- Line Context: Lines 1-1 from transcript
- Content: So the controller is a process that runs in the background, and its job is to continuously monitor the status of resources that it's supposed to manage, in this case, the deployment that we created.
- Multi-concept tags: Deployments, Security-RBAC, Observability

### Evidence 711: certified-kubernetes-application-developer/09_Security/165_Custom Controllers.extraction.md::E4
- Type: Architecture
- Source: certified-kubernetes-application-developer / 09_Security / 165_Custom Controllers.txt
- Line Context: Lines 1-1 from transcript
- Content: Now what we need to do is monitor the status of the objects in ETCD and perform actions such as making calls to the flight booking API to book, edit, or cancel flight tickets.
- Multi-concept tags: Security-RBAC, Architecture, Observability

### Evidence 712: certified-kubernetes-application-developer/09_Security/165_Custom Controllers.extraction.md::E6
- Type: Concept
- Source: certified-kubernetes-application-developer / 09_Security / 165_Custom Controllers.txt
- Line Context: Lines 1-1 from transcript
- Content: So a controller is any process or code that runs in a loop and is continuously monitoring the Kubernetes cluster and listening to events of specific objects being changed, in this case, the flight ticket object.
- Multi-concept tags: Security-RBAC, Architecture, Observability

### Evidence 713: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E90
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: I'm just gonna say logging, it's gonna be set to debugging, or let's just say verbose.
- Multi-concept tags: Configuration, Observability, Troubleshooting

### Evidence 714: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E91
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Line Context: Lines 1-1 from transcript
- Content: And now if we take a look at all of our resources, we should see a annotation of logging for both.
- Multi-concept tags: Configuration, Observability

### Evidence 715: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E11
- Type: Concept
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Line Context: Lines 1-1 from transcript
- Content: And if we take a look at the events, it's already giving us some useful information.
- Multi-concept tags: Observability, CKA-CKAD

### Evidence 716: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E12
- Type: Concept
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Line Context: Lines 1-1 from transcript
- Content: It says the readiness probe failed.
- Multi-concept tags: Observability, Troubleshooting, CKA-CKAD

### Evidence 717: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E13
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Line Context: Lines 1-1 from transcript
- Content: So there's some sort of issue surrounding that, whether it's a misconfiguration on the probe itself or something else that's to be determined.
- Multi-concept tags: Observability, Troubleshooting, CKA-CKAD

### Evidence 718: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E17
- Type: Concept
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Line Context: Lines 1-1 from transcript
- Content: And let's take a look at the readiness probe.
- Multi-concept tags: Observability, CKA-CKAD

### Evidence 719: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E23
- Type: Concept
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Line Context: Lines 1-1 from transcript
- Content: So for this, we actually need a liveness probe.
- Multi-concept tags: Observability, CKA-CKAD

### Evidence 720: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E24
- Type: Concept
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Line Context: Lines 1-1 from transcript
- Content: So we already have a readiness probe.
- Multi-concept tags: Observability, CKA-CKAD

### Evidence 721: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E25
- Type: Concept
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Line Context: Lines 1-1 from transcript
- Content: Let's add a liveness probe.
- Multi-concept tags: Observability, CKA-CKAD

### Evidence 722: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E132
- Type: Concept
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Line Context: Lines 1-1 from transcript
- Content: And so you can see, it's just standard type logging.
- Multi-concept tags: Observability, CKA-CKAD

### Evidence 723: certified-kubernetes-application-developer/15_Mock Exams/206_Mock Exam -1 (Solution).extraction.md::E20
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 206_Mock Exam -1 (Solution).txt
- Line Context: Lines 1-1 from transcript
- Content: And so if we just take a look events wise, I don't think we see anything interesting here.
- Multi-concept tags: Observability, CKA-CKAD

### Evidence 724: certified-kubernetes-application-developer/15_Mock Exams/206_Mock Exam -1 (Solution).extraction.md::E56
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 206_Mock Exam -1 (Solution).txt
- Line Context: Lines 1-1 from transcript
- Content: So, you can see it's deleting it and then it's eventually going to create the new one.
- Multi-concept tags: Observability, CKA-CKAD

### Evidence 725: certified-kubernetes-application-developer/15_Mock Exams/208_Mock Exam -2 (Solution).extraction.md::E70
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 208_Mock Exam -2 (Solution).txt
- Line Context: Lines 1-1 from transcript
- Content: The next question, a new pod has been created called pod-with-rprobe, and what we have to do is we have to update it with a readiness probe configuration provided below.
- Multi-concept tags: Pods, Observability, CKA-CKAD

### Evidence 726: certified-kubernetes-application-developer/15_Mock Exams/208_Mock Exam -2 (Solution).extraction.md::E71
- Type: Concept
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 208_Mock Exam -2 (Solution).txt
- Line Context: Lines 1-1 from transcript
- Content: So what I'm gonna do is kubectl get pod, and I'm gonna do a kubectl get pod pod-with-rprobe -: o yaml, so we can take a look at the configuration and modify it, and I'll just call this pod.yaml, and we'll open up pod.yaml, and we want to go under the container and add the configuration wherever we like.
- Multi-concept tags: Pods, Configuration, Observability, CKA-CKAD

### Evidence 727: certified-kubernetes-application-developer/15_Mock Exams/208_Mock Exam -2 (Solution).extraction.md::E73
- Type: Concept
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 208_Mock Exam -2 (Solution).txt
- Line Context: Lines 1-1 from transcript
- Content: And so here to add a readiness probe, I'll just do readiness probe.
- Multi-concept tags: Observability, CKA-CKAD

### Evidence 728: certified-kubernetes-application-developer/15_Mock Exams/208_Mock Exam -2 (Solution).extraction.md::E80
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 208_Mock Exam -2 (Solution).txt
- Line Context: Lines 1-1 from transcript
- Content: And we have to add a liveness probe to the container to restart if the command ls/bar/www/atm/probe fails.
- Multi-concept tags: Configuration, Observability, Troubleshooting, CKA-CKAD

### Evidence 729: certified-kubernetes-application-developer/15_Mock Exams/208_Mock Exam -2 (Solution).extraction.md::E89
- Type: Implementation Step
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 208_Mock Exam -2 (Solution).txt
- Line Context: Lines 1-1 from transcript
- Content: And then here we have to specify the liveness probe, and we're gonna do an exec, and the command we wanna run.
- Multi-concept tags: Configuration, Observability, CKA-CKAD

### Evidence 730: learn-kubernetes/02_Kubernetes Overview/007_Kubernetes Architecture.extraction.md::E16
- Type: Concept
- Source: learn-kubernetes / 02_Kubernetes Overview / 007_Kubernetes Architecture.txt
- Line Context: Lines 1-1 from transcript
- Content: How are the nodes monitored?
- Multi-concept tags: Architecture, Observability

### Evidence 731: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E63
- Type: Exam Tip
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Line Context: Lines 1-1 from transcript
- Content: For example, we can work with the encrypted container images or other new feature that will eventually be implemented into the Docker commands in the future.
- Multi-concept tags: Configuration, Observability, CKA-CKAD, On-Prem

### Evidence 732: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E90
- Type: Architecture
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Line Context: Lines 1-1 from transcript
- Content: So if you go through the CRI control utility and try and create containers with it, then eventually Kubelet is going to delete them because the Kubelet is unaware of some of those containers or pods that are created outside of its knowledge.
- Multi-concept tags: Pods, Architecture, Observability, On-Prem

### Evidence 733: learn-kubernetes/03_Kubernetes Concepts/014_Pods.extraction.md::E53
- Type: Concept
- Source: learn-kubernetes / 03_Kubernetes Concepts / 014_Pods.txt
- Line Context: Lines 1-1 from transcript
- Content: And most importantly, we would need to monitor the state of the application container and when it dies, manually kill the helper container as well, as it's no longer required.
- Multi-concept tags: Pods, Observability

### Evidence 734: learn-kubernetes/03_Kubernetes Concepts/015_Demo - Pods.extraction.md::E35
- Type: Concept
- Source: learn-kubernetes / 03_Kubernetes Concepts / 015_Demo - Pods.txt
- Line Context: Lines 1-1 from transcript
- Content: And if you scroll all the way to the bottom, you'll see additional information called events.
- Multi-concept tags: Pods, Observability

### Evidence 735: learn-kubernetes/03_Kubernetes Concepts/015_Demo - Pods.extraction.md::E36
- Type: Implementation Step
- Source: learn-kubernetes / 03_Kubernetes Concepts / 015_Demo - Pods.txt
- Line Context: Lines 1-1 from transcript
- Content: And here you see the list of events that occurred since the pod was created.
- Multi-concept tags: Pods, Observability

### Evidence 736: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/020_Pods with YAML.extraction.md::E61
- Type: Implementation Step
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 020_Pods with YAML.txt
- Line Context: Lines 1-1 from transcript
- Content: This will tell you information about the pod when it was created, what labels are assigned to it, what Docker containers are part of it, and the events associated with that pod.
- Multi-concept tags: Pods, Deployments, Configuration, Observability

### Evidence 737: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/022_Demo - YAML - Tips.extraction.md::E115
- Type: Concept
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 022_Demo - YAML - Tips.txt
- Line Context: Lines 1-1 from transcript
- Content: So that's an additional support the extension provides to prevent you from creating a file with an incorrect structure.
- Multi-concept tags: Pods, Deployments, Configuration, Observability

### Evidence 738: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/025_Solution _ Pods with YAML Lab.extraction.md::E86
- Type: Concept
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 025_Solution _ Pods with YAML Lab.txt
- Line Context: Lines 1-1 from transcript
- Content: So try to figure it out from the events section of the pot.
- Multi-concept tags: Pods, Deployments, Configuration, Observability

### Evidence 739: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/025_Solution _ Pods with YAML Lab.extraction.md::E90
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 025_Solution _ Pods with YAML Lab.txt
- Line Context: Lines 1-1 from transcript
- Content: Look at it below here in the event section, you can see the error.
- Multi-concept tags: Pods, Deployments, Configuration, Observability, Troubleshooting

### Evidence 740: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/026_Replication Controllers and ReplicaSets.extraction.md::E2
- Type: Concept
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 026_Replication Controllers and ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: They are the processes that monitor Kubernetes objects and respond accordingly.
- Multi-concept tags: Pods, Deployments, Observability

### Evidence 741: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/026_Replication Controllers and ReplicaSets.extraction.md::E7
- Type: Concept
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 026_Replication Controllers and ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: To prevent users from losing access to our application, we would like to have more than one instance or pod running at the same time.
- Multi-concept tags: Pods, Deployments, Observability

### Evidence 742: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/026_Replication Controllers and ReplicaSets.extraction.md::E97
- Type: Exam Tip
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 026_Replication Controllers and ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: You can use it to monitor existing pods if you have them already created as it is in this example.
- Multi-concept tags: Pods, Deployments, Observability, CKA-CKAD

### Evidence 743: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/026_Replication Controllers and ReplicaSets.extraction.md::E99
- Type: Implementation Step
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 026_Replication Controllers and ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: The role of the replica set is to monitor the pods and if any of them were to fail, deploy new ones.
- Multi-concept tags: Pods, Deployments, Security-RBAC, Observability, Troubleshooting

### Evidence 744: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/026_Replication Controllers and ReplicaSets.extraction.md::E100
- Type: Concept
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 026_Replication Controllers and ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: The replica set is in fact a process that monitors the pods.
- Multi-concept tags: Pods, Deployments, Observability

### Evidence 745: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/026_Replication Controllers and ReplicaSets.extraction.md::E101
- Type: Concept
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 026_Replication Controllers and ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: Now, how does the replica set know what pods to monitor?
- Multi-concept tags: Pods, Deployments, Observability

### Evidence 746: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/026_Replication Controllers and ReplicaSets.extraction.md::E105
- Type: Concept
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 026_Replication Controllers and ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: This way, the replica set knows which pods to monitor.
- Multi-concept tags: Pods, Deployments, Observability

### Evidence 747: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/026_Replication Controllers and ReplicaSets.extraction.md::E111
- Type: Implementation Step
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 026_Replication Controllers and ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: And we need to create a replica set to monitor the pods to ensure there are a minimum of three running at all times.
- Multi-concept tags: Pods, Deployments, Observability

### Evidence 748: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/027_Demo - ReplicaSets.extraction.md::E91
- Type: Concept
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 027_Demo - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: And if you scroll down below we see the events.
- Multi-concept tags: Pods, Deployments, Observability

### Evidence 749: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/027_Demo - ReplicaSets.extraction.md::E95
- Type: Concept
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 027_Demo - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: And you see all of that in the history of events here.
- Multi-concept tags: Pods, Deployments, Observability

### Evidence 750: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/027_Demo - ReplicaSets.extraction.md::E115
- Type: Implementation Step
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 027_Demo - ReplicaSets.txt
- Line Context: Lines 1-1 from transcript
- Content: So if we run the kubectl describe command now, we'll see that at the bottom under the events section of the output of uh describe command, the replica set controller, um, deletes the new nginx two pod that we just created.
- Multi-concept tags: Pods, Deployments, Configuration, Observability, On-Prem

### Evidence 751: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/031_Demo - Deployments.extraction.md::E42
- Type: Implementation Step
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 031_Demo - Deployments.txt
- Line Context: Lines 1-1 from transcript
- Content: If you scroll to the bottom, you'll see that it also has an event section and it just shows the deployment controller a message which which says that, uh, the replica set for this deployment has been scaled to three.
- Multi-concept tags: Pods, Deployments, Observability

### Evidence 752: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/034_Deployments - Update and Rollback.extraction.md::E33
- Type: Implementation Step
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 034_Deployments - Update and Rollback.txt
- Line Context: Lines 1-1 from transcript
- Content: The events indicate that the old replica set was scaled down to zero first, and then the new replica sets scaled up to five.
- Multi-concept tags: Pods, Deployments, Observability

### Evidence 753: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/035_Demo - Deployments - Update and Rollback.extraction.md::E59
- Type: Concept
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 035_Demo - Deployments - Update and Rollback.txt
- Line Context: Lines 1-1 from transcript
- Content: If you look at the events down below, you can actually see the events as it occurred.
- Multi-concept tags: Pods, Deployments, Observability

### Evidence 754: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/035_Demo - Deployments - Update and Rollback.extraction.md::E61
- Type: Concept
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 035_Demo - Deployments - Update and Rollback.txt
- Line Context: Lines 1-1 from transcript
- Content: So you can actually see the events.
- Multi-concept tags: Pods, Deployments, Observability

### Evidence 755: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/035_Demo - Deployments - Update and Rollback.extraction.md::E107
- Type: Concept
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 035_Demo - Deployments - Update and Rollback.txt
- Line Context: Lines 1-1 from transcript
- Content: Now when I run the kube control rollout status command to monitor the status of rollout, you'll see that it's actually stuck at that point where it says three out of six new replicas have been updated.
- Multi-concept tags: Pods, Deployments, Configuration, Observability

### Evidence 756: learn-kubernetes/08_Microservices Architecture/048_Demo - Deploying Voting App on Kubernetes With Deployments.extraction.md::E17
- Type: Concept
- Source: learn-kubernetes / 08_Microservices Architecture / 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Line Context: Lines 1-1 from transcript
- Content: It's going to give us the ability to monitor and watch our pods.
- Multi-concept tags: Pods, Deployments, Services, Architecture, Observability
