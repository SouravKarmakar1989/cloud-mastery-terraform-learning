# KB Operational Reference System

এই operational reference Developer, Administrator, Architect, Cross-cloud, এবং On-prem lens একসাথে দেয়।

## Lens 1: Developer
Container image, Pod lifecycle, config injection, service discovery, এবং app-level debugging workflow।

## Lens 2: Administrator
Node health, scheduling policy, storage lifecycle, RBAC hygiene, এবং incident response playbook।

## Lens 3: Architect
Reliability patterns, multi-tenant isolation, upgrade design, এবং governance boundaries।

## Lens 4: Cross-Cloud
AKS/EKS/GKE responsibility split, network/storage/IAM integration differences।

## Lens 5: On-Prem
kubeadm bootstrap, runtime/CNI/CSI selection, HA control plane, day-2 operations।

## High-Signal Operational Evidence

### Operational Entry 1: certified-kubernetes-administrator-with-practice-tests/01_Introduction/001_Course Introduction.extraction.md::E9
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 01_Introduction / 001_Course Introduction.txt
- Evidence: Yes, you don't need to have a high-end system or access to cloud platforms or worry about cloud costs to gain practice.

### Operational Entry 2: certified-kubernetes-administrator-with-practice-tests/01_Introduction/001_Course Introduction.extraction.md::E11
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 01_Introduction / 001_Course Introduction.txt
- Evidence: Our labs are unique, as in we don't provide a blank environment and give you instructions to copy and paste.

### Operational Entry 3: certified-kubernetes-administrator-with-practice-tests/01_Introduction/002_Certification.extraction.md::E13
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 01_Introduction / 002_Certification.txt
- Evidence: In case you don't manage to pass on the initial attempt, you have one more attempt available for free within the next 12 months.

### Operational Entry 4: certified-kubernetes-administrator-with-practice-tests/01_Introduction/002_Certification.extraction.md::E21
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 01_Introduction / 002_Certification.txt
- Evidence: This would mean that you don't have to worry about memorizing lots of different numbers in preparation for the exam.

### Operational Entry 5: certified-kubernetes-administrator-with-practice-tests/01_Introduction/004_The Kubernetes Trilogy.extraction.md::E13
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 01_Introduction / 004_The Kubernetes Trilogy.txt
- Evidence: As this is a beginner's course, we do not deep dive into technical details.

### Operational Entry 6: certified-kubernetes-administrator-with-practice-tests/01_Introduction/004_The Kubernetes Trilogy.extraction.md::E16
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 01_Introduction / 004_The Kubernetes Trilogy.txt
- Evidence: The Kubernetes for Administrators course focuses on advanced topics on Kubernetes and in-depth discussions into the various concepts around deploying a high availability cluster for production use case, understanding more about scheduling, monitoring, maintenance, securities, storage, and troubleshooting.

### Operational Entry 7: certified-kubernetes-administrator-with-practice-tests/01_Introduction/004_The Kubernetes Trilogy.extraction.md::E19
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 01_Introduction / 004_The Kubernetes Trilogy.txt
- Evidence: Now, you don't have to be an expert application developer for this course, and there's no real coding or application development involved in either this course or the certification itself.

### Operational Entry 8: certified-kubernetes-administrator-with-practice-tests/01_Introduction/004_The Kubernetes Trilogy.extraction.md::E25
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 01_Introduction / 004_The Kubernetes Trilogy.txt
- Evidence: Now, you don't have to take these courses in order.

### Operational Entry 9: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/007_Cluster Architecture.extraction.md::E35
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 007_Cluster Architecture.txt
- Evidence: For example, the operations team takes care of ship handling, traffic control, etc. they deal with issues related to damages, the routes the different ships take, etc. the cargo team takes care of containers when containers are damaged or destroyed.

### Operational Entry 10: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/007_Cluster Architecture.extraction.md::E52
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 007_Cluster Architecture.txt
- Evidence: So we need this software that can run containers and that's the container runtime engine.

### Operational Entry 11: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/007_Cluster Architecture.extraction.md::E57
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 007_Cluster Architecture.txt
- Evidence: Kubernetes supports other runtime engines as well, like container D or rocket.

### Operational Entry 12: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E5
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And you'll wonder what are these CLI tools and and which one should you be using.

### Operational Entry 13: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E15
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And now other container runtimes like rocket wanted in Kubernetes.

### Operational Entry 14: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E16
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Users needed it to work with container runtimes that are other than just Docker.

### Operational Entry 15: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E17
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And so Kubernetes introduced an interface called Container Runtime Interface or Cry.

### Operational Entry 16: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E18
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So cry allowed any vendor to work as a container runtime for Kubernetes, as long as they adhere to the OCI standards.

### Operational Entry 17: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E19
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So OCI stands for Open Container Initiative, and it consists of an image spec and a runtime spec.

### Operational Entry 18: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E20
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Image spec means the specifications on how, uh, an image should be built.

### Operational Entry 19: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E22
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: An image spec, defined the specifications on how an image should be built, and the runtime spec defined the standards on how any container runtime should be developed.

### Operational Entry 20: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E23
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So keeping these standards in mind, anyone can build a container runtime, and that can be used by anybody to to work with Kubernetes.

### Operational Entry 21: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E25
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So rocket and other container runtimes that adhere to the OCI standards were now supported as container runtimes for Kubernetes via the CRI.

### Operational Entry 22: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E28
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And so Kubernetes introduced what is known as uh, Docker shim, which was a hacky, uh, but temporary way to continue to support Docker outside of the container runtime interface.

### Operational Entry 23: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E29
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So while most other container runtimes worked through the CRI, Docker continued to work without it.

### Operational Entry 24: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E30
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So, um, now you see Docker isn't just a container runtime alone.

### Operational Entry 25: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E31
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Docker consists of multiple tools that are put together for example, the Docker CLI, the Docker API, the build tools that help in building images.

### Operational Entry 26: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E33
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And finally also the container runtime called Runcie and the daemon that managed Runcie.

### Operational Entry 27: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E35
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So container D is CRI compatible and can work directly with Kubernetes as all other runtimes.

### Operational Entry 28: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E36
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So container D can be used as a runtime on its own separate from Docker.

### Operational Entry 29: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E37
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So now you have container D as a separate runtime and Docker separately.

### Operational Entry 30: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E44
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: But Docker itself was removed as a supported runtime from Kubernetes.

### Operational Entry 31: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E49
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So if you don't really need Docker other features, you could ideally just install container uh d alone.

### Operational Entry 32: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E54
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And this tool is solely made for debugging Containerd and is not very user friendly as it only supports a limited set of features.

### Operational Entry 33: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E60
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: But as I mentioned, this tool is solely made for debugging containerd and is not very user friendly and not to be used for running or managing containers on on a production environment.

### Operational Entry 34: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E61
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So a better alternative recommended is the nerd control tool or nerd CTL tool.

### Operational Entry 35: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E76
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So earlier we talked about the container runtime interface or CRI which is a single interface used to connect CRI compatible container runtimes the container, the rocket and others.

### Operational Entry 36: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E77
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So, uh, the CRI control is a command line utility that is used to interact with the CRI compatible container runtime.

### Operational Entry 37: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E80
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And this is uh, this tool works across all the different container runtimes.

### Operational Entry 38: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E82
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: This particular tool is from the Kubernetes perspective that works across different container runtimes.

### Operational Entry 39: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E83
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So it must be installed separately and it is used to inspect and debug container runtime.

### Operational Entry 40: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E85
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: This is again a debugging tool.

### Operational Entry 41: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E87
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: It's only to be used for some special debugging purposes.

### Operational Entry 42: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E92
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So because of those things, remember that the cry control utility is only used for debugging purposes and getting into containers and all of that.

### Operational Entry 43: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E105
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So while working with Kubernetes in the past, uh, we used Docker commands a lot to troubleshoot containers and view logs, especially on the worker nodes.

### Operational Entry 44: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E108
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Uh, so it shouldn't be uh, shouldn't be really hard.

### Operational Entry 45: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E113
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Cry control to interact with the specific runtime.

### Operational Entry 46: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E117
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: But if you want to override that and set a specific endpoint, you use the runtime endpoint option with the CRI control command line.

### Operational Entry 47: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E118
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Or you could use the container runtime endpoint environment variable.

### Operational Entry 48: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E120
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So to summarize, we have the Ktor command line utility that comes with Containerd and works with Containerd, which is used for debugging purposes only and has a very limited limited set of features.

### Operational Entry 49: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E127
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So it's not just for container D, this can be used for all CRI supported runtimes.

### Operational Entry 50: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E128
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Again this is mainly for to be used for debugging purposes.

### Operational Entry 51: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E129
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So if you look at the comparisons here you can see that CTR and CRI control are used mainly for debugging purposes, whereas the nerve control is used for general purpose.

### Operational Entry 52: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E130
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: The CTR and node control uh are from the container the community and works with container D, whereas CRI control is from the Kubernetes community and works across all CRI compatible runtimes.

### Operational Entry 53: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E132
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So we used the Docker commands to troubleshoot.

### Operational Entry 54: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E134
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So remember to use the um the CRI control command instead to troubleshoot.

### Operational Entry 55: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/009_A note on Docker deprecation.extraction.md::E1
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 009_A note on Docker deprecation.txt
- Evidence: Every time we mention about Docker in this course, one of the common questions we get is why are we still talking about Docker if it's deprecated?

### Operational Entry 56: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/009_A note on Docker deprecation.extraction.md::E3
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 009_A note on Docker deprecation.txt
- Evidence: So as we discussed before, Docker was the original and only supported container runtime for Kubernetes, and to make Kubernetes open to other runtimes, we had the container runtime interface introduced.

### Operational Entry 57: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/009_A note on Docker deprecation.extraction.md::E5
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 009_A note on Docker deprecation.txt
- Evidence: There was support for volumes, auth, security and finally also the container runtime called Runc and the daemon that managed the runtime called the container.

### Operational Entry 58: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/009_A note on Docker deprecation.extraction.md::E8
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 009_A note on Docker deprecation.txt
- Evidence: And as all of the other runtimes.

### Operational Entry 59: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/009_A note on Docker deprecation.extraction.md::E9
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 009_A note on Docker deprecation.txt
- Evidence: So container D can be used as runtime on its own separate from Docker.

### Operational Entry 60: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/009_A note on Docker deprecation.extraction.md::E15
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 009_A note on Docker deprecation.txt
- Evidence: It's just that Kubernetes no longer require Docker as the runtime now.

### Operational Entry 61: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/009_A note on Docker deprecation.extraction.md::E19
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 009_A note on Docker deprecation.txt
- Evidence: And if you don't happen to have Docker on your machine or are only using container, then you can still work with the same examples by replacing the docker command with the node control command, or most of the time.

### Operational Entry 62: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/010_ETCD For Beginners.extraction.md::E5
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 010_ETCD For Beginners.txt
- Evidence: Later in this course, we will cover high availability, where we discuss what it means to be a distributed system, how etcd works in a cluster mode, what raft protocol is, and what are the best practices around the number of nodes in a cluster.

### Operational Entry 63: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/010_ETCD For Beginners.extraction.md::E32
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 010_ETCD For Beginners.txt
- Evidence: Document stores typically store data in a JSON format, so comparing relational databases to document store document stores typically don't need a schema defined can be limiting in terms of performing complex queries by joining different tables.

### Operational Entry 64: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/010_ETCD For Beginners.extraction.md::E85
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 010_ETCD For Beginners.txt
- Evidence: So the point I'm trying to make is that you might see blogs documentation online regarding the older API, which used etcd cuddle set and get commands instead of the etcd cuddle put and get commands, so don't be alarmed.

### Operational Entry 65: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/011_ETCD in Kubernetes.extraction.md::E22
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 011_ETCD in Kubernetes.txt
- Evidence: This is the URL that should be configured on the kube API server when it tries to reach the etcd server.

### Operational Entry 66: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/013_Kube-API Server.extraction.md::E6
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 013_Kube-API Server.txt
- Evidence: You don't really need to use the cube control command line instead.

### Operational Entry 67: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/013_Kube-API Server.extraction.md::E24
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 013_Kube-API Server.txt
- Evidence: If you bootstrapped your cluster using kube admin tool, Then you don't need to know this, but if you are setting up the hard way, then the cube API server is available as a binary in the Kubernetes release page.

### Operational Entry 68: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/013_Kube-API Server.extraction.md::E28
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 013_Kube-API Server.txt
- Evidence: You don't have to understand all of the options right now, but I think having a high level understanding on some of these now will make it easier later when we configure the whole cluster and all of its components from scratch.

### Operational Entry 69: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/014_Kube Controller Manager.extraction.md::E34
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 014_Kube Controller Manager.txt
- Evidence: So in case any of your controllers don't seem to work or exist, this would be a good starting point to look at.

### Operational Entry 70: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E3
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Evidence: Now don't let the graphic mislead you.

### Operational Entry 71: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E24
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Evidence: In the first phase, the scheduler tries to filter out the nodes that do not fit the profile for this pod.

### Operational Entry 72: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E25
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Evidence: For example, the nodes that do not have sufficient CPU and memory resources requested by the pod.

### Operational Entry 73: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/016_Kubelet.extraction.md::E9
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 016_Kubelet.txt
- Evidence: When it receives instructions to load a container or a pod on the node, it requests the container runtime engine, which may be Docker, to pull the required image and run an instance.

### Operational Entry 74: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/017_Kube Proxy.extraction.md::E19
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 017_Kube Proxy.txt
- Evidence: But then we also said that the service should be accessible across the cluster from any nodes.

### Operational Entry 75: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/017_Kube Proxy.extraction.md::E37
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 017_Kube Proxy.txt
- Evidence: Well, if you don't know about Daemonset yet, don't worry.

### Operational Entry 76: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/018_Pods.extraction.md::E25
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 018_Pods.txt
- Evidence: You do not add additional containers to an existing pod to scale your application.

### Operational Entry 77: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/018_Pods.extraction.md::E67
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 018_Pods.txt
- Evidence: Docker hub, as we discussed, is a public repository where Docker images of various applications are stored.

### Operational Entry 78: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/018_Pods.extraction.md::E73
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 018_Pods.txt
- Evidence: You can access it internally from the node.

### Operational Entry 79: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/019_Pods with YAML.extraction.md::E22
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 019_Pods with YAML.txt
- Evidence: The number of spaces before the two properties, name and labels doesn't matter, but they should be the same as they are siblings.

### Operational Entry 80: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/020_Demo - Pods with YAML.extraction.md::E34
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 020_Demo - Pods with YAML.txt
- Evidence: Typically it would be two spaces or a tab, but it is recommended not to use tabs.

### Operational Entry 81: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/020_Demo - Pods with YAML.extraction.md::E72
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 020_Demo - Pods with YAML.txt
- Evidence: And you should get a much more in-depth information about the pod.

### Operational Entry 82: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/021_Practice Test Introduction.extraction.md::E35
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 021_Practice Test Introduction.txt
- Evidence: Now, don't be too worried about the exam interface itself.

### Operational Entry 83: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/021_Practice Test Introduction.extraction.md::E37
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 021_Practice Test Introduction.txt
- Evidence: So almost like our lab environment, so it should be easy to follow.

### Operational Entry 84: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/021_Practice Test Introduction.extraction.md::E38
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 021_Practice Test Introduction.txt
- Evidence: Don't stress too much about it.

### Operational Entry 85: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/021_Practice Test Introduction.extraction.md::E41
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 021_Practice Test Introduction.txt
- Evidence: You may refresh the lab window anytime and it should take you back to the same lab environment.

### Operational Entry 86: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/021_Practice Test Introduction.extraction.md::E42
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 021_Practice Test Introduction.txt
- Evidence: So for example, if you temporarily lose internet connectivity, uh, and if you restart your, uh, your lab environment or you refresh your web page, it should take you back to the same lab environment.

### Operational Entry 87: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/021_Practice Test Introduction.extraction.md::E49
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 021_Practice Test Introduction.txt
- Evidence: If you if you don't know anything, you you have, you must go through the documentation pages and try to find the answers.

### Operational Entry 88: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/021_Practice Test Introduction.extraction.md::E52
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 021_Practice Test Introduction.txt
- Evidence: But every question or every task that you're assigned to in the labs, you will have hints or solutions in the Hints and Solutions tab that that should be visible along with your question.

### Operational Entry 89: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/025_Lab Solution - Pods (optional).extraction.md::E5
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 025_Lab Solution - Pods (optional).txt
- Evidence: That's what we learned, so we're gonna run the kubectl get pods command, and you can ignore this line here that says in the current default namespace, so we're gonna talk about namespaces in one of the upcoming lectures, so you don't have to worry about that for now.

### Operational Entry 90: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/025_Lab Solution - Pods (optional).extraction.md::E34
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 025_Lab Solution - Pods (optional).txt
- Evidence: Then you have what images are used in the new web app pod, you must look at all the pods in detail to figure this out, actually it should be, you must look at all the containers in detail.

### Operational Entry 91: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/025_Lab Solution - Pods (optional).extraction.md::E38
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 025_Lab Solution - Pods (optional).txt
- Evidence: So out of these, it's not running ready or success, it's actually error or waiting, so this is the state.

### Operational Entry 92: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/025_Lab Solution - Pods (optional).extraction.md::E39
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 025_Lab Solution - Pods (optional).txt
- Evidence: Okay, now why do you think the container, Agent x in pod, Web App, is in an error or waiting state?

### Operational Entry 93: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/025_Lab Solution - Pods (optional).extraction.md::E41
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 025_Lab Solution - Pods (optional).txt
- Evidence: So if you look at one of the section here, under state, you have the reason called as Error Image Pull, or if you just look at it below here in the Event section, you can see the error which is basically this one, it says, "Fail to pull image, Agent x," and, "at docker.io/library/agentx." So this image by the name Agent x does not exist.

### Operational Entry 94: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/025_Lab Solution - Pods (optional).extraction.md::E58
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 025_Lab Solution - Pods (optional).txt
- Evidence: Okay, so, so this is basically command and it says, "The dry-run command is deprecated," and it's replaced with the dry-run equals client, So let's run that, okay, so this is the yaml file.

### Operational Entry 95: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/025_Lab Solution - Pods (optional).extraction.md::E64
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 025_Lab Solution - Pods (optional).txt
- Evidence: Okay, so it's created and it's in an error image pool state because we have the wrong image name, so that's fine.

### Operational Entry 96: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/025_Lab Solution - Pods (optional).extraction.md::E66
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 025_Lab Solution - Pods (optional).txt
- Evidence: And the last question for this lab is to change the image on this pod to Redis to fix that error that we, you know, purposefully created, and to get the pod in a running state.

### Operational Entry 97: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/025_Lab Solution - Pods (optional).extraction.md::E73
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 025_Lab Solution - Pods (optional).txt
- Evidence: Now, we'll talk about this error message later when we talk about imperative commands and the declarative way that we apply.

### Operational Entry 98: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/026_Recap - ReplicaSets.extraction.md::E6
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 026_Recap - ReplicaSets.txt
- Evidence: What if for some reason our application crashes and the pod fails, users will no longer be able to access our application?

### Operational Entry 99: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/026_Recap - ReplicaSets.extraction.md::E8
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 026_Recap - ReplicaSets.txt
- Evidence: That way, if one fails, we still have our application running on the other one.

### Operational Entry 100: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/026_Recap - ReplicaSets.extraction.md::E12
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 026_Recap - ReplicaSets.txt
- Evidence: Even if you have a single pod, replication controller can help by automatically bringing up a new pod when the existing one fails.

### Operational Entry 101: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/026_Recap - ReplicaSets.extraction.md::E23
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 026_Recap - ReplicaSets.txt
- Evidence: Replica set is the new recommended way to set up replication.

### Operational Entry 102: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/026_Recap - ReplicaSets.extraction.md::E47
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 026_Recap - ReplicaSets.txt
- Evidence: Remember, whatever we move must be under the templates section, meaning they should be intended to the right and have more spaces before them than the template line itself.

### Operational Entry 103: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/026_Recap - ReplicaSets.extraction.md::E48
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 026_Recap - ReplicaSets.txt
- Evidence: They should be children of the template section.

### Operational Entry 104: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/026_Recap - ReplicaSets.extraction.md::E71
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 026_Recap - ReplicaSets.txt
- Evidence: If you get this wrong, you are likely to get an error that looks like this.

### Operational Entry 105: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/028_Lab Solution - ReplicaSets (optional).extraction.md::E24
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 028_Lab Solution - ReplicaSets (optional).txt
- Evidence: Of course it's obvious, but I mean, I just wanna show you, if you're not sure what the error is then you've got to look at one of these pods in a bit more detail.

### Operational Entry 106: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/028_Lab Solution - ReplicaSets (optional).extraction.md::E41
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 028_Lab Solution - ReplicaSets (optional).txt
- Evidence: So there's one here and there's an issue with the file, so we have to try and fix it.

### Operational Entry 107: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/028_Lab Solution - ReplicaSets (optional).extraction.md::E44
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 028_Lab Solution - ReplicaSets (optional).txt
- Evidence: So the error is that it's unable to recognize this file, no matches for kind ReplicaSet in version V1.

### Operational Entry 108: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/028_Lab Solution - ReplicaSets (optional).extraction.md::E53
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 028_Lab Solution - ReplicaSets (optional).txt
- Evidence: So let's go ahead and fix that apps/V1 and let's try and delete that again.

### Operational Entry 109: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/028_Lab Solution - ReplicaSets (optional).extraction.md::E56
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 028_Lab Solution - ReplicaSets (optional).txt
- Evidence: So next task is to fix the issue in the second file and create the ReplicaSet.

### Operational Entry 110: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/028_Lab Solution - ReplicaSets (optional).extraction.md::E67
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 028_Lab Solution - ReplicaSets (optional).txt
- Evidence: So, basically the issue here is that you have the labels specified here called tier front end, and then the label for the pod that the ReplicaSet will create is engine X.

### Operational Entry 111: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/028_Lab Solution - ReplicaSets (optional).extraction.md::E68
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 028_Lab Solution - ReplicaSets (optional).txt
- Evidence: So, these two should match, otherwise the ReplicaSet cannot basically manage the pods that it creates.

### Operational Entry 112: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/028_Lab Solution - ReplicaSets (optional).extraction.md::E69
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 028_Lab Solution - ReplicaSets (optional).txt
- Evidence: So we've got to either change this to front end or change this to engine X but at the end, both of them should match.

### Operational Entry 113: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/028_Lab Solution - ReplicaSets (optional).extraction.md::E80
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 028_Lab Solution - ReplicaSets (optional).txt
- Evidence: Now, fix the original ReplicaSet to use the correct busy box image.

### Operational Entry 114: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/028_Lab Solution - ReplicaSets (optional).extraction.md::E82
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 028_Lab Solution - ReplicaSets (optional).txt
- Evidence: And we also know that because A, the image name is incorrect, so we've got to know fix that.

### Operational Entry 115: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/028_Lab Solution - ReplicaSets (optional).extraction.md::E90
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 028_Lab Solution - ReplicaSets (optional).txt
- Evidence: And you see there's all still in the error state.

### Operational Entry 116: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/029_Deployments.extraction.md::E7
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 029_Deployments.txt
- Evidence: However, when you upgrade your instances, you do not want to upgrade all of them at once, as we just did.

### Operational Entry 117: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/029_Deployments.extraction.md::E10
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 029_Deployments.txt
- Evidence: Suppose one of the upgrades you performed resulted in an unexpected error, and you're asked to undo the recent change You would like to be able to roll back the changes that were recently carried out.

### Operational Entry 118: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/029_Deployments.extraction.md::E11
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 029_Deployments.txt
- Evidence: Finally, say, for example, you would like to make multiple changes to your environment, such as upgrading the underlying web server versions, as well as scaling your environment and also modifying the resource allocations, etc. you do not want to apply each change immediately after the command is run.

### Operational Entry 119: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/032_Lab Solution - Deployments (optional).extraction.md::E18
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 032_Lab Solution - Deployments (optional).txt
- Evidence: You do not know how many replica sets, so let's just run the "get RS" command again to check the number of replica sets.

### Operational Entry 120: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/032_Lab Solution - Deployments (optional).extraction.md::E48
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 032_Lab Solution - Deployments (optional).txt
- Evidence: It didn't go through, so there is some kind of error.

### Operational Entry 121: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/032_Lab Solution - Deployments (optional).extraction.md::E52
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 032_Lab Solution - Deployments (optional).txt
- Evidence: But the issue is that it's case sensitive, right?

### Operational Entry 122: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/032_Lab Solution - Deployments (optional).extraction.md::E55
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 032_Lab Solution - Deployments (optional).txt
- Evidence: So the reason we have these kind of exercises is just to help you understand and and learn how to, you know, know what the issue is when you come up across these errors.

### Operational Entry 123: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/032_Lab Solution - Deployments (optional).extraction.md::E56
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 032_Lab Solution - Deployments (optional).txt
- Evidence: So oftentimes you'll, you'll face these kind of errors because of these kind of typos or you know what's not being spelled correctly or not in the right case.

### Operational Entry 124: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/032_Lab Solution - Deployments (optional).extraction.md::E57
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 032_Lab Solution - Deployments (optional).txt
- Evidence: And you should know what those mean when you, when you see these kind of errors.

### Operational Entry 125: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/032_Lab Solution - Deployments (optional).extraction.md::E58
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 032_Lab Solution - Deployments (optional).txt
- Evidence: So there's, there are possibilities that you may mix up the API version or kind and we don't want to spend a lot of time during the exam just not knowing what those are.

### Operational Entry 126: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/032_Lab Solution - Deployments (optional).extraction.md::E60
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 032_Lab Solution - Deployments (optional).txt
- Evidence: So I've just fixed that and let's proceed with the creation.

### Operational Entry 127: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/033_Services.extraction.md::E59
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 033_Services.txt
- Evidence: It can have labels, but we don't need that for now.

### Operational Entry 128: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/033_Services.extraction.md::E73
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 033_Services.txt
- Evidence: If you don't provide a target port, it is assumed to be the same as port.

### Operational Entry 129: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/033_Services.extraction.md::E74
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 033_Services.txt
- Evidence: And if you don't provide a node port, a free port in the valid range between 30,000 and 32,767 is automatically allocated.

### Operational Entry 130: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/033_Services.extraction.md::E108
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 033_Services.txt
- Evidence: You don't have to do any additional configuration to make this happen.

### Operational Entry 131: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/034_Services Cluster IP.extraction.md::E19
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 034_Services Cluster IP.txt
- Evidence: Each service gets an IP and name assigned to it inside the cluster, and that is the name that should be used by other paths to access the service.

### Operational Entry 132: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/034_Services Cluster IP.extraction.md::E32
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 034_Services Cluster IP.txt
- Evidence: We will refer to the pod definition file and copy the labels from it and move it under selector, and that should be it.

### Operational Entry 133: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/037_Lab Solution - Services (optional).extraction.md::E29
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 037_Lab Solution - Services (optional).txt
- Evidence: We don't really know what it is.

### Operational Entry 134: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/037_Lab Solution - Services (optional).extraction.md::E73
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 037_Lab Solution - Services (optional).txt
- Evidence: So, there's the link here and clicking on it we see that it gives us a bad gateway error.

### Operational Entry 135: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/038_Namespaces.extraction.md::E22
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 038_Namespaces.txt
- Evidence: This is where resources that should be made available to all users are created.

### Operational Entry 136: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/038_Namespaces.extraction.md::E23
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 038_Namespaces.txt
- Evidence: If your environment is small or you're learning and playing around with a small cluster, you shouldn't really have to worry about namespaces.

### Operational Entry 137: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/038_Namespaces.extraction.md::E28
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 038_Namespaces.txt
- Evidence: That way, while working in the dev environment, you don't accidentally modify resources in production.

### Operational Entry 138: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/038_Namespaces.extraction.md::E40
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 038_Namespaces.txt
- Evidence: Let us now look at some of the operational aspects of namespaces.

### Operational Entry 139: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/038_Namespaces.extraction.md::E47
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 038_Namespaces.txt
- Evidence: If you want to make sure that this pod gets created in the dev environment all the time, even if you don't specify the namespace in the command line, you can move the namespace definition into the pod definition file like this.

### Operational Entry 140: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/038_Namespaces.extraction.md::E58
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 038_Namespaces.txt
- Evidence: But what if we want to switch to the dev namespace permanently, so that we don't have to specify the namespace option anymore?

### Operational Entry 141: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/040_Lab Solution - Namespaces (optional).extraction.md::E15
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 040_Lab Solution - Namespaces (optional).txt
- Evidence: Another way to do this if you don't wanna type the full option is to just use the dash N and, that's two.

### Operational Entry 142: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/040_Lab Solution - Namespaces (optional).extraction.md::E19
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 040_Lab Solution - Namespaces (optional).txt
- Evidence: But we don't want to create it in the default name space.

### Operational Entry 143: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/040_Lab Solution - Namespaces (optional).extraction.md::E37
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 040_Lab Solution - Namespaces (optional).txt
- Evidence: So let's click on, okay, and the question is what DNS name should the blue application use to access the database DB service in its own name space?

### Operational Entry 144: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/040_Lab Solution - Namespaces (optional).extraction.md::E46
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 040_Lab Solution - Namespaces (optional).txt
- Evidence: Now the next question is what DNS name should the blue application use to access the database DB service in the DEV name space?

### Operational Entry 145: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/041_Imperative vs Declarative.extraction.md::E20
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 041_Imperative vs Declarative.txt
- Evidence: You don't have to provide step-by-step instructions.

### Operational Entry 146: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/041_Imperative vs Declarative.extraction.md::E27
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 041_Imperative vs Declarative.txt
- Evidence: Should it fail or should it continue since the VM is already there?

### Operational Entry 147: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/041_Imperative vs Declarative.extraction.md::E29
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 041_Imperative vs Declarative.txt
- Evidence: It should be as simple as updating the version of Nginx in the configuration file, and the system should take care of the rest.

### Operational Entry 148: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/041_Imperative vs Declarative.extraction.md::E30
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 041_Imperative vs Declarative.txt
- Evidence: Ideally, the system should be intelligent enough to know what has already been done and apply the necessary changes only.

### Operational Entry 149: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/041_Imperative vs Declarative.extraction.md::E37
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 041_Imperative vs Declarative.txt
- Evidence: The declarative approach would be to create a set of files that defines the expected state of the applications and services on a Kubernetes cluster, and with a single kubectl apply command, Kubernetes should be able to read the configuration files and decide by itself what needs to be done to bring the infrastructure to the expected state.

### Operational Entry 150: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/041_Imperative vs Declarative.extraction.md::E43
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 041_Imperative vs Declarative.txt
- Evidence: Now, these commands help in quickly creating or modifying objects as we don't have to deal with YAML files.

### Operational Entry 151: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/041_Imperative vs Declarative.extraction.md::E73
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 041_Imperative vs Declarative.txt
- Evidence: Well, then it would fail with an error that says the pod already exists.

### Operational Entry 152: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/041_Imperative vs Declarative.extraction.md::E74
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 041_Imperative vs Declarative.txt
- Evidence: When you update an object, you should always make sure that the object exists first before running the replace command.

### Operational Entry 153: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/041_Imperative vs Declarative.extraction.md::E75
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 041_Imperative vs Declarative.txt
- Evidence: If an object does not exist, the replace command fails with an error message.

### Operational Entry 154: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/041_Imperative vs Declarative.extraction.md::E82
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 041_Imperative vs Declarative.txt
- Evidence: So it never really throws an error that says the object already exists or the updates cannot be applied.

### Operational Entry 155: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/045_Lab Solution - Imperative Commands (optional).extraction.md::E43
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 045_Lab Solution - Imperative Commands (optional).txt
- Evidence: The only time you could you should use KUBECTL CREATE SERVICE is when you need to specify a particular node port, right?

### Operational Entry 156: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/045_Lab Solution - Imperative Commands (optional).extraction.md::E53
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 045_Lab Solution - Imperative Commands (optional).txt
- Evidence: So we don't know if it's a pod or deployment.

### Operational Entry 157: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/045_Lab Solution - Imperative Commands (optional).extraction.md::E60
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 045_Lab Solution - Imperative Commands (optional).txt
- Evidence: And this should be a way to specify the name of the service, which is using name.

### Operational Entry 158: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/045_Lab Solution - Imperative Commands (optional).extraction.md::E66
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 045_Lab Solution - Imperative Commands (optional).txt
- Evidence: KUBECTL EXPOSE Redis, and then we gonna' specify the port, which is 6379.

### Operational Entry 159: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/045_Lab Solution - Imperative Commands (optional).extraction.md::E98
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 045_Lab Solution - Imperative Commands (optional).txt
- Evidence: KUBECTL CREATE namespace Dev NS.

### Operational Entry 160: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/045_Lab Solution - Imperative Commands (optional).extraction.md::E110
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 045_Lab Solution - Imperative Commands (optional).txt
- Evidence: The target port for the service should be 80.

### Operational Entry 161: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/045_Lab Solution - Imperative Commands (optional).extraction.md::E118
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 045_Lab Solution - Imperative Commands (optional).txt
- Evidence: And then we have, it's the default name space so we don't have to specify the name space.

### Operational Entry 162: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/046_Kubectl Apply Command.extraction.md::E32
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 046_Kubectl Apply Command.txt
- Evidence: The create or replace commands do not store the last applied configuration like this.

### Operational Entry 163: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/048_A Quick Reminder.extraction.md::E1
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 048_A Quick Reminder.txt
- Evidence: (bright music) -: Hey, so here is a quick reminder, and I hope you don't mind me jumping in like this.

### Operational Entry 164: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/051_Manual Scheduling.extraction.md::E2
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 051_Manual Scheduling.txt
- Evidence: What do you do when you do not have a scheduler in your cluster?

### Operational Entry 165: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/051_Manual Scheduling.extraction.md::E3
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 051_Manual Scheduling.txt
- Evidence: You probably do not want to rely on the built in scheduler and instead want to schedule the pods yourself.

### Operational Entry 166: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/051_Manual Scheduling.extraction.md::E7
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 051_Manual Scheduling.txt
- Evidence: You don't typically specify this field when you create the pod manifest file.

### Operational Entry 167: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/051_Manual Scheduling.extraction.md::E9
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 051_Manual Scheduling.txt
- Evidence: The scheduler goes through all the pods and looks for those that do not have this property set.

### Operational Entry 168: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/053_Lab Solution - Manual Scheduling (optional).extraction.md::E10
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 053_Lab Solution - Manual Scheduling (optional).txt
- Evidence: And so the goal of this exercise is just to create the pod you don't have to check the status for now let's go to the next question.

### Operational Entry 169: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/053_Lab Solution - Manual Scheduling (optional).extraction.md::E18
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 053_Lab Solution - Manual Scheduling (optional).txt
- Evidence: And we don't see any additional details other than the fact that it's in a pending state.

### Operational Entry 170: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/053_Lab Solution - Manual Scheduling (optional).extraction.md::E40
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 053_Lab Solution - Manual Scheduling (optional).txt
- Evidence: Now if you don't want to run the same command multiple times to check the status you could just add the watch option.

### Operational Entry 171: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/053_Lab Solution - Manual Scheduling (optional).extraction.md::E64
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 053_Lab Solution - Manual Scheduling (optional).txt
- Evidence: So it's not because there's an issue with either Kubernetes or the node or the lab environment.

### Operational Entry 172: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E28
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors.txt
- Evidence: Kubernetes objects use labels and selectors internally to connect different objects together.

### Operational Entry 173: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E41
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Evidence: So there's a file called replica set definition file and the request is to create the replica set and but there's an issue with it, so we've got to fix it.

### Operational Entry 174: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E47
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Evidence: So the error message is that this does not match this.

### Operational Entry 175: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E50
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Evidence: So that's the validation error here.

### Operational Entry 176: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/056_Lab Solution _ Labels and Selectors _ (Optional).extraction.md::E51
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 056_Lab Solution _ Labels and Selectors _ (Optional).txt
- Evidence: So we're gonna fix this by changing this to the value below.

### Operational Entry 177: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E42
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Evidence: The taint effect defines what would happen to the pods if they do not tolerate the taint.

### Operational Entry 178: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E44
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Evidence: Prefer no schedule, which means the system will try to avoid placing a pod on the node, but that is not guaranteed.

### Operational Entry 179: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E45
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Evidence: And third is no execute, which means that new pods will not be scheduled on the node and existing pods on the node, if any will be evicted if they do not tolerate the taint.

### Operational Entry 180: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E56
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Evidence: We do not have any chains or tolerations at this point, so they are scheduled this way.

### Operational Entry 181: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E72
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Evidence: You can see this as well as modify this behavior if required.

### Operational Entry 182: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E73
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Evidence: However, a best practice is to not deploy application workloads on a master server.

### Operational Entry 183: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E39
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Evidence: Is there an error?

### Operational Entry 184: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E23
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Evidence: The smaller notes don't even have the label set, so we don't really have to even check the value of the label, as long as we are sure we don't set a label size to the smaller notes.

### Operational Entry 185: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E25
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Evidence: The operator will simply check if the label size exists on the notes, and you don't need the values section for that, as it does not compare the values.

### Operational Entry 186: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E66
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Evidence: So all we need to do is to set a node affinity rule that says the pods that are part of the deployment red should be placed on a node that has this label set.

### Operational Entry 187: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E68
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Evidence: But if this label exists then that's where it should be placed on.

### Operational Entry 188: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E88
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Evidence: There seems to be some error.

### Operational Entry 189: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E89
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Evidence: So let's go back, see what the error is.

### Operational Entry 190: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E90
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Evidence: It's on line 26 Do not find expected key.

### Operational Entry 191: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E98
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Evidence: So even though here it's said line 26 the issue was a few lines above okay so let's check our solution.

### Operational Entry 192: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/064_Taints and Tolerations vs Node Affinity.extraction.md::E5
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 064_Taints and Tolerations vs Node Affinity.txt
- Evidence: We do not want any other pod to be placed on our node.

### Operational Entry 193: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/064_Taints and Tolerations vs Node Affinity.extraction.md::E11
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 064_Taints and Tolerations vs Node Affinity.txt
- Evidence: However, taints and tolerations does not guarantee that the pods will only prefer these nodes, so the red pods ends up on one of the other nodes that do not have a taint or toleration set.

### Operational Entry 194: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E11
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements.txt
- Evidence: The scheduler avoids placing the pod on those nodes, and instead places the pod on one where sufficient resources are available, and if there is no sufficient resources available on any of the nodes, then the scheduler holds back, scheduling the pod and you will see the pod in a pending state.

### Operational Entry 195: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E29
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements.txt
- Evidence: Now, similarly with memory, you could specify 256 mebibyte using the mi suffix, or specify the same value in memory like this.

### Operational Entry 196: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E31
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements.txt
- Evidence: So um or use the suffix g for uh gigabyte.

### Operational Entry 197: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E57
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements.txt
- Evidence: The pod will be terminated and you will see that the pod terminated with an error in the logs or in the output of the describe command.

### Operational Entry 198: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E78
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements.txt
- Evidence: However, the issue is that if Pod one needs more CPU cycles for some reason and pod two isn't really consuming that many CPU cycles, then we don't want to limit pod one of CPU, right?

### Operational Entry 199: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E82
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements.txt
- Evidence: So we don't want to unnecessarily limit resources of CPU cycles.

### Operational Entry 200: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E95
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements.txt
- Evidence: But in your case, if you don't want to restrict your application to consume additional CPU, uh, if needed, then you could consider not setting limits.

### Operational Entry 201: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E144
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements.txt
- Evidence: For example, if we had to say that all the pods together shouldn't consume more than this much of CPU or memory.

### Operational Entry 202: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/068_Lab Solution - Resource Limits.extraction.md::E15
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 068_Lab Solution - Resource Limits.txt
- Evidence: Yep, so we have a pod called elephant and it fails to get to a running state.

### Operational Entry 203: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/068_Lab Solution - Resource Limits.extraction.md::E19
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 068_Lab Solution - Resource Limits.txt
- Evidence: So, that's, basically, that indicates that it's a memory issue.

### Operational Entry 204: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/069_DaemonSets.extraction.md::E10
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 069_DaemonSets.txt
- Evidence: Then you don't have to worry about adding or removing monitoring agents from these nodes when there are changes in your cluster, as the Daemonset will take care of that for you.

### Operational Entry 205: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/071_Lab Solution - DaemonSets (optional).extraction.md::E11
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 071_Lab Solution - DaemonSets (optional).txt
- Evidence: Should you core DNS, city master.

### Operational Entry 206: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/071_Lab Solution - DaemonSets (optional).extraction.md::E14
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 071_Lab Solution - DaemonSets (optional).txt
- Evidence: On how many nodes are the pods should you'll buy the demo set cube proxy.

### Operational Entry 207: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/071_Lab Solution - DaemonSets (optional).extraction.md::E40
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 071_Lab Solution - DaemonSets (optional).txt
- Evidence: And we don't need replicas, because demo sets don't have replicas, so you can actually look at it and compare it here.

### Operational Entry 208: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/071_Lab Solution - DaemonSets (optional).extraction.md::E45
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 071_Lab Solution - DaemonSets (optional).txt
- Evidence: It's not ready yet, but yeah, that should be okay.

### Operational Entry 209: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/072_Static Pods.extraction.md::E15
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 072_Static Pods.txt
- Evidence: The one thing that the Cubelet knows to do is create pods, but we don't have an API server here to provide pod details.

### Operational Entry 210: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/072_Static Pods.extraction.md::E34
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 072_Static Pods.txt
- Evidence: If you're inspecting an existing cluster, you should inspect this option of the Kubelet to identify the path to the directory.

### Operational Entry 211: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/072_Static Pods.extraction.md::E36
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 072_Static Pods.txt
- Evidence: You should know to view and configure this option, irrespective of the method used to set up the cluster.

### Operational Entry 212: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/072_Static Pods.extraction.md::E39
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 072_Static Pods.txt
- Evidence: Either of this should give you the right path.

### Operational Entry 213: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/072_Static Pods.extraction.md::E42
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 072_Static Pods.txt
- Evidence: Remember, we don't have the rest of the Kubernetes cluster yet, so the kube control utility works with the kube API server since we don't have an API server now.

### Operational Entry 214: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/072_Static Pods.extraction.md::E63
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 072_Static Pods.txt
- Evidence: This way you don't have to download the binaries, configure services, or worry about the services crashing if any of these services were to crash.

### Operational Entry 215: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/074_Lab Solution - Static Pods (Optional).extraction.md::E22
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 074_Lab Solution - Static Pods (Optional).txt
- Evidence: We should be able to kind of go through this, traverse this this file and then look at the owner reference.

### Operational Entry 216: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/074_Lab Solution - Static Pods (Optional).extraction.md::E51
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 074_Lab Solution - Static Pods (Optional).txt
- Evidence: So as of this recording this is the version you should make sure that whatever the version needs that you are working on make sure you choose that as the answer.

### Operational Entry 217: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/074_Lab Solution - Static Pods (Optional).extraction.md::E55
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 074_Lab Solution - Static Pods (Optional).txt
- Evidence: Now what we need to do is we don't want to create this I said we just wanna get the pod definition file and place it in the static pod path for this node, right?

### Operational Entry 218: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/074_Lab Solution - Static Pods (Optional).extraction.md::E60
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 074_Lab Solution - Static Pods (Optional).txt
- Evidence: So do not place anything.

### Operational Entry 219: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/074_Lab Solution - Static Pods (Optional).extraction.md::E61
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 074_Lab Solution - Static Pods (Optional).txt
- Evidence: So the, the command should always be at the end.

### Operational Entry 220: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/074_Lab Solution - Static Pods (Optional).extraction.md::E63
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 074_Lab Solution - Static Pods (Optional).txt
- Evidence: So any, any option for the kubectl utility should be before the command option.

### Operational Entry 221: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/074_Lab Solution - Static Pods (Optional).extraction.md::E71
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 074_Lab Solution - Static Pods (Optional).txt
- Evidence: Okay, there's a issue.

### Operational Entry 222: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/074_Lab Solution - Static Pods (Optional).extraction.md::E75
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 074_Lab Solution - Static Pods (Optional).txt
- Evidence: So that's why you should always verify after you do anything, especially in the exam it's possible that we might make typos different places.

### Operational Entry 223: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/074_Lab Solution - Static Pods (Optional).extraction.md::E94
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 074_Lab Solution - Static Pods (Optional).txt
- Evidence: But if that isn't working, then you should always look up at the internal IP address following this command and sss do that node.

### Operational Entry 224: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E33
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Evidence: Now, what if I don't specify a priority class name for a pod?

### Operational Entry 225: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E54
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Evidence: Now that behavior is defined by the preemption policy defined in the priority class assigned to the new workload.

### Operational Entry 226: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E57
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Evidence: But if you do not want it to kill or evict the existing workload, and instead wait for the cluster resources to free up, then you must set this preemption policy to never.

### Operational Entry 227: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E16
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Evidence: Now the default scheduler doesn't really need one because if you don't specify a name it sets the name to default scheduler.

### Operational Entry 228: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E102
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Evidence: You could also view the logs of the scheduler in case you run into issues.

### Operational Entry 229: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E19
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Evidence: So we don't have to worry about that.

### Operational Entry 230: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E45
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Evidence: The liveness probe, the readiness probe are all set so we don't really have to worry about that.

### Operational Entry 231: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E17
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Evidence: And you should set it a name and set it a priority value.

### Operational Entry 232: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E24
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Evidence: So in our case the first two nodes do not have sufficient resources.

### Operational Entry 233: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E25
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Evidence: So do not have ten CPU remaining.

### Operational Entry 234: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E47
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Evidence: Now note that at this phase, the plugins do not really reject the pod placement on a particular node.

### Operational Entry 235: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/080_Configuring Scheduler Profiles.extraction.md::E66
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles.txt
- Evidence: So having learned that, let's look at how we can change the default behavior of how these plugins are called and and and how we can get our own plugins in there if it's really needed.

### Operational Entry 236: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/082_(2025 Updates)Admission Controllers.extraction.md::E21
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 082_(2025 Updates)Admission Controllers.txt
- Evidence: For example, when a pod creation request comes in, you'd like to review the configuration file and look at the image name and say that you do not want to allow images from a public Docker Hub registry.

### Operational Entry 237: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/082_(2025 Updates)Admission Controllers.extraction.md::E24
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 082_(2025 Updates)Admission Controllers.txt
- Evidence: Then you do not want to allow that request or allow certain capabilities only, or to enforce that the metadata always contains labels.

### Operational Entry 238: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/082_(2025 Updates)Admission Controllers.extraction.md::E33
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 082_(2025 Updates)Admission Controllers.txt
- Evidence: Admission controller rejects requests to namespaces that do not exist, and there are many more admission controllers available.

### Operational Entry 239: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/082_(2025 Updates)Admission Controllers.extraction.md::E38
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 082_(2025 Updates)Admission Controllers.txt
- Evidence: If I run this command, it would throw an error that says the namespace blue is not found.

### Operational Entry 240: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/082_(2025 Updates)Admission Controllers.extraction.md::E62
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 082_(2025 Updates)Admission Controllers.txt
- Evidence: Admission controllers are deprecated and is now replaced by the namespace lifecycle admission controller.

### Operational Entry 241: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/084_(2025 Updates)Lab Solution_ Admission Controllers.extraction.md::E15
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Evidence: So it says admission plugins, that should be enabled, in addition to the default enabled ones.

### Operational Entry 242: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/084_(2025 Updates)Lab Solution_ Admission Controllers.extraction.md::E20
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Evidence: So here's MutatingAdmissionWebhook, then we have ValidatingAdmissionWebhook, however, we don't see NamespaceAutoProvision in this list, so NamespaceAutoProvision is not enabled by default.

### Operational Entry 243: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/084_(2025 Updates)Lab Solution_ Admission Controllers.extraction.md::E25
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Evidence: And if you don't want to go into vi, we can always just grep for this, so I can say grep enable-admission-plugins, and then passing the path to that specific file.

### Operational Entry 244: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/084_(2025 Updates)Lab Solution_ Admission Controllers.extraction.md::E29
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Evidence: So let's copy this command, which is going to create that pod, and we can see that it throws an error, because the namespace blue was not found.

### Operational Entry 245: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/084_(2025 Updates)Lab Solution_ Admission Controllers.extraction.md::E30
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Evidence: Now the reason this ultimately failed and it threw that error was because Kubernetes has a NamespaceExists admission controller enabled, which rejects requests to namespaces that do not exist.

### Operational Entry 246: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/084_(2025 Updates)Lab Solution_ Admission Controllers.extraction.md::E43
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Evidence: So when we run this, what should happen is it should now create a namespace called blue.

### Operational Entry 247: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/084_(2025 Updates)Lab Solution_ Admission Controllers.extraction.md::E45
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 084_(2025 Updates)Lab Solution_ Admission Controllers.txt
- Evidence: And this next question is just pointing out that the NamespaceExists and the NamespaceAutoProvision admission controllers are deprecated and are now replaced by the NamespaceLifecycle admission controller.

### Operational Entry 248: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/085_(2025 Updates)Validating and Mutating Admission Controllers.extraction.md::E23
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 085_(2025 Updates)Validating and Mutating Admission Controllers.txt
- Evidence: And when a request goes through these admission controllers, if any admission controller rejects the request, the request is rejected and an error message is shown to the user.

### Operational Entry 249: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/085_(2025 Updates)Validating and Mutating Admission Controllers.extraction.md::E59
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 085_(2025 Updates)Validating and Mutating Admission Controllers.txt
- Evidence: So don't worry if you don't fully understand this piece of code.

### Operational Entry 250: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/085_(2025 Updates)Validating and Mutating Admission Controllers.extraction.md::E81
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 085_(2025 Updates)Validating and Mutating Admission Controllers.txt
- Evidence: So a certificate bundle should be configured.

### Operational Entry 251: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/085_(2025 Updates)Validating and Mutating Admission Controllers.extraction.md::E90
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 085_(2025 Updates)Validating and Mutating Admission Controllers.txt
- Evidence: In this example, we're only going to call this webhook configuration when calls are made to create pods, and that should be it.

### Operational Entry 252: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/087_(2025 Updates)Lab Solution_ Validating and Mutating Admission Controllers.extraction.md::E57
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 087_(2025 Updates)Lab Solution_ Validating and Mutating Admission Controllers.txt
- Evidence: And so if we look for a security context, we should see what it provided.

### Operational Entry 253: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/087_(2025 Updates)Lab Solution_ Validating and Mutating Admission Controllers.extraction.md::E69
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 087_(2025 Updates)Lab Solution_ Validating and Mutating Admission Controllers.txt
- Evidence: So we'll do a kubectl apply dash F, and we should see that it's going to reject this because we are asking to run as non root with it set to true, but then run as user set to zero, which is the root user.

### Operational Entry 254: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/089_Monitor Cluster Components.extraction.md::E10
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 089_Monitor Cluster Components.txt
- Evidence: However, hipster is now deprecated and a slimmed down version was formed, known as the Metrics Server.

### Operational Entry 255: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E9
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Evidence: But if you're trying this in your own environment or for a production environment, so remember do not use this for production use-cases because there are changes that are in here that are done just to make this work with this particular lab exercise and just to make it easy for us to deploy it.

### Operational Entry 256: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E10
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Evidence: So do not use this for a production use-case.

### Operational Entry 257: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E41
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Evidence: This consumes one milli core of CPU so select lion and that should be it.

### Operational Entry 258: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E17
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Evidence: And if you see a user is reporting issues while trying to purchase an item.

### Operational Entry 259: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E18
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Evidence: Identify the user and the cause of the issue.

### Operational Entry 260: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E28
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Evidence: And the question is, a user is reporting issues while trying to purchase an item.

### Operational Entry 261: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E29
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Evidence: So we've gotta identify the user and the cause of the issue.

### Operational Entry 262: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E30
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Evidence: So if you look at this, these are all normal events, but these are warnings.

### Operational Entry 263: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E31
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Evidence: So let's look at the warnings.

### Operational Entry 264: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E33
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Evidence: That's not the issue here.

### Operational Entry 265: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/094_Lab Solution_ Logging _ (Optional).extraction.md::E35
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 094_Lab Solution_ Logging _ (Optional).txt
- Evidence: So that seems to be, and that's those are the only two issues.

### Operational Entry 266: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/096_Rolling Updates and Rollbacks.extraction.md::E14
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 096_Rolling Updates and Rollbacks.txt
- Evidence: The second strategy is where we do not destroy all of them at once.

### Operational Entry 267: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/096_Rolling Updates and Rollbacks.extraction.md::E17
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 096_Rolling Updates and Rollbacks.txt
- Evidence: Remember, if you do not specify a strategy while creating the deployment, it will assume it to be rolling.

### Operational Entry 268: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/098_Lab Solution_ Rolling update.extraction.md::E56
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 098_Lab Solution_ Rolling update.txt
- Evidence: Kubectle, set image, deploy, front end.

### Operational Entry 269: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/098_Lab Solution_ Rolling update.extraction.md::E92
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 098_Lab Solution_ Rolling update.txt
- Evidence: And when we run this time, unlike the previous time, we see a lot of failures, so some of the requests are failing.

### Operational Entry 270: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/100_Commands and Arguments in Docker.extraction.md::E40
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 100_Commands and Arguments in Docker.txt
- Evidence: But remember, when you specify in a JSON array format, the first element in the array should be the executable.

### Operational Entry 271: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/100_Commands and Arguments in Docker.extraction.md::E41
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 100_Commands and Arguments in Docker.txt
- Evidence: In this case, the sleep program do not specify the command and parameters together like this.

### Operational Entry 272: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/100_Commands and Arguments in Docker.extraction.md::E42
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 100_Commands and Arguments in Docker.txt
- Evidence: The command and its parameters should be separate elements in the list.

### Operational Entry 273: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/100_Commands and Arguments in Docker.extraction.md::E53
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 100_Commands and Arguments in Docker.txt
- Evidence: So we shouldn't have to specify the sleep command again.

### Operational Entry 274: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/100_Commands and Arguments in Docker.extraction.md::E55
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 100_Commands and Arguments in Docker.txt
- Evidence: Docker run ubuntu sleeper ten.

### Operational Entry 275: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/100_Commands and Arguments in Docker.extraction.md::E56
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 100_Commands and Arguments in Docker.txt
- Evidence: We only want to pass in the number of seconds the container should sleep, and sleep command should be invoked automatically.

### Operational Entry 276: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/100_Commands and Arguments in Docker.extraction.md::E66
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 100_Commands and Arguments in Docker.txt
- Evidence: Then the command at startup will be just sleep and you get the error that the operand is missing.

### Operational Entry 277: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/100_Commands and Arguments in Docker.extraction.md::E72
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 100_Commands and Arguments in Docker.txt
- Evidence: And remember for this to happen, you should always specify the entry point and command instructions in a JSON format.

### Operational Entry 278: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/100_Commands and Arguments in Docker.extraction.md::E73
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 100_Commands and Arguments in Docker.txt
- Evidence: Finally, what if you really, really want to modify the entry point during runtime, say from sleep to an imaginary sleep 2.0 command?

### Operational Entry 279: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/101_Commands and Arguments in Kubernetes.extraction.md::E21
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 101_Commands and Arguments in Kubernetes.txt
- Evidence: Head over to the Coding exercises section and practice viewing, configuring and troubleshooting commands and arguments in Kubernetes.

### Operational Entry 280: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/103_Lab Solution - Commands and Arguments (Optional).extraction.md::E7
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 103_Lab Solution - Commands and Arguments (Optional).txt
- Evidence: And I do not see any arguments so that's the command.

### Operational Entry 281: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/103_Lab Solution - Commands and Arguments (Optional).extraction.md::E51
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 103_Lab Solution - Commands and Arguments (Optional).txt
- Evidence: Okay, and there's something wrong with it, so try and fix it.

### Operational Entry 282: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/103_Lab Solution - Commands and Arguments (Optional).extraction.md::E52
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 103_Lab Solution - Commands and Arguments (Optional).txt
- Evidence: So taking a quick look, I don't see anything wrong with it.

### Operational Entry 283: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/103_Lab Solution - Commands and Arguments (Optional).extraction.md::E57
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 103_Lab Solution - Commands and Arguments (Optional).txt
- Evidence: So this exercise was just to kind of make sure you know that you don't accidentally put in a number instead of a string.

### Operational Entry 284: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/103_Lab Solution - Commands and Arguments (Optional).extraction.md::E59
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 103_Lab Solution - Commands and Arguments (Optional).txt
- Evidence: Okay, that should be good.

### Operational Entry 285: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/103_Lab Solution - Commands and Arguments (Optional).extraction.md::E74
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 103_Lab Solution - Commands and Arguments (Optional).txt
- Evidence: And that's also, that's the best practice.

### Operational Entry 286: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/103_Lab Solution - Commands and Arguments (Optional).extraction.md::E76
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 103_Lab Solution - Commands and Arguments (Optional).txt
- Evidence: And as is mentioned before and that's completely okay, that's unexpected behavior.

### Operational Entry 287: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/103_Lab Solution - Commands and Arguments (Optional).extraction.md::E124
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 103_Lab Solution - Commands and Arguments (Optional).txt
- Evidence: Now, what it says is by default, it runs, it actually runs, it displays a blue background, but we want, that's the behavior of this particular image.

### Operational Entry 288: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/103_Lab Solution - Commands and Arguments (Optional).extraction.md::E131
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 103_Lab Solution - Commands and Arguments (Optional).txt
- Evidence: So that's one way to do it, but something like this, we should be able to do it in a much easier, more straightforward way.

### Operational Entry 289: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/103_Lab Solution - Commands and Arguments (Optional).extraction.md::E136
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 103_Lab Solution - Commands and Arguments (Optional).txt
- Evidence: So basically all you should be able to do is keep kubectl run and then whatever is the name of whatever that it is, the name of that application, so web app followed by, you know, the image name and stuff.

### Operational Entry 290: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/103_Lab Solution - Commands and Arguments (Optional).extraction.md::E137
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 103_Lab Solution - Commands and Arguments (Optional).txt
- Evidence: And also it should be as easy to customize it by just passing in the color and color like this.

### Operational Entry 291: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/103_Lab Solution - Commands and Arguments (Optional).extraction.md::E138
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 103_Lab Solution - Commands and Arguments (Optional).txt
- Evidence: So once this, once this application is containerized and a Docker image is built out of it it should be as easy as something like this, right?

### Operational Entry 292: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/103_Lab Solution - Commands and Arguments (Optional).extraction.md::E164
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 103_Lab Solution - Commands and Arguments (Optional).txt
- Evidence: In this case we don't, we're not going to do that.

### Operational Entry 293: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/105_Configuring ConfigMaps in Applications.extraction.md::E11
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 105_Configuring ConfigMaps in Applications.txt
- Evidence: If you do not wish to create a config map definition file, you could simply use the cube control create config map command and specify the required arguments.

### Operational Entry 294: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/105_Configuring ConfigMaps in Applications.extraction.md::E53
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 105_Configuring ConfigMaps in Applications.txt
- Evidence: So head over to the coding exercises section and practice viewing, configuring and troubleshooting environment variables on a live Kubernetes environment.

### Operational Entry 295: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/107_Lab Solution - Env Variables (Optional).extraction.md::E15
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 107_Lab Solution - Env Variables (Optional).txt
- Evidence: Now we know that it may not allow us of course it's not gonna allow us to edit this on the pod but we don't really care because we just need the edited or updated manifest file that we can then use to replace the pod.

### Operational Entry 296: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/107_Lab Solution - Env Variables (Optional).extraction.md::E44
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 107_Lab Solution - Env Variables (Optional).txt
- Evidence: And so we don't want the the from file option.

### Operational Entry 297: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/107_Lab Solution - Env Variables (Optional).extraction.md::E70
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 107_Lab Solution - Env Variables (Optional).txt
- Evidence: And this should be web app config app.

### Operational Entry 298: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/111_Lab Solution - Secrets (Optional).extraction.md::E42
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 111_Lab Solution - Secrets (Optional).txt
- Evidence: So, that's the error.

### Operational Entry 299: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/111_Lab Solution - Secrets (Optional).extraction.md::E57
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 111_Lab Solution - Secrets (Optional).txt
- Evidence: Secret generics, don't forget generic.

### Operational Entry 300: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/111_Lab Solution - Secrets (Optional).extraction.md::E74
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 111_Lab Solution - Secrets (Optional).txt
- Evidence: But, if we don't know how to do that, let's first review the Kubernetes documentation pages and look at secrets.

### Operational Entry 301: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/111_Lab Solution - Secrets (Optional).extraction.md::E90
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 111_Lab Solution - Secrets (Optional).txt
- Evidence: We can have this anywhere, space that and the key name should be DB Secret.

### Operational Entry 302: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/111_Lab Solution - Secrets (Optional).extraction.md::E104
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 111_Lab Solution - Secrets (Optional).txt
- Evidence: And, yeah, of course remember, we should not, you know, read passwords and display it like this.

### Operational Entry 303: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/111_Lab Solution - Secrets (Optional).extraction.md::E106
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 111_Lab Solution - Secrets (Optional).txt
- Evidence: And this kind of helps us debug if something is not passed through right.

### Operational Entry 304: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/112_Demo_ Encrypting Secret Data at Rest.extraction.md::E38
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 112_Demo_ Encrypting Secret Data at Rest.txt
- Evidence: So we don't have that, so the first step is to get that installed.

### Operational Entry 305: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/112_Demo_ Encrypting Secret Data at Rest.extraction.md::E41
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 112_Demo_ Encrypting Secret Data at Rest.txt
- Evidence: Yup, so if you do not have the etcd, so remember that the etcd server is running in a pod.

### Operational Entry 306: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/112_Demo_ Encrypting Secret Data at Rest.extraction.md::E80
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 112_Demo_ Encrypting Secret Data at Rest.txt
- Evidence: And here, you don't see the encryption option that we've talked about here.

### Operational Entry 307: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/112_Demo_ Encrypting Secret Data at Rest.extraction.md::E115
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 112_Demo_ Encrypting Secret Data at Rest.txt
- Evidence: So if you really want to encrypt the data in etcd, then one of these should be at the top.

### Operational Entry 308: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/112_Demo_ Encrypting Secret Data at Rest.extraction.md::E126
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 112_Demo_ Encrypting Secret Data at Rest.txt
- Evidence: So I'll call it enc.yaml and I'm gonna paste this, okay, should have copied the secret value first.

### Operational Entry 309: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/112_Demo_ Encrypting Secret Data at Rest.extraction.md::E164
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 112_Demo_ Encrypting Secret Data at Rest.txt
- Evidence: So now that I've saved and made changes to this file, the kube-apiserver should be restarting.

### Operational Entry 310: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/115_Multi Container Pods.extraction.md::E6
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 115_Multi Container Pods.txt
- Evidence: You don't want to merge and bloat the code of the two services, as each of them target different features, and you still like them to be developed and deployed separately.

### Operational Entry 311: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/115_Multi Container Pods.extraction.md::E12
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 115_Multi Container Pods.txt
- Evidence: This way you do not have to establish volume sharing or services between the pods to enable communication between them.

### Operational Entry 312: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/120_Lab Solution - Init Containers (Optional).extraction.md::E9
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 120_Lab Solution - Init Containers (Optional).txt
- Evidence: And if you don't specify any pod name, it's going to list the description of all the pods.

### Operational Entry 313: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/120_Lab Solution - Init Containers (Optional).extraction.md::E31
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 120_Lab Solution - Init Containers (Optional).txt
- Evidence: So the process do not crash, the process cannot start, now the process completed successfully and that's why it has exit code zero here.

### Operational Entry 314: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/120_Lab Solution - Init Containers (Optional).extraction.md::E60
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 120_Lab Solution - Init Containers (Optional).txt
- Evidence: Now a new application orange is deployed, there is something wrong with it, identify and fix the issue and once fixed, wait for the application to run before checking the solution.

### Operational Entry 315: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/120_Lab Solution - Init Containers (Optional).extraction.md::E75
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 120_Lab Solution - Init Containers (Optional).txt
- Evidence: And you see that the state is terminated, but this time the reason is error as opposed to completed as it is before.

### Operational Entry 316: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/120_Lab Solution - Init Containers (Optional).extraction.md::E77
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 120_Lab Solution - Init Containers (Optional).txt
- Evidence: So, and it's just, it just keeps restarting until you know, until it's fixed.

### Operational Entry 317: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/120_Lab Solution - Init Containers (Optional).extraction.md::E78
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 120_Lab Solution - Init Containers (Optional).txt
- Evidence: So let's go ahead and fix that.

### Operational Entry 318: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/120_Lab Solution - Init Containers (Optional).extraction.md::E79
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 120_Lab Solution - Init Containers (Optional).txt
- Evidence: Let's do a kubectl edit or Orange and go to Init containers, we're going to fix this.

### Operational Entry 319: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/120_Lab Solution - Init Containers (Optional).extraction.md::E80
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 120_Lab Solution - Init Containers (Optional).txt
- Evidence: Just fix the typo and we'll save that and surprise, surprise and save that so we're going to just do a kubectl replace, force -f with this file.

### Operational Entry 320: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/122_(2025 Updates) Introduction to Autoscaling_.extraction.md::E16
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 122_(2025 Updates) Introduction to Autoscaling_.txt
- Evidence: Another thing we could have done is that we could have avoided having to shut down the server.

### Operational Entry 321: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/122_(2025 Updates) Introduction to Autoscaling_.extraction.md::E39
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 122_(2025 Updates) Introduction to Autoscaling_.txt
- Evidence: When it comes to vertical scaling, I don't think that's a common approach used for Kubernetes, because it would result in having to take down the server and applications running on them, and then add more resources to the servers and bring it back up, which is not something that we would want to do.

### Operational Entry 322: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/122_(2025 Updates) Introduction to Autoscaling_.extraction.md::E41
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 122_(2025 Updates) Introduction to Autoscaling_.txt
- Evidence: So I don't think vertical scaling is that common of an approach.

### Operational Entry 323: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/126_(2025 Updates) In-Place Resize of Pods_.extraction.md::E10
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 126_(2025 Updates) In-Place Resize of Pods_.txt
- Evidence: So that's the default behavior.

### Operational Entry 324: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.extraction.md::E12
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Evidence: Now of course we don't wanna do it manually.

### Operational Entry 325: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.extraction.md::E16
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Evidence: So unlike the horizontal pod autoscaler, the vertical pod autoscaler do not come built-in, as such, we must deploy it.

### Operational Entry 326: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.extraction.md::E19
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Evidence: So there is the admission controller recommender and the updater service, which should be running.

### Operational Entry 327: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.extraction.md::E29
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Evidence: And the admission controller intervenes the pod creation process and uses the recommendations from the recommender again, to then mutate the pod spec to apply the recommended CPU and memory values at startup.

### Operational Entry 328: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.extraction.md::E52
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Evidence: And finally, we have the auto mode that updates existing pods to the recommended numbers.

### Operational Entry 329: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.extraction.md::E57
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Evidence: When the in-place update of pod resources are available in stable version of Kubernetes, that would be the default behavior.

### Operational Entry 330: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.extraction.md::E78
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Evidence: And HPA on the other hand, avoids unnecessary idle pods ensuring that resources are used efficiently without keeping excess instances running.

### Operational Entry 331: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.extraction.md::E79
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Evidence: So when should you use which?

### Operational Entry 332: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/130_Cluster Maintenance - Section Introduction.extraction.md::E6
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 130_Cluster Maintenance - Section Introduction.txt
- Evidence: But before we do that, we need to know a little bit about Kubernetes releases and versions and the best practices around upgrading, when to upgrade, what version to upgrade to, et cetera.

### Operational Entry 333: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/131_OS Upgrades.extraction.md::E22
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 131_OS Upgrades.txt
- Evidence: However, you do not for sure know if a node is going to be back online in five minutes.

### Operational Entry 334: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/131_OS Upgrades.extraction.md::E32
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 131_OS Upgrades.txt
- Evidence: Now remember, the pods that were moved to the other nodes don't automatically fall back.

### Operational Entry 335: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/133_Kubernetes Releases.extraction.md::E9
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 133_Kubernetes Releases.txt
- Evidence: Now, while minor versions are released every few months with new features and functionalities, patches are released more often with critical bug fixes.

### Operational Entry 336: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/133_Kubernetes Releases.extraction.md::E14
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 133_Kubernetes Releases.txt
- Evidence: All the bug fixes and improvements first go into Alpha release.

### Operational Entry 337: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/133_Kubernetes Releases.extraction.md::E22
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 133_Kubernetes Releases.txt
- Evidence: Now remember that there are other components within the control plane that do not have the same version numbers.

### Operational Entry 338: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/135_Cluster Upgrade Introduction.extraction.md::E7
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 135_Cluster Upgrade Introduction.txt
- Evidence: None of the other components should ever be at a version higher than the kube API server.

### Operational Entry 339: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/135_Cluster Upgrade Introduction.extraction.md::E16
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 135_Cluster Upgrade Introduction.txt
- Evidence: So when should you upgrade?

### Operational Entry 340: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/135_Cluster Upgrade Introduction.extraction.md::E25
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 135_Cluster Upgrade Introduction.txt
- Evidence: The recommended approach is to upgrade one minor version at a time.

### Operational Entry 341: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/135_Cluster Upgrade Introduction.extraction.md::E32
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 135_Cluster Upgrade Introduction.txt
- Evidence: So you have a cluster with master and worker nodes running in production, hosting pods serving users.

### Operational Entry 342: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/135_Cluster Upgrade Introduction.extraction.md::E41
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 135_Cluster Upgrade Introduction.txt
- Evidence: The controller managers don't function either.

### Operational Entry 343: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/135_Cluster Upgrade Introduction.extraction.md::E43
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 135_Cluster Upgrade Introduction.txt
- Evidence: But as long as the nodes and pods are up, your applications should be up and users will not be impacted.

### Operational Entry 344: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/135_Cluster Upgrade Introduction.extraction.md::E44
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 135_Cluster Upgrade Introduction.txt
- Evidence: Once the upgrade is complete and the cluster is back up, it should function normally.

### Operational Entry 345: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/135_Cluster Upgrade Introduction.extraction.md::E63
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 135_Cluster Upgrade Introduction.txt
- Evidence: Kubeadm has an upgrade command that helps in upgrading clusters with Kubeadm.

### Operational Entry 346: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/135_Cluster Upgrade Introduction.extraction.md::E83
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 135_Cluster Upgrade Introduction.txt
- Evidence: When we set up a Kubernetes cluster from scratch later during this course, we do not install Kubelet on the master nodes.

### Operational Entry 347: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/135_Cluster Upgrade Introduction.extraction.md::E98
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 135_Cluster Upgrade Introduction.txt
- Evidence: The node should now be up with the new software version.

### Operational Entry 348: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E10
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: And so those have been deprecated.

### Operational Entry 349: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E34
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: So now if I just scroll down here, that should be everything that we do.

### Operational Entry 350: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E35
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: And then after we run those two commands, we can do an apt-get update and we should be all set.

### Operational Entry 351: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E62
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: So if I do kubeadm version, it should show that version 1.29.

### Operational Entry 352: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E65
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: So the plan command is just gonna walk us through the different versions that we can upgrade our cluster to and it's gonna make sure that there aren't some sort of like, compatibility issues.

### Operational Entry 353: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E78
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: And if we want to do that, we can always do a kubeadm upgrade apply v1.28.8, but we don't want that, we want to upgrade to 1.29.3, which is the instructions down here.

### Operational Entry 354: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E120
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: Now if I do a get node, we should see we no longer have the scheduling disabled next to our control plane node.

### Operational Entry 355: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E128
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: And so you'll see here you get that same message about changing package repository, but we already did that for our worker node so we don't need to do that again.

### Operational Entry 356: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E134
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: So we don't do an apply, we do an upgrade node.

### Operational Entry 357: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E142
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: Keep in mind, you don't technically need to have that on there, but if you do, go ahead and upgrade that as well.

### Operational Entry 358: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/138_Backup and Restore Methods.extraction.md::E2
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 138_Backup and Restore Methods.txt
- Evidence: Let's start by looking at what you should consider backing up in a Kubernetes cluster.

### Operational Entry 359: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/138_Backup and Restore Methods.extraction.md::E13
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 138_Backup and Restore Methods.txt
- Evidence: The source code repository should be configured with the right backup solutions with managed or public source code repositories like GitHub.

### Operational Entry 360: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/138_Backup and Restore Methods.extraction.md::E14
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 138_Backup and Restore Methods.txt
- Evidence: You don't have to worry about this.

### Operational Entry 361: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/138_Backup and Restore Methods.extraction.md::E23
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 138_Backup and Restore Methods.txt
- Evidence: Of course you don't have to develop that solutions yourself.

### Operational Entry 362: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/138_Backup and Restore Methods.extraction.md::E49
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 138_Backup and Restore Methods.txt
- Evidence: Your cluster should now be back in the original state.

### Operational Entry 363: certified-kubernetes-administrator-with-practice-tests/07_Security/143_Security - Section Introduction.extraction.md::E14
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 143_Security - Section Introduction.txt
- Evidence: These lectures and the practice tests associated with them should help bridge that gap.

### Operational Entry 364: certified-kubernetes-administrator-with-practice-tests/07_Security/143_Security - Section Introduction.extraction.md::E16
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 143_Security - Section Introduction.txt
- Evidence: Our goal is to enable you to tackle any security related or certificate related issues by the end of this section.

### Operational Entry 365: certified-kubernetes-administrator-with-practice-tests/07_Security/145_Authentication.extraction.md::E37
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 145_Authentication.txt
- Evidence: Remember that this authentication mechanism that stores usernames, passwords, and tokens in clear text in a static file is not a recommended approach as it is insecure.

### Operational Entry 366: certified-kubernetes-administrator-with-practice-tests/07_Security/146_TLS Introduction.extraction.md::E2
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 146_TLS Introduction.txt
- Evidence: Securing the cluster with TLS and troubleshooting TLS related issues can be especially difficult if you are not familiar with the basics of TLS certificates.

### Operational Entry 367: certified-kubernetes-administrator-with-practice-tests/07_Security/146_TLS Introduction.extraction.md::E8
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 146_TLS Introduction.txt
- Evidence: You should be an expert when it comes to working with certificates in general as well as with Kubernetes, you should be able to easily configure and troubleshoot issues related to certificates, and the only way to do it, as I understand, is to learn and understand how it works in and out.

### Operational Entry 368: certified-kubernetes-administrator-with-practice-tests/07_Security/147_TLS Basics.extraction.md::E34
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 147_TLS Basics.txt
- Evidence: You don't want to use passwords as they are too risky, so you decide to use key pairs.

### Operational Entry 369: certified-kubernetes-administrator-with-practice-tests/07_Security/147_TLS Basics.extraction.md::E104
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 147_TLS Basics.txt
- Evidence: It has information about who the certificate is issued to, the public, key of that server, the location of that server, etc. on the right you see the output of an actual certificate.

### Operational Entry 370: certified-kubernetes-administrator-with-practice-tests/07_Security/147_TLS Basics.extraction.md::E105
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 147_TLS Basics.txt
- Evidence: Every certificate has a name on it, the person or subject to whom the certificate is issued to.

### Operational Entry 371: certified-kubernetes-administrator-with-practice-tests/07_Security/147_TLS Basics.extraction.md::E108
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 147_TLS Basics.txt
- Evidence: If the bank is known by any other names, and if they like their users to access their application with the other names as well, then all those names should be specified in this certificate under the subject Alternative Names section.

### Operational Entry 372: certified-kubernetes-administrator-with-practice-tests/07_Security/147_TLS Basics.extraction.md::E115
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 147_TLS Basics.txt
- Evidence: Who signed and issued the certificate?

### Operational Entry 373: certified-kubernetes-administrator-with-practice-tests/07_Security/147_TLS Basics.extraction.md::E130
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 147_TLS Basics.txt
- Evidence: This generates a Mai-bangkok CSR file, which is the certificate signing request that should be sent to the CA for signing.

### Operational Entry 374: certified-kubernetes-administrator-with-practice-tests/07_Security/147_TLS Basics.extraction.md::E149
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 147_TLS Basics.txt
- Evidence: However, they don't help you validate sites hosted privately, say within your organization.

### Operational Entry 375: certified-kubernetes-administrator-with-practice-tests/07_Security/147_TLS Basics.extraction.md::E185
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 147_TLS Basics.txt
- Evidence: So a normal user don't have to generate and manage certificates manually.

### Operational Entry 376: certified-kubernetes-administrator-with-practice-tests/07_Security/148_TLS in Kubernetes.extraction.md::E75
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 148_TLS in Kubernetes.txt
- Evidence: We will call it "ca.crt" and "ca.key." That should sum up all the certificates used in the cluster.

### Operational Entry 377: certified-kubernetes-administrator-with-practice-tests/07_Security/149_TLS in Kubernetes - Certificate Creation.extraction.md::E44
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 149_TLS in Kubernetes - Certificate Creation.txt
- Evidence: Now the kube scheduler is a system component part of the Kubernetes control plane, so its name must be prefixed with the keyword system.

### Operational Entry 378: certified-kubernetes-administrator-with-practice-tests/07_Security/149_TLS in Kubernetes - Certificate Creation.extraction.md::E46
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 149_TLS in Kubernetes - Certificate Creation.txt
- Evidence: It is again a system component, so its name must be prefixed with the keyword system and finally kube proxy.

### Operational Entry 379: certified-kubernetes-administrator-with-practice-tests/07_Security/149_TLS in Kubernetes - Certificate Creation.extraction.md::E84
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 149_TLS in Kubernetes - Certificate Creation.txt
- Evidence: Its real name is Kube API server, but some call it Kubernetes because for a lot of people who don't really know what goes under the hoods of Kubernetes?

### Operational Entry 380: certified-kubernetes-administrator-with-practice-tests/07_Security/150_View Certificate Details.extraction.md::E4
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 150_View Certificate Details.txt
- Evidence: You've been told that there are multiple issues related to certificates in the environment.

### Operational Entry 381: certified-kubernetes-administrator-with-practice-tests/07_Security/150_View Certificate Details.extraction.md::E17
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 150_View Certificate Details.txt
- Evidence: So the idea is to create a list of certificate files used, their paths, the names configured on them, the alternate names configured, if any, the organization the certificate account belongs to the issuer of the certificate and the expiration date on the certificate.

### Operational Entry 382: certified-kubernetes-administrator-with-practice-tests/07_Security/150_View Certificate Details.extraction.md::E29
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 150_View Certificate Details.txt
- Evidence: The kube API server has many, so you must ensure all of them are there, and then check the validity section of the certificate to identify the expiry date and then the issuer of the certificate.

### Operational Entry 383: certified-kubernetes-administrator-with-practice-tests/07_Security/150_View Certificate Details.extraction.md::E30
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 150_View Certificate Details.txt
- Evidence: This should be the CA who issued the certificate.

### Operational Entry 384: certified-kubernetes-administrator-with-practice-tests/07_Security/150_View Certificate Details.extraction.md::E35
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 150_View Certificate Details.txt
- Evidence: Make sure the certificates are part of the correct organization, and most importantly, they are issued by the right issuer and that the certificates are not expired.

### Operational Entry 385: certified-kubernetes-administrator-with-practice-tests/07_Security/150_View Certificate Details.extraction.md::E38
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 150_View Certificate Details.txt
- Evidence: When you run into issues, you want to start looking at logs.

### Operational Entry 386: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E64
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Evidence: So the issuer is Kubernetes, but the subject, which is what this certificate is issued to, is the common name for that is kube-apiserver.

### Operational Entry 387: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E68
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Evidence: Now, what is the name of the CA who issued the Kube API Server Certificate?

### Operational Entry 388: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E69
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Evidence: If you at here you have the issuer and the name is Kubernetes.

### Operational Entry 389: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E70
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Evidence: So Kubernetes is the CA who issued the Kube API Server Certificate.

### Operational Entry 390: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E82
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Evidence: And here we can see the issuer is etcd-ca.

### Operational Entry 391: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E90
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Evidence: Now, how long from the issue date is the Kube API Server Certificate valid for?

### Operational Entry 392: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E97
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Evidence: How long from the issue date is the Root CA Certificate valid for?

### Operational Entry 393: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E107
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Evidence: Someone recently modified this particular file, so you're asked to investigate and fix the issue.

### Operational Entry 394: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E108
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Evidence: And once you fix the issue, wait for some time for kubectl to respond.

### Operational Entry 395: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E122
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Evidence: So let's quickly check the logs of that container and we see that it has this error, error while dialing tcp 127.0.0.1:2379.

### Operational Entry 396: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E132
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Evidence: So that's the error.

### Operational Entry 397: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E138
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Evidence: So that's the crt file, and that's the issue.

### Operational Entry 398: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E139
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Evidence: So we have to fix this.

### Operational Entry 399: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E148
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Evidence: So let's check the logs of that container and see that, I see that it's now, that error is not no longer there.

### Operational Entry 400: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E160
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Evidence: And we see, don't see errors anymore so let's check.

### Operational Entry 401: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E171
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Evidence: Now inspect the kube-api server logs and identify the root cause and fix the issue.

### Operational Entry 402: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E174
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Evidence: So it looks like there's some issue with the TLS certificates.

### Operational Entry 403: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E181
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Evidence: Okay, so that's the error.

### Operational Entry 404: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E185
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Evidence: So basically the kube-api server is unable to connect to the ETCD Server because of handshake issue.

### Operational Entry 405: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E188
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Evidence: Let's look at, let's first look at the ETCD pod, and see if that has any issues.

### Operational Entry 406: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E191
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Evidence: And we see that it started, well, there were no errors, but then started getting this rejected connection from, and this is a remote and it's a bad certificate.

### Operational Entry 407: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E210
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Evidence: So here you should be specifying that and not the the Kubernetes CA file.

### Operational Entry 408: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E217
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Evidence: And we see, we don't see those errors anymore.

### Operational Entry 409: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E223
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Evidence: And we realized that it was a certificate issue somewhere.

### Operational Entry 410: certified-kubernetes-administrator-with-practice-tests/07_Security/154_Certificates API.extraction.md::E43
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 154_Certificates API.txt
- Evidence: The request field is where you specify the certificate signing request sent by the user, but you don't specify it as plain text.

### Operational Entry 411: certified-kubernetes-administrator-with-practice-tests/07_Security/156_Lab Solution - Certificates API.extraction.md::E47
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 156_Lab Solution - Certificates API.txt
- Evidence: So the signer name should be recorded as an audio kube-apiserver client.

### Operational Entry 412: certified-kubernetes-administrator-with-practice-tests/07_Security/156_Lab Solution - Certificates API.extraction.md::E52
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 156_Lab Solution - Certificates API.txt
- Evidence: Okay, so it looks like there is an error.

### Operational Entry 413: certified-kubernetes-administrator-with-practice-tests/07_Security/156_Lab Solution - Certificates API.extraction.md::E96
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 156_Lab Solution - Certificates API.txt
- Evidence: And that doesn't look very right, because we don't want to give system masters, which is the group which is an access to a group that has all, that has a lot of powers.

### Operational Entry 414: certified-kubernetes-administrator-with-practice-tests/07_Security/156_Lab Solution - Certificates API.extraction.md::E97
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 156_Lab Solution - Certificates API.txt
- Evidence: So we don't want to do that.

### Operational Entry 415: certified-kubernetes-administrator-with-practice-tests/07_Security/156_Lab Solution - Certificates API.extraction.md::E108
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 156_Lab Solution - Certificates API.txt
- Evidence: Okay, so that should now be gone.

### Operational Entry 416: certified-kubernetes-administrator-with-practice-tests/07_Security/157_KubeConfig.extraction.md::E12
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 157_KubeConfig.txt
- Evidence: So if you create the cube config file there, you don't have to specify the path to the file explicitly in the cube control command.

### Operational Entry 417: certified-kubernetes-administrator-with-practice-tests/07_Security/157_KubeConfig.extraction.md::E26
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 157_KubeConfig.txt
- Evidence: That way, you don't have to specify the user certificates and server address in each and every kube control command you run.

### Operational Entry 418: certified-kubernetes-administrator-with-practice-tests/07_Security/157_KubeConfig.extraction.md::E48
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 157_KubeConfig.txt
- Evidence: Once the file is ready, remember that you don't have to create any object like you usually do for other Kubernetes objects.

### Operational Entry 419: certified-kubernetes-administrator-with-practice-tests/07_Security/157_KubeConfig.extraction.md::E52
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 157_KubeConfig.txt
- Evidence: Which one should it start with?

### Operational Entry 420: certified-kubernetes-administrator-with-practice-tests/07_Security/157_KubeConfig.extraction.md::E59
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 157_KubeConfig.txt
- Evidence: As we discussed earlier, if you do not specify which kubeconfig file to use, it ends up using the default file located in the folder kube in the user's home directory.

### Operational Entry 421: certified-kubernetes-administrator-with-practice-tests/07_Security/157_KubeConfig.extraction.md::E89
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 157_KubeConfig.txt
- Evidence: Practice working with Kubeconfig files and troubleshooting issues.

### Operational Entry 422: certified-kubernetes-administrator-with-practice-tests/07_Security/159_Lab Solution - KubeConfig.extraction.md::E31
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 159_Lab Solution - KubeConfig.txt
- Evidence: So you shouldn't assume that this is the actual user, configured, but it so happens that in this case, the naming and convention is this user at the cluster.

### Operational Entry 423: certified-kubernetes-administrator-with-practice-tests/07_Security/159_Lab Solution - KubeConfig.extraction.md::E32
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 159_Lab Solution - KubeConfig.txt
- Evidence: But you should always look at this field.

### Operational Entry 424: certified-kubernetes-administrator-with-practice-tests/07_Security/159_Lab Solution - KubeConfig.extraction.md::E73
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 159_Lab Solution - KubeConfig.txt
- Evidence: Now, we don't want to have to specify the cube config file option on each command.

### Operational Entry 425: certified-kubernetes-administrator-with-practice-tests/07_Security/159_Lab Solution - KubeConfig.extraction.md::E79
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 159_Lab Solution - KubeConfig.txt
- Evidence: So going forward, we don't have to.

### Operational Entry 426: certified-kubernetes-administrator-with-practice-tests/07_Security/159_Lab Solution - KubeConfig.extraction.md::E85
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 159_Lab Solution - KubeConfig.txt
- Evidence: Identify and fix the issue.

### Operational Entry 427: certified-kubernetes-administrator-with-practice-tests/07_Security/159_Lab Solution - KubeConfig.extraction.md::E97
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 159_Lab Solution - KubeConfig.txt
- Evidence: So that's fixed.

### Operational Entry 428: certified-kubernetes-administrator-with-practice-tests/07_Security/161_API Groups.extraction.md::E37
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 161_API Groups.txt
- Evidence: That way you don't have to specify those in the curl command.

### Operational Entry 429: certified-kubernetes-administrator-with-practice-tests/07_Security/162_Authorization.extraction.md::E9
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 162_Authorization.txt
- Evidence: But we don't want all of them to have the same level of access as us.

### Operational Entry 430: certified-kubernetes-administrator-with-practice-tests/07_Security/162_Authorization.extraction.md::E10
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 162_Authorization.txt
- Evidence: For example, we don't want the developers to have access to modify our cluster configuration, like adding or deleting nodes or the storage or networking configurations.

### Operational Entry 431: certified-kubernetes-administrator-with-practice-tests/07_Security/162_Authorization.extraction.md::E22
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 162_Authorization.txt
- Evidence: In the earlier lectures, when we discussed about certificates, we discussed that the Cubelets should be part of the system nodes group and have a name prefixed with system node.

### Operational Entry 432: certified-kubernetes-administrator-with-practice-tests/07_Security/162_Authorization.extraction.md::E49
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 162_Authorization.txt
- Evidence: You can have Kubernetes make an API call to the open policy agent with the information about the user and his access requirements, and have the open policy agent decide if the user should be permitted or not.

### Operational Entry 433: certified-kubernetes-administrator-with-practice-tests/07_Security/162_Authorization.extraction.md::E59
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 162_Authorization.txt
- Evidence: If you don't specify this option, it is set to always allow by default.

### Operational Entry 434: certified-kubernetes-administrator-with-practice-tests/07_Security/163_Role Based Access Controls.extraction.md::E44
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 163_Role Based Access Controls.txt
- Evidence: You don't have to authenticate as the user to test it.

### Operational Entry 435: certified-kubernetes-administrator-with-practice-tests/07_Security/165_Lab Solution - Role-Based Access Controls.extraction.md::E88
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 165_Lab Solution - Role-Based Access Controls.txt
- Evidence: But there is an issue.

### Operational Entry 436: certified-kubernetes-administrator-with-practice-tests/07_Security/165_Lab Solution - Role-Based Access Controls.extraction.md::E89
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 165_Lab Solution - Role-Based Access Controls.txt
- Evidence: So investigate and fix the issue.

### Operational Entry 437: certified-kubernetes-administrator-with-practice-tests/07_Security/165_Lab Solution - Role-Based Access Controls.extraction.md::E109
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 165_Lab Solution - Role-Based Access Controls.txt
- Evidence: So that's fixed.

### Operational Entry 438: certified-kubernetes-administrator-with-practice-tests/07_Security/165_Lab Solution - Role-Based Access Controls.extraction.md::E133
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 165_Lab Solution - Role-Based Access Controls.txt
- Evidence: So actually it should be deployments, sorry about that.

### Operational Entry 439: certified-kubernetes-administrator-with-practice-tests/07_Security/165_Lab Solution - Role-Based Access Controls.extraction.md::E138
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 165_Lab Solution - Role-Based Access Controls.txt
- Evidence: Yep, so that should be the fix to this.

### Operational Entry 440: certified-kubernetes-administrator-with-practice-tests/07_Security/166_Cluster Roles.extraction.md::E4
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 166_Cluster Roles.txt
- Evidence: If you don't specify a namespace, they are created in the default namespace and control access within that namespace alone.

### Operational Entry 441: certified-kubernetes-administrator-with-practice-tests/07_Security/166_Cluster Roles.extraction.md::E15
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 166_Cluster Roles.txt
- Evidence: If you don't specify a namespace, they're created in the default namespace.

### Operational Entry 442: certified-kubernetes-administrator-with-practice-tests/07_Security/166_Cluster Roles.extraction.md::E17
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 166_Cluster Roles.txt
- Evidence: The cluster scoped resources are those where you don't specify a namespace when you create them like nodes, persistent volumes persist the cluster roles and cluster role bindings that we're going to look at in this lecture.

### Operational Entry 443: certified-kubernetes-administrator-with-practice-tests/07_Security/168_Lab Solution - Cluster Roles.extraction.md::E37
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 168_Lab Solution - Cluster Roles.txt
- Evidence: Kubectl describe cluster role and cluster admin.

### Operational Entry 444: certified-kubernetes-administrator-with-practice-tests/07_Security/168_Lab Solution - Cluster Roles.extraction.md::E44
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 168_Lab Solution - Cluster Roles.txt
- Evidence: User Michelle cannot list resource nodes in the APA group." So it does not give any kind of specifications on the cluster role name or role binding, so basically we should be able to do we should be able to create any role and role bindings as we want.

### Operational Entry 445: certified-kubernetes-administrator-with-practice-tests/07_Security/168_Lab Solution - Cluster Roles.extraction.md::E45
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 168_Lab Solution - Cluster Roles.txt
- Evidence: So let's, as long as this command works, this exercise should be good.

### Operational Entry 446: certified-kubernetes-administrator-with-practice-tests/07_Security/168_Lab Solution - Cluster Roles.extraction.md::E51
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 168_Lab Solution - Cluster Roles.txt
- Evidence: So we're going to name this, let's say Michelle-role, and we should have a get list and watch.

### Operational Entry 447: certified-kubernetes-administrator-with-practice-tests/07_Security/168_Lab Solution - Cluster Roles.extraction.md::E76
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 168_Lab Solution - Cluster Roles.txt
- Evidence: So if you ever want to know what the short names are for some of these, this is the command that you should look at.

### Operational Entry 448: certified-kubernetes-administrator-with-practice-tests/07_Security/168_Lab Solution - Cluster Roles.extraction.md::E82
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 168_Lab Solution - Cluster Roles.txt
- Evidence: So as we learned, the persistent volumes and persistent volume claims, I'm sorry, the cluster role bindings are not namespaced, so you should be able to see those here.

### Operational Entry 449: certified-kubernetes-administrator-with-practice-tests/07_Security/168_Lab Solution - Cluster Roles.extraction.md::E96
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 168_Lab Solution - Cluster Roles.txt
- Evidence: Kubectl describe cluster role storage-admin.

### Operational Entry 450: certified-kubernetes-administrator-with-practice-tests/07_Security/169_Service Accounts.extraction.md::E47
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 169_Service Accounts.txt
- Evidence: Now, if you don't want a token to be automatically created and mounted inside the pod for the service account, you may add the auto mount Service account token key to false like this.

### Operational Entry 451: certified-kubernetes-administrator-with-practice-tests/07_Security/171_Lab Solution_ Service Accounts.extraction.md::E20
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 171_Lab Solution_ Service Accounts.txt
- Evidence: So there's an error saying pods is forbidden.

### Operational Entry 452: certified-kubernetes-administrator-with-practice-tests/07_Security/171_Lab Solution_ Service Accounts.extraction.md::E51
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 171_Lab Solution_ Service Accounts.txt
- Evidence: So it's telling us to get an access token and enter it in the UI dashboard and see if that basically fixes the issue.

### Operational Entry 453: certified-kubernetes-administrator-with-practice-tests/07_Security/171_Lab Solution_ Service Accounts.extraction.md::E56
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 171_Lab Solution_ Service Accounts.txt
- Evidence: So now the next question is telling us, you know, we shouldn't have to create a token and then paste it into our application every time we need an application to interact with the Kubernetes API.

### Operational Entry 454: certified-kubernetes-administrator-with-practice-tests/07_Security/171_Lab Solution_ Service Accounts.extraction.md::E66
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 171_Lab Solution_ Service Accounts.txt
- Evidence: Don't worry about the warning.

### Operational Entry 455: certified-kubernetes-administrator-with-practice-tests/07_Security/172_Image Security.extraction.md::E14
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 172_Image Security.txt
- Evidence: So if you don't provide a user or account name, it assumes it to be library.

### Operational Entry 456: certified-kubernetes-administrator-with-practice-tests/07_Security/172_Image Security.extraction.md::E16
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 172_Image Security.txt
- Evidence: These images promote best practices and are maintained by a dedicated team, who are responsible for reviewing and publishing these official images.

### Operational Entry 457: certified-kubernetes-administrator-with-practice-tests/07_Security/172_Image Security.extraction.md::E21
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 172_Image Security.txt
- Evidence: Docker hub.

### Operational Entry 458: certified-kubernetes-administrator-with-practice-tests/07_Security/172_Image Security.extraction.md::E28
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 172_Image Security.txt
- Evidence: When you have applications built in-house that shouldn't be made available to the public.

### Operational Entry 459: certified-kubernetes-administrator-with-practice-tests/07_Security/172_Image Security.extraction.md::E39
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 172_Image Security.txt
- Evidence: We know that the images are pulled and run by the Docker runtime on the worker nodes.

### Operational Entry 460: certified-kubernetes-administrator-with-practice-tests/07_Security/172_Image Security.extraction.md::E40
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 172_Image Security.txt
- Evidence: How do you pass the credentials to the Docker runtimes on the worker nodes?

### Operational Entry 461: certified-kubernetes-administrator-with-practice-tests/07_Security/172_Image Security.extraction.md::E43
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 172_Image Security.txt
- Evidence: Docker registry is a built in secret type that was built for storing Docker credentials.

### Operational Entry 462: certified-kubernetes-administrator-with-practice-tests/07_Security/174_Lab Solution - Image Security.extraction.md::E15
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 174_Lab Solution - Image Security.txt
- Evidence: So, we have a private registry, and we know that if you do not specify a registry before the image name it's going to the default- It's gonna pull it from the default location on Docker hub.

### Operational Entry 463: certified-kubernetes-administrator-with-practice-tests/07_Security/174_Lab Solution - Image Security.extraction.md::E22
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 174_Lab Solution - Image Security.txt
- Evidence: And don't worry about the status for now, because we're gonna fix that in a bit.

### Operational Entry 464: certified-kubernetes-administrator-with-practice-tests/07_Security/174_Lab Solution - Image Security.extraction.md::E40
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 174_Lab Solution - Image Security.txt
- Evidence: Docker server as this, and the Docker username, user.

### Operational Entry 465: certified-kubernetes-administrator-with-practice-tests/07_Security/174_Lab Solution - Image Security.extraction.md::E49
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 174_Lab Solution - Image Security.txt
- Evidence: That's what it's called. 'pull an image from a private registry.' And we should have- Yes, so, this is what we need to do.

### Operational Entry 466: certified-kubernetes-administrator-with-practice-tests/07_Security/175_Pre-requisite - Security in Docker.extraction.md::E24
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 175_Pre-requisite - Security in Docker.txt
- Evidence: Now, if you do not want the process within the container to run as the root user, you may set the user using the user option within the docker run command and specify the new user ID.

### Operational Entry 467: certified-kubernetes-administrator-with-practice-tests/07_Security/175_Pre-requisite - Security in Docker.extraction.md::E37
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 175_Pre-requisite - Security in Docker.txt
- Evidence: Docker uses Linux capabilities to implement this.

### Operational Entry 468: certified-kubernetes-administrator-with-practice-tests/07_Security/175_Pre-requisite - Security in Docker.extraction.md::E45
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 175_Pre-requisite - Security in Docker.txt
- Evidence: By default, Docker runs a container with a limited set of capabilities, and so the processes running within the container do not have the privileges to say, reboot the host or perform operations that can disrupt the host or other containers running on the same host.

### Operational Entry 469: certified-kubernetes-administrator-with-practice-tests/07_Security/175_Pre-requisite - Security in Docker.extraction.md::E46
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 175_Pre-requisite - Security in Docker.txt
- Evidence: If you wish to override this behavior and provide additional privileges than what is available, use the cap add option in the docker run command.

### Operational Entry 470: certified-kubernetes-administrator-with-practice-tests/07_Security/176_Security Contexts.extraction.md::E15
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 176_Security Contexts.txt
- Evidence: Head over to the Coding Exercises section and practice viewing, configuring, and troubleshooting issues related to security contexts in Kubernetes.

### Operational Entry 471: certified-kubernetes-administrator-with-practice-tests/07_Security/178_Lab Solution - Security Contexts.extraction.md::E40
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 178_Lab Solution - Security Contexts.txt
- Evidence: And then under here, we're gonna add, and this is going to take a list of different capabilities and so we're just gonna add the SYS_TIME and that should be everything we need.

### Operational Entry 472: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E13
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Evidence: The response back to the user, denoted by the dotted lines, do not really matter.

### Operational Entry 473: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E21
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Evidence: One of the prerequisites for networking in Kubernetes is whatever solution you implement, the pods should be able to communicate with each other without having to configure any additional settings like routes.

### Operational Entry 474: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E28
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Evidence: What if we do not want the front end web server to be able to communicate with the database server directly?

### Operational Entry 475: certified-kubernetes-administrator-with-practice-tests/07_Security/179_Network Policy.extraction.md::E64
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 179_Network Policy.txt
- Evidence: You will not get an error message saying the network solution does not support network policies.

### Operational Entry 476: certified-kubernetes-administrator-with-practice-tests/07_Security/180_Developing network policies.extraction.md::E9
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 180_Developing network policies.txt
- Evidence: So we don't need to worry about the web pod or its port, as we don't want to allow any traffic from any other sources other than the EPA poured, so let's get rid of that.

### Operational Entry 477: certified-kubernetes-administrator-with-practice-tests/07_Security/180_Developing network policies.extraction.md::E10
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 180_Developing network policies.txt
- Evidence: We can also forget about the port on the API pod to which the web server connects, as we don't care about that either.

### Operational Entry 478: certified-kubernetes-administrator-with-practice-tests/07_Security/180_Developing network policies.extraction.md::E21
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 180_Developing network policies.txt
- Evidence: First, we need to figure out what type of policies should be defined on this network policy object to meet our requirements.

### Operational Entry 479: certified-kubernetes-administrator-with-practice-tests/07_Security/180_Developing network policies.extraction.md::E33
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 180_Developing network policies.txt
- Evidence: We don't need a separate rule for that.

### Operational Entry 480: certified-kubernetes-administrator-with-practice-tests/07_Security/180_Developing network policies.extraction.md::E36
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 180_Developing network policies.txt
- Evidence: And you don't need to worry about the response, which is denoted by a solid line here.

### Operational Entry 481: certified-kubernetes-administrator-with-practice-tests/07_Security/182_Lab Solution - Network Policies (optional).extraction.md::E4
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 182_Lab Solution - Network Policies (optional).txt
- Evidence: Seems to be an image, so, we do not have the alias set, the alias.

### Operational Entry 482: certified-kubernetes-administrator-with-practice-tests/07_Security/182_Lab Solution - Network Policies (optional).extraction.md::E98
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 182_Lab Solution - Network Policies (optional).txt
- Evidence: Like the pod selector should be for the internal pod.

### Operational Entry 483: certified-kubernetes-administrator-with-practice-tests/07_Security/182_Lab Solution - Network Policies (optional).extraction.md::E102
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 182_Lab Solution - Network Policies (optional).txt
- Evidence: And then there should be two rules.

### Operational Entry 484: certified-kubernetes-administrator-with-practice-tests/07_Security/182_Lab Solution - Network Policies (optional).extraction.md::E130
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 182_Lab Solution - Network Policies (optional).txt
- Evidence: So it should be so each one will have a two and, and port, ports.

### Operational Entry 485: certified-kubernetes-administrator-with-practice-tests/07_Security/182_Lab Solution - Network Policies (optional).extraction.md::E132
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 182_Lab Solution - Network Policies (optional).txt
- Evidence: I'm gonna fix that.

### Operational Entry 486: certified-kubernetes-administrator-with-practice-tests/07_Security/184_(2025 Updates)Custorm Resource Definition (CRD).extraction.md::E11
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 184_(2025 Updates)Custorm Resource Definition (CRD).txt
- Evidence: Now we don't have to create a controller because the deployment controller is built in to the Kubernetes and is already available.

### Operational Entry 487: certified-kubernetes-administrator-with-practice-tests/07_Security/184_(2025 Updates)Custorm Resource Definition (CRD).extraction.md::E18
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 184_(2025 Updates)Custorm Resource Definition (CRD).txt
- Evidence: You don't have to understand go or understand this code.

### Operational Entry 488: certified-kubernetes-administrator-with-practice-tests/07_Security/184_(2025 Updates)Custorm Resource Definition (CRD).extraction.md::E58
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 184_(2025 Updates)Custorm Resource Definition (CRD).txt
- Evidence: If you tried to create a flight ticket resource now on your Kubernetes cluster, you will see that it fails with the error message that says there is.

### Operational Entry 489: certified-kubernetes-administrator-with-practice-tests/07_Security/184_(2025 Updates)Custorm Resource Definition (CRD).extraction.md::E60
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 184_(2025 Updates)Custorm Resource Definition (CRD).txt
- Evidence: Now this is because you can't simply create any resource that you want without configuring it in the Kubernetes API, without first telling Kubernetes that it should allow us to create a flight ticket object.

### Operational Entry 490: certified-kubernetes-administrator-with-practice-tests/07_Security/184_(2025 Updates)Custorm Resource Definition (CRD).extraction.md::E108
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 184_(2025 Updates)Custorm Resource Definition (CRD).txt
- Evidence: If the value is entered by the user does not fall within this range, the resource will not be created and will return an error message.

### Operational Entry 491: certified-kubernetes-administrator-with-practice-tests/07_Security/184_(2025 Updates)Custorm Resource Definition (CRD).extraction.md::E114
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 184_(2025 Updates)Custorm Resource Definition (CRD).txt
- Evidence: It's not actually going to do anything about these resources because we don't yet have a controller for it.

### Operational Entry 492: certified-kubernetes-administrator-with-practice-tests/07_Security/186_(2025 Updates) Custom Controllers.extraction.md::E31
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 186_(2025 Updates) Custom Controllers.txt
- Evidence: Now you don't want to build and run it each time, so you may package the custom controller in a Docker image and then choose to run it inside your Kubernetes cluster as a pod or a deployment.

### Operational Entry 493: certified-kubernetes-administrator-with-practice-tests/07_Security/186_(2025 Updates) Custom Controllers.extraction.md::E33
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 186_(2025 Updates) Custom Controllers.txt
- Evidence: Now, in the exam, I don't expect them to ask a question about building a custom controller as it requires more coding knowledge.

### Operational Entry 494: certified-kubernetes-administrator-with-practice-tests/07_Security/186_(2025 Updates) Custom Controllers.extraction.md::E34
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 186_(2025 Updates) Custom Controllers.txt
- Evidence: So I don't anticipate a question on this.

### Operational Entry 495: certified-kubernetes-administrator-with-practice-tests/07_Security/187_(2025 Updates) Operator Framework.extraction.md::E15
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 187_(2025 Updates) Operator Framework.txt
- Evidence: So Kubernetes operators do what a human operator typically would do to manage a specific application, such as installing it, maintaining it by taking backups, and restoring backups in case of disasters, uh, fixing any issues that may come across the application, etc..

### Operational Entry 496: certified-kubernetes-administrator-with-practice-tests/07_Security/187_(2025 Updates) Operator Framework.extraction.md::E28
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 187_(2025 Updates) Operator Framework.txt
- Evidence: For now I do not anticipate any questions on operators itself in the exam.

### Operational Entry 497: certified-kubernetes-administrator-with-practice-tests/08_Storage/188_Storage - Section Introduction.extraction.md::E8
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 188_Storage - Section Introduction.txt
- Evidence: Once you get that, you should be able to relate that knowledge to implement any third party storage solutions out there.

### Operational Entry 498: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E9
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Evidence: Well, don't worry about that for now.

### Operational Entry 499: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E72
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Evidence: You should be able to see all these volumes if you list the contents of the var lib docker volumes folder.

### Operational Entry 500: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E96
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
- Evidence: Docker will choose the best storage driver available automatically based on the operating system.

### Operational Entry 501: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E2
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface.txt
- Evidence: In the past, Kubernetes used container D alone as the container runtime engine, and all the code to work with container D was embedded within the Kubernetes source code, with other container runtimes coming in, such as rocket and Cri-o.

### Operational Entry 502: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E3
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface.txt
- Evidence: It was important to open up and extend support to work with different container runtimes, and not be dependent on the Kubernetes source code.

### Operational Entry 503: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E4
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface.txt
- Evidence: And that's how Container Runtime Interface came to be.

### Operational Entry 504: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E5
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface.txt
- Evidence: The container runtime interface is a standard that defines how an orchestration solution like Kubernetes would communicate with container runtimes like Docker.

### Operational Entry 505: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E6
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface.txt
- Evidence: So in the future, if any new container runtime interface is developed, they can simply follow the CRI standards, and that new container runtime would work with Kubernetes without really having to work with Kubernetes team of developers, or touch the Kubernetes source code.

### Operational Entry 506: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E26
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface.txt
- Evidence: For example, CSI says that when a pod is created and requires a volume, the container orchestrator in this case Kubernetes should call the create volume RPC and pass a set of details such as the volume name.

### Operational Entry 507: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E27
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface.txt
- Evidence: The storage driver should implement this RPC and handle that request, and provision a new volume on the storage array and return the results of the operation.

### Operational Entry 508: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E28
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface.txt
- Evidence: Similarly, container orchestrator should call the delete volume RPC when a volume is to be deleted, and the storage driver should implement the code to decommission the volume from the array when that call is made.

### Operational Entry 509: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E29
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface.txt
- Evidence: And the specification details exactly what parameters should be sent by the caller, what should be received by the solution, and what error codes should be exchanged.

### Operational Entry 510: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E3
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes.txt
- Evidence: Docker containers are meant to be transient in nature, which means they are meant to last only for a short period of time.

### Operational Entry 511: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E33
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes.txt
- Evidence: However, it is not recommended for use in a multi node cluster.

### Operational Entry 512: certified-kubernetes-administrator-with-practice-tests/08_Storage/194_Persistent Volumes.extraction.md::E17
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 194_Persistent Volumes.txt
- Evidence: Access mode defines how a volume should be mounted on the hosts, whether in a read only mode or read write mode, etc. the supported values are read only.

### Operational Entry 513: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E40
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Evidence: However, note that this is an older option and is deprecated now because the Recycle controller originally did a best effort wipe by launching a tiny recycler pod that mounted the volume and ran a shell command like rm rf Scrub star to clear files.

### Operational Entry 514: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E49
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Evidence: Head over to the labs and practice configuring and troubleshooting persistent volumes and volume claims in Kubernetes.

### Operational Entry 515: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E12
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Evidence: So should I describe pod web app?

### Operational Entry 516: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E68
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Evidence: We don't need volume mode, we have access mode.

### Operational Entry 517: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E87
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Evidence: So we don't need the advanced selectors.

### Operational Entry 518: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E92
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Evidence: We don't have, we don't need a volume mode and the storage is gonna be 50 mi.

### Operational Entry 519: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E134
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Evidence: So if you look here, should be able to see how to use a persistent volume in a pod.

### Operational Entry 520: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E138
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Evidence: And we have claim name, so we don't need these lines.

### Operational Entry 521: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E141
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Evidence: That should be it.

### Operational Entry 522: certified-kubernetes-administrator-with-practice-tests/08_Storage/201_Storage Class.extraction.md::E19
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class.txt
- Evidence: It's just that you don't have to manually create PVC anymore.

### Operational Entry 523: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E31
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Evidence: So create a persistent volume claim by the name of local PVC that should bind to the volume local PV.

### Operational Entry 524: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E35
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Evidence: And then the access modes should match.

### Operational Entry 525: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E36
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Evidence: So this is ReadWrite ones and the storage class should also match; so that's local storage.

### Operational Entry 526: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E42
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Evidence: We don't need the the selectors.

### Operational Entry 527: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E46
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Evidence: We don't need to specify the volume mode for now.

### Operational Entry 528: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E71
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Evidence: And the pod should make use of the PVC, local PVC and mound the volume at the part were, WWHGML, the local PV should be in a bound state.

### Operational Entry 529: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E82
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Evidence: Okay, make sure to fix the format.

### Operational Entry 530: certified-kubernetes-administrator-with-practice-tests/09_Networking/204_Networking - Introduction.extraction.md::E7
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 204_Networking - Introduction.txt
- Evidence: These are short lectures that should give you enough knowledge to go through the remainder of this section.

### Operational Entry 531: certified-kubernetes-administrator-with-practice-tests/09_Networking/204_Networking - Introduction.extraction.md::E8
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 204_Networking - Introduction.txt
- Evidence: It is also important to know a little bit about a network name spaces and how Docker uses network name spaces internally.

### Operational Entry 532: certified-kubernetes-administrator-with-practice-tests/09_Networking/204_Networking - Introduction.extraction.md::E16
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 204_Networking - Introduction.txt
- Evidence: We continue to discuss cluster DNS and how Kubernetes implements DNS internally.

### Operational Entry 533: certified-kubernetes-administrator-with-practice-tests/09_Networking/205_Prerequisite Switching, Routing, Gateways CNI in Kubernetes.extraction.md::E7
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 205_Prerequisite Switching, Routing, Gateways CNI in Kubernetes.txt
- Evidence: Now we don't just go through the concepts, we see how these are configured on our systems, specifically from a Linux perspective.

### Operational Entry 534: certified-kubernetes-administrator-with-practice-tests/09_Networking/205_Prerequisite Switching, Routing, Gateways CNI in Kubernetes.extraction.md::E10
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 205_Prerequisite Switching, Routing, Gateways CNI in Kubernetes.txt
- Evidence: Later on, when we discuss these in the context of our course, you know what we are talking about, where to look for information, where things are configured, how to troubleshoot, etc. and of course, as always, if these seem to be too basic for you, if you or if you're already good with networking in Linux, feel free to skip these lectures and go straight to the ones on Kubernetes.

### Operational Entry 535: certified-kubernetes-administrator-with-practice-tests/09_Networking/205_Prerequisite Switching, Routing, Gateways CNI in Kubernetes.extraction.md::E55
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 205_Prerequisite Switching, Routing, Gateways CNI in Kubernetes.txt
- Evidence: Instead of adding a routing table entry for the same router's IP address for each of those networks, you can simply say for any network that you don't know a route to use this router as the default gateway.

### Operational Entry 536: certified-kubernetes-administrator-with-practice-tests/09_Networking/205_Prerequisite Switching, Routing, Gateways CNI in Kubernetes.extraction.md::E61
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 205_Prerequisite Switching, Routing, Gateways CNI in Kubernetes.txt
- Evidence: A 0.0.0.0 entry in the gateway field indicates that you don't need a gateway.

### Operational Entry 537: certified-kubernetes-administrator-with-practice-tests/09_Networking/205_Prerequisite Switching, Routing, Gateways CNI in Kubernetes.extraction.md::E66
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 205_Prerequisite Switching, Routing, Gateways CNI in Kubernetes.txt
- Evidence: So if you're having issues reaching internet from your systems, this routing table and the default gateway configuration is a good place to start.

### Operational Entry 538: certified-kubernetes-administrator-with-practice-tests/09_Networking/205_Prerequisite Switching, Routing, Gateways CNI in Kubernetes.extraction.md::E83
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 205_Prerequisite Switching, Routing, Gateways CNI in Kubernetes.txt
- Evidence: It would face the same issue.

### Operational Entry 539: certified-kubernetes-administrator-with-practice-tests/09_Networking/205_Prerequisite Switching, Routing, Gateways CNI in Kubernetes.extraction.md::E88
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 205_Prerequisite Switching, Routing, Gateways CNI in Kubernetes.txt
- Evidence: When we try to ping now, we no longer get the network unreachable error message.

### Operational Entry 540: certified-kubernetes-administrator-with-practice-tests/09_Networking/205_Prerequisite Switching, Routing, Gateways CNI in Kubernetes.extraction.md::E89
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 205_Prerequisite Switching, Routing, Gateways CNI in Kubernetes.txt
- Evidence: That means our routing entries are right, but we still don't get any response back by default in Linux.

### Operational Entry 541: certified-kubernetes-administrator-with-practice-tests/09_Networking/205_Prerequisite Switching, Routing, Gateways CNI in Kubernetes.extraction.md::E94
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 205_Prerequisite Switching, Routing, Gateways CNI in Kubernetes.txt
- Evidence: We don't want anyone from the public network to easily send messages to the private network, unless you explicitly allow that.

### Operational Entry 542: certified-kubernetes-administrator-with-practice-tests/09_Networking/205_Prerequisite Switching, Routing, Gateways CNI in Kubernetes.extraction.md::E98
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 205_Prerequisite Switching, Routing, Gateways CNI in Kubernetes.txt
- Evidence: Set this to one and you should see the pins go through.

### Operational Entry 543: certified-kubernetes-administrator-with-practice-tests/09_Networking/206_Prerequisite DNS.extraction.md::E9
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 206_Prerequisite DNS.txt
- Evidence: So how do you fix that?

### Operational Entry 544: certified-kubernetes-administrator-with-practice-tests/09_Networking/206_Prerequisite DNS.extraction.md::E46
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 206_Prerequisite DNS.txt
- Evidence: And that should be it.

### Operational Entry 545: certified-kubernetes-administrator-with-practice-tests/09_Networking/206_Prerequisite DNS.extraction.md::E48
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 206_Prerequisite DNS.txt
- Evidence: If the IP of any of the host was to change, simply update the DNS server and all hosts should resolve the new IP address going forward.

### Operational Entry 546: certified-kubernetes-administrator-with-practice-tests/09_Networking/206_Prerequisite DNS.extraction.md::E52
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 206_Prerequisite DNS.txt
- Evidence: You don't think others would need to resolve the server by its name, so it need not be added to the DNS server.

### Operational Entry 547: certified-kubernetes-administrator-with-practice-tests/09_Networking/206_Prerequisite DNS.extraction.md::E70
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 206_Prerequisite DNS.txt
- Evidence: I don't have facebook.com in my Etsy host file, and I don't have it in my DNS server either.

### Operational Entry 548: certified-kubernetes-administrator-with-practice-tests/09_Networking/206_Prerequisite DNS.extraction.md::E77
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 206_Prerequisite DNS.txt
- Evidence: You should now be able to ping external sites such as facebook.com.

### Operational Entry 549: certified-kubernetes-administrator-with-practice-tests/09_Networking/206_Prerequisite DNS.extraction.md::E153
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 206_Prerequisite DNS.txt
- Evidence: In the upcoming Practice Exercises section, you will practice configuring and troubleshooting DNS in a lab environment on actual systems through some fun and challenging exercises.

### Operational Entry 550: certified-kubernetes-administrator-with-practice-tests/09_Networking/206_Prerequisite DNS.extraction.md::E156
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 206_Prerequisite DNS.txt
- Evidence: Well, thank you so much for watching, and don't forget to subscribe to my channel for more videos like this.

### Operational Entry 551: certified-kubernetes-administrator-with-practice-tests/09_Networking/208_Prerequisite Network Namespaces.extraction.md::E36
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 208_Prerequisite Network Namespaces.txt
- Evidence: Prefix the command with the command IP netns exec, followed by the namespace name, which is red.

### Operational Entry 552: certified-kubernetes-administrator-with-practice-tests/09_Networking/208_Prerequisite Network Namespaces.extraction.md::E139
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 208_Prerequisite Network Namespaces.txt
- Evidence: The default gateway should be reachable from your namespace when you add it to your route.

### Operational Entry 553: certified-kubernetes-administrator-with-practice-tests/09_Networking/208_Prerequisite Network Namespaces.extraction.md::E140
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 208_Prerequisite Network Namespaces.txt
- Evidence: When you try to ping now, you no longer get the network unreachable message, but you still don't get any response back from the ping.

### Operational Entry 554: certified-kubernetes-administrator-with-practice-tests/09_Networking/208_Prerequisite Network Namespaces.extraction.md::E143
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 208_Prerequisite Network Namespaces.txt
- Evidence: Our home network has our internal private IP addresses that the destination network don't know about, so they cannot reach back.

### Operational Entry 555: certified-kubernetes-administrator-with-practice-tests/09_Networking/208_Prerequisite Network Namespaces.extraction.md::E146
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 208_Prerequisite Network Namespaces.txt
- Evidence: We should do that using iptables.

### Operational Entry 556: certified-kubernetes-administrator-with-practice-tests/09_Networking/208_Prerequisite Network Namespaces.extraction.md::E157
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 208_Prerequisite Network Namespaces.txt
- Evidence: So we add a default gateway specifying our host, we should now be able to reach the outside world from within these namespaces.

### Operational Entry 557: certified-kubernetes-administrator-with-practice-tests/09_Networking/208_Prerequisite Network Namespaces.extraction.md::E167
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 208_Prerequisite Network Namespaces.txt
- Evidence: So we basically add an IP route entry to the second host, telling the host that the network 192.168.15 can be reached through the host at 192.168.1.2, but we don't want to do that.

### Operational Entry 558: certified-kubernetes-administrator-with-practice-tests/09_Networking/210_Prerequisite Docker Networking.extraction.md::E27
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 210_Prerequisite Docker Networking.txt
- Evidence: Docker internally uses a technique similar to what we saw in the video on namespaces, by running the IP link ad command with the type set to bridge.

### Operational Entry 559: certified-kubernetes-administrator-with-practice-tests/09_Networking/210_Prerequisite Docker Networking.extraction.md::E52
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 210_Prerequisite Docker Networking.txt
- Evidence: Docker creates a namespace, creates a pair of interfaces, attaches one end to the container, and another end to the bridge network.

### Operational Entry 560: certified-kubernetes-administrator-with-practice-tests/09_Networking/210_Prerequisite Docker Networking.extraction.md::E64
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 210_Prerequisite Docker Networking.txt
- Evidence: Docker provides a port publishing or port mapping option when you run containers.

### Operational Entry 561: certified-kubernetes-administrator-with-practice-tests/09_Networking/210_Prerequisite Docker Networking.extraction.md::E77
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 210_Prerequisite Docker Networking.txt
- Evidence: Docker does it the same way.

### Operational Entry 562: certified-kubernetes-administrator-with-practice-tests/09_Networking/210_Prerequisite Docker Networking.extraction.md::E78
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 210_Prerequisite Docker Networking.txt
- Evidence: Docker adds the rule to the Docker chain and sets destination to include the container's IP as well.

### Operational Entry 563: certified-kubernetes-administrator-with-practice-tests/09_Networking/211_Prerequisite CNI.extraction.md::E6
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 211_Prerequisite CNI.txt
- Evidence: We don't know how to assign IP and bring them on, and finally enable Nat or IP masquerade for external communication, etc. we then saw how Docker did it for its bridge networking option.

### Operational Entry 564: certified-kubernetes-administrator-with-practice-tests/09_Networking/211_Prerequisite CNI.extraction.md::E16
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 211_Prerequisite CNI.txt
- Evidence: The bridge program takes care of the rest so that the container runtime environments are relieved of those tasks.

### Operational Entry 565: certified-kubernetes-administrator-with-practice-tests/09_Networking/211_Prerequisite CNI.extraction.md::E19
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 211_Prerequisite CNI.txt
- Evidence: If you were doing so, what arguments and commands should it support?

### Operational Entry 566: certified-kubernetes-administrator-with-practice-tests/09_Networking/211_Prerequisite CNI.extraction.md::E21
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 211_Prerequisite CNI.txt
- Evidence: How do you know that container runtimes like Kubernetes or Rocket will invoke your program correctly?

### Operational Entry 567: certified-kubernetes-administrator-with-practice-tests/09_Networking/211_Prerequisite CNI.extraction.md::E22
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 211_Prerequisite CNI.txt
- Evidence: That's where we need some standards to find a standard that defines how a program should look, how container runtimes will invoke them so that everyone can adhere to a single set of standards and develop solutions that work across runtimes.

### Operational Entry 568: certified-kubernetes-administrator-with-practice-tests/09_Networking/211_Prerequisite CNI.extraction.md::E24
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 211_Prerequisite CNI.txt
- Evidence: The CNI is a set of standards that define how programs should be developed to solve networking challenges in a container.

### Operational Entry 569: certified-kubernetes-administrator-with-practice-tests/09_Networking/211_Prerequisite CNI.extraction.md::E25
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 211_Prerequisite CNI.txt
- Evidence: Runtime environments.

### Operational Entry 570: certified-kubernetes-administrator-with-practice-tests/09_Networking/211_Prerequisite CNI.extraction.md::E27
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 211_Prerequisite CNI.txt
- Evidence: CNI defines how the plugin should be developed and how container runtimes should invoke them.

### Operational Entry 571: certified-kubernetes-administrator-with-practice-tests/09_Networking/211_Prerequisite CNI.extraction.md::E28
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 211_Prerequisite CNI.txt
- Evidence: CNI defines a set of responsibilities for container runtimes and plugins for container runtimes.

### Operational Entry 572: certified-kubernetes-administrator-with-practice-tests/09_Networking/211_Prerequisite CNI.extraction.md::E30
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 211_Prerequisite CNI.txt
- Evidence: It should then identify the networks the container must attach to.

### Operational Entry 573: certified-kubernetes-administrator-with-practice-tests/09_Networking/211_Prerequisite CNI.extraction.md::E33
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 211_Prerequisite CNI.txt
- Evidence: On the plugin side, it defines that the plugin should support add del and check command line arguments, and that these should accept parameters like container and network namespace.

### Operational Entry 574: certified-kubernetes-administrator-with-practice-tests/09_Networking/211_Prerequisite CNI.extraction.md::E34
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 211_Prerequisite CNI.txt
- Evidence: The plugin should take care of assigning IP addresses to the pods and any associated routes required for the containers to reach other containers in the network at the end, the results should be specified in a particular format, as long as the container runtimes and plugins adhere to these standards, they can all live together in harmony.

### Operational Entry 575: certified-kubernetes-administrator-with-practice-tests/09_Networking/211_Prerequisite CNI.extraction.md::E35
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 211_Prerequisite CNI.txt
- Evidence: Any runtime should be able to work with any plugin.

### Operational Entry 576: certified-kubernetes-administrator-with-practice-tests/09_Networking/211_Prerequisite CNI.extraction.md::E40
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 211_Prerequisite CNI.txt
- Evidence: Docker.

### Operational Entry 577: certified-kubernetes-administrator-with-practice-tests/09_Networking/211_Prerequisite CNI.extraction.md::E42
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 211_Prerequisite CNI.txt
- Evidence: Docker has its own set of standards known as CNM, which stands for Container Network Model, which is another standard that aims at solving container networking challenges similar to CNI, but with some differences due to the differences.

### Operational Entry 578: certified-kubernetes-administrator-with-practice-tests/09_Networking/211_Prerequisite CNI.extraction.md::E43
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 211_Prerequisite CNI.txt
- Evidence: These plugins don't natively integrate with Docker, meaning you can't run a Docker container and specify the network plugin to use is CNI and specify one of these plugins.

### Operational Entry 579: certified-kubernetes-administrator-with-practice-tests/09_Networking/212_Cluster Networking.extraction.md::E6
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 212_Cluster Networking.txt
- Evidence: You should note this especially if you created the VMs by cloning from existing ones.

### Operational Entry 580: certified-kubernetes-administrator-with-practice-tests/09_Networking/212_Cluster Networking.extraction.md::E9
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 212_Cluster Networking.txt
- Evidence: The master should accept connections on 6443 for the API server.

### Operational Entry 581: certified-kubernetes-administrator-with-practice-tests/09_Networking/212_Cluster Networking.extraction.md::E20
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 212_Cluster Networking.txt
- Evidence: The worker nodes expose services for external access on port 30,000 to 32,767, so this should be open as well.

### Operational Entry 582: certified-kubernetes-administrator-with-practice-tests/09_Networking/215_Lab Solution - Explore Environment (optional).extraction.md::E52
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 215_Lab Solution - Explore Environment (optional).txt
- Evidence: If you just scroll to the right, you should see a state of UP, right here.

### Operational Entry 583: certified-kubernetes-administrator-with-practice-tests/09_Networking/215_Lab Solution - Explore Environment (optional).extraction.md::E67
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 215_Lab Solution - Explore Environment (optional).txt
- Evidence: And then finally, the other flag that I usually like to do, in general, which is the -n flag here, which is saying don't resolve the names of the ports, right?

### Operational Entry 584: certified-kubernetes-administrator-with-practice-tests/09_Networking/215_Lab Solution - Explore Environment (optional).extraction.md::E68
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 215_Lab Solution - Explore Environment (optional).txt
- Evidence: Don't resolve the names of the ports or the IP addresses.

### Operational Entry 585: certified-kubernetes-administrator-with-practice-tests/09_Networking/215_Lab Solution - Explore Environment (optional).extraction.md::E81
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 215_Lab Solution - Explore Environment (optional).txt
- Evidence: We're not gonna be using the listening flag anymore because we don't care about what's listening.

### Operational Entry 586: certified-kubernetes-administrator-with-practice-tests/09_Networking/215_Lab Solution - Explore Environment (optional).extraction.md::E85
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 215_Lab Solution - Explore Environment (optional).txt
- Evidence: And then, we'll do the n flag, numeric, so we don't resolve the names.

### Operational Entry 587: certified-kubernetes-administrator-with-practice-tests/09_Networking/215_Lab Solution - Explore Environment (optional).extraction.md::E90
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 215_Lab Solution - Explore Environment (optional).txt
- Evidence: You don't see a lot of 2380 zeros.

### Operational Entry 588: certified-kubernetes-administrator-with-practice-tests/09_Networking/215_Lab Solution - Explore Environment (optional).extraction.md::E99
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 215_Lab Solution - Explore Environment (optional).txt
- Evidence: And so that's only used when you have multiple control plane nodes, which in this case we don't.

### Operational Entry 589: certified-kubernetes-administrator-with-practice-tests/09_Networking/216_Pod Networking.extraction.md::E11
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 216_Pod Networking.txt
- Evidence: How do you access the services running on these parts internally from within the cluster, as well as externally from outside the cluster.

### Operational Entry 590: certified-kubernetes-administrator-with-practice-tests/09_Networking/216_Pod Networking.extraction.md::E17
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 216_Pod Networking.txt
- Evidence: Kubernetes expects every pod to get its own unique IP address, and that every pod should be able to reach every other pod within the same node using that IP address.

### Operational Entry 591: certified-kubernetes-administrator-with-practice-tests/09_Networking/216_Pod Networking.extraction.md::E18
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 216_Pod Networking.txt
- Evidence: And every pod should be able to reach every other pod on other nodes as well, using the same IP address.

### Operational Entry 592: certified-kubernetes-administrator-with-practice-tests/09_Networking/216_Pod Networking.extraction.md::E46
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 216_Pod Networking.txt
- Evidence: Now, you don't have to know any kind of complicated scripting.

### Operational Entry 593: certified-kubernetes-administrator-with-practice-tests/09_Networking/216_Pod Networking.extraction.md::E51
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 216_Pod Networking.txt
- Evidence: Don't focus on the options as they are similar to what we saw in our previous lectures.

### Operational Entry 594: certified-kubernetes-administrator-with-practice-tests/09_Networking/216_Pod Networking.extraction.md::E82
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 216_Pod Networking.txt
- Evidence: Of course, we don't want to do that, as in large environments where thousands of pods are created every minute.

### Operational Entry 595: certified-kubernetes-administrator-with-practice-tests/09_Networking/216_Pod Networking.extraction.md::E86
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 216_Pod Networking.txt
- Evidence: CNI tells Kubernetes that this is how you should call a script as soon as you create a container, and CNI tells us this is how your script should look like.

### Operational Entry 596: certified-kubernetes-administrator-with-practice-tests/09_Networking/216_Pod Networking.extraction.md::E88
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 216_Pod Networking.txt
- Evidence: It should have an add section that will take care of adding a container to the network, and a delete section that will take care of deleting container interfaces from the network and freeing the IP address, etc..

### Operational Entry 597: certified-kubernetes-administrator-with-practice-tests/09_Networking/216_Pod Networking.extraction.md::E90
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 216_Pod Networking.txt
- Evidence: The container runtime on each node is responsible for creating containers.

### Operational Entry 598: certified-kubernetes-administrator-with-practice-tests/09_Networking/216_Pod Networking.extraction.md::E95
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 216_Pod Networking.txt
- Evidence: Hopefully that should give you enough knowledge on inspecting networking within pods in a Kubernetes cluster.

### Operational Entry 599: certified-kubernetes-administrator-with-practice-tests/09_Networking/217_CNI in kubernetes.extraction.md::E7
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 217_CNI in kubernetes.txt
- Evidence: As we discussed in the prerequisite lecture, CNI defines the responsibilities of container runtime as per CNI container runtimes.

### Operational Entry 600: certified-kubernetes-administrator-with-practice-tests/09_Networking/217_CNI in kubernetes.extraction.md::E12
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 217_CNI in kubernetes.txt
- Evidence: Not that Docker was the original container runtime, which was later replaced by an abstraction called container D, which we kind of explained in the beginning of this course.

### Operational Entry 601: certified-kubernetes-administrator-with-practice-tests/09_Networking/217_CNI in kubernetes.extraction.md::E16
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 217_CNI in kubernetes.txt
- Evidence: So that's where the container runtimes find the plugins.

### Operational Entry 602: certified-kubernetes-administrator-with-practice-tests/09_Networking/217_CNI in kubernetes.extraction.md::E20
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 217_CNI in kubernetes.txt
- Evidence: This is where container runtime looks to find out which plugin needs to be used.

### Operational Entry 603: certified-kubernetes-administrator-with-practice-tests/09_Networking/217_CNI in kubernetes.extraction.md::E29
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 217_CNI in kubernetes.txt
- Evidence: D is gateway defines whether the bridge interface should get an IP address assigned so it can act as a gateway.

### Operational Entry 604: certified-kubernetes-administrator-with-practice-tests/09_Networking/217_CNI in kubernetes.extraction.md::E30
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 217_CNI in kubernetes.txt
- Evidence: The IP masquerade defines if a Nat rule should be added for IP masquerading.

### Operational Entry 605: certified-kubernetes-administrator-with-practice-tests/09_Networking/219_CNI weave.extraction.md::E8
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 219_CNI weave.txt
- Evidence: You should then be able to relate this to other solutions as well.

### Operational Entry 606: certified-kubernetes-administrator-with-practice-tests/09_Networking/219_CNI weave.extraction.md::E51
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 219_CNI weave.txt
- Evidence: For troubleshooting purpose, view the logs using the kubectl logs command.

### Operational Entry 607: certified-kubernetes-administrator-with-practice-tests/09_Networking/221_Lab Solution - Explore CNI (optional).extraction.md::E4
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 221_Lab Solution - Explore CNI (optional).txt
- Evidence: So I'm gonna further drill that down, hence, I'm gonna grep for container -runtime.

### Operational Entry 608: certified-kubernetes-administrator-with-practice-tests/09_Networking/221_Lab Solution - Explore CNI (optional).extraction.md::E5
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 221_Lab Solution - Explore CNI (optional).txt
- Evidence: And we can see the --container-runtime-endpoint flag is set to unix:///var/run/containerd/containerd.sock.

### Operational Entry 609: certified-kubernetes-administrator-with-practice-tests/09_Networking/222_ipam weave.extraction.md::E16
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 222_ipam weave.txt
- Evidence: Kubernetes doesn't care how we do it, we just need to do it by making sure we don't assign any duplicate IPS and manage it properly.

### Operational Entry 610: certified-kubernetes-administrator-with-practice-tests/09_Networking/224_Service Networking.extraction.md::E42
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 224_Service Networking.txt
- Evidence: As a matter of fact, they don't exist at all.

### Operational Entry 611: certified-kubernetes-administrator-with-practice-tests/09_Networking/224_Service Networking.extraction.md::E50
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 224_Service Networking.txt
- Evidence: The kube proxy components running on each node gets that IP address and creates forwarding rules on each node in the cluster, saying any traffic coming to this IP, the IP of the service should go to the IP of the pod.

### Operational Entry 612: certified-kubernetes-administrator-with-practice-tests/09_Networking/224_Service Networking.extraction.md::E72
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 224_Service Networking.txt
- Evidence: The reason I brought this up here is because whatever range you specify for each of these networks, it shouldn't overlap, which it doesn't in this case.

### Operational Entry 613: certified-kubernetes-administrator-with-practice-tests/09_Networking/224_Service Networking.extraction.md::E73
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 224_Service Networking.txt
- Evidence: Both of these should have its own dedicated range of IPS to work with.

### Operational Entry 614: certified-kubernetes-administrator-with-practice-tests/09_Networking/224_Service Networking.extraction.md::E74
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 224_Service Networking.txt
- Evidence: There shouldn't be a case where a pod and a service are assigned the same IP address.

### Operational Entry 615: certified-kubernetes-administrator-with-practice-tests/09_Networking/224_Service Networking.extraction.md::E80
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 224_Service Networking.txt
- Evidence: Ten 103132.104 on port 3306, which is the IP of the service, should have its destination address changed to 10 to 44 .1.2 and port 3306, which is the IP of the pod.

### Operational Entry 616: certified-kubernetes-administrator-with-practice-tests/09_Networking/224_Service Networking.extraction.md::E87
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 224_Service Networking.txt
- Evidence: If you don't see these entries, you must also check the verbosity level of the process as well.

### Operational Entry 617: certified-kubernetes-administrator-with-practice-tests/09_Networking/226_Lab Solution - Service Networking (optional).extraction.md::E29
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 226_Lab Solution - Service Networking (optional).txt
- Evidence: And we're gonna go to the top and there should be a certain flag that specifies the service range or the IP address range for the services.

### Operational Entry 618: certified-kubernetes-administrator-with-practice-tests/09_Networking/227_DNS in kubernetes.extraction.md::E16
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 227_DNS in kubernetes.txt
- Evidence: So we don't really care about nodes.

### Operational Entry 619: certified-kubernetes-administrator-with-practice-tests/09_Networking/227_DNS in kubernetes.extraction.md::E19
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 227_DNS in kubernetes.txt
- Evidence: Following the best practices we learned so far in this section, and all pods and services can get their own IP address and can reach each other, which should be good.

### Operational Entry 620: certified-kubernetes-administrator-with-practice-tests/09_Networking/228_CoreDNS in Kubernetes.extraction.md::E34
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 228_CoreDNS in Kubernetes.txt
- Evidence: The ones highlighted in orange plugins are configured for handling errors, reporting, health monitoring, metrics, cache, etc. the plugin that makes core DNS work with Kubernetes is the Kubernetes plugin, and that is where the top level domain name of the cluster is set.

### Operational Entry 621: certified-kubernetes-administrator-with-practice-tests/09_Networking/228_CoreDNS in Kubernetes.extraction.md::E53
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 228_CoreDNS in Kubernetes.txt
- Evidence: Now you don't have to configure this yourself.

### Operational Entry 622: certified-kubernetes-administrator-with-practice-tests/09_Networking/230_Lab Solution - Explore DNS (optional).extraction.md::E4
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 230_Lab Solution - Explore DNS (optional).txt
- Evidence: K equals kubectl.

### Operational Entry 623: certified-kubernetes-administrator-with-practice-tests/09_Networking/230_Lab Solution - Explore DNS (optional).extraction.md::E16
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 230_Lab Solution - Explore DNS (optional).txt
- Evidence: Now, what is the IP of the CoreDNS server that should be configured on the pods to resolve services.

### Operational Entry 624: certified-kubernetes-administrator-with-practice-tests/09_Networking/230_Lab Solution - Explore DNS (optional).extraction.md::E17
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 230_Lab Solution - Explore DNS (optional).txt
- Evidence: So all the pods should have the IP of the CoreDNS service.

### Operational Entry 625: certified-kubernetes-administrator-with-practice-tests/09_Networking/230_Lab Solution - Explore DNS (optional).extraction.md::E114
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 230_Lab Solution - Explore DNS (optional).txt
- Evidence: So that fails.

### Operational Entry 626: certified-kubernetes-administrator-with-practice-tests/09_Networking/230_Lab Solution - Explore DNS (optional).extraction.md::E146
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 230_Lab Solution - Explore DNS (optional).txt
- Evidence: So that doesn't work because it should either be, webservice.payroll or it should be webservice.payroll.svc Or it should be webservice.payroll.svc.cluster.local because cluster.local is the root domain, the root zone.

### Operational Entry 627: certified-kubernetes-administrator-with-practice-tests/09_Networking/230_Lab Solution - Explore DNS (optional).extraction.md::E147
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 230_Lab Solution - Explore DNS (optional).txt
- Evidence: So you should always, you should either use cluster.local or you shouldn't use anything at all.

### Operational Entry 628: certified-kubernetes-administrator-with-practice-tests/09_Networking/230_Lab Solution - Explore DNS (optional).extraction.md::E151
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 230_Lab Solution - Explore DNS (optional).txt
- Evidence: Kubectl, get deployment.

### Operational Entry 629: certified-kubernetes-administrator-with-practice-tests/09_Networking/230_Lab Solution - Explore DNS (optional).extraction.md::E154
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 230_Lab Solution - Explore DNS (optional).txt
- Evidence: So we don't, we don't see a MySQL server here, so let's do a, get, let's do a kubectl, get pods and all namespaces so we can see all the pods.

### Operational Entry 630: certified-kubernetes-administrator-with-practice-tests/09_Networking/230_Lab Solution - Explore DNS (optional).extraction.md::E169
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 230_Lab Solution - Explore DNS (optional).txt
- Evidence: So the issue is with the name.

### Operational Entry 631: certified-kubernetes-administrator-with-practice-tests/09_Networking/230_Lab Solution - Explore DNS (optional).extraction.md::E175
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 230_Lab Solution - Explore DNS (optional).txt
- Evidence: So that, that's how it should be.

### Operational Entry 632: certified-kubernetes-administrator-with-practice-tests/09_Networking/230_Lab Solution - Explore DNS (optional).extraction.md::E182
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 230_Lab Solution - Explore DNS (optional).txt
- Evidence: Now of course this password here, this is not a best practice.

### Operational Entry 633: certified-kubernetes-administrator-with-practice-tests/09_Networking/230_Lab Solution - Explore DNS (optional).extraction.md::E183
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 230_Lab Solution - Explore DNS (optional).txt
- Evidence: It should be going in through as a secret or some, some other, you know, a safer method.

### Operational Entry 634: certified-kubernetes-administrator-with-practice-tests/09_Networking/230_Lab Solution - Explore DNS (optional).extraction.md::E201
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 230_Lab Solution - Explore DNS (optional).txt
- Evidence: And what the command we need to run is nslookup, we'll do a MySQL and it says it's not found, so we know that since the HR app is in the default namespace and MySQL is in the payroll namespace, we should be appending payroll to the name.

### Operational Entry 635: certified-kubernetes-administrator-with-practice-tests/09_Networking/231_Ingress.extraction.md::E19
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 231_Ingress.txt
- Evidence: For example, we do not want the users to have to type in the IP address every time.

### Operational Entry 636: certified-kubernetes-administrator-with-practice-tests/09_Networking/231_Ingress.extraction.md::E24
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 231_Ingress.txt
- Evidence: Now, you don't want your users to have to remember port number either.

### Operational Entry 637: certified-kubernetes-administrator-with-practice-tests/09_Networking/231_Ingress.extraction.md::E51
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 231_Ingress.txt
- Evidence: But now you don't want your developers to implement it in their applications, as they would do it in different ways, and it's an additional burden for them to develop additional code to handle that.

### Operational Entry 638: certified-kubernetes-administrator-with-practice-tests/09_Networking/231_Ingress.extraction.md::E82
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 231_Ingress.txt
- Evidence: As I mentioned, you do not have an ingress controller on Kubernetes by default, so you must deploy one.

### Operational Entry 639: certified-kubernetes-administrator-with-practice-tests/09_Networking/231_Ingress.extraction.md::E111
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 231_Ingress.txt
- Evidence: With the right permissions to access all of these objects, we should be ready with an ingress controller in its simplest form.

### Operational Entry 640: certified-kubernetes-administrator-with-practice-tests/09_Networking/231_Ingress.extraction.md::E128
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 231_Ingress.txt
- Evidence: So if it's a single backend then you don't really have any rules.

### Operational Entry 641: certified-kubernetes-administrator-with-practice-tests/09_Networking/231_Ingress.extraction.md::E150
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 231_Ingress.txt
- Evidence: And finally, anything other than the ones listed here will go to the fourth rule that will simply show a 404 not found error page.

### Operational Entry 642: certified-kubernetes-administrator-with-practice-tests/09_Networking/231_Ingress.extraction.md::E172
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 231_Ingress.txt
- Evidence: Now back in your application, say a user visits the URL, my online store or com slash listen or slash eat and you don't have an audio streaming or a food delivery service.

### Operational Entry 643: certified-kubernetes-administrator-with-practice-tests/09_Networking/231_Ingress.extraction.md::E174
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 231_Ingress.txt
- Evidence: You can do this by configuring a default back end service to display this 404 not found error page.

### Operational Entry 644: certified-kubernetes-administrator-with-practice-tests/09_Networking/235_Lab Solution - Ingress Networking 1 - (optional).extraction.md::E48
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Evidence: So here we have ingress service and if you look at it, it gives us a 404 not found error.

### Operational Entry 645: certified-kubernetes-administrator-with-practice-tests/09_Networking/235_Lab Solution - Ingress Networking 1 - (optional).extraction.md::E50
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Evidence: So we see a 404 error page.

### Operational Entry 646: certified-kubernetes-administrator-with-practice-tests/09_Networking/235_Lab Solution - Ingress Networking 1 - (optional).extraction.md::E60
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Evidence: And this one should be fairly easy.

### Operational Entry 647: certified-kubernetes-administrator-with-practice-tests/09_Networking/235_Lab Solution - Ingress Networking 1 - (optional).extraction.md::E65
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Evidence: If you refresh the watch path, now we get 404 error and we replace it with stream and we now get the video streaming application.

### Operational Entry 648: certified-kubernetes-administrator-with-practice-tests/09_Networking/235_Lab Solution - Ingress Networking 1 - (optional).extraction.md::E73
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Evidence: So there's nothing called eat here but we don't know if it is there in another space.

### Operational Entry 649: certified-kubernetes-administrator-with-practice-tests/09_Networking/235_Lab Solution - Ingress Networking 1 - (optional).extraction.md::E76
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Evidence: So it's a 404 error, so there's a 404 error.

### Operational Entry 650: certified-kubernetes-administrator-with-practice-tests/09_Networking/235_Lab Solution - Ingress Networking 1 - (optional).extraction.md::E115
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Evidence: So, or at least that's the best practice.

### Operational Entry 651: certified-kubernetes-administrator-with-practice-tests/09_Networking/235_Lab Solution - Ingress Networking 1 - (optional).extraction.md::E116
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Evidence: It is the best practice is to create, for different teams who may be having access to different name spaces to create their own ingress resource right, so that should be the approach that we should be using.

### Operational Entry 652: certified-kubernetes-administrator-with-practice-tests/09_Networking/235_Lab Solution - Ingress Networking 1 - (optional).extraction.md::E125
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Evidence: So that should be the port, okay?

### Operational Entry 653: certified-kubernetes-administrator-with-practice-tests/09_Networking/235_Lab Solution - Ingress Networking 1 - (optional).extraction.md::E139
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Evidence: And the port is 82 82 and we don't have any certs for now so let's just get rid of this.

### Operational Entry 654: certified-kubernetes-administrator-with-practice-tests/09_Networking/235_Lab Solution - Ingress Networking 1 - (optional).extraction.md::E145
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Evidence: But you see that it's still not, it's not working as expected, still here's the 404 error.

### Operational Entry 655: certified-kubernetes-administrator-with-practice-tests/09_Networking/235_Lab Solution - Ingress Networking 1 - (optional).extraction.md::E151
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Evidence: So it should be without this pay.

### Operational Entry 656: certified-kubernetes-administrator-with-practice-tests/09_Networking/235_Lab Solution - Ingress Networking 1 - (optional).extraction.md::E152
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Evidence: So what's happening is when you're calling pay is just the ingress resource is just forwarding as is, the URL as is, to this application and this application does not really have a pay path, so it should just be just slash right?

### Operational Entry 657: certified-kubernetes-administrator-with-practice-tests/09_Networking/235_Lab Solution - Ingress Networking 1 - (optional).extraction.md::E155
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Evidence: So if you look at this, right, the watch wear or even the pay service, they're just available at this they don't have a slash watch or slash wear at the end.

### Operational Entry 658: certified-kubernetes-administrator-with-practice-tests/09_Networking/235_Lab Solution - Ingress Networking 1 - (optional).extraction.md::E158
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Evidence: So that's why the error.

### Operational Entry 659: certified-kubernetes-administrator-with-practice-tests/09_Networking/235_Lab Solution - Ingress Networking 1 - (optional).extraction.md::E160
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Evidence: So let's copy that, and let's edit the ingress pay in the, what do you call, space, should have ingress.

### Operational Entry 660: certified-kubernetes-administrator-with-practice-tests/09_Networking/237_Lab Solution - Ingress Networking - 2 (optional).extraction.md::E18
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 237_Lab Solution - Ingress Networking - 2 (optional).txt
- Evidence: So we'll do a Q call, create conflict map in this and the name should be as given here and genetic configuration.

### Operational Entry 661: certified-kubernetes-administrator-with-practice-tests/09_Networking/237_Lab Solution - Ingress Networking - 2 (optional).extraction.md::E41
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 237_Lab Solution - Ingress Networking - 2 (optional).txt
- Evidence: There are just, there are some issues.

### Operational Entry 662: certified-kubernetes-administrator-with-practice-tests/09_Networking/237_Lab Solution - Ingress Networking - 2 (optional).extraction.md::E43
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 237_Lab Solution - Ingress Networking - 2 (optional).txt
- Evidence: So it looks like there are some issues.

### Operational Entry 663: certified-kubernetes-administrator-with-practice-tests/09_Networking/237_Lab Solution - Ingress Networking - 2 (optional).extraction.md::E44
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 237_Lab Solution - Ingress Networking - 2 (optional).txt
- Evidence: So there's, there's an issue online.

### Operational Entry 664: certified-kubernetes-administrator-with-practice-tests/09_Networking/237_Lab Solution - Ingress Networking - 2 (optional).extraction.md::E45
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 237_Lab Solution - Ingress Networking - 2 (optional).txt
- Evidence: 36 looks like a yamo issue.

### Operational Entry 665: certified-kubernetes-administrator-with-practice-tests/09_Networking/237_Lab Solution - Ingress Networking - 2 (optional).extraction.md::E46
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 237_Lab Solution - Ingress Networking - 2 (optional).txt
- Evidence: So let's, let's edit the file and try and fix those.

### Operational Entry 666: certified-kubernetes-administrator-with-practice-tests/09_Networking/237_Lab Solution - Ingress Networking - 2 (optional).extraction.md::E48
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 237_Lab Solution - Ingress Networking - 2 (optional).txt
- Evidence: So right here we see that, yeah indeed there's an issue with spacing.

### Operational Entry 667: certified-kubernetes-administrator-with-practice-tests/09_Networking/237_Lab Solution - Ingress Networking - 2 (optional).extraction.md::E49
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 237_Lab Solution - Ingress Networking - 2 (optional).txt
- Evidence: So we'll fix that's, try to create it again and we see that namespace, ingress dash not found.

### Operational Entry 668: certified-kubernetes-administrator-with-practice-tests/09_Networking/237_Lab Solution - Ingress Networking - 2 (optional).extraction.md::E91
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 237_Lab Solution - Ingress Networking - 2 (optional).txt
- Evidence: So expo should take care of using the right selector for this, for the deployment.

### Operational Entry 669: certified-kubernetes-administrator-with-practice-tests/09_Networking/237_Lab Solution - Ingress Networking - 2 (optional).extraction.md::E112
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 237_Lab Solution - Ingress Networking - 2 (optional).txt
- Evidence: We don't need the certificate stuff.

### Operational Entry 670: certified-kubernetes-administrator-with-practice-tests/09_Networking/237_Lab Solution - Ingress Networking - 2 (optional).extraction.md::E154
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 237_Lab Solution - Ingress Networking - 2 (optional).txt
- Evidence: So it, it looks like it's going into a too, and you can see the error here.

### Operational Entry 671: certified-kubernetes-administrator-with-practice-tests/09_Networking/237_Lab Solution - Ingress Networking - 2 (optional).extraction.md::E162
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 237_Lab Solution - Ingress Networking - 2 (optional).txt
- Evidence: And then we need to add the annotations, so the annotations for the rewrite target, because as we discussed earlier we don't want it to go to a where and watch URL.

### Operational Entry 672: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/241_Design a Kubernetes Cluster.extraction.md::E16
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 241_Design a Kubernetes Cluster.txt
- Evidence: If you want to deploy a cluster for learning purposes, then a solution based on minikube or a single node cluster deployed using kube ADM on local VMs or cloud providers like GCP or AWS should do.

### Operational Entry 673: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/241_Design a Kubernetes Cluster.extraction.md::E19
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 241_Design a Kubernetes Cluster.txt
- Evidence: Kubeadm is an appropriate tool.

### Operational Entry 674: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/241_Design a Kubernetes Cluster.extraction.md::E22
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 241_Design a Kubernetes Cluster.txt
- Evidence: A highly available multi-node cluster with multiple master nodes is recommended.

### Operational Entry 675: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/241_Design a Kubernetes Cluster.extraction.md::E50
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 241_Design a Kubernetes Cluster.txt
- Evidence: As a best practice, it is recommended to dedicate master nodes for control plane components only, especially in a production environment.

### Operational Entry 676: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/241_Design a Kubernetes Cluster.extraction.md::E60
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 241_Design a Kubernetes Cluster.txt
- Evidence: You don't have to memorize the numbers that we discussed as these are available in the documentation page.

### Operational Entry 677: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/242_Choosing Kubernetes Infrastructure.extraction.md::E39
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 242_Choosing Kubernetes Infrastructure.txt
- Evidence: If you wish to leverage your existing VMware environment for Kubernetes, then the VMware cloud PXE solution is one that should be evaluated.

### Operational Entry 678: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/243_Configure High Availability.extraction.md::E10
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 243_Configure High Availability.txt
- Evidence: A high availability configuration is where you have redundancy across every component in the cluster, so as to avoid a single point of failure.

### Operational Entry 679: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/243_Configure High Availability.extraction.md::E34
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 243_Configure High Availability.txt
- Evidence: But we shouldn't be sending the same request to both of them.

### Operational Entry 680: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/243_Configure High Availability.extraction.md::E40
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 243_Configure High Availability.txt
- Evidence: For example, the controller manager consists of controllers like the replication controller that is constantly watching the state of pots and taking necessary actions like creating a new pot when one fails, etc..

### Operational Entry 681: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/243_Configure High Availability.extraction.md::E58
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 243_Configure High Availability.txt
- Evidence: That way, if one process fails, maybe because the first master crashes, then the second process can acquire the lock and become the leader.

### Operational Entry 682: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/243_Configure High Availability.extraction.md::E79
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 243_Configure High Availability.txt
- Evidence: In the next lecture, we discuss more about how etcd server works in a cluster setup and the best practices around the number of recommended nodes in a cluster.

### Operational Entry 683: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/244_ETCD in HA.extraction.md::E39
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 244_ETCD in HA.txt
- Evidence: Instead, only one of the instances is responsible for processing the rights internally.

### Operational Entry 684: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/244_ETCD in HA.extraction.md::E50
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 244_ETCD in HA.txt
- Evidence: When the cluster is set up, we have three nodes that do not have a leader elected.

### Operational Entry 685: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/244_ETCD in HA.extraction.md::E55
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 244_ETCD in HA.txt
- Evidence: Now that it is elected the leader, it sends out notification at regular intervals to other masters, informing them that it is continuing to assume the role of the leader in case the other nodes do not receive a notification from the leader at some point in time, which could either be due to the leader going down or losing network connectivity, the nodes initiate a re-election process among themselves, and a new leader is identified.

### Operational Entry 686: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/244_ETCD in HA.extraction.md::E58
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 244_ETCD in HA.txt
- Evidence: We said that the etcd cluster is highly available, so even if we lose a node, it should still function.

### Operational Entry 687: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/244_ETCD in HA.extraction.md::E81
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 244_ETCD in HA.txt
- Evidence: If one fails, there is no quorum, so rights won't be processed.

### Operational Entry 688: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/244_ETCD in HA.extraction.md::E83
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 244_ETCD in HA.txt
- Evidence: It doesn't offer you any real value as quorum cannot be met, which is why it is recommended to have a minimum of three instances in an etcd cluster.

### Operational Entry 689: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/244_ETCD in HA.extraction.md::E93
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 244_ETCD in HA.txt
- Evidence: When deciding on the number of master nodes, it is recommended to select an odd number as highlighted in the table.

### Operational Entry 690: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/244_ETCD in HA.extraction.md::E96
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 244_ETCD in HA.txt
- Evidence: Say for example, due to a disruption in the network, it fails and causes the network to partition.

### Operational Entry 691: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/244_ETCD in HA.extraction.md::E118
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 244_ETCD in HA.txt
- Evidence: Going back to our design, how many nodes should our cluster have in an Ha environment?

### Operational Entry 692: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/244_ETCD in HA.extraction.md::E127
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 244_ETCD in HA.txt
- Evidence: So considering your environment, the fault tolerance requirements, and the cost that you can bear, you should be able to choose one number from this list.

### Operational Entry 693: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/246_Deployment With kubeadm - Introduction.extraction.md::E2
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 246_Deployment With kubeadm - Introduction.txt
- Evidence: The cube admin tool helps us set up a multi-node cluster following the Kubernetes best practices.

### Operational Entry 694: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E18
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: And within here, if I just do an ls, you should see the Vagrant file right here.

### Operational Entry 695: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E23
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: And if you'd like to, you can go ahead and poke around at the rest of the configuration but we don't need to worry too much about that.

### Operational Entry 696: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E32
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And we want to see this section right here which is installing a container runtime.

### Operational Entry 697: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E33
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So before we can utilize the kube ADM tool you want to make sure that you install a container runtime.

### Operational Entry 698: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E52
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: We don't technically need cube CTL and Cubelet at the moment.

### Operational Entry 699: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E75
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: The reason why is that, you know, obviously the worker nodes will need to have a container runtime so they can run the containers, but all of the control plane components on our master node will be run as pods or as containers.

### Operational Entry 700: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E76
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And so since we have containers running, we're going to need a container runtime.

### Operational Entry 701: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E78
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And here it's going to give you the directions on how to utilize one of these supported container runtimes.

### Operational Entry 702: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E84
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So now let's install our container runtime.

### Operational Entry 703: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E119
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So we're going to just not pass in that file because we don't need to change anything.

### Operational Entry 704: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E120
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So we don't have to worry about the kubelet process.

### Operational Entry 705: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E121
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: But we do have to make sure that the container runtime is set to utilize the Cgroup driver.

### Operational Entry 706: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E123
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So if we go to the top of the container runtime page and we select container D and we scroll down, this is the directions on how to set the cgroup driver to be systemd.

### Operational Entry 707: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E130
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So and so I'll go to slash Etsy container D and it looks like I don't have a container d directory.

### Operational Entry 708: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E137
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So if you don't specify a config file it's going to use these default configurations.

### Operational Entry 709: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E140
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So if we don't provide a file it's going to look like this.

### Operational Entry 710: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E164
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And we have it's under this config section which is the container runtimes dot run c dot options.

### Operational Entry 711: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E177
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So we've got the container runtime installed.

### Operational Entry 712: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E188
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: That way when you migrate over, you don't really have to change anything for the most part, and you've already got the load balancer set up to forward it.

### Operational Entry 713: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E192
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: Note that we don't have to pass that flag in.

### Operational Entry 714: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E200
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So if you actually go here under the container runtime page.

### Operational Entry 715: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E203
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And I don't think it's here actually it might be under installing kube adm.

### Operational Entry 716: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E209
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So we don't need to actually pass in that flag.

### Operational Entry 717: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E216
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: I don't want to use this one.

### Operational Entry 718: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E254
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And now I should be able to do a kubectl.

### Operational Entry 719: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E255
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And then here if I do get nodes, it should be able to connect and give back all of the nodes.

### Operational Entry 720: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E303
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So we are using the default one so we don't have to do that.

### Operational Entry 721: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E317
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: Don't worry too much about those cluster role binding and all of that.

### Operational Entry 722: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E349
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So at this point our cluster should be ready to go.

### Operational Entry 723: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E24
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: So when we paste this, we see that we get this error.

### Operational Entry 724: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E26
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: This error is a little misleading, but what's happening is, we're downloading the gpg key and we're downloading it to this folder /etc/apt/keyrings.

### Operational Entry 725: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E31
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: And after we create it, if we run the same command, we should see that there's no issues when we run it now.

### Operational Entry 726: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E38
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: We don't want the latest version.

### Operational Entry 727: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E41
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: And then, I'm gonna copy this, but I don't actually wanna run the command.

### Operational Entry 728: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E48
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: All right, and so that should be everything we need to do for the first question.

### Operational Entry 729: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E54
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: We can see that there's an error, couldn't get current server API group list.

### Operational Entry 730: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E55
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: So this error is actually expected because we actually haven't initialized our cluster yet.

### Operational Entry 731: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E72
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: And so now, we can just do a, kubectl get nodes and we should see that we've got our one control plane node, which at the moment is in a NotReady state, but that's to be expected.

### Operational Entry 732: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E81
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: We run the validation, we should see it should be good.

### Operational Entry 733: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/252_Helm - Introduction.extraction.md::E13
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 252_Helm - Introduction.txt
- Evidence: And now, not bad enough yet, imagine two months go by and we now have to upgrade some components in our app, and so we are back to editing multiple YAML files' declarations again, with great care so that we don't change the wrong thing in the wrong place.

### Operational Entry 734: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/252_Helm - Introduction.extraction.md::E17
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 252_Helm - Introduction.txt
- Evidence: Well, that's true, but it might make it even harder to find stuff when you're looking for, say you wanna troubleshoot an issue, we'd have to continuously search for stuff that we need to edit in something that could be 25 pages of text.

### Operational Entry 735: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/252_Helm - Introduction.extraction.md::E24
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 252_Helm - Introduction.txt
- Evidence: Helm, however, is built from ground up to know about such stuff.

### Operational Entry 736: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/252_Helm - Introduction.extraction.md::E26
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 252_Helm - Introduction.txt
- Evidence: It looks at those objects as part of a big package as a group, and whenever we need to perform an action, we don't tell Helm the objects that it should touch, we just tell it what package we want to act on, like our WordPress app package.

### Operational Entry 737: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/252_Helm - Introduction.extraction.md::E27
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 252_Helm - Introduction.txt
- Evidence: And based on the package name, it then knows what objects it should change and how, even if there are hundreds of objects that belong to that particular package.

### Operational Entry 738: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/252_Helm - Introduction.extraction.md::E31
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 252_Helm - Introduction.txt
- Evidence: Fortunately, we don't have to go through such horrors as we get a game installer.

### Operational Entry 739: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/252_Helm - Introduction.extraction.md::E33
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 252_Helm - Introduction.txt
- Evidence: Helm does a similar thing and more for YAML files and the Kubernetes objects that make up our application.

### Operational Entry 740: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/252_Helm - Introduction.extraction.md::E38
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 252_Helm - Introduction.txt
- Evidence: Helm will know what individual objects need to change to make this happen.

### Operational Entry 741: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/252_Helm - Introduction.extraction.md::E39
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 252_Helm - Introduction.txt
- Evidence: Helm keeps track of all the changes made to the app files, and that allows us to roll back to the previous so-called revision.

### Operational Entry 742: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/252_Helm - Introduction.extraction.md::E41
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 252_Helm - Introduction.txt
- Evidence: We don't need to remember each object that belongs to one of our apps anymore or use 10 separate commands to remove everything.

### Operational Entry 743: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/252_Helm - Introduction.extraction.md::E42
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 252_Helm - Introduction.txt
- Evidence: Helm does all the work.

### Operational Entry 744: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/252_Helm - Introduction.extraction.md::E45
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 252_Helm - Introduction.txt
- Evidence: The most important thing is that it lets us treat our Kubernetes apps as apps instead of just a collection of objects, and this takes a huge burden off our shoulders as we don't have to micromanage each Kubernetes object anymore.

### Operational Entry 745: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/252_Helm - Introduction.extraction.md::E46
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 252_Helm - Introduction.txt
- Evidence: Helm can do that for us.

### Operational Entry 746: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/255_A Quick Note on Helm2 vs Helm3.extraction.md::E5
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 255_A Quick Note on Helm2 vs Helm3.txt
- Evidence: Helm 1.0 was first released in February, 2016, Helm 2.0 in November, 2016, and Helm 3.0 in November, 2019.

### Operational Entry 747: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/255_A Quick Note on Helm2 vs Helm3.extraction.md::E11
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 255_A Quick Note on Helm2 vs Helm3.txt
- Evidence: Helm has a CLI client installed on your local machine that helps you perform Helm-specific actions against your Kubernetes cluster.

### Operational Entry 748: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/255_A Quick Note on Helm2 vs Helm3.extraction.md::E26
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 255_A Quick Note on Helm2 vs Helm3.txt
- Evidence: Helm 2 had Tiller and Helm 3 simplifies integration with Kubernetes by removing Tiller.

### Operational Entry 749: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/255_A Quick Note on Helm2 vs Helm3.extraction.md::E28
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 255_A Quick Note on Helm2 vs Helm3.txt
- Evidence: The name might sound intimidating, but don't worry.

### Operational Entry 750: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/255_A Quick Note on Helm2 vs Helm3.extraction.md::E43
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 255_A Quick Note on Helm2 vs Helm3.txt
- Evidence: Helm 2 was less sophisticated when it came to how it did such rollbacks.

### Operational Entry 751: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/255_A Quick Note on Helm2 vs Helm3.extraction.md::E44
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 255_A Quick Note on Helm2 vs Helm3.txt
- Evidence: And when a rollback command is issued, Helm compares the current chart, which is the chart that has the WordPress image 5.8 in it with the previous chart, which is the chart that has a WordPress 4.8 image in it and realizes that they're different.

### Operational Entry 752: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/255_A Quick Note on Helm2 vs Helm3.extraction.md::E56
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 255_A Quick Note on Helm2 vs Helm3.txt
- Evidence: Helm 3, on the other hand, is more intelligent.

### Operational Entry 753: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/255_A Quick Note on Helm2 vs Helm3.extraction.md::E64
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 255_A Quick Note on Helm2 vs Helm3.txt
- Evidence: Helm 2 looks at the old chart and then the new chart that you want to upgrade to, and all your changes will be lost since they don't exist in the old chart or the new chart.

### Operational Entry 754: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/256_Helm Components.extraction.md::E2
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 256_Helm Components.txt
- Evidence: Helm has multiple components we'll be working with, so let's take a look at its general structure, concepts, and the pieces we'll be working with.

### Operational Entry 755: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/256_Helm Components.extraction.md::E28
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 256_Helm Components.txt
- Evidence: And most of these you should be able to relate to what you learned in the Kubernetes course.

### Operational Entry 756: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/256_Helm Components.extraction.md::E54
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 256_Helm Components.txt
- Evidence: And since the two releases are based on the same chart, once they get something working correctly on the development site, they can transfer it to the main website since it should work exactly the same way as the two websites are basically clones and built the same way.

### Operational Entry 757: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/256_Helm Components.extraction.md::E60
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 256_Helm Components.txt
- Evidence: And you don't have to go to each of these repositories to search for charts.

### Operational Entry 758: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/257_Helm Charts.extraction.md::E2
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 257_Helm Charts.txt
- Evidence: Helm is rather an easy to use command line tool.

### Operational Entry 759: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/257_Helm Charts.extraction.md::E6
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 257_Helm Charts.txt
- Evidence: But since in the command line, we don't give this tool a lot of info except, "Hey, I want this installed." How does it know how to achieve this goal?

### Operational Entry 760: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/257_Helm Charts.extraction.md::E7
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 257_Helm Charts.txt
- Evidence: Helm knows how to do its job with the help of what are called charts.

### Operational Entry 761: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/257_Helm Charts.extraction.md::E58
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 257_Helm Charts.txt
- Evidence: This way we don't have to merge the manifest files of MariaDB or any other database into this particular chart.

### Operational Entry 762: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/258_Working With Helm - Basics.extraction.md::E7
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 258_Working With Helm - Basics.txt
- Evidence: Helm restore?

### Operational Entry 763: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/261_Lifecycle Management With Helm.extraction.md::E16
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 261_Lifecycle Management With Helm.txt
- Evidence: Fortunately, as we said, Helm keeps track of everything associated with a release, so we don't have to upgrade our objects one by one.

### Operational Entry 764: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/261_Lifecycle Management With Helm.extraction.md::E17
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 261_Lifecycle Management With Helm.txt
- Evidence: Helm can automatically upgrade them all with one single command.

### Operational Entry 765: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/261_Lifecycle Management With Helm.extraction.md::E53
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 261_Lifecycle Management With Helm.txt
- Evidence: Now let's assume this upgrade did something that we don't like.

### Operational Entry 766: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/261_Lifecycle Management With Helm.extraction.md::E54
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 261_Lifecycle Management With Helm.txt
- Evidence: Helm's Lifecycle Management allows for another cool thing called rollback.

### Operational Entry 767: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/263_Kustomize Problem Statement and Ideology.extraction.md::E20
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 263_Kustomize Problem Statement and Ideology.txt
- Evidence: It'll work, there's no issues, there's no limitations with the solution.

### Operational Entry 768: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/263_Kustomize Problem Statement and Ideology.extraction.md::E25
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 263_Kustomize Problem Statement and Ideology.txt
- Evidence: Well now when we create a service.yml file, we have to remember to copy it to all three directories because we don't want it to be missing from one of our environments.

### Operational Entry 769: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/263_Kustomize Problem Statement and Ideology.extraction.md::E34
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 263_Kustomize Problem Statement and Ideology.txt
- Evidence: We need a better solution to addressing this issue.

### Operational Entry 770: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/263_Kustomize Problem Statement and Ideology.extraction.md::E37
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 263_Kustomize Problem Statement and Ideology.txt
- Evidence: So let's take a look at how Kustomize addresses this issue.

### Operational Entry 771: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/263_Kustomize Problem Statement and Ideology.extraction.md::E40
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 263_Kustomize Problem Statement and Ideology.txt
- Evidence: What we don't wanna do is copy all of our configs across each and every environment.

### Operational Entry 772: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/263_Kustomize Problem Statement and Ideology.extraction.md::E54
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 263_Kustomize Problem Statement and Ideology.txt
- Evidence: Now we already know we don't want it to be 1 in staging and production, and we only want it to be 1 in development, but we'll worry about that in a second.

### Operational Entry 773: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/263_Kustomize Problem Statement and Ideology.extraction.md::E56
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 263_Kustomize Problem Statement and Ideology.txt
- Evidence: So the overlays allow us to customize the behavior on a per environment basis.

### Operational Entry 774: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/263_Kustomize Problem Statement and Ideology.extraction.md::E71
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 263_Kustomize Problem Statement and Ideology.txt
- Evidence: And each one of these environments are going to have the values that you want to overwrite and change from the base config as well as any new resources that should only be added exclusively for that specific environment.

### Operational Entry 775: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/263_Kustomize Problem Statement and Ideology.extraction.md::E75
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 263_Kustomize Problem Statement and Ideology.txt
- Evidence: The great part about Kustomize is it actually comes built in with kubectl, so you don't have to install any other packages.

### Operational Entry 776: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/263_Kustomize Problem Statement and Ideology.extraction.md::E77
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 263_Kustomize Problem Statement and Ideology.txt
- Evidence: With Kustomize, we're not actually making use of any sort of templating system like we do in helm, and that's nice because we don't actually have to learn a templating language, all we have to do is just define our base configs and then specify our overlays and what we want to change in the overlays.

### Operational Entry 777: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/264_Kustomize vs Helm.extraction.md::E1
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 264_Kustomize vs Helm.txt
- Evidence: (bright tinkling music) Instructor: Before we move on to the next section, I wanted to talk about an alternative tool to Kustomize, and this tool's called Helm, and I wanted to just provide a brief, high level overview of how Helm addresses the same issue of providing modification to your Kubernetes manifest on a per environment basis, and I think it's good to see this just because, you know, when you're trying to figure out what is the best tool for your project or application, you should have a good understanding of how both of these tools work and what are the pros and cons of each one so that you can make the best decision for your project.

### Operational Entry 778: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/264_Kustomize vs Helm.extraction.md::E2
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 264_Kustomize vs Helm.txt
- Evidence: So the way that Helm actually tackles this issue is that it makes use of a Go templating syntax to assign variables to various properties, and to give you an example of that, let's take a look at a template.

### Operational Entry 779: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/265_Installation_Setup.extraction.md::E4
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 265_Installation_Setup.txt
- Evidence: So on your terminal, run the following command, which will download the script, and that script will pretty much be responsible for installing Kustomize for you, so you don't have to run any other commands.

### Operational Entry 780: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/265_Installation_Setup.extraction.md::E7
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 265_Installation_Setup.txt
- Evidence: If you don't see an output similar to this, that means most likely there was an issue with an installation or maybe the environment variables weren't updated in the current terminal session.

### Operational Entry 781: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/265_Installation_Setup.extraction.md::E9
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 265_Installation_Setup.txt
- Evidence: If there's still an issue, then rerun the installation script again.

### Operational Entry 782: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/266_The kustomization.yaml File.extraction.md::E13
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 266_The kustomization.yaml File.txt
- Evidence: The first is it's going to contain a list of all of the Kubernetes resources that should be managed by Kustomize.

### Operational Entry 783: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/266_The kustomization.yaml File.extraction.md::E38
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 266_The kustomization.yaml File.txt
- Evidence: We learned that Kustomize will look for a customization file, which is going to contain the two following things, a list of all of the Kubernetes resources or manifests that Kustomize should manage, as well as all of the customizations that should be applied.

### Operational Entry 784: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/267_Kustomize Output.extraction.md::E4
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 267_Kustomize Output.txt
- Evidence: And what's important to understand is that we don't actually deploy or apply any of these configs.

### Operational Entry 785: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/269_Managing Directories.extraction.md::E36
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 269_Managing Directories.txt
- Evidence: So customize has helped us address the issue of splitting all of our configs into separate directories.

### Operational Entry 786: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/270_Managing Directories Demo.extraction.md::E62
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 270_Managing Directories Demo.txt
- Evidence: And just to remind you guys, if you don't wanna use the kustomize CLI, you can actually use the built-in version in kubectl.

### Operational Entry 787: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/270_Managing Directories Demo.extraction.md::E71
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 270_Managing Directories Demo.txt
- Evidence: We don't need these anymore.

### Operational Entry 788: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/270_Managing Directories Demo.extraction.md::E72
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 270_Managing Directories Demo.txt
- Evidence: And we'll come back to fixing up this file.

### Operational Entry 789: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/270_Managing Directories Demo.extraction.md::E87
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 270_Managing Directories Demo.txt
- Evidence: So in this case, you know, we don't need to provide a path to a specific file, we just provide a path to the directory.

### Operational Entry 790: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/270_Managing Directories Demo.extraction.md::E89
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 270_Managing Directories Demo.txt
- Evidence: So, you only have to provide the path of the folder, and as long as you have a kustomization.yaml file in there, it should be able to handle the rest.

### Operational Entry 791: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/272_Common Transformers.extraction.md::E6
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 272_Common Transformers.txt
- Evidence: And before we even go over what that is and what they do, let's take a look at the issue they're trying to address first.

### Operational Entry 792: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/272_Common Transformers.extraction.md::E11
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 272_Common Transformers.txt
- Evidence: Well, let's say that we want to specifically add a label in this case, so something like org KodeKloud, or maybe we wanna go into all of our Kubernetes objects and add a specific prefix or suffix to the name.

### Operational Entry 793: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/272_Common Transformers.extraction.md::E15
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 272_Common Transformers.txt
- Evidence: And so doing this by hand is not a scalable solution, and it's gonna be very time-consuming and it's going to lead to a lot of errors.

### Operational Entry 794: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/272_Common Transformers.extraction.md::E21
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 272_Common Transformers.txt
- Evidence: We also have the namePrefix and Suffix transformation.

### Operational Entry 795: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/272_Common Transformers.extraction.md::E22
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 272_Common Transformers.txt
- Evidence: This is going to allow you to add a prefix or suffix to the names of all of your Kubernetes resources.

### Operational Entry 796: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/272_Common Transformers.extraction.md::E35
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 272_Common Transformers.txt
- Evidence: For the Prefix/Suffix Transformer, we can add in a specific prefix or suffix by providing the name prefix or the name suffix properties.

### Operational Entry 797: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/272_Common Transformers.extraction.md::E36
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 272_Common Transformers.txt
- Evidence: And that's gonna map to the prefix of the name as well as the suffix of the name as well.

### Operational Entry 798: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/273_Image Transformers.extraction.md::E13
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 273_Image Transformers.txt
- Evidence: So ignore the name of the container that's set to web, we don't care about that.

### Operational Entry 799: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/273_Image Transformers.extraction.md::E15
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 273_Image Transformers.txt
- Evidence: Something to keep in mind, it confused me at first, so I figured you guys would probably run into the same issue.

### Operational Entry 800: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/273_Image Transformers.extraction.md::E18
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 273_Image Transformers.txt
- Evidence: However, let's say that we don't actually wanna change the image, so we've got our nginx image here as well, but let's say we just wanna change the tag.

### Operational Entry 801: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E50
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Evidence: So maybe, we'll, this will be our debugging environment.

### Operational Entry 802: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E51
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Evidence: And when the namespace is applied, if we do a build, we should see under everything, so all five of these YAML files, we should see it get applied there.

### Operational Entry 803: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E52
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Evidence: So for the db side of things, we can see that the namespace was set to debugging.

### Operational Entry 804: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E53
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Evidence: For api, we should see that the namespace was set to debugging, so it looks like it was successfully applied to everything.

### Operational Entry 805: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E54
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Evidence: So now let's give everything a namePrefix and a nameSuffix.

### Operational Entry 806: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E56
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Evidence: I want every single object to have a name prefixed with the word KodeKloud, and I want all of the resources to have a suffix that's specific to what folder they're in.

### Operational Entry 807: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E58
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Evidence: So right now, if we actually take a look at the configs here, it's gonna be api-deployment, I wanted api-deployment-web, and it should be prefixed with KodeKloud.

### Operational Entry 808: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E61
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Evidence: We're gonna change it to, it's gonna be prefixed with KodeKloud as well, but it's gonna end in -storage.

### Operational Entry 809: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E63
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Evidence: So for the prefix of KodeKloud, we want this applied to every single resource regardless of what folder they're in.

### Operational Entry 810: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E65
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Evidence: So we'll go in here and we'll add a prefix.

### Operational Entry 811: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E66
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Evidence: So this will be namePrefix and it's gonna be KodeKloud.

### Operational Entry 812: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E69
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Evidence: Oh, okay, I've realized I wanna put a dash actually so that the words don't get jammed together.

### Operational Entry 813: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E76
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Evidence: Now we wanna set up the suffix.

### Operational Entry 814: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E77
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Evidence: And like I said, the suffix is going to change depending on which folder that we're in.

### Operational Entry 815: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E79
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Evidence: So for this one, we're gonna go here, and I'm gonna do a nameSuffix.

### Operational Entry 816: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E82
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Evidence: So we'll do nameSuffix: -storage.

### Operational Entry 817: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E86
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Evidence: So the prefix is still there, and the suffix is set to storage.

### Operational Entry 818: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E88
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Evidence: And if we take a look at one of the APIs, we've got KodeKloud, and then the suffix is web.

### Operational Entry 819: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E93
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Evidence: I'm just gonna say logging, it's gonna be set to debugging, or let's just say verbose.

### Operational Entry 820: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E94
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Evidence: And now, if we take a look at all of our resources, we should see a annotation of logging: verbose.

### Operational Entry 821: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E107
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Evidence: So in this case, maybe you don't wanna apply it globally because maybe there's some other features that also use a Mongo database, and we don't wanna actually change those.

### Operational Entry 822: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E113
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Evidence: Remember, don't look at the name.

### Operational Entry 823: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E121
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Evidence: And if you guys noticed, I got an error.

### Operational Entry 824: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E122
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Evidence: And it's important to take a look at these errors and just read it because it's gonna give us some information as to what exactly happened.

### Operational Entry 825: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E125
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Evidence: So I'm suspecting the issue is with the tag right here.

### Operational Entry 826: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E126
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Evidence: If I actually comment this out, I assume we're probably not going to get an error.

### Operational Entry 827: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E128
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Evidence: So there seems to be an issue with this.

### Operational Entry 828: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E131
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Evidence: And so now if I do a build, we should see it goes through.

### Operational Entry 829: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E137
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Evidence: And if we scroll through everything else, you should see that we didn't change any other image.

### Operational Entry 830: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/274_Transformers Demo.extraction.md::E138
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo.txt
- Evidence: It should have left everything else untouched.

### Operational Entry 831: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/276_Patches Intro.extraction.md::E25
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 276_Patches Intro.txt
- Evidence: So it's not just one, you don't have to just use one.

### Operational Entry 832: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/276_Patches Intro.extraction.md::E94
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 276_Patches Intro.txt
- Evidence: I basically just copied the original API deployment file and I just pasted it in there, and then I deleted all the stuff I don't wanna change.

### Operational Entry 833: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/276_Patches Intro.extraction.md::E107
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 276_Patches Intro.txt
- Evidence: There's no issues with using either one, it's just a matter of personal preference.

### Operational Entry 834: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/277_Different Types of Patches.extraction.md::E6
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 277_Different Types of Patches.txt
- Evidence: And then we can provide a path to a YAML file that's going to contain all of our patches, so that we don't have to clutter up our kustomization.yaml file.

### Operational Entry 835: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/278_Patches Dictionary.extraction.md::E9
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 278_Patches Dictionary.txt
- Evidence: We don't want to add or delete a label, we want to replace this one.

### Operational Entry 836: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/279_Patches List.extraction.md::E70
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 279_Patches List.txt
- Evidence: And then we don't need to provide a value because this is a remove operation.

### Operational Entry 837: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/279_Patches List.extraction.md::E78
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 279_Patches List.txt
- Evidence: If I don't include, then Kustomize just thinks that I don't wanna do anything.

### Operational Entry 838: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/281_Overlays.extraction.md::E14
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 281_Overlays.txt
- Evidence: That's it, so your dev folder is going to have a certain number of patches that will change things to match what the dev should have.

### Operational Entry 839: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/281_Overlays.extraction.md::E34
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 281_Overlays.txt
- Evidence: Once that's defined, Kustomize will look for the kustomization.yaml file in the base directory to know all the resources it should be importing.

### Operational Entry 840: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/281_Overlays.extraction.md::E46
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 281_Overlays.txt
- Evidence: But I wanna make sure that you guys don't think that, you know, overlays can only have patches.

### Operational Entry 841: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/281_Overlays.extraction.md::E53
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 281_Overlays.txt
- Evidence: You don't have to just modify preexisting ones, you can use new ones.

### Operational Entry 842: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/281_Overlays.extraction.md::E57
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 281_Overlays.txt
- Evidence: So one final note, I wanna make sure that you guys don't think that we're kind of forced into a certain directory structure.

### Operational Entry 843: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/281_Overlays.extraction.md::E61
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 281_Overlays.txt
- Evidence: Don't think that you just have to jam everything under the base directory.

### Operational Entry 844: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/281_Overlays.extraction.md::E64
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 281_Overlays.txt
- Evidence: And remember, these subdirectories don't have to match up with what the base directory is.

### Operational Entry 845: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/283_Components.extraction.md::E11
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 283_Components.txt
- Evidence: We usually try to avoid copying and pasting things like that. 'Cause a lot of times it leads to some config drift.

### Operational Entry 846: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/283_Components.extraction.md::E14
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 283_Components.txt
- Evidence: Don't complicate it, it's just all of the resources for a specific feature, all of the patches, all of the config maps, secrets, and any other Kubernetes related configs associated with the feature.

### Operational Entry 847: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/283_Components.extraction.md::E22
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 283_Components.txt
- Evidence: And let's say that only the premium and the self-hosted version of our application should have caching enabled.

### Operational Entry 848: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/283_Components.extraction.md::E25
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 283_Components.txt
- Evidence: And then let's say we also want a external database service like a Postgres database, and that should only be available for development and the premium versions of our application, so these two guys.

### Operational Entry 849: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/283_Components.extraction.md::E26
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 283_Components.txt
- Evidence: So this is going to create a little bit of an issue 'cause we have these individual features that only apply to a certain subset of our overlays.

### Operational Entry 850: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/283_Components.extraction.md::E30
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 283_Components.txt
- Evidence: And the problem with doing that is, all three overlays will get the configuration, but remember, only self-hosted and premium should get the caching configuration, we don't want development to get it.

### Operational Entry 851: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/283_Components.extraction.md::E37
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 283_Components.txt
- Evidence: So like most other things like developing any applications, you wanna avoid copying and pasting whenever you can.

### Operational Entry 852: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/283_Components.extraction.md::E40
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 283_Components.txt
- Evidence: So we could take our caching configuration, all the Kubernetes config for that, and create a component, a customized component, and then we can just import that component into all of the different overlays that should be using it.

### Operational Entry 853: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/285_Troubleshooting - Section Introduction.extraction.md::E2
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 285_Troubleshooting - Section Introduction.txt
- Evidence: In this section, we look at some of the troubleshooting techniques for Kubernetes.

### Operational Entry 854: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/285_Troubleshooting - Section Introduction.extraction.md::E3
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 285_Troubleshooting - Section Introduction.txt
- Evidence: We start with troubleshooting application failures, then move on to troubleshooting control plane failures, and then to worker node failures, and finally network related issues.

### Operational Entry 855: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/285_Troubleshooting - Section Introduction.extraction.md::E4
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 285_Troubleshooting - Section Introduction.txt
- Evidence: This section is full of hands-on labs where you are given a broken cluster and are asked to troubleshoot and fix issues.

### Operational Entry 856: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/286_Application Failure.extraction.md::E1
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 286_Application Failure.txt
- Evidence: Throughout this course, we've actually worked on a number of troubleshooting exercises with respect to the topic we were going through at that point in time.

### Operational Entry 857: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/286_Application Failure.extraction.md::E2
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 286_Application Failure.txt
- Evidence: So a lot of troubleshooting is already covered.

### Operational Entry 858: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/286_Application Failure.extraction.md::E3
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 286_Application Failure.txt
- Evidence: We will go through an overview of troubleshooting techniques and procedures, and work on some more practice tests in this section.

### Operational Entry 859: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/286_Application Failure.extraction.md::E4
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 286_Application Failure.txt
- Evidence: We'll start with application failures.

### Operational Entry 860: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/286_Application Failure.extraction.md::E9
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 286_Application Failure.txt
- Evidence: Depending on how much you know about the failure.

### Operational Entry 861: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/286_Application Failure.extraction.md::E11
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 286_Application Failure.txt
- Evidence: But remember to check every object and link in this map until you find the root cause of the issue.

### Operational Entry 862: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/286_Application Failure.extraction.md::E12
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 286_Application Failure.txt
- Evidence: Say in our case, users report some issue with accessing the application.

### Operational Entry 863: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/286_Application Failure.extraction.md::E25
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 286_Application Failure.txt
- Evidence: If the pod is restarting due to a failure, then the logs in the current version of the pod that's running the current version of the container may not reflect why it failed the last time.

### Operational Entry 864: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/286_Application Failure.extraction.md::E29
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 286_Application Failure.txt
- Evidence: Check the logs of the DB pod and look for any errors in the database.

### Operational Entry 865: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/286_Application Failure.extraction.md::E30
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 286_Application Failure.txt
- Evidence: There are some more tips documented in the Kubernetes documentation page for troubleshooting applications.

### Operational Entry 866: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E1
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Evidence: -: Hey, so let's go through this practice test on troubleshooting application failure.

### Operational Entry 867: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E6
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Evidence: So if I look at the error message here, we can see some of the environment variables, which, which we can use for while troubleshooting, but it says, Can't connect to MySQL server on MySQL service 3306.

### Operational Entry 868: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E8
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Evidence: So basically it looks like this web application is unable to reach the MySQL service because the name, there's some, some issue with the name is not able to resolve it.

### Operational Entry 869: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E25
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Evidence: So there's some issue in this area.

### Operational Entry 870: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E31
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Evidence: So it's best if we switch our context and, and set the alpha name space as the default name space, because we don't want to be typing in the name space for each command so let's do a kubectl config, and let's check the help find out the command.

### Operational Entry 871: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E57
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Evidence: So this, and this should match because from within this application is gonna try and reach a service by the name MySQL service.

### Operational Entry 872: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E60
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Evidence: So what we're going to do is we're gonna fix that.

### Operational Entry 873: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E96
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Evidence: So this whole thing should be good, right?

### Operational Entry 874: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E97
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Evidence: And again, it looks like it's a connectivity issue with between the web application and the MySQL server.

### Operational Entry 875: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E99
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Evidence: Now, last time the issue was with the name, but now looks like the name is correct, it is MySQL service, but we will anyway, also check the deployment on what is set, describe Deploy web app MySQL.

### Operational Entry 876: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E120
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Evidence: So that should be 3306 as well.

### Operational Entry 877: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E136
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Evidence: So it looks like the issue is somewhere here.

### Operational Entry 878: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E173
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Evidence: So that should be the selector not name equals SQL 0001.

### Operational Entry 879: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E182
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Evidence: So even though we thought that the issue was somewhere here, we went through and we made sure that everything's fine and we just went through the remaining just to check and just to be sure.

### Operational Entry 880: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E183
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Evidence: And that's how we identified that the issue is somewhere here, so that's, that's another approach or technique that you should use.

### Operational Entry 881: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E184
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Evidence: If you're not really sure, I mean, you start with an intuition on, you know, where the issue could be, but if you don't seem, you know, if you can't really figure out, you just keep looking at the, those things just to make sure that they're working as expected.

### Operational Entry 882: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E191
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Evidence: So let's check the error message.

### Operational Entry 883: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E216
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Evidence: So that was the issue here.

### Operational Entry 884: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E221
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Evidence: So let's open the webpage and we have a similar error message.

### Operational Entry 885: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E225
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Evidence: So that's kind of the similar error.

### Operational Entry 886: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E228
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Evidence: And we know that, So it's a similar error message where it says Access denied for SQL user, and that's what we just solve.

### Operational Entry 887: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E229
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Evidence: The user is not SQL user, it's a root user, so let's go ahead and fix that.

### Operational Entry 888: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E235
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Evidence: Okay, so now the error message has changed and it says access denied for user root.

### Operational Entry 889: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E242
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Evidence: So we've already fixed it on the deployment here, but now the issue could be here.

### Operational Entry 890: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E246
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Evidence: And here we have the environment variable and the MySQL root password is set to something other than password, which should be this.

### Operational Entry 891: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E259
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Evidence: So that was the issue.

### Operational Entry 892: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E262
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Evidence: And so if that is the case, then you should inspect the config maps as well.

### Operational Entry 893: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E273
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Evidence: So that's what we're gonna fix, edit service, web service.

### Operational Entry 894: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E289
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Evidence: You see that we have the password issue here, the environment variables.

### Operational Entry 895: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E291
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Evidence: And this should be password, let's save that.

### Operational Entry 896: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E300
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Evidence: So, yep, I hope that was a good troubleshooting session and we'll have more coming up in the upcoming labs.

### Operational Entry 897: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/289_Control Plane Failure.extraction.md::E1
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 289_Control Plane Failure.txt
- Evidence: In this lecture we will see different ways of troubleshooting control plane failures.

### Operational Entry 898: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/289_Control Plane Failure.extraction.md::E7
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 289_Control Plane Failure.txt
- Evidence: This should be a good start.

### Operational Entry 899: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/289_Control Plane Failure.extraction.md::E8
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 289_Control Plane Failure.txt
- Evidence: For more tips, refer to the Kubernetes documentation page for troubleshooting clusters.

### Operational Entry 900: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E1
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: -: Okay, so in this video we're going to work on troubleshooting control plane failure.

### Operational Entry 901: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E3
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: We tried deploying an application, but it's not working troubleshoot and fix the issue.

### Operational Entry 902: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E4
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So before we begin, a quick tip if you don't have the alias set already on your prompt so you could do a alias, k equals kubectl.

### Operational Entry 903: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E5
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: And also if you don't have auto completion then one thing you could do is you could go to the Kubernetes documentation pages search for kubectl cheat sheet and then the first thing that comes here is the kubectl completion bash.

### Operational Entry 904: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E9
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: The other thing is, so if you're setting an alias you should do this as well to get the alias for the short form for kubectl.

### Operational Entry 905: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E38
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: And then it says fail to start container kube-scheduler error response from daemon, OCI runtime create failed, starting container process kube-scheduler, executable file not found.

### Operational Entry 906: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E46
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: And we're gonna save that and we'll see if we have we'll see the status of the pod and its in a creating container config error state.

### Operational Entry 907: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E61
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: Okay, even though the deployment was scaled to two the number of pods does not seem to increase investigate and fix the issue.

### Operational Entry 908: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E65
- Type: Command
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: Kubectl describe deploy app, and we see the image set we see scale that replica set to one, but we don't see it the deployment, scaling up the replica set to two.

### Operational Entry 909: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E75
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: We don't see anything useful here in the events.

### Operational Entry 910: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E77
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So here it says crash loop back off terminated error.

### Operational Entry 911: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E96
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So we're going to edit the controller manager manifest file to fix that issue.

### Operational Entry 912: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/292_Worker Node Failure.extraction.md::E1
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 292_Worker Node Failure.txt
- Evidence: In this lecture we will see different ways of troubleshooting worker node failures.

### Operational Entry 913: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/292_Worker Node Failure.extraction.md::E21
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 292_Worker Node Failure.txt
- Evidence: Check the Cubelet logs for possible issues.

### Operational Entry 914: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/292_Worker Node Failure.extraction.md::E22
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 292_Worker Node Failure.txt
- Evidence: Check the Kubelet certificates, ensure they're not expired and they are part of the right group, and that the certificates are issued by the right CA.

### Operational Entry 915: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/292_Worker Node Failure.extraction.md::E24
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 292_Worker Node Failure.txt
- Evidence: Head over to the practice test and practice fixing broken clusters.

### Operational Entry 916: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E1
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Evidence: -: Okay, so in this lab we're going to practice troubleshooting worker node failures.

### Operational Entry 917: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E4
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Evidence: Okay, so the first question is to fix the broken cluster.

### Operational Entry 918: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E19
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Evidence: And we see that it's loaded, but it's in an inactive state so we don't know why it's in an inactive state.

### Operational Entry 919: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E26
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Evidence: So I think that should fix that question.

### Operational Entry 920: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E29
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Evidence: Investigate and fix the issue.

### Operational Entry 921: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E48
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Evidence: So all of these seem to be an error from a previous error.

### Operational Entry 922: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E49
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Evidence: All these seem to be an error message.

### Operational Entry 923: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E50
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Evidence: And here you can see that there's an error that says unable to load clientcfile/etckubernetes picking wrong ca file.

### Operational Entry 924: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E56
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Evidence: So this is not the place where there's an issue.

### Operational Entry 925: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E64
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Evidence: So it should be the correct file.

### Operational Entry 926: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E67
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Evidence: So that's what it should be ca.cert instead of the wrong ca file.

### Operational Entry 927: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E83
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Evidence: So this seems to be the error that's causing the remaining errors.

### Operational Entry 928: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E87
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Evidence: So that that could be the error.

### Operational Entry 929: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E96
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Evidence: And we no longer see those errors and it seems to be good.

### Operational Entry 930: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E100
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Evidence: So when it comes to troubleshooting worker nodes always first check the status from here, from the control plane.

### Operational Entry 931: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E102
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Evidence: And then go to each of the worker node that has the issue and start with checking the kubelet service.

### Operational Entry 932: certified-kubernetes-administrator-with-practice-tests/15_Other Topics/299_JSON Path in Kubernetes.extraction.md::E44
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 15_Other Topics / 299_JSON Path in Kubernetes.txt
- Evidence: We have seen a lot of these commands throughout this course, so that should be easy.

### Operational Entry 933: certified-kubernetes-administrator-with-practice-tests/15_Other Topics/299_JSON Path in Kubernetes.extraction.md::E59
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 15_Other Topics / 299_JSON Path in Kubernetes.txt
- Evidence: With that, you should be able to come up with jsonpath queries to pull useful information like the below.

### Operational Entry 934: certified-kubernetes-administrator-with-practice-tests/15_Other Topics/299_JSON Path in Kubernetes.extraction.md::E73
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 15_Other Topics / 299_JSON Path in Kubernetes.txt
- Evidence: This may be a bit advanced for some users, so don't worry if you don't fully get it from a certification and exam standpoint.

### Operational Entry 935: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E12
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: So the pod should be called mc-pod, which we have, we don't really need a label because it doesn't really say anything about labels.

### Operational Entry 936: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E14
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: Now, it says that the first container should be named mc-pod-1 so let's set the name to be mc-pod-1 and it should use the nginx-1-alpine image, nginx-1-alpine image.

### Operational Entry 937: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E15
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: So we have that, but it says that we have to set an environment variable node_name and it should be set to whatever node the pod gets deployed on.

### Operational Entry 938: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E17
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: So to set a environment variable, you do env, and then you set the name of the environment variable, which as per the question, it should be node_name.

### Operational Entry 939: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E23
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: Second container, the name should be mc-pod-2.

### Operational Entry 940: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E24
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: The image should be busybox:1 and what it should do is it should continuously log the output of the date command to the following file every second.

### Operational Entry 941: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E32
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: Then the next thing that we have to do is the third container should have the name mc-pod-3.

### Operational Entry 942: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E34
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: So if your mc-pod-3 and then the image should be busybox.

### Operational Entry 943: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E36
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: So it should print the contents of the date dot.file generated by the second container.

### Operational Entry 944: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E37
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: So this file here, it should print the contents of that file in stdout.

### Operational Entry 945: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E62
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: And that should be everything that we need, so let's go ahead and save this and I'm going to apply it and it looks like I have a typo.

### Operational Entry 946: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E64
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: And then, now I will apply it and we can see the pod was created and if we wanna verify that everything's working, let's go to pod-3 and let's take a look at the logs for pod-3 because it should be printing out the contents of that file.

### Operational Entry 947: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E88
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: Now, if I do a systemctl status, it should show that it's running and then, this is what we wanna look for, active running.

### Operational Entry 948: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E90
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: And then finally it says, and it should be enabled to start on boot.

### Operational Entry 949: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E92
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: All right, so now it's enabled, we've performed all the steps that we need to for question two and we shouldn't have to do anything else.

### Operational Entry 950: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E94
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: So everything should be good to go.

### Operational Entry 951: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E99
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: And if you want to see which ones are associated with vertical pod autoscaler, well it's gonna have the name vertical pod autoscaler in it, if you want, we can just grep for vertical and that should give us everything we need so we can see that we have two here.

### Operational Entry 952: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E100
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: So what I'm gonna do is, I'm gonna copy this and then I'm going to copy that and then, I can go to that file it told us, which is /root/vpa-crds.txt, we'll paste it in, and we don't need this information so it just wants the name so I'm just gonna have that and then we'll remove this as well.

### Operational Entry 953: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E113
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: The name should be messaging-service.

### Operational Entry 954: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E115
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: And then it says that the application should be accessible within the cluster.

### Operational Entry 955: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E116
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: So that means you can only access the service in the cluster not from outside the cluster, which means that it should be of type clusterip.

### Operational Entry 956: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E118
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: So we don't need to add anything else and we can just run this as is.

### Operational Entry 957: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E128
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: So I could do kubectl, create deployment, the name should be hr-web-app.

### Operational Entry 958: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E129
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: And then, the image should be this one right here.

### Operational Entry 959: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E133
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: Okay, so for question six, a new application origin is deployed and there's something wrong with it, identify and fix the issue.

### Operational Entry 960: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E141
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: So everything else kind of seems normal and then we have our init container and our init container, we could see that state is terminated and reason is error.

### Operational Entry 961: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E144
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: This got terminated due to an error.

### Operational Entry 962: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E155
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: And so as you probably expected, this is the issue with the typo, it should just be two e's.

### Operational Entry 963: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E156
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: So let's go ahead and fix that.

### Operational Entry 964: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E159
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: Then I'm gonna open question6.yaml and we're going to fix this.

### Operational Entry 965: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E167
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: So we have now successfully finished fixing the orange pod, it's now up and running.

### Operational Entry 966: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E171
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: So we have to create a node port service for this deployment that we had created earlier and it should be node port listening on port 3082.

### Operational Entry 967: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E187
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: And then if I do kubectl describe service hr-web-app-service, we should have two entries because there's two pods in this case.

### Operational Entry 968: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E194
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: So if you don't know how to create a persistent volume off the top of your head, remember you always have access to the documentation.

### Operational Entry 969: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E196
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: It just makes it so much easier because you could just scroll down and there should be an example config, not there.

### Operational Entry 970: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E205
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: Capacity 100 MI doesn't really say anything about if we go to access mode, this should be ReadwriteMany.

### Operational Entry 971: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E215
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: And that should be everything.

### Operational Entry 972: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E217
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: Now, if I do a kubectl pv, should be there.

### Operational Entry 973: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E234
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: So first of all, the name should be webapp-hpa, which is this one.

### Operational Entry 974: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E250
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: So behavior, and it looks like it messed up the formatting.

### Operational Entry 975: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E251
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: So this should be indented over and this should be indented over and it should be 300 seconds.

### Operational Entry 976: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E253
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: And that should be everything that we need.

### Operational Entry 977: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E258
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: All right, so for question 10, we have to create a Vertical Pod Autoscaler with the following name for the following deployment in the default namespace, the VPA should automatically adjust the CPU and memory request of the pods to optimize resource utilization.

### Operational Entry 978: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E270
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: So this should be apps/v1.

### Operational Entry 979: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E271
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: Kind should be deployment, and then the name should be analytics-deployment, right?

### Operational Entry 980: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E274
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: And that's going to satisfy that condition, and that should be everything that we need.

### Operational Entry 981: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E287
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: So the name should be web-gateway.

### Operational Entry 982: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E288
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: The gateway class name should be nginx.

### Operational Entry 983: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E291
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: So namespace should be nginx-gateway, and then the listener should be Protocol HTTP.

### Operational Entry 984: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E293
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: The name should be HTTP.

### Operational Entry 985: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E295
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: And the port should be port 80.

### Operational Entry 986: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E296
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: So we don't actually have to change anything else.

### Operational Entry 987: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E300
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: And if you wanna verify it, you can do kubectl get gateway, and it should be in the nginx-gateway namespace, and we can see that right here.

### Operational Entry 988: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E309
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: Okay, we don't see anything, but that's because it's in the kk-ns namespace.

### Operational Entry 989: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E325
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: And this should be versions with an "s" We can do that and we'll let that run.

### Operational Entry 990: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E333
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: And actually I'm gonna do a, because I've lost the information, it's all the way back up and I don't feel like scrolling.

### Operational Entry 991: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E14
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: It says that this should be set as the default storage class.

### Operational Entry 992: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E25
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: Volume expansion should be enabled.

### Operational Entry 993: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E29
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: Volume binding mode should be wait for first consumer.

### Operational Entry 994: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E32
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: We don't need that.

### Operational Entry 995: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E41
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: So the main container should be named app Dash container.

### Operational Entry 996: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E42
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: And it should use the following image.

### Operational Entry 997: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E43
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: And it should run the following command to simulate writing logs.

### Operational Entry 998: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E45
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: The log agent should display the entries logged by the app container.

### Operational Entry 999: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E48
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: So that's all it should be doing.

### Operational Entry 1000: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E49
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: Or actually all it should do is sorry, not print it out, but it should just tail that log file.

### Operational Entry 1001: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E57
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: So this should be logging dash deployment.

### Operational Entry 1002: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E58
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: It should be in the logging ns namespace.

### Operational Entry 1003: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E65
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: And then the first container should be named app Dash container.

### Operational Entry 1004: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E67
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: And the image should be BusyBox.

### Operational Entry 1005: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E69
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: And then what this should do is basically run this command.

### Operational Entry 1006: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E73
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: And let me just copy the whole thing and just delete what I don't need.

### Operational Entry 1007: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E74
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: And this should be dash C.

### Operational Entry 1008: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E83
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: The name should be log dash agent image should be a BusyBox.

### Operational Entry 1009: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E84
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: And then the command that should run.

### Operational Entry 1010: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E102
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: But since this is a scratch data and we don't actually need the data to persist, we just need it to be available during the lifetime of the pod.

### Operational Entry 1011: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E117
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: Let's apply this and hope there's no errors.

### Operational Entry 1012: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E169
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: You got to use a path type prefix route request center path slash.

### Operational Entry 1013: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E176
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: And I don't know why it always moves over I don't want it to do that.

### Operational Entry 1014: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E178
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: You can see it's going to use path type prefix.

### Operational Entry 1015: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E207
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: Now we don't need to do this because this is the default one.

### Operational Entry 1016: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E225
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: Should be version 1.17.

### Operational Entry 1017: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E231
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: Create a role developer which should grant John the permissions to create, list, get, update and delete pods in the developer namespace.

### Operational Entry 1018: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E250
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: I don't think there's going to be a full example.

### Operational Entry 1019: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E263
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: It's going to be under TLS issue a certificate.

### Operational Entry 1020: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E275
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: The name should be John Developer.

### Operational Entry 1021: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E356
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: And the namespace should be development.

### Operational Entry 1022: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E370
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: And it looks like there's an error.

### Operational Entry 1023: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E373
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: This should not be subject.

### Operational Entry 1024: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E374
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: This should be subjects with an S.

### Operational Entry 1025: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E381
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: But we don't want to test.

### Operational Entry 1026: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E403
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: But it says expose and expose it internally with the service called nginx resolver service.

### Operational Entry 1027: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E404
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: So this should only be accessible internally from within the cluster.

### Operational Entry 1028: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E408
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: But internally we're going to use cluster IP.

### Operational Entry 1029: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E420
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: So we can see that the service is working as it should.

### Operational Entry 1030: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E450
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: Make sure that it's recreated restarted automatically in case of failures.

### Operational Entry 1031: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E454
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: So first of all I'm going to do kubectl run and it says it should be called nginx critical.

### Operational Entry 1032: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E498
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: So it should be here.

### Operational Entry 1033: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E507
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: The deployment should be called backend deployment.

### Operational Entry 1034: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E508
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: The minimum replicas should be three.

### Operational Entry 1035: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E509
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: Maximum should be 15 which we have here.

### Operational Entry 1036: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E549
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: Should be code cloud.com.

### Operational Entry 1037: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E559
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: And that should be everything that we need for question ten.

### Operational Entry 1038: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E591
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: Do not delete any existing policies, so we want to find one of the policies.

### Operational Entry 1039: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E612
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: So I don't think this is the one that we want.

### Operational Entry 1040: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E614
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: And it's going to allow traffic from the database namespace, which is not what we want, because we do not want traffic coming from the databases in the database namespace.

### Operational Entry 1041: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E18
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: So that should be everything that we need to do.

### Operational Entry 1042: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E23
- Type: Operational Insight
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: That's going to be under the documentation for how to set up a container runtime because the container runtime needs these things enabled before they can work.

### Operational Entry 1043: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E39
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: If I do kubectl get surface account, we should see the pvviewer.

### Operational Entry 1044: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E41
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: That should be able to list all persistent volumes.

### Operational Entry 1045: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E48
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: So it should be able to list all persistent volumes.

### Operational Entry 1046: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E65
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: And so now if I do kubectl, describe clusterrolebinding, we should see that it's gonna bind the pvviewer service account to the role called pvviewer-role.

### Operational Entry 1047: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E66
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: All right, and then the final thing I should do is create a pod called pvviewer with the following image.

### Operational Entry 1048: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E86
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: So for this, if you don't remember how to create a storageclass off the top of your head, we can always just go to the documentation and just search for storageclass.

### Operational Entry 1049: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E94
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: Let's see, provisioners should be this volume binding, volume expansion.

### Operational Entry 1050: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E97
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: I mean it's set to false so it doesn't matter, but we don't really need this configuration.

### Operational Entry 1051: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E100
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: So we removed that the provisioner should be at rancher.io/localpath.

### Operational Entry 1052: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E105
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: Volume expansion should be enabled.

### Operational Entry 1053: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E106
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: So allow volume expansion should set to be true.

### Operational Entry 1054: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E109
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: Volume binding mode should be WaitForFirstConsumer.

### Operational Entry 1055: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E113
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: We don't need that.

### Operational Entry 1056: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E122
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: It should be called app-config and it should be in the namespace cm-namespace and it's gonna have two key value pairs.

### Operational Entry 1057: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E141
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: So once we do that, it should update that and if we do kubectl get pod -n and then go to that namespace, we could see that it's been running for 10 seconds after we made the changes, it updated it.

### Operational Entry 1058: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E142
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: And that should be all that we need to do for step or for question four.

### Operational Entry 1059: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E148
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: Now I don't know how to do that off the top of my head, so it's always best to just consult the documentation.

### Operational Entry 1060: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E150
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: And it should have an example for us.

### Operational Entry 1061: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E158
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: It's not gonna really make a difference 'cause the instructions don't say anything specifically about that, but we'll just say, "This is a lower priority class." So we can then save that.

### Operational Entry 1062: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E177
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: And you could see that it deleted the old one, but then we got an error.

### Operational Entry 1063: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E179
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: So this error is expected and I recommend you read this error 'cause it tells us everything we need to know.

### Operational Entry 1064: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E182
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: So what is the issue?

### Operational Entry 1065: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E188
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: And now if we do kubectl apply question5-pod.yaml, we can see it's created, we'll do kubectl get pod -n low- priority and we can see it's running with no issues.

### Operational Entry 1066: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E191
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: All right, so it says that we've deployed a new pod called np-test-1 and a service called np-test-services, incoming connections to the service are not working, troubleshoot and fix it.

### Operational Entry 1067: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E192
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: And it tells us basically what we need to do to fix it, which is create a network policy by the name of ingress-nptest that allows incoming connections to this service over port 80.

### Operational Entry 1068: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E205
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: We're just saying anybody that wants to talk to us on port 80 should be able to.

### Operational Entry 1069: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E208
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: So we don't need anything that's egress related.

### Operational Entry 1070: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E224
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: And we see the values that we should use for the taint.

### Operational Entry 1071: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E233
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: And so now if I do kubectl describe node node1 and then grep for taint, we should see that it has taint now.

### Operational Entry 1072: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E238
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: So for this one I'm going to actually just create a YAML file 'cause I don't really know how to pass those flags in on the imperative command.

### Operational Entry 1073: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E256
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: It's telling us to inspect both the pvc and the pv and identify why the pvc is not being bound and to fix the issue so that the pvc successfully binds to the pv, do not modify the pv resource.

### Operational Entry 1074: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E259
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: Should be pretty straightforward.

### Operational Entry 1075: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E281
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: So we've applied the new one and now if I do a kubectl get pvc, we should see that now the app pvc is bound and is bound to the app-pv.

### Operational Entry 1076: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E282
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: So we've now successfully fixed the issue.

### Operational Entry 1077: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E285
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: Okay, so for this question it says that there's a kubeconfig file called super.kubeconfig in the following location and it says there's something wrong with this con configuration, troubleshoot and fix it.

### Operational Entry 1078: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E286
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: Whenever there's a question where it says there's an issue and we need to fix it, always verify the issue first.

### Operational Entry 1079: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E289
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: Okay, and when I run this, let's see what error it does, unhandled error couldn't get current server API group list.

### Operational Entry 1080: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E307
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: So I don't know if this is correct or I don't know if it's wrong, but let's go and take a look and see what port the kube API servers listening on.

### Operational Entry 1081: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E310
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: So that's probably the issue.

### Operational Entry 1082: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E311
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: Let's go ahead and fix that.

### Operational Entry 1083: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E315
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: And what we need to do is we to scale the replica count up to three and we need to make sure that it all, it goes up to three with no issues.

### Operational Entry 1084: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E316
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: If there's any issues, we have to fix that.

### Operational Entry 1085: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E326
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: So we still only have one available and we do not have the three that we want.

### Operational Entry 1086: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E330
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: So what I like to do is if there's an issue with the deployment, I'm gonna start by doing a kubectl describe deployment, and we're gonna take a look at the deployment.

### Operational Entry 1087: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E331
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: And what I like to do here is just look for any errors.

### Operational Entry 1088: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E332
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: If you see anything that's like pointing to an error, whether it's in the configs here, the conditions, or especially the events, a lot of times the events will tell us something.

### Operational Entry 1089: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E337
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: Now I don't know exactly what's going on, but that's what I would expect to see.

### Operational Entry 1090: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E346
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: So maybe there's some sort of issue with the deployment controller and anytime you see the configurations for your deployments and your replica sets and you've configured them correctly, but something's not working, that's usually going to point to something in the control flight.

### Operational Entry 1091: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E347
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: Could be a deployment controller, it could be an issue with the API server, could be a variety of different things, but always look at the control plane because that's usually what's limiting us from making these changes.

### Operational Entry 1092: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E349
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: And you know right away you'll notice something, the kube-controller manager has an issue, so it's not even running at the moment.

### Operational Entry 1093: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E357
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: Has an image pull issue.

### Operational Entry 1094: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E358
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: So there's an issue with the image.

### Operational Entry 1095: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E360
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: So notice how there's a one and then an L, obviously that's a typo, it should be two L's.

### Operational Entry 1096: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E361
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: So let's fix that and then let's make sure that there's no other typos.

### Operational Entry 1097: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E365
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: So we'll fix that.

### Operational Entry 1098: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E368
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: So if we're gonna just change everything here to be a controller, and I'm just gonna go one by one and fix them and let me see if I can find and looks like there's another one.

### Operational Entry 1099: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E372
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: So I'm gonna hit up a couple times, get back to see all the pods, and now we can see the controller manager is up and running with no issues.

### Operational Entry 1100: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E377
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: Right, so we've now successfully fixed the issue.

### Operational Entry 1101: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E380
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: The HPA should scale the deployment based on the custom metric named request per second.

### Operational Entry 1102: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E383
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: And then once again there's a note deployment name is available in the api namespace, ignore errors due to the metric not being tracked in the metrics server.

### Operational Entry 1103: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E384
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: Okay, now what I'm gonna do is I'm going to search in the documentation for horizontal pod auto scaling and it should give us a example configuration hopefully.

### Operational Entry 1104: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E396
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: The name is going to be api-hpa and the namespace should be api, as per the question.

### Operational Entry 1105: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E417
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: And the configuration should be 80% goes to web-service, 20% is routed to web-service-v2.

### Operational Entry 1106: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E436
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: Type: PathPrefix.

### Operational Entry 1107: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E439
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: So the underlying service that we should forward traffic for this is gonna be for the web-service.

### Operational Entry 1108: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E442
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: So remember this should get 80%.

### Operational Entry 1109: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E446
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: And then the weight, so this should get 20%, so that's gonna be 20.

### Operational Entry 1110: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E461
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: Okay, so the chart is good and we shouldn't have any issues with that.

### Operational Entry 1111: certified-kubernetes-administrator-with-practice-tests/18_Bonus Section/312_Conclusion.extraction.md::E9
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 18_Bonus Section / 312_Conclusion.txt
- Evidence: Don't forget to tag us in your posts so we can celebrate your accomplishments with you and the rest of our community.

### Operational Entry 1112: certified-kubernetes-administrator-with-practice-tests/18_Bonus Section/312_Conclusion.extraction.md::E19
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 18_Bonus Section / 312_Conclusion.txt
- Evidence: But don't worry, use the coupon code UDEMY10 to get a special extra discount where you purchase your subscription.

### Operational Entry 1113: certified-kubernetes-administrator-with-practice-tests/18_Bonus Section/313_What's Next_.extraction.md::E8
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 18_Bonus Section / 313_What's Next_.txt
- Evidence: Service networking is 20%, storage is another 10% and finally, the biggest section of them all is troubleshooting, which accounts for 30% of the questions.

### Operational Entry 1114: certified-kubernetes-administrator-with-practice-tests/18_Bonus Section/313_What's Next_.extraction.md::E18
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 18_Bonus Section / 313_What's Next_.txt
- Evidence: So once you click on this Lab, the Lab should load up within 30 seconds, an average of one to two minutes is to be expected.

### Operational Entry 1115: certified-kubernetes-administrator-with-practice-tests/18_Bonus Section/313_What's Next_.extraction.md::E19
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 18_Bonus Section / 313_What's Next_.txt
- Evidence: But more often than not, it should load within 30 seconds.

### Operational Entry 1116: certified-kubernetes-administrator-with-practice-tests/18_Bonus Section/313_What's Next_.extraction.md::E29
- Type: Warning/Pitfall
- Source: certified-kubernetes-administrator-with-practice-tests / 18_Bonus Section / 313_What's Next_.txt
- Evidence: And by default, if you do not set any context, you should be accessing the cluster1.

### Operational Entry 1117: certified-kubernetes-administrator-with-practice-tests/18_Bonus Section/313_What's Next_.extraction.md::E55
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 18_Bonus Section / 313_What's Next_.txt
- Evidence: And that should be it.

### Operational Entry 1118: certified-kubernetes-administrator-with-practice-tests/18_Bonus Section/313_What's Next_.extraction.md::E65
- Type: Troubleshooting
- Source: certified-kubernetes-administrator-with-practice-tests / 18_Bonus Section / 313_What's Next_.txt
- Evidence: Now the sixth question as you can see, is from the troubleshooting section.

### Operational Entry 1119: certified-kubernetes-administrator-with-practice-tests/18_Bonus Section/313_What's Next_.extraction.md::E67
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 18_Bonus Section / 313_What's Next_.txt
- Evidence: And moving along, you should find that the next question is from a different section.

### Operational Entry 1120: certified-kubernetes-administrator-with-practice-tests/18_Bonus Section/313_What's Next_.extraction.md::E70
- Type: Best Practice
- Source: certified-kubernetes-administrator-with-practice-tests / 18_Bonus Section / 313_What's Next_.txt
- Evidence: So once you're happy with your attempt, you can click on the end exam button and this should automatically trigger the validation.

### Operational Entry 1121: certified-kubernetes-application-developer/01_Introduction/001_Introduction.extraction.md::E10
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 01_Introduction / 001_Introduction.txt
- Evidence: And our AI Assistant in labs acts as your personal guide, providing feedback, troubleshooting issues, and offering insights as you tackle each task.

### Operational Entry 1122: certified-kubernetes-application-developer/01_Introduction/001_Introduction.extraction.md::E20
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 01_Introduction / 001_Introduction.txt
- Evidence: We then cover probes, monitoring, logging, and debugging, key skills to keep applications healthy and resolve issues.

### Operational Entry 1123: certified-kubernetes-application-developer/01_Introduction/002_Kubernetes Series of Courses.extraction.md::E15
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 01_Introduction / 002_Kubernetes Series of Courses.txt
- Evidence: As this is a beginner's course, we do not deep dive into technical details.

### Operational Entry 1124: certified-kubernetes-application-developer/01_Introduction/002_Kubernetes Series of Courses.extraction.md::E18
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 01_Introduction / 002_Kubernetes Series of Courses.txt
- Evidence: The Kubernetes for administrators course focuses on advanced topics on Kubernetes, and in-depth discussions into the various concepts around deploying a high-availability cluster for production use case, understanding more about scheduling, monitoring, maintenance, security, storage, and troubleshooting.

### Operational Entry 1125: certified-kubernetes-application-developer/01_Introduction/002_Kubernetes Series of Courses.extraction.md::E21
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 01_Introduction / 002_Kubernetes Series of Courses.txt
- Evidence: Now, you don't have to be an expert application developer for this course and there's no real coding or application development involved in either of this course or the certification itself.

### Operational Entry 1126: certified-kubernetes-application-developer/01_Introduction/002_Kubernetes Series of Courses.extraction.md::E27
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 01_Introduction / 002_Kubernetes Series of Courses.txt
- Evidence: Now, you don't have to take these courses in order.

### Operational Entry 1127: certified-kubernetes-application-developer/01_Introduction/004_Certification Details.extraction.md::E11
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 01_Introduction / 004_Certification Details.txt
- Evidence: This means that in case you don't manage to pass on the initial attempt, which I'm sure you will, you have one more attempt available for free within the next 12 months.

### Operational Entry 1128: certified-kubernetes-application-developer/01_Introduction/004_Certification Details.extraction.md::E19
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 01_Introduction / 004_Certification Details.txt
- Evidence: This would mean that you don't have to worry about memorizing lots of different numbers in preparation for the exam.

### Operational Entry 1129: certified-kubernetes-application-developer/02_Core Concepts/007_Recap - Kubernetes Architecture.extraction.md::E8
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 007_Recap - Kubernetes Architecture.txt
- Evidence: But what if the node on which your application is running fails?

### Operational Entry 1130: certified-kubernetes-application-developer/02_Core Concepts/007_Recap - Kubernetes Architecture.extraction.md::E11
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 007_Recap - Kubernetes Architecture.txt
- Evidence: This way, even if one node fails, you have your application still accessible from the other nodes.

### Operational Entry 1131: certified-kubernetes-application-developer/02_Core Concepts/007_Recap - Kubernetes Architecture.extraction.md::E17
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 007_Recap - Kubernetes Architecture.txt
- Evidence: When a node fails, how do you move the workload of the failed node to another worker node?

### Operational Entry 1132: certified-kubernetes-application-developer/02_Core Concepts/007_Recap - Kubernetes Architecture.extraction.md::E33
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 007_Recap - Kubernetes Architecture.txt
- Evidence: In such cases, the container runtime is the underlying software that is used to run containers.

### Operational Entry 1133: certified-kubernetes-application-developer/02_Core Concepts/007_Recap - Kubernetes Architecture.extraction.md::E42
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 007_Recap - Kubernetes Architecture.txt
- Evidence: And to run Docker containers on a system, we need container runtime installed.

### Operational Entry 1134: certified-kubernetes-application-developer/02_Core Concepts/007_Recap - Kubernetes Architecture.extraction.md::E43
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 007_Recap - Kubernetes Architecture.txt
- Evidence: And that's where the container runtime falls.

### Operational Entry 1135: certified-kubernetes-application-developer/02_Core Concepts/007_Recap - Kubernetes Architecture.extraction.md::E46
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 007_Recap - Kubernetes Architecture.txt
- Evidence: There are other container runtime alternatives available, such as rocket or Cri-o.

### Operational Entry 1136: certified-kubernetes-application-developer/02_Core Concepts/007_Recap - Kubernetes Architecture.extraction.md::E47
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 007_Recap - Kubernetes Architecture.txt
- Evidence: But throughout this course we are going to use Docker as our container runtime engine.

### Operational Entry 1137: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E5
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And you'll wonder what are these CLI tools and which one should you be using?

### Operational Entry 1138: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E15
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And now other container runtimes like rocket wanted in Kubernetes.

### Operational Entry 1139: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E16
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Users needed it to work with container runtimes that are other than just Docker.

### Operational Entry 1140: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E17
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And so Kubernetes introduced an interface called Container Runtime Interface or Cry.

### Operational Entry 1141: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E18
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So cry allowed any vendor to work as a container runtime for Kubernetes, as long as they adhere to the OCI standards.

### Operational Entry 1142: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E19
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So OCI stands for Open Container Initiative, and it consists of an image spec and a runtime spec.

### Operational Entry 1143: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E20
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Image spec means the specifications on how an image should be built.

### Operational Entry 1144: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E22
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: An image spec defined the specifications on how an image should be built, and the runtime spec defined the standards on how any container runtime should be developed.

### Operational Entry 1145: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E23
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So keeping these standards in mind, Anyone can build a container runtime that can be used by anybody to work with Kubernetes.

### Operational Entry 1146: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E25
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So rocket and other container runtimes that adhere to the OCI standards were now supported as container runtimes for Kubernetes via the CRI.

### Operational Entry 1147: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E28
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And so Kubernetes introduced what is known as Docker shim, which was a hacky but temporary way to continue to support Docker outside of the container runtime interface.

### Operational Entry 1148: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E29
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: While most other container runtimes worked through the CRI, Docker continued to work without it.

### Operational Entry 1149: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E30
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Now you see Docker isn't just a container runtime alone.

### Operational Entry 1150: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E31
- Type: Command
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Docker consists of multiple tools that are put together, for example Docker CLI, the Docker API, the build tools that help in building images.

### Operational Entry 1151: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E33
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And finally also the container runtime called run.

### Operational Entry 1152: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E36
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So container D is CRE compatible and can work directly with Kubernetes as all other runtimes.

### Operational Entry 1153: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E37
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So container D can be used as a runtime on its own separate from Docker.

### Operational Entry 1154: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E38
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So now you have container D as a separate runtime and Docker separately.

### Operational Entry 1155: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E45
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: But Docker itself was removed as a supported runtime from Kubernetes.

### Operational Entry 1156: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E50
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So if you don't really need Dockers other features, you could ideally just install container D alone.

### Operational Entry 1157: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E54
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And this tool is solely made for debugging container D and is not very user friendly as it only supports a limited set of features.

### Operational Entry 1158: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E60
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: But as I mentioned, this tool is solely made for debugging container ID and is not very user friendly and not to be used for running or managing containers on a production environment, so a better alternative recommended is the nerd control tool or nerd CTL tool.

### Operational Entry 1159: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E75
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So earlier we talked about the container Runtime interface or CRI which is a single interface used to connect CRI compatible container runtimes, the container D rocket and others.

### Operational Entry 1160: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E76
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: The CRI control is a command line utility that is used to interact with the CRI compatible container runtime.

### Operational Entry 1161: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E79
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And this is this tool works across all the different container runtimes as opposed to earlier.

### Operational Entry 1162: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E81
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: This particular tool is from the Kubernetes perspective that works across different container runtimes.

### Operational Entry 1163: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E83
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And it is used to inspect and debug container runtime.

### Operational Entry 1164: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E85
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: This is again a debugging tool.

### Operational Entry 1165: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E87
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: It's only to be used for some special debugging purposes.

### Operational Entry 1166: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E91
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So because of those things, remember that the cry control utility is only used for debugging purposes and getting into containers and all of that.

### Operational Entry 1167: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E104
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So while working with Kubernetes in the past, we used Docker commands a lot to troubleshoot containers and view logs, especially on the worker nodes.

### Operational Entry 1168: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E107
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So it shouldn't be shouldn't be really hard.

### Operational Entry 1169: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E111
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Since, as I mentioned, cry control can be used to connect to any cry compatible runtime.

### Operational Entry 1170: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E116
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: But if you want to override that and set a specific endpoint, you use the runtime endpoint option with the right control command line.

### Operational Entry 1171: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E117
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Or you could use the container runtime endpoint environment variable.

### Operational Entry 1172: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E119
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So to summarize, we have the Ctor command line utility that comes with container D and works with container D, which is used for debugging purposes only and has a very limited set of features.

### Operational Entry 1173: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E126
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: The mainly used to interact with Cry compatible runtime.

### Operational Entry 1174: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E128
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: This can be used for all Cry supported runtimes.

### Operational Entry 1175: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E129
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Again this is mainly for to be used for debugging purposes.

### Operational Entry 1176: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E130
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So if you look at the comparisons here you can see that Ktor and cry control are used mainly for debugging purposes, whereas the nerve control is used for general purpose.

### Operational Entry 1177: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E131
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: The ktor and nerve control are from the container community and works with container D, whereas cry control is from the Kubernetes community and works across all Cry compatible runtimes.

### Operational Entry 1178: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E132
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So our labs originally had Docker installed on all the nodes, so we used the Docker commands to troubleshoot.

### Operational Entry 1179: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E134
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So remember to use the the cry control command instead to troubleshoot.

### Operational Entry 1180: certified-kubernetes-application-developer/02_Core Concepts/009_A note on Docker deprecation.extraction.md::E1
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 009_A note on Docker deprecation.txt
- Evidence: Every time we mention about Docker in this course, one of the common questions we get is why are we still talking about Docker if it's deprecated?

### Operational Entry 1181: certified-kubernetes-application-developer/02_Core Concepts/009_A note on Docker deprecation.extraction.md::E3
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 009_A note on Docker deprecation.txt
- Evidence: So as we discussed before, Docker was the original and only supported container runtime for Kubernetes, and to make Kubernetes open to other runtimes, we had the container runtime interface introduced.

### Operational Entry 1182: certified-kubernetes-application-developer/02_Core Concepts/009_A note on Docker deprecation.extraction.md::E5
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 009_A note on Docker deprecation.txt
- Evidence: There was support for volumes, auth, security and finally also the container runtime called Runc and the daemon that managed the runtime called the container.

### Operational Entry 1183: certified-kubernetes-application-developer/02_Core Concepts/009_A note on Docker deprecation.extraction.md::E8
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 009_A note on Docker deprecation.txt
- Evidence: And as all of the other runtimes.

### Operational Entry 1184: certified-kubernetes-application-developer/02_Core Concepts/009_A note on Docker deprecation.extraction.md::E9
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 009_A note on Docker deprecation.txt
- Evidence: So container D can be used as runtime on its own separate from Docker.

### Operational Entry 1185: certified-kubernetes-application-developer/02_Core Concepts/009_A note on Docker deprecation.extraction.md::E15
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 009_A note on Docker deprecation.txt
- Evidence: It's just that Kubernetes no longer require Docker as the runtime.

### Operational Entry 1186: certified-kubernetes-application-developer/02_Core Concepts/009_A note on Docker deprecation.extraction.md::E20
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 009_A note on Docker deprecation.txt
- Evidence: And if you don't happen to have Docker on your machine or are only using container D, then you can still work with the same examples by replacing the docker command with the node control command.

### Operational Entry 1187: certified-kubernetes-application-developer/02_Core Concepts/010_Recap - Pods.extraction.md::E25
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 010_Recap - Pods.txt
- Evidence: You do not add additional containers to an existing pod to scale your application.

### Operational Entry 1188: certified-kubernetes-application-developer/02_Core Concepts/010_Recap - Pods.extraction.md::E71
- Type: Command
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 010_Recap - Pods.txt
- Evidence: Docker hub, as we discussed, is a public repository where latest Docker images of various applications are stored.

### Operational Entry 1189: certified-kubernetes-application-developer/02_Core Concepts/010_Recap - Pods.extraction.md::E77
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 010_Recap - Pods.txt
- Evidence: You can access it internally from the node.

### Operational Entry 1190: certified-kubernetes-application-developer/02_Core Concepts/012_Recap - Pods with YAML.extraction.md::E25
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 012_Recap - Pods with YAML.txt
- Evidence: The number of spaces before the two properties name and labels doesn't matter, but they should be the same as they are siblings.

### Operational Entry 1191: certified-kubernetes-application-developer/02_Core Concepts/015_Introduction to Kubernetes Practice Test.extraction.md::E34
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 015_Introduction to Kubernetes Practice Test.txt
- Evidence: Now, don't be too worried about the exam interface itself.

### Operational Entry 1192: certified-kubernetes-application-developer/02_Core Concepts/015_Introduction to Kubernetes Practice Test.extraction.md::E36
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 015_Introduction to Kubernetes Practice Test.txt
- Evidence: So almost like our lab environment, so it should be easy to follow.

### Operational Entry 1193: certified-kubernetes-application-developer/02_Core Concepts/015_Introduction to Kubernetes Practice Test.extraction.md::E37
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 015_Introduction to Kubernetes Practice Test.txt
- Evidence: Don't stress too much about it.

### Operational Entry 1194: certified-kubernetes-application-developer/02_Core Concepts/015_Introduction to Kubernetes Practice Test.extraction.md::E40
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 015_Introduction to Kubernetes Practice Test.txt
- Evidence: You may refresh the lab window anytime and it should take you back to the same lab environment.

### Operational Entry 1195: certified-kubernetes-application-developer/02_Core Concepts/015_Introduction to Kubernetes Practice Test.extraction.md::E41
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 015_Introduction to Kubernetes Practice Test.txt
- Evidence: So for example, if you temporarily lose internet connectivity, uh, and if you restart your, uh, your lab environment or you refresh your web page, it should take you back to the same lab environment.

### Operational Entry 1196: certified-kubernetes-application-developer/02_Core Concepts/015_Introduction to Kubernetes Practice Test.extraction.md::E48
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 015_Introduction to Kubernetes Practice Test.txt
- Evidence: If you if you don't know anything you have, you must go through the documentation pages and try to find the answers.

### Operational Entry 1197: certified-kubernetes-application-developer/02_Core Concepts/015_Introduction to Kubernetes Practice Test.extraction.md::E51
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 015_Introduction to Kubernetes Practice Test.txt
- Evidence: But every question or every task that you're assigned to in the labs, you will have hints or solutions in the Hints and Solutions tab that that should be visible along with your question.

### Operational Entry 1198: certified-kubernetes-application-developer/02_Core Concepts/016_Demo_ Accessing Labs.extraction.md::E4
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 016_Demo_ Accessing Labs.txt
- Evidence: Students who purchased this course on Udemy can get access to the labs for free on KodeKloud, you don't have to make any extra payments.

### Operational Entry 1199: certified-kubernetes-application-developer/02_Core Concepts/016_Demo_ Accessing Labs.extraction.md::E22
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 016_Demo_ Accessing Labs.txt
- Evidence: And if you run into issues with accessing labs, please write to support at support@CKodekloud.com.

### Operational Entry 1200: certified-kubernetes-application-developer/02_Core Concepts/019_Solution - Pods (optional).extraction.md::E9
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 019_Solution - Pods (optional).txt
- Evidence: So you don't have to worry about that for now.

### Operational Entry 1201: certified-kubernetes-application-developer/02_Core Concepts/019_Solution - Pods (optional).extraction.md::E22
- Type: Command
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 019_Solution - Pods (optional).txt
- Evidence: Kubectl Run and since there's no specification about the name of the pod.

### Operational Entry 1202: certified-kubernetes-application-developer/02_Core Concepts/019_Solution - Pods (optional).extraction.md::E59
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 019_Solution - Pods (optional).txt
- Evidence: Actually it should be you must look at all the containers in detail.

### Operational Entry 1203: certified-kubernetes-application-developer/02_Core Concepts/019_Solution - Pods (optional).extraction.md::E66
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 019_Solution - Pods (optional).txt
- Evidence: So out of these it's not running ready your success is actually error or waiting.

### Operational Entry 1204: certified-kubernetes-application-developer/02_Core Concepts/019_Solution - Pods (optional).extraction.md::E68
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 019_Solution - Pods (optional).txt
- Evidence: Okay, now why do you think the container Agent X in pod web app is in an error or waiting state?

### Operational Entry 1205: certified-kubernetes-application-developer/02_Core Concepts/019_Solution - Pods (optional).extraction.md::E70
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 019_Solution - Pods (optional).txt
- Evidence: So if you look at one of the section here, under State you have the reason called as error image pull.

### Operational Entry 1206: certified-kubernetes-application-developer/02_Core Concepts/019_Solution - Pods (optional).extraction.md::E71
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 019_Solution - Pods (optional).txt
- Evidence: Or if you just look at it below here in the event section, you can see the error.

### Operational Entry 1207: certified-kubernetes-application-developer/02_Core Concepts/019_Solution - Pods (optional).extraction.md::E98
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 019_Solution - Pods (optional).txt
- Evidence: Okay, so, this is basically command, and it says the Dry Run command is deprecated and is replaced with the Dry Run = Client.

### Operational Entry 1208: certified-kubernetes-application-developer/02_Core Concepts/019_Solution - Pods (optional).extraction.md::E107
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 019_Solution - Pods (optional).txt
- Evidence: Okay, so it's created and it's in an error image pool state because we have the wrong image name.

### Operational Entry 1209: certified-kubernetes-application-developer/02_Core Concepts/019_Solution - Pods (optional).extraction.md::E111
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 019_Solution - Pods (optional).txt
- Evidence: And the last question for this lab is to change the image on this pod to Redis, to fix that error that we, you know, purposefully created.

### Operational Entry 1210: certified-kubernetes-application-developer/02_Core Concepts/019_Solution - Pods (optional).extraction.md::E119
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 019_Solution - Pods (optional).txt
- Evidence: Okay, let's check status Now we'll talk about this error message later when we talk about imperative commands and the declarative way that we apply.

### Operational Entry 1211: certified-kubernetes-application-developer/02_Core Concepts/021_Recap - ReplicaSets.extraction.md::E6
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 021_Recap - ReplicaSets.txt
- Evidence: What if for some reason our application crashes and the pod fails, users will no longer be able to access our application?

### Operational Entry 1212: certified-kubernetes-application-developer/02_Core Concepts/021_Recap - ReplicaSets.extraction.md::E8
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 021_Recap - ReplicaSets.txt
- Evidence: That way, if one fails, we still have our application running on the other one.

### Operational Entry 1213: certified-kubernetes-application-developer/02_Core Concepts/021_Recap - ReplicaSets.extraction.md::E12
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 021_Recap - ReplicaSets.txt
- Evidence: Even if you have a single pod, the replication controller can help by automatically bringing up a new pod when the existing one fails.

### Operational Entry 1214: certified-kubernetes-application-developer/02_Core Concepts/021_Recap - ReplicaSets.extraction.md::E23
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 021_Recap - ReplicaSets.txt
- Evidence: Replica set is the new recommended way to set up replication.

### Operational Entry 1215: certified-kubernetes-application-developer/02_Core Concepts/021_Recap - ReplicaSets.extraction.md::E46
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 021_Recap - ReplicaSets.txt
- Evidence: Remember, whatever we move must be under the templates section, meaning this should be intended to the right and have more spaces before them than the template line itself.

### Operational Entry 1216: certified-kubernetes-application-developer/02_Core Concepts/021_Recap - ReplicaSets.extraction.md::E47
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 021_Recap - ReplicaSets.txt
- Evidence: There should be children of the template section.

### Operational Entry 1217: certified-kubernetes-application-developer/02_Core Concepts/021_Recap - ReplicaSets.extraction.md::E70
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 021_Recap - ReplicaSets.txt
- Evidence: If you get this wrong, you are likely to get an error that looks like this.

### Operational Entry 1218: certified-kubernetes-application-developer/02_Core Concepts/023_Solution - ReplicaSets (optional).extraction.md::E29
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 023_Solution - ReplicaSets (optional).txt
- Evidence: Of course it's obvious, but I just wanna show you if you're not sure what the error is then you've got to look at one of these pods in a bit more detail.

### Operational Entry 1219: certified-kubernetes-application-developer/02_Core Concepts/023_Solution - ReplicaSets (optional).extraction.md::E49
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 023_Solution - ReplicaSets (optional).txt
- Evidence: So there's one here and there's an issue with the file so we have to try and fix it.

### Operational Entry 1220: certified-kubernetes-application-developer/02_Core Concepts/023_Solution - ReplicaSets (optional).extraction.md::E53
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 023_Solution - ReplicaSets (optional).txt
- Evidence: Okay, so the error is that it's unable to recognize this file.

### Operational Entry 1221: certified-kubernetes-application-developer/02_Core Concepts/023_Solution - ReplicaSets (optional).extraction.md::E65
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 023_Solution - ReplicaSets (optional).txt
- Evidence: So let's go ahead and fix that. apps/v1.

### Operational Entry 1222: certified-kubernetes-application-developer/02_Core Concepts/023_Solution - ReplicaSets (optional).extraction.md::E69
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 023_Solution - ReplicaSets (optional).txt
- Evidence: So next task is to fix the issue in the second file and create the ReplicaSet.

### Operational Entry 1223: certified-kubernetes-application-developer/02_Core Concepts/023_Solution - ReplicaSets (optional).extraction.md::E83
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 023_Solution - ReplicaSets (optional).txt
- Evidence: So basically the issue here is that you have the labels specified here called tier front end, and then the label for the pod that the ReplicaSet will create is nginx.

### Operational Entry 1224: certified-kubernetes-application-developer/02_Core Concepts/023_Solution - ReplicaSets (optional).extraction.md::E84
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 023_Solution - ReplicaSets (optional).txt
- Evidence: So these two should match otherwise the ReplicaSet cannot basically manage the pods that it creates.

### Operational Entry 1225: certified-kubernetes-application-developer/02_Core Concepts/023_Solution - ReplicaSets (optional).extraction.md::E86
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 023_Solution - ReplicaSets (optional).txt
- Evidence: But at the end both of them should match.

### Operational Entry 1226: certified-kubernetes-application-developer/02_Core Concepts/023_Solution - ReplicaSets (optional).extraction.md::E98
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 023_Solution - ReplicaSets (optional).txt
- Evidence: Now fix the original ReplicaSet to use the correct BusyBox image.

### Operational Entry 1227: certified-kubernetes-application-developer/02_Core Concepts/023_Solution - ReplicaSets (optional).extraction.md::E102
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 023_Solution - ReplicaSets (optional).txt
- Evidence: So we've got to now fix that.

### Operational Entry 1228: certified-kubernetes-application-developer/02_Core Concepts/023_Solution - ReplicaSets (optional).extraction.md::E112
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 023_Solution - ReplicaSets (optional).txt
- Evidence: And you see there's all still in the error state.

### Operational Entry 1229: certified-kubernetes-application-developer/02_Core Concepts/024_Recap - Deployments.extraction.md::E7
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 024_Recap - Deployments.txt
- Evidence: However, when you upgrade your instances, you do not want to upgrade all of them at once, as we just did.

### Operational Entry 1230: certified-kubernetes-application-developer/02_Core Concepts/024_Recap - Deployments.extraction.md::E10
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 024_Recap - Deployments.txt
- Evidence: Suppose one of the upgrades you performed resulted in an unexpected error, and you're asked to undo the recent change You would like to be able to roll back the changes that were recently carried out.

### Operational Entry 1231: certified-kubernetes-application-developer/02_Core Concepts/024_Recap - Deployments.extraction.md::E11
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 024_Recap - Deployments.txt
- Evidence: Finally, say, for example, you would like to make multiple changes to your environment, such as upgrading the underlying web server versions, as well as scaling your environment and also modifying the resource allocations, etc. you do not want to apply each change immediately after the command is run.

### Operational Entry 1232: certified-kubernetes-application-developer/02_Core Concepts/026_Solution - Deployments (optional).extraction.md::E15
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 026_Solution - Deployments (optional).txt
- Evidence: We do not know how many replica sets.

### Operational Entry 1233: certified-kubernetes-application-developer/02_Core Concepts/026_Solution - Deployments (optional).extraction.md::E46
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 026_Solution - Deployments (optional).txt
- Evidence: So there is some kind of error.

### Operational Entry 1234: certified-kubernetes-application-developer/02_Core Concepts/026_Solution - Deployments (optional).extraction.md::E48
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 026_Solution - Deployments (optional).txt
- Evidence: So if we look at the file, we see that the API version is app slash v1 which seems to be correct, but the kind is deployment, which is also right, but the issue is that it's case sensitive, right?

### Operational Entry 1235: certified-kubernetes-application-developer/02_Core Concepts/026_Solution - Deployments (optional).extraction.md::E51
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 026_Solution - Deployments (optional).txt
- Evidence: So the reason we have these kind of exercises is just to help you understand and learn how to, you know, know what the issue is when you come up across these errors.

### Operational Entry 1236: certified-kubernetes-application-developer/02_Core Concepts/026_Solution - Deployments (optional).extraction.md::E52
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 026_Solution - Deployments (optional).txt
- Evidence: So oftentimes you'll face these kind of errors because of these kind of typos or, you know, a word's not being spelled correctly or not in the right case.

### Operational Entry 1237: certified-kubernetes-application-developer/02_Core Concepts/026_Solution - Deployments (optional).extraction.md::E53
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 026_Solution - Deployments (optional).txt
- Evidence: And you should know what those mean when you see these kind of errors.

### Operational Entry 1238: certified-kubernetes-application-developer/02_Core Concepts/026_Solution - Deployments (optional).extraction.md::E55
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 026_Solution - Deployments (optional).txt
- Evidence: And we don't want to spend a lot of time during the exam just not knowing what those are.

### Operational Entry 1239: certified-kubernetes-application-developer/02_Core Concepts/026_Solution - Deployments (optional).extraction.md::E57
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 026_Solution - Deployments (optional).txt
- Evidence: So I've just fixed that and let's proceed with the creation.

### Operational Entry 1240: certified-kubernetes-application-developer/02_Core Concepts/027_Recap - Namespaces.extraction.md::E22
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 027_Recap - Namespaces.txt
- Evidence: This is where resources that should be made available to all users are created.

### Operational Entry 1241: certified-kubernetes-application-developer/02_Core Concepts/027_Recap - Namespaces.extraction.md::E23
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 027_Recap - Namespaces.txt
- Evidence: If your environment is small or you're learning and playing around with a small cluster, you shouldn't really have to worry about namespaces.

### Operational Entry 1242: certified-kubernetes-application-developer/02_Core Concepts/027_Recap - Namespaces.extraction.md::E28
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 027_Recap - Namespaces.txt
- Evidence: That way, while working in the dev environment, you don't accidentally modify resources in production.

### Operational Entry 1243: certified-kubernetes-application-developer/02_Core Concepts/027_Recap - Namespaces.extraction.md::E40
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 027_Recap - Namespaces.txt
- Evidence: Let us now look at some of the operational aspects of namespaces.

### Operational Entry 1244: certified-kubernetes-application-developer/02_Core Concepts/027_Recap - Namespaces.extraction.md::E46
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 027_Recap - Namespaces.txt
- Evidence: If you want to make sure that this pod gets created in the dev environment all the time, even if you don't specify the namespace in the command line, you can move the namespace definition into the pod definition file like this.

### Operational Entry 1245: certified-kubernetes-application-developer/02_Core Concepts/027_Recap - Namespaces.extraction.md::E57
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 027_Recap - Namespaces.txt
- Evidence: But what if we want to switch to the dev namespace permanently so that we don't have to specify the namespace option anymore?

### Operational Entry 1246: certified-kubernetes-application-developer/02_Core Concepts/029_Solution - Namespaces (optional).extraction.md::E13
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 029_Solution - Namespaces (optional).txt
- Evidence: Another way to do this, if you don't wanna type the full option, is to just use the dash N, and that's two.

### Operational Entry 1247: certified-kubernetes-application-developer/02_Core Concepts/029_Solution - Namespaces (optional).extraction.md::E16
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 029_Solution - Namespaces (optional).txt
- Evidence: But, we don't wanna create it in the default namespace, so if I run this command, it's going to create the pod in that default namespace, but we wanna create it in the finance namespace.

### Operational Entry 1248: certified-kubernetes-application-developer/02_Core Concepts/029_Solution - Namespaces (optional).extraction.md::E29
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 029_Solution - Namespaces (optional).txt
- Evidence: So, let's click on okay, and the question is, what DNS name should the blue application use to access the database DB service in its own namespace?

### Operational Entry 1249: certified-kubernetes-application-developer/02_Core Concepts/029_Solution - Namespaces (optional).extraction.md::E35
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 029_Solution - Namespaces (optional).txt
- Evidence: The next question is, what DNS name should the blue application use to access the database DB service in the dev namespace?

### Operational Entry 1250: certified-kubernetes-application-developer/02_Core Concepts/030_Services.extraction.md::E60
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 030_Services.txt
- Evidence: It can have labels, but we don't need that for now.

### Operational Entry 1251: certified-kubernetes-application-developer/02_Core Concepts/030_Services.extraction.md::E74
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 030_Services.txt
- Evidence: If you don't provide a target port, it is assumed to be the same as port.

### Operational Entry 1252: certified-kubernetes-application-developer/02_Core Concepts/030_Services.extraction.md::E75
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 030_Services.txt
- Evidence: And if you don't provide a node port, a free port in the valid range between 30,000 and 32,767 is automatically allocated.

### Operational Entry 1253: certified-kubernetes-application-developer/02_Core Concepts/030_Services.extraction.md::E109
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 030_Services.txt
- Evidence: You don't have to do any additional configuration to make this happen.

### Operational Entry 1254: certified-kubernetes-application-developer/02_Core Concepts/031_Services - Cluster IP.extraction.md::E18
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 031_Services - Cluster IP.txt
- Evidence: Each service gets an IP and name assigned to it inside the cluster, and that is the name that should be used by other paths to access the service.

### Operational Entry 1255: certified-kubernetes-application-developer/02_Core Concepts/031_Services - Cluster IP.extraction.md::E31
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 031_Services - Cluster IP.txt
- Evidence: We will refer to the pod definition file and copy the labels from it and move it under selector, and that should be it.

### Operational Entry 1256: certified-kubernetes-application-developer/02_Core Concepts/033_Solution - Services (optional).extraction.md::E29
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 033_Solution - Services (optional).txt
- Evidence: We don't really know what it is, so we are kind of exploring and finding out more about it.

### Operational Entry 1257: certified-kubernetes-application-developer/02_Core Concepts/033_Solution - Services (optional).extraction.md::E70
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 033_Solution - Services (optional).txt
- Evidence: So, there's the link here, and clicking on it, we see that it gives us a bad gateway error.

### Operational Entry 1258: certified-kubernetes-application-developer/02_Core Concepts/038_Solution - Imperative Commands (optional).extraction.md::E43
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 038_Solution - Imperative Commands (optional).txt
- Evidence: The only time you could, you should use kubectl create service is when you need to specify a particular node port, right?

### Operational Entry 1259: certified-kubernetes-application-developer/02_Core Concepts/038_Solution - Imperative Commands (optional).extraction.md::E53
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 038_Solution - Imperative Commands (optional).txt
- Evidence: So we don't know if it's a pod or deployment, so let's find that out first.

### Operational Entry 1260: certified-kubernetes-application-developer/02_Core Concepts/038_Solution - Imperative Commands (optional).extraction.md::E59
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 038_Solution - Imperative Commands (optional).txt
- Evidence: And this should be a way to specify the name of the service, which is using name.

### Operational Entry 1261: certified-kubernetes-application-developer/02_Core Concepts/038_Solution - Imperative Commands (optional).extraction.md::E65
- Type: Command
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 038_Solution - Imperative Commands (optional).txt
- Evidence: Kubectl, expose, and Redis, and then we're gonna specify the port, which is 6379.

### Operational Entry 1262: certified-kubernetes-application-developer/02_Core Concepts/038_Solution - Imperative Commands (optional).extraction.md::E102
- Type: Command
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 038_Solution - Imperative Commands (optional).txt
- Evidence: Kubectl, create, namespace, DEV NS.

### Operational Entry 1263: certified-kubernetes-application-developer/02_Core Concepts/038_Solution - Imperative Commands (optional).extraction.md::E115
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 038_Solution - Imperative Commands (optional).txt
- Evidence: The target port for the service should be 80.

### Operational Entry 1264: certified-kubernetes-application-developer/02_Core Concepts/038_Solution - Imperative Commands (optional).extraction.md::E123
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 038_Solution - Imperative Commands (optional).txt
- Evidence: And then we have, it's the default namespace, so we don't have to specify the namespace.

### Operational Entry 1265: certified-kubernetes-application-developer/02_Core Concepts/040_A Quick Reminder.extraction.md::E1
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 040_A Quick Reminder.txt
- Evidence: (gentle music) -: Hey, so here is a quick reminder and I hope you don't mind me jumping in like this.

### Operational Entry 1266: certified-kubernetes-application-developer/03_Configuration/041_Define, build and modify container images.extraction.md::E19
- Type: Command
- Source: certified-kubernetes-application-developer / 03_Configuration / 041_Define, build and modify container images.txt
- Evidence: Docker file is a text file written in a specific format that Docker can understand.

### Operational Entry 1267: certified-kubernetes-application-developer/03_Configuration/041_Define, build and modify container images.extraction.md::E25
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 03_Configuration / 041_Define, build and modify container images.txt
- Evidence: The first line from Ubuntu defines what the base OS should be for this container.

### Operational Entry 1268: certified-kubernetes-application-developer/03_Configuration/041_Define, build and modify container images.extraction.md::E41
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 041_Define, build and modify container images.txt
- Evidence: All the layers built are cast, so the layered architecture helps you restart docker build from that particular step in case it fails.

### Operational Entry 1269: certified-kubernetes-application-developer/03_Configuration/041_Define, build and modify container images.extraction.md::E44
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 041_Define, build and modify container images.txt
- Evidence: So in case a particular step was to fail, for example, in this case, step three failed, and you were to fix the issue and rerun docker build, it will reuse the previous layers from cache and continue to build the remaining layers.

### Operational Entry 1270: certified-kubernetes-application-developer/03_Configuration/041_Define, build and modify container images.extraction.md::E46
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 03_Configuration / 041_Define, build and modify container images.txt
- Evidence: This way, rebuilding your image is faster and you don't have to wait for Docker to rebuild the entire image each time.

### Operational Entry 1271: certified-kubernetes-application-developer/03_Configuration/041_Define, build and modify container images.extraction.md::E55
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 03_Configuration / 041_Define, build and modify container images.txt
- Evidence: And when they don't anymore, get rid of it easily without having to clean up too much. (gentle upbeat music)

### Operational Entry 1272: certified-kubernetes-application-developer/03_Configuration/043_Commands and Arguments in Docker.extraction.md::E38
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 03_Configuration / 043_Commands and Arguments in Docker.txt
- Evidence: But remember, when you specify in a JSON array format, the first element in the array should be the executable.

### Operational Entry 1273: certified-kubernetes-application-developer/03_Configuration/043_Commands and Arguments in Docker.extraction.md::E39
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 03_Configuration / 043_Commands and Arguments in Docker.txt
- Evidence: In this case, the sleep program do not specify the command and parameters together like this.

### Operational Entry 1274: certified-kubernetes-application-developer/03_Configuration/043_Commands and Arguments in Docker.extraction.md::E40
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 03_Configuration / 043_Commands and Arguments in Docker.txt
- Evidence: The command and its parameters should be separate elements in the list.

### Operational Entry 1275: certified-kubernetes-application-developer/03_Configuration/043_Commands and Arguments in Docker.extraction.md::E50
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 03_Configuration / 043_Commands and Arguments in Docker.txt
- Evidence: The name of the image, ubuntu Sleeper in itself implies that the container will sleep, so we shouldn't have to specify the sleep command again.

### Operational Entry 1276: certified-kubernetes-application-developer/03_Configuration/043_Commands and Arguments in Docker.extraction.md::E52
- Type: Command
- Source: certified-kubernetes-application-developer / 03_Configuration / 043_Commands and Arguments in Docker.txt
- Evidence: Docker run ubuntu sleeper ten.

### Operational Entry 1277: certified-kubernetes-application-developer/03_Configuration/043_Commands and Arguments in Docker.extraction.md::E53
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 03_Configuration / 043_Commands and Arguments in Docker.txt
- Evidence: We only want to pass in the number of seconds the container should sleep, and sleep command should be invoked automatically.

### Operational Entry 1278: certified-kubernetes-application-developer/03_Configuration/043_Commands and Arguments in Docker.extraction.md::E63
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 043_Commands and Arguments in Docker.txt
- Evidence: Then the command at startup will be just sleep and you get the error that the operand is missing.

### Operational Entry 1279: certified-kubernetes-application-developer/03_Configuration/043_Commands and Arguments in Docker.extraction.md::E69
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 03_Configuration / 043_Commands and Arguments in Docker.txt
- Evidence: And remember for this to happen, you should always specify the entry point and command instructions in a JSON format.

### Operational Entry 1280: certified-kubernetes-application-developer/03_Configuration/043_Commands and Arguments in Docker.extraction.md::E70
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 03_Configuration / 043_Commands and Arguments in Docker.txt
- Evidence: Finally, what if you really, really want to modify the entry point during runtime?

### Operational Entry 1281: certified-kubernetes-application-developer/03_Configuration/044_Commands and Arguments in Kubernetes.extraction.md::E22
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 044_Commands and Arguments in Kubernetes.txt
- Evidence: Head over to the Coding exercises section and practice viewing, configuring and troubleshooting commands and arguments in Kubernetes.

### Operational Entry 1282: certified-kubernetes-application-developer/03_Configuration/047_Solution - Commands and Arguments (Optional).extraction.md::E9
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 03_Configuration / 047_Solution - Commands and Arguments (Optional).txt
- Evidence: And, I do not see any arguments.

### Operational Entry 1283: certified-kubernetes-application-developer/03_Configuration/047_Solution - Commands and Arguments (Optional).extraction.md::E62
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 047_Solution - Commands and Arguments (Optional).txt
- Evidence: So try and fix it.

### Operational Entry 1284: certified-kubernetes-application-developer/03_Configuration/047_Solution - Commands and Arguments (Optional).extraction.md::E63
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 03_Configuration / 047_Solution - Commands and Arguments (Optional).txt
- Evidence: So taking a quick look, I don't see anything wrong with it.

### Operational Entry 1285: certified-kubernetes-application-developer/03_Configuration/047_Solution - Commands and Arguments (Optional).extraction.md::E68
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 03_Configuration / 047_Solution - Commands and Arguments (Optional).txt
- Evidence: So this exercise was just to kind of make sure you know that you don't accidentally put in a number instead of a string.

### Operational Entry 1286: certified-kubernetes-application-developer/03_Configuration/047_Solution - Commands and Arguments (Optional).extraction.md::E71
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 03_Configuration / 047_Solution - Commands and Arguments (Optional).txt
- Evidence: That should be good.

### Operational Entry 1287: certified-kubernetes-application-developer/03_Configuration/047_Solution - Commands and Arguments (Optional).extraction.md::E91
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 03_Configuration / 047_Solution - Commands and Arguments (Optional).txt
- Evidence: And that's also, that's the best practice.

### Operational Entry 1288: certified-kubernetes-application-developer/03_Configuration/047_Solution - Commands and Arguments (Optional).extraction.md::E92
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 03_Configuration / 047_Solution - Commands and Arguments (Optional).txt
- Evidence: It's taking a while for the pod to be terminated and as is mentioned before and that's completely okay, that's an expected behavior.

### Operational Entry 1289: certified-kubernetes-application-developer/03_Configuration/047_Solution - Commands and Arguments (Optional).extraction.md::E145
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 03_Configuration / 047_Solution - Commands and Arguments (Optional).txt
- Evidence: Now, what it says is by default, it runs, it actually runs, it displays a blue background but we want, and that's the behavior of this particular image.

### Operational Entry 1290: certified-kubernetes-application-developer/03_Configuration/047_Solution - Commands and Arguments (Optional).extraction.md::E153
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 03_Configuration / 047_Solution - Commands and Arguments (Optional).txt
- Evidence: So that's one way to do it, but something like this we should be able to do it in a much easier, more straightforward way.

### Operational Entry 1291: certified-kubernetes-application-developer/03_Configuration/047_Solution - Commands and Arguments (Optional).extraction.md::E158
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 03_Configuration / 047_Solution - Commands and Arguments (Optional).txt
- Evidence: So basically all you should be able to do is queue cuttle a run and then whatever is the name of whatever that it is, the name of that application.

### Operational Entry 1292: certified-kubernetes-application-developer/03_Configuration/047_Solution - Commands and Arguments (Optional).extraction.md::E160
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 03_Configuration / 047_Solution - Commands and Arguments (Optional).txt
- Evidence: And also it should be as easy to customize it by just passing in the color and color like this.

### Operational Entry 1293: certified-kubernetes-application-developer/03_Configuration/047_Solution - Commands and Arguments (Optional).extraction.md::E161
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 03_Configuration / 047_Solution - Commands and Arguments (Optional).txt
- Evidence: So once this application is containerized and a docker image is built out of it it should be as easy as something like this, right?

### Operational Entry 1294: certified-kubernetes-application-developer/03_Configuration/047_Solution - Commands and Arguments (Optional).extraction.md::E188
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 03_Configuration / 047_Solution - Commands and Arguments (Optional).txt
- Evidence: In this case we don't, we're not going to do that.

### Operational Entry 1295: certified-kubernetes-application-developer/03_Configuration/049_ConfigMaps.extraction.md::E12
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 03_Configuration / 049_ConfigMaps.txt
- Evidence: If you do not wish to create a config map definition file, you could simply use the cube control, create Configmap command and specify the required arguments.

### Operational Entry 1296: certified-kubernetes-application-developer/03_Configuration/049_ConfigMaps.extraction.md::E53
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 049_ConfigMaps.txt
- Evidence: So head over to the coding exercises section and practice viewing, configuring and troubleshooting environment variables on a live Kubernetes environment.

### Operational Entry 1297: certified-kubernetes-application-developer/03_Configuration/051_Solution_ ConfigMaps (Optional).extraction.md::E15
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 03_Configuration / 051_Solution_ ConfigMaps (Optional).txt
- Evidence: And so, we don't actually have to run another command.

### Operational Entry 1298: certified-kubernetes-application-developer/03_Configuration/051_Solution_ ConfigMaps (Optional).extraction.md::E23
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 03_Configuration / 051_Solution_ ConfigMaps (Optional).txt
- Evidence: It's saying that we need to delete and recreate the pod and only make the necessary changes, and to make sure that we don't modify the name of the pod.

### Operational Entry 1299: certified-kubernetes-application-developer/03_Configuration/051_Solution_ ConfigMaps (Optional).extraction.md::E24
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 03_Configuration / 051_Solution_ ConfigMaps (Optional).txt
- Evidence: And so, down here, there's a couple of bullet points and it's just letting us know what is the name we should give it, the pod.

### Operational Entry 1300: certified-kubernetes-application-developer/03_Configuration/051_Solution_ ConfigMaps (Optional).extraction.md::E42
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 03_Configuration / 051_Solution_ ConfigMaps (Optional).txt
- Evidence: And that should be the only thing that we have to change.

### Operational Entry 1301: certified-kubernetes-application-developer/03_Configuration/051_Solution_ ConfigMaps (Optional).extraction.md::E67
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 03_Configuration / 051_Solution_ ConfigMaps (Optional).txt
- Evidence: I'm gonna copy this just to make sure I don't make a mistake.

### Operational Entry 1302: certified-kubernetes-application-developer/03_Configuration/051_Solution_ ConfigMaps (Optional).extraction.md::E69
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 03_Configuration / 051_Solution_ ConfigMaps (Optional).txt
- Evidence: And I'm gonna copy this, as well, just so I don't make a mistake.

### Operational Entry 1303: certified-kubernetes-application-developer/03_Configuration/051_Solution_ ConfigMaps (Optional).extraction.md::E96
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 03_Configuration / 051_Solution_ ConfigMaps (Optional).txt
- Evidence: And that should be all the changes that we have to make.

### Operational Entry 1304: certified-kubernetes-application-developer/03_Configuration/056_Solution - Secrets (Optional).extraction.md::E39
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 056_Solution - Secrets (Optional).txt
- Evidence: So that's the error.

### Operational Entry 1305: certified-kubernetes-application-developer/03_Configuration/056_Solution - Secrets (Optional).extraction.md::E52
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 03_Configuration / 056_Solution - Secrets (Optional).txt
- Evidence: Secret generics, don't forget generic.

### Operational Entry 1306: certified-kubernetes-application-developer/03_Configuration/056_Solution - Secrets (Optional).extraction.md::E66
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 03_Configuration / 056_Solution - Secrets (Optional).txt
- Evidence: But if we don't know how to do that let's first review the Kubernetes documentation pages and look at secrets.

### Operational Entry 1307: certified-kubernetes-application-developer/03_Configuration/056_Solution - Secrets (Optional).extraction.md::E83
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 03_Configuration / 056_Solution - Secrets (Optional).txt
- Evidence: Space that, and the key name should be DB secret.

### Operational Entry 1308: certified-kubernetes-application-developer/03_Configuration/056_Solution - Secrets (Optional).extraction.md::E96
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 03_Configuration / 056_Solution - Secrets (Optional).txt
- Evidence: And yeah, of course remember we should not, you know read passwords and display like this.

### Operational Entry 1309: certified-kubernetes-application-developer/03_Configuration/056_Solution - Secrets (Optional).extraction.md::E98
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 056_Solution - Secrets (Optional).txt
- Evidence: And this kind of helps us debug if something is not passed through right.

### Operational Entry 1310: certified-kubernetes-application-developer/03_Configuration/057_Demo_ Encrypting Secret Data at Rest.extraction.md::E48
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 03_Configuration / 057_Demo_ Encrypting Secret Data at Rest.txt
- Evidence: So we don't have that.

### Operational Entry 1311: certified-kubernetes-application-developer/03_Configuration/057_Demo_ Encrypting Secret Data at Rest.extraction.md::E52
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 03_Configuration / 057_Demo_ Encrypting Secret Data at Rest.txt
- Evidence: So if you do not have the ETCD on, so so remember that the ETCD server is running in a pod.

### Operational Entry 1312: certified-kubernetes-application-developer/03_Configuration/057_Demo_ Encrypting Secret Data at Rest.extraction.md::E98
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 03_Configuration / 057_Demo_ Encrypting Secret Data at Rest.txt
- Evidence: And here you don't see the encryption option that we have talked about here.

### Operational Entry 1313: certified-kubernetes-application-developer/03_Configuration/057_Demo_ Encrypting Secret Data at Rest.extraction.md::E137
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 03_Configuration / 057_Demo_ Encrypting Secret Data at Rest.txt
- Evidence: So if we, if you really want to encrypt the data in cd then one of these should be at the top, okay?

### Operational Entry 1314: certified-kubernetes-application-developer/03_Configuration/057_Demo_ Encrypting Secret Data at Rest.extraction.md::E150
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 03_Configuration / 057_Demo_ Encrypting Secret Data at Rest.txt
- Evidence: So I'll call it BNC dot aml, and I'm gonna paste this, okay should have copied the secret value first.

### Operational Entry 1315: certified-kubernetes-application-developer/03_Configuration/057_Demo_ Encrypting Secret Data at Rest.extraction.md::E190
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 03_Configuration / 057_Demo_ Encrypting Secret Data at Rest.txt
- Evidence: Okay, let me see if that, So now that I've saved it made changes to this file, that Q A P S server should be restarting.

### Operational Entry 1316: certified-kubernetes-application-developer/03_Configuration/057_Demo_ Encrypting Secret Data at Rest.extraction.md::E217
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 03_Configuration / 057_Demo_ Encrypting Secret Data at Rest.txt
- Evidence: So the value was top secret and I don't I no longer see that here.

### Operational Entry 1317: certified-kubernetes-application-developer/03_Configuration/058_Pre-requisite - Security in Docker.extraction.md::E24
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 03_Configuration / 058_Pre-requisite - Security in Docker.txt
- Evidence: Now, if you do not want the process within the container to run as the root user, you may set the user using the user option within the docker run command and specify the new user ID.

### Operational Entry 1318: certified-kubernetes-application-developer/03_Configuration/058_Pre-requisite - Security in Docker.extraction.md::E37
- Type: Command
- Source: certified-kubernetes-application-developer / 03_Configuration / 058_Pre-requisite - Security in Docker.txt
- Evidence: Docker uses Linux capabilities to implement this.

### Operational Entry 1319: certified-kubernetes-application-developer/03_Configuration/058_Pre-requisite - Security in Docker.extraction.md::E46
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 03_Configuration / 058_Pre-requisite - Security in Docker.txt
- Evidence: By default, Docker runs a container with a limited set of capabilities, and so the processes running within the container do not have the privileges to say, reboot the host or perform operations that can disrupt the host or other containers running on the same host.

### Operational Entry 1320: certified-kubernetes-application-developer/03_Configuration/058_Pre-requisite - Security in Docker.extraction.md::E47
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 03_Configuration / 058_Pre-requisite - Security in Docker.txt
- Evidence: If you wish to override this behavior and provide additional privileges than what is available, use the cap add option in the docker run command.

### Operational Entry 1321: certified-kubernetes-application-developer/03_Configuration/059_Security Contexts.extraction.md::E14
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 059_Security Contexts.txt
- Evidence: Head over to the Coding Exercises section and practice viewing, configuring, and troubleshooting issues related to security contexts in Kubernetes.

### Operational Entry 1322: certified-kubernetes-application-developer/03_Configuration/061_Solution_ Security Contexts.extraction.md::E36
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 03_Configuration / 061_Solution_ Security Contexts.txt
- Evidence: And that should be everything we need, so I'll save the configuration.

### Operational Entry 1323: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E11
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements.txt
- Evidence: The scheduler avoids placing the pod on those nodes, and instead places the pod on one where sufficient resources are available, and if there is no sufficient resources available on any of the nodes, then the scheduler holds back, scheduling the pod and you will see the pod in a pending state.

### Operational Entry 1324: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E29
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements.txt
- Evidence: Now, similarly with memory, you could specify 256 mebibyte using the mi suffix, or specify the same value in memory like this.

### Operational Entry 1325: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E31
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements.txt
- Evidence: So um, or use the suffix g for uh, gigabyte.

### Operational Entry 1326: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E57
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements.txt
- Evidence: The pod will be terminated and you'll see that the pod terminated with an error in the logs or in the output of the describe command when you run it.

### Operational Entry 1327: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E77
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements.txt
- Evidence: However, the issue is that if Pod one needs more CPU cycles for some reason and pod two isn't really consuming that many CPU cycles, then we don't want to limit pod one of CPU, right?

### Operational Entry 1328: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E81
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements.txt
- Evidence: So we don't want to unnecessarily limit resources of CPU cycles.

### Operational Entry 1329: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E93
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements.txt
- Evidence: But in your case, if you don't want to restrict your application to consume additional CPU, uh, if needed, then you could consider not setting limits.

### Operational Entry 1330: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E141
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements.txt
- Evidence: For example, if we had to say that all the pods together shouldn't consume more than this much of CPU or memory.

### Operational Entry 1331: certified-kubernetes-application-developer/03_Configuration/064_Solution_ Resource Requirements.extraction.md::E4
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 03_Configuration / 064_Solution_ Resource Requirements.txt
- Evidence: And if we scroll up we should see a resource section.

### Operational Entry 1332: certified-kubernetes-application-developer/03_Configuration/064_Solution_ Resource Requirements.extraction.md::E12
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 064_Solution_ Resource Requirements.txt
- Evidence: And for some reason or another it fails to get into a running state.

### Operational Entry 1333: certified-kubernetes-application-developer/03_Configuration/064_Solution_ Resource Requirements.extraction.md::E33
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 03_Configuration / 064_Solution_ Resource Requirements.txt
- Evidence: So if I do a kubectl get pod, we should see that it is a currently in a running state.

### Operational Entry 1334: certified-kubernetes-application-developer/03_Configuration/065_Service Account.extraction.md::E37
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 03_Configuration / 065_Service Account.txt
- Evidence: You don't have to provide it manually.

### Operational Entry 1335: certified-kubernetes-application-developer/03_Configuration/065_Service Account.extraction.md::E70
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 065_Service Account.txt
- Evidence: So this excerpt from the Kubernetes Enhancement Proposal for creating bound service account tokens describes this form of JWT to be having some security and scalability related issues.

### Operational Entry 1336: certified-kubernetes-application-developer/03_Configuration/065_Service Account.extraction.md::E74
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 065_Service Account.txt
- Evidence: Moreover, each JWT requires a separate secret object per service account, which results in scalability issues.

### Operational Entry 1337: certified-kubernetes-application-developer/03_Configuration/065_Service Account.extraction.md::E99
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 03_Configuration / 065_Service Account.txt
- Evidence: Now, you have to be sure if you really wanna do that because as per the Kubernetes documentation pages on service account token secrets, it says you should only create service account token secrets if you can't use the TokenRequestAPI to obtain a token.

### Operational Entry 1338: certified-kubernetes-application-developer/03_Configuration/065_Service Account.extraction.md::E101
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 03_Configuration / 065_Service Account.txt
- Evidence: And also, you should only create service account token request if the security exposure of persisting and non-expiring token credential is acceptable to you.

### Operational Entry 1339: certified-kubernetes-application-developer/03_Configuration/065_Service Account.extraction.md::E102
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 03_Configuration / 065_Service Account.txt
- Evidence: Now, the TokenRequestAPI is recommended instead of using the service account token secret objects as they are more secure and have a bounded lifetime unlike the service account token secrets that have no expiry.

### Operational Entry 1340: certified-kubernetes-application-developer/03_Configuration/067_Solution_ Service Account.extraction.md::E18
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 067_Solution_ Service Account.txt
- Evidence: So there's an error it's saying pods is forbidden, user block cannot list resources pods in the api group.

### Operational Entry 1341: certified-kubernetes-application-developer/03_Configuration/067_Solution_ Service Account.extraction.md::E48
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 067_Solution_ Service Account.txt
- Evidence: So it's telling us to get an access token and entered in the UI dashboard and see if that basically fixes the issue.

### Operational Entry 1342: certified-kubernetes-application-developer/03_Configuration/067_Solution_ Service Account.extraction.md::E53
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 03_Configuration / 067_Solution_ Service Account.txt
- Evidence: So now the next question is telling us, we shouldn't have to create a token and then paste it into our application every time we need an application to interact with the Kubernetes api.

### Operational Entry 1343: certified-kubernetes-application-developer/03_Configuration/067_Solution_ Service Account.extraction.md::E61
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 03_Configuration / 067_Solution_ Service Account.txt
- Evidence: Don't worry about the warning, that's just because the the first deployment wasn't created using the apply command.

### Operational Entry 1344: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E43
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Evidence: The taint effect defines what would happen to the pods if they do not tolerate the taint.

### Operational Entry 1345: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E46
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Evidence: Preferred no schedule, which means the system will try to avoid placing a pod on the node, but that is not guaranteed.

### Operational Entry 1346: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E47
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Evidence: And third is no execute, which means that new pods will not be scheduled on the node and existing pods on the node, if any will be evicted if they do not tolerate the taint.

### Operational Entry 1347: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E59
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Evidence: We do not have any teams or tolerations at this point, so they are scheduled this way.

### Operational Entry 1348: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E73
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Evidence: You can see this as well as modify this behavior if required.

### Operational Entry 1349: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E74
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Evidence: However, a best practice is to not deploy application workloads on a master server.

### Operational Entry 1350: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E27
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Evidence: Is there an error?

### Operational Entry 1351: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E23
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Evidence: We know that we have only set the label size to large and medium nodes, The smaller nodes don't even have the label set, so we don't really have to even check the value of the label, as long as we are sure we don't set a label size to the smaller nodes, using the exists operator will give us the same result.

### Operational Entry 1352: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E24
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Evidence: The excess operator will simply check if the label size exists on the nodes, and you don't need the values section for that, as it does not compare the values.

### Operational Entry 1353: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E64
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Evidence: So all we need to do is to set a node affinity rule that says the pods that are part of the deployment red should be placed on a node that has this label set.

### Operational Entry 1354: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E66
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Evidence: But if this label exists then that's where it should be placed on.

### Operational Entry 1355: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E85
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Evidence: There seems to be some error.

### Operational Entry 1356: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E86
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Evidence: So let's go back, see what the error is.

### Operational Entry 1357: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E95
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Evidence: Okay, so even though here it said line 26 the issue was a few lines above.

### Operational Entry 1358: certified-kubernetes-application-developer/03_Configuration/076_Taints & Tolerations vs Node Affinity.extraction.md::E5
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 03_Configuration / 076_Taints & Tolerations vs Node Affinity.txt
- Evidence: We do not want any other pod to be placed on our node.

### Operational Entry 1359: certified-kubernetes-application-developer/03_Configuration/076_Taints & Tolerations vs Node Affinity.extraction.md::E10
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 03_Configuration / 076_Taints & Tolerations vs Node Affinity.txt
- Evidence: However, taints and tolerations does not guarantee that the pods will only prefer these nodes, so the red pods ends up on one of the other nodes that do not have a taint or toleration set.

### Operational Entry 1360: certified-kubernetes-application-developer/04_Multi-Container Pods/080_Multi-Container Pods.extraction.md::E6
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 04_Multi-Container Pods / 080_Multi-Container Pods.txt
- Evidence: You don't want to merge and bloat the code of the two services, as each of them target different features and you still like them to be developed and deployed separately, you only need the two functionality to work together.

### Operational Entry 1361: certified-kubernetes-application-developer/04_Multi-Container Pods/080_Multi-Container Pods.extraction.md::E10
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 04_Multi-Container Pods / 080_Multi-Container Pods.txt
- Evidence: This way you do not have to establish volume sharing or services between the pods to enable communication between them.

### Operational Entry 1362: certified-kubernetes-application-developer/04_Multi-Container Pods/085_Solution – Init Containers (Optional).extraction.md::E3
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 04_Multi-Container Pods / 085_Solution – Init Containers (Optional).txt
- Evidence: So if I do a Kubectl get pods, we should see that we have three different pods, red, green, blue.

### Operational Entry 1363: certified-kubernetes-application-developer/04_Multi-Container Pods/085_Solution – Init Containers (Optional).extraction.md::E16
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 04_Multi-Container Pods / 085_Solution – Init Containers (Optional).txt
- Evidence: Well, we don't have to run any other commands.

### Operational Entry 1364: certified-kubernetes-application-developer/04_Multi-Container Pods/085_Solution – Init Containers (Optional).extraction.md::E62
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 04_Multi-Container Pods / 085_Solution – Init Containers (Optional).txt
- Evidence: And that should be all that we have to change.

### Operational Entry 1365: certified-kubernetes-application-developer/04_Multi-Container Pods/085_Solution – Init Containers (Optional).extraction.md::E67
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 04_Multi-Container Pods / 085_Solution – Init Containers (Optional).txt
- Evidence: And it's saying that there's a new application orange that was deployed and there's something wrong with it, identify and fix the issue.

### Operational Entry 1366: certified-kubernetes-application-developer/04_Multi-Container Pods/085_Solution – Init Containers (Optional).extraction.md::E70
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 04_Multi-Container Pods / 085_Solution – Init Containers (Optional).txt
- Evidence: So under events, I don't really see anything interesting other than we can see that it's restarting.

### Operational Entry 1367: certified-kubernetes-application-developer/04_Multi-Container Pods/085_Solution – Init Containers (Optional).extraction.md::E73
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 04_Multi-Container Pods / 085_Solution – Init Containers (Optional).txt
- Evidence: So no issue there.

### Operational Entry 1368: certified-kubernetes-application-developer/04_Multi-Container Pods/085_Solution – Init Containers (Optional).extraction.md::E74
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 04_Multi-Container Pods / 085_Solution – Init Containers (Optional).txt
- Evidence: However, if we go up to the Init container, I do see one minor issue.

### Operational Entry 1369: certified-kubernetes-application-developer/04_Multi-Container Pods/085_Solution – Init Containers (Optional).extraction.md::E77
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 04_Multi-Container Pods / 085_Solution – Init Containers (Optional).txt
- Evidence: So let's update this configuration and see if that fixes it.

### Operational Entry 1370: certified-kubernetes-application-developer/04_Multi-Container Pods/085_Solution – Init Containers (Optional).extraction.md::E81
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 04_Multi-Container Pods / 085_Solution – Init Containers (Optional).txt
- Evidence: Then we'll go into the orange.yaml, and let's fix up the command so that there isn't too many Es.

### Operational Entry 1371: certified-kubernetes-application-developer/04_Multi-Container Pods/085_Solution – Init Containers (Optional).extraction.md::E84
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 04_Multi-Container Pods / 085_Solution – Init Containers (Optional).txt
- Evidence: Then let's run the validation just to see if the issue is fixed, and it looks like we're successful.

### Operational Entry 1372: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E68
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Evidence: If you'd like to make more attempts, use the failure threshold option.

### Operational Entry 1373: certified-kubernetes-application-developer/05_Observability/087_Liveness Probes.extraction.md::E22
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 05_Observability / 087_Liveness Probes.txt
- Evidence: If the test fails, the container is considered unhealthy and is destroyed and recreated.

### Operational Entry 1374: certified-kubernetes-application-developer/05_Observability/087_Liveness Probes.extraction.md::E29
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 05_Observability / 087_Liveness Probes.txt
- Evidence: As well as additional options like initial delay before the test is run, periodSeconds to define the frequency, and success and failure thresholds.

### Operational Entry 1375: certified-kubernetes-application-developer/05_Observability/087_Liveness Probes.extraction.md::E32
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 05_Observability / 087_Liveness Probes.txt
- Evidence: We have some fun and challenging exercises where you will be required to configure probes as well as troubleshoot and fix issues with existing probes.

### Operational Entry 1376: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E16
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Evidence: But then now you can see that there's a couple of failures.

### Operational Entry 1377: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E18
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Evidence: Next question is just telling us to notice the fact that, you know, there have been some failures.

### Operational Entry 1378: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E21
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Evidence: And so to address this, the next question is telling us to set up a readiness probe for webapp two so that we don't send a request to it when it's not ready.

### Operational Entry 1379: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E40
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Evidence: And that should be all that we have to do for the readiness probe.

### Operational Entry 1380: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E55
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Evidence: And we should see that traffic should be load balanced between the two pods.

### Operational Entry 1381: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E72
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Evidence: And so we can see that there's several failures as well as a couple of successes.

### Operational Entry 1382: certified-kubernetes-application-developer/05_Observability/092_Solution - Logging (optional).extraction.md::E16
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 05_Observability / 092_Solution - Logging (optional).txt
- Evidence: And if you see a user is reporting issues while trying to purchase an item, identify the user and the cause of the issue, inspect the logs of the web app.

### Operational Entry 1383: certified-kubernetes-application-developer/05_Observability/092_Solution - Logging (optional).extraction.md::E25
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 05_Observability / 092_Solution - Logging (optional).txt
- Evidence: And the question is a user is reporting issues while trying to purchase an item.

### Operational Entry 1384: certified-kubernetes-application-developer/05_Observability/092_Solution - Logging (optional).extraction.md::E26
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 05_Observability / 092_Solution - Logging (optional).txt
- Evidence: So we've gotta identify the user and the cause of the issue.

### Operational Entry 1385: certified-kubernetes-application-developer/05_Observability/092_Solution - Logging (optional).extraction.md::E27
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 05_Observability / 092_Solution - Logging (optional).txt
- Evidence: So if you look at this, these are all normal events, but these are warnings.

### Operational Entry 1386: certified-kubernetes-application-developer/05_Observability/092_Solution - Logging (optional).extraction.md::E28
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 05_Observability / 092_Solution - Logging (optional).txt
- Evidence: So let's look at the warnings.

### Operational Entry 1387: certified-kubernetes-application-developer/05_Observability/092_Solution - Logging (optional).extraction.md::E29
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 05_Observability / 092_Solution - Logging (optional).txt
- Evidence: So user five, failed to log in, that's not the issue here.

### Operational Entry 1388: certified-kubernetes-application-developer/05_Observability/092_Solution - Logging (optional).extraction.md::E31
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 05_Observability / 092_Solution - Logging (optional).txt
- Evidence: So that seems to be, and that's those are the only two issues.

### Operational Entry 1389: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E10
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Evidence: However, hipster is now deprecated and a slimmed down version was formed, known as the Metrics Server.

### Operational Entry 1390: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E12
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Evidence: So remember, do not use this for production use cases because there are changes that are in here and that are done just to make this work with this particular lab exercise.

### Operational Entry 1391: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E14
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Evidence: So do not use this for a production use case.

### Operational Entry 1392: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E51
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Evidence: So, select lion and that should be it.

### Operational Entry 1393: certified-kubernetes-application-developer/06_POD Design/096_Labels, Selectors and Annotations.extraction.md::E28
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 06_POD Design / 096_Labels, Selectors and Annotations.txt
- Evidence: Kubernetes objects use labels and selectors internally to connect different objects together.

### Operational Entry 1394: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E50
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Evidence: And, but there's an issue with this, so we've got to fix it.

### Operational Entry 1395: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E56
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Evidence: So the error message is that this does not match this.

### Operational Entry 1396: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E59
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Evidence: So that's the validation error here.

### Operational Entry 1397: certified-kubernetes-application-developer/06_POD Design/098_Solution - Labels and Selectors (optional).extraction.md::E60
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 06_POD Design / 098_Solution - Labels and Selectors (optional).txt
- Evidence: So we're gonna fix this by changing this to the value below.

### Operational Entry 1398: certified-kubernetes-application-developer/06_POD Design/099_Rolling Updates & Rollbacks in Deployments.extraction.md::E14
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 06_POD Design / 099_Rolling Updates & Rollbacks in Deployments.txt
- Evidence: The second strategy is where we do not destroy all of them at once.

### Operational Entry 1399: certified-kubernetes-application-developer/06_POD Design/099_Rolling Updates & Rollbacks in Deployments.extraction.md::E17
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 06_POD Design / 099_Rolling Updates & Rollbacks in Deployments.txt
- Evidence: Remember, if you do not specify a strategy while creating the deployment, it will assume it to be rolling.

### Operational Entry 1400: certified-kubernetes-application-developer/06_POD Design/102_Solution - Rolling Updates (Optional).extraction.md::E59
- Type: Command
- Source: certified-kubernetes-application-developer / 06_POD Design / 102_Solution - Rolling Updates (Optional).txt
- Evidence: Kubectl, set image, deploy front end, container name is "Simple Web App", equals test the image.

### Operational Entry 1401: certified-kubernetes-application-developer/06_POD Design/102_Solution - Rolling Updates (Optional).extraction.md::E94
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 06_POD Design / 102_Solution - Rolling Updates (Optional).txt
- Evidence: And when we run this, this time, unlike the previous time we see a lot of failures.

### Operational Entry 1402: certified-kubernetes-application-developer/06_POD Design/103_Deployment Strategy - Blue Green.extraction.md::E5
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 06_POD Design / 103_Deployment Strategy - Blue Green.txt
- Evidence: The second is the rolling update strategy where we do not destroy all of them at once.

### Operational Entry 1403: certified-kubernetes-application-developer/06_POD Design/106_Solution_ Deployment strategies.extraction.md::E19
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 06_POD Design / 106_Solution_ Deployment strategies.txt
- Evidence: Do not increase the replicas of the frontend deployment." So if we do a kubectl get deployments, we can see that the frontend, the original version one has five pods, and then frontend v2 has two pods.

### Operational Entry 1404: certified-kubernetes-application-developer/06_POD Design/106_Solution_ Deployment strategies.extraction.md::E27
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 06_POD Design / 106_Solution_ Deployment strategies.txt
- Evidence: So that's gonna scale it down, if I do a kubectl get deployments now, we should see only one pod for frontend v2 and that's gonna be a one out of six now.

### Operational Entry 1405: certified-kubernetes-application-developer/06_POD Design/106_Solution_ Deployment strategies.extraction.md::E28
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 06_POD Design / 106_Solution_ Deployment strategies.txt
- Evidence: And that should be less than 20%.

### Operational Entry 1406: certified-kubernetes-application-developer/06_POD Design/106_Solution_ Deployment strategies.extraction.md::E44
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 06_POD Design / 106_Solution_ Deployment strategies.txt
- Evidence: So I'll do a kubectl delete deployment frontend, and when we do a get deployment, we should see only frontend v2.

### Operational Entry 1407: certified-kubernetes-application-developer/06_POD Design/106_Solution_ Deployment strategies.extraction.md::E45
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 06_POD Design / 106_Solution_ Deployment strategies.txt
- Evidence: And now if we reload the web app tab, we should see that only version two of the app exists.

### Operational Entry 1408: certified-kubernetes-application-developer/06_POD Design/107_Jobs.extraction.md::E26
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 06_POD Design / 107_Jobs.txt
- Evidence: The default behavior of pods is to attempt to restart the container in an effort to keep it running.

### Operational Entry 1409: certified-kubernetes-application-developer/06_POD Design/107_Jobs.extraction.md::E27
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 06_POD Design / 107_Jobs.txt
- Evidence: This behavior is defined by the property restart policy set on the pod, which is by default set to always.

### Operational Entry 1410: certified-kubernetes-application-developer/06_POD Design/107_Jobs.extraction.md::E29
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 06_POD Design / 107_Jobs.txt
- Evidence: You can override this behavior by setting this property to never or on failure.

### Operational Entry 1411: certified-kubernetes-application-developer/06_POD Design/107_Jobs.extraction.md::E54
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 06_POD Design / 107_Jobs.txt
- Evidence: So the output should be in the pod's standard output.

### Operational Entry 1412: certified-kubernetes-application-developer/06_POD Design/107_Jobs.extraction.md::E71
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 06_POD Design / 107_Jobs.txt
- Evidence: For example, I'm now going to create a job using a different image called Random Error.

### Operational Entry 1413: certified-kubernetes-application-developer/06_POD Design/107_Jobs.extraction.md::E72
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 06_POD Design / 107_Jobs.txt
- Evidence: It's a simple Docker image that randomly completes or fails.

### Operational Entry 1414: certified-kubernetes-application-developer/06_POD Design/107_Jobs.extraction.md::E74
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 06_POD Design / 107_Jobs.txt
- Evidence: The second one fails.

### Operational Entry 1415: certified-kubernetes-application-developer/06_POD Design/107_Jobs.extraction.md::E75
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 06_POD Design / 107_Jobs.txt
- Evidence: So a third one is created and that completes successfully and the fourth one fails.

### Operational Entry 1416: certified-kubernetes-application-developer/06_POD Design/108_CronJobs.extraction.md::E13
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 06_POD Design / 108_CronJobs.txt
- Evidence: Then you have the job template which is the actual job that should be run.

### Operational Entry 1417: certified-kubernetes-application-developer/06_POD Design/110_Solution - Jobs and Cronjobs (optional).extraction.md::E3
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 06_POD Design / 110_Solution - Jobs and Cronjobs (optional).txt
- Evidence: Six is considered a success, and all others are considered a failure.

### Operational Entry 1418: certified-kubernetes-application-developer/06_POD Design/110_Solution - Jobs and Cronjobs (optional).extraction.md::E10
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 06_POD Design / 110_Solution - Jobs and Cronjobs (optional).txt
- Evidence: And, we can see that it is currently in an error status.

### Operational Entry 1419: certified-kubernetes-application-developer/06_POD Design/110_Solution - Jobs and Cronjobs (optional).extraction.md::E18
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 06_POD Design / 110_Solution - Jobs and Cronjobs (optional).txt
- Evidence: And so, what I recommend you do is, if you don't remember how to create a job, I recommend you go to the Kubernetes documentation, and under, Concepts, Workloads, and then, Workload Resources, there's one for jobs, and it's gonna give us an example.

### Operational Entry 1420: certified-kubernetes-application-developer/06_POD Design/110_Solution - Jobs and Cronjobs (optional).extraction.md::E57
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 06_POD Design / 110_Solution - Jobs and Cronjobs (optional).txt
- Evidence: And so, right now, we've had one success, one failure, and, now, we have two successes.

### Operational Entry 1421: certified-kubernetes-application-developer/06_POD Design/110_Solution - Jobs and Cronjobs (optional).extraction.md::E63
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 06_POD Design / 110_Solution - Jobs and Cronjobs (optional).txt
- Evidence: So, we had three successful ones, and one failure.

### Operational Entry 1422: certified-kubernetes-application-developer/07_Services & Networking/111_Network Policies.extraction.md::E13
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 111_Network Policies.txt
- Evidence: The response back to the user, denoted by the dotted lines, do not really matter.

### Operational Entry 1423: certified-kubernetes-application-developer/07_Services & Networking/111_Network Policies.extraction.md::E22
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 111_Network Policies.txt
- Evidence: The pods should be able to communicate with each other without having to configure any additional settings like routes.

### Operational Entry 1424: certified-kubernetes-application-developer/07_Services & Networking/111_Network Policies.extraction.md::E29
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 111_Network Policies.txt
- Evidence: What if we do not want the front end web server to be able to communicate with the database server directly?

### Operational Entry 1425: certified-kubernetes-application-developer/07_Services & Networking/111_Network Policies.extraction.md::E67
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 111_Network Policies.txt
- Evidence: You will not get an error message saying the network solution does not support network policies.

### Operational Entry 1426: certified-kubernetes-application-developer/07_Services & Networking/112_Developing network policies.extraction.md::E9
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 112_Developing network policies.txt
- Evidence: So we don't need to worry about the web pod on or its port, as we don't want to allow any traffic from any other sources other than the API port.

### Operational Entry 1427: certified-kubernetes-application-developer/07_Services & Networking/112_Developing network policies.extraction.md::E11
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 112_Developing network policies.txt
- Evidence: We can also forget about the port on the API pod to which the web server connects, as we don't care about that either.

### Operational Entry 1428: certified-kubernetes-application-developer/07_Services & Networking/112_Developing network policies.extraction.md::E21
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 112_Developing network policies.txt
- Evidence: First, we need to figure out what type of policies should be defined on this network policy object to meet our requirements.

### Operational Entry 1429: certified-kubernetes-application-developer/07_Services & Networking/112_Developing network policies.extraction.md::E32
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 112_Developing network policies.txt
- Evidence: We don't need a separate rule for that.

### Operational Entry 1430: certified-kubernetes-application-developer/07_Services & Networking/112_Developing network policies.extraction.md::E35
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 112_Developing network policies.txt
- Evidence: And you don't need to worry about the response, which is denoted by solid line here.

### Operational Entry 1431: certified-kubernetes-application-developer/07_Services & Networking/114_Solution - Network Policies (optional).extraction.md::E6
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 114_Solution - Network Policies (optional).txt
- Evidence: So we do not have the alias set.

### Operational Entry 1432: certified-kubernetes-application-developer/07_Services & Networking/114_Solution - Network Policies (optional).extraction.md::E109
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 114_Solution - Network Policies (optional).txt
- Evidence: Like the pod selector should be for the internal pod.

### Operational Entry 1433: certified-kubernetes-application-developer/07_Services & Networking/114_Solution - Network Policies (optional).extraction.md::E112
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 114_Solution - Network Policies (optional).txt
- Evidence: And then there should be two rules.

### Operational Entry 1434: certified-kubernetes-application-developer/07_Services & Networking/114_Solution - Network Policies (optional).extraction.md::E142
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 114_Solution - Network Policies (optional).txt
- Evidence: So it should be, so each one will have a to and pod ports.

### Operational Entry 1435: certified-kubernetes-application-developer/07_Services & Networking/114_Solution - Network Policies (optional).extraction.md::E144
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 114_Solution - Network Policies (optional).txt
- Evidence: I'm gonna fix that.

### Operational Entry 1436: certified-kubernetes-application-developer/07_Services & Networking/115_Ingress Networking.extraction.md::E19
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 115_Ingress Networking.txt
- Evidence: For example, we do not want the users to have to type in the IP address every time.

### Operational Entry 1437: certified-kubernetes-application-developer/07_Services & Networking/115_Ingress Networking.extraction.md::E24
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 115_Ingress Networking.txt
- Evidence: Now, you don't want your users to have to remember port number either.

### Operational Entry 1438: certified-kubernetes-application-developer/07_Services & Networking/115_Ingress Networking.extraction.md::E51
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 115_Ingress Networking.txt
- Evidence: But now you don't want your developers to implement it in their applications, as they would do it in different ways, and it's an additional burden for them to develop additional code to handle that.

### Operational Entry 1439: certified-kubernetes-application-developer/07_Services & Networking/115_Ingress Networking.extraction.md::E82
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 115_Ingress Networking.txt
- Evidence: As I mentioned, you do not have an ingress controller on Kubernetes by default, so you must deploy one.

### Operational Entry 1440: certified-kubernetes-application-developer/07_Services & Networking/115_Ingress Networking.extraction.md::E111
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 115_Ingress Networking.txt
- Evidence: With the right permissions to access all of these objects, we should be ready with an ingress controller in its simplest form.

### Operational Entry 1441: certified-kubernetes-application-developer/07_Services & Networking/115_Ingress Networking.extraction.md::E128
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 115_Ingress Networking.txt
- Evidence: So if it's a single backend then you don't really have any rules.

### Operational Entry 1442: certified-kubernetes-application-developer/07_Services & Networking/115_Ingress Networking.extraction.md::E150
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 115_Ingress Networking.txt
- Evidence: And finally, anything other than the ones listed here will go to the fourth rule that will simply show a 404 not found error page.

### Operational Entry 1443: certified-kubernetes-application-developer/07_Services & Networking/115_Ingress Networking.extraction.md::E172
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 115_Ingress Networking.txt
- Evidence: Now back in your application, say a user visits the URL, my online store or com slash listen or slash eat and you don't have an audio streaming or a food delivery service.

### Operational Entry 1444: certified-kubernetes-application-developer/07_Services & Networking/115_Ingress Networking.extraction.md::E174
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 115_Ingress Networking.txt
- Evidence: You can do this by configuring a default back end service to display this 404 not found error page.

### Operational Entry 1445: certified-kubernetes-application-developer/07_Services & Networking/118_Solution_ Ingress Networking - 1.extraction.md::E57
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 118_Solution_ Ingress Networking - 1.txt
- Evidence: And if you look at it, it gives us a 404 not found error.

### Operational Entry 1446: certified-kubernetes-application-developer/07_Services & Networking/118_Solution_ Ingress Networking - 1.extraction.md::E59
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 118_Solution_ Ingress Networking - 1.txt
- Evidence: So we see a 404 error page.

### Operational Entry 1447: certified-kubernetes-application-developer/07_Services & Networking/118_Solution_ Ingress Networking - 1.extraction.md::E70
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 118_Solution_ Ingress Networking - 1.txt
- Evidence: And this one should be fairly easy.

### Operational Entry 1448: certified-kubernetes-application-developer/07_Services & Networking/118_Solution_ Ingress Networking - 1.extraction.md::E74
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 118_Solution_ Ingress Networking - 1.txt
- Evidence: So it's immediately replaced, if we refresh the watch path, now we get 404 error.

### Operational Entry 1449: certified-kubernetes-application-developer/07_Services & Networking/118_Solution_ Ingress Networking - 1.extraction.md::E84
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 118_Solution_ Ingress Networking - 1.txt
- Evidence: So there's nothing called eat here, but we don't know if it is there in another space.

### Operational Entry 1450: certified-kubernetes-application-developer/07_Services & Networking/118_Solution_ Ingress Networking - 1.extraction.md::E86
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 118_Solution_ Ingress Networking - 1.txt
- Evidence: So it doesn't, there's nothing, so it's a 404 error.

### Operational Entry 1451: certified-kubernetes-application-developer/07_Services & Networking/118_Solution_ Ingress Networking - 1.extraction.md::E87
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 118_Solution_ Ingress Networking - 1.txt
- Evidence: So there's a 404 error Now due to increased demand, your business decides to take on an adventure.

### Operational Entry 1452: certified-kubernetes-application-developer/07_Services & Networking/118_Solution_ Ingress Networking - 1.extraction.md::E134
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 118_Solution_ Ingress Networking - 1.txt
- Evidence: Or at least that's the best practice.

### Operational Entry 1453: certified-kubernetes-application-developer/07_Services & Networking/118_Solution_ Ingress Networking - 1.extraction.md::E135
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 118_Solution_ Ingress Networking - 1.txt
- Evidence: The best practice is to create, for different teams who maybe having access to different namespaces, to create their own Ingress resource, right?

### Operational Entry 1454: certified-kubernetes-application-developer/07_Services & Networking/118_Solution_ Ingress Networking - 1.extraction.md::E136
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 118_Solution_ Ingress Networking - 1.txt
- Evidence: So that should be the approach that we should be using.

### Operational Entry 1455: certified-kubernetes-application-developer/07_Services & Networking/118_Solution_ Ingress Networking - 1.extraction.md::E147
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 118_Solution_ Ingress Networking - 1.txt
- Evidence: So that should be the port.

### Operational Entry 1456: certified-kubernetes-application-developer/07_Services & Networking/118_Solution_ Ingress Networking - 1.extraction.md::E164
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 118_Solution_ Ingress Networking - 1.txt
- Evidence: And we don't have any certs for now, so let's just get rid of this.

### Operational Entry 1457: certified-kubernetes-application-developer/07_Services & Networking/118_Solution_ Ingress Networking - 1.extraction.md::E172
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 118_Solution_ Ingress Networking - 1.txt
- Evidence: But you see that it's still it's not working as expected, still gives the 404 error.

### Operational Entry 1458: certified-kubernetes-application-developer/07_Services & Networking/118_Solution_ Ingress Networking - 1.extraction.md::E179
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 118_Solution_ Ingress Networking - 1.txt
- Evidence: So it should be without this pay.

### Operational Entry 1459: certified-kubernetes-application-developer/07_Services & Networking/118_Solution_ Ingress Networking - 1.extraction.md::E181
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 118_Solution_ Ingress Networking - 1.txt
- Evidence: So it should just be just slash right?

### Operational Entry 1460: certified-kubernetes-application-developer/07_Services & Networking/118_Solution_ Ingress Networking - 1.extraction.md::E184
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 118_Solution_ Ingress Networking - 1.txt
- Evidence: So if you look at this, right, the watch, wear or even the pay service, they're just available at this, they don't have a /watch or /wear at the end.

### Operational Entry 1461: certified-kubernetes-application-developer/07_Services & Networking/118_Solution_ Ingress Networking - 1.extraction.md::E187
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 118_Solution_ Ingress Networking - 1.txt
- Evidence: So that's why the error.

### Operational Entry 1462: certified-kubernetes-application-developer/07_Services & Networking/118_Solution_ Ingress Networking - 1.extraction.md::E190
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 118_Solution_ Ingress Networking - 1.txt
- Evidence: Should have Ingress.

### Operational Entry 1463: certified-kubernetes-application-developer/07_Services & Networking/120_Solution_ Ingress Networking - 2.extraction.md::E18
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 120_Solution_ Ingress Networking - 2.txt
- Evidence: So we'll do a kubectl create ConfigMap in this and the name should be as given here and generic configuration, and the Namespace is Ingress space.

### Operational Entry 1464: certified-kubernetes-application-developer/07_Services & Networking/120_Solution_ Ingress Networking - 2.extraction.md::E40
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 120_Solution_ Ingress Networking - 2.txt
- Evidence: There are just, there are some issues.

### Operational Entry 1465: certified-kubernetes-application-developer/07_Services & Networking/120_Solution_ Ingress Networking - 2.extraction.md::E43
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 120_Solution_ Ingress Networking - 2.txt
- Evidence: So it looks like there are some issues.

### Operational Entry 1466: certified-kubernetes-application-developer/07_Services & Networking/120_Solution_ Ingress Networking - 2.extraction.md::E44
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 120_Solution_ Ingress Networking - 2.txt
- Evidence: So there's, there's an issue.

### Operational Entry 1467: certified-kubernetes-application-developer/07_Services & Networking/120_Solution_ Ingress Networking - 2.extraction.md::E45
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 120_Solution_ Ingress Networking - 2.txt
- Evidence: Line 36 looks like a YAML issue.

### Operational Entry 1468: certified-kubernetes-application-developer/07_Services & Networking/120_Solution_ Ingress Networking - 2.extraction.md::E46
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 120_Solution_ Ingress Networking - 2.txt
- Evidence: So let's, let's edit the file and try and fix those.

### Operational Entry 1469: certified-kubernetes-application-developer/07_Services & Networking/120_Solution_ Ingress Networking - 2.extraction.md::E49
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 120_Solution_ Ingress Networking - 2.txt
- Evidence: Yeah, indeed there's an issue with spacing.

### Operational Entry 1470: certified-kubernetes-application-developer/07_Services & Networking/120_Solution_ Ingress Networking - 2.extraction.md::E50
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 120_Solution_ Ingress Networking - 2.txt
- Evidence: So we'll fix that.

### Operational Entry 1471: certified-kubernetes-application-developer/07_Services & Networking/120_Solution_ Ingress Networking - 2.extraction.md::E89
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 120_Solution_ Ingress Networking - 2.txt
- Evidence: So, and the right selector, so expose should take care of using the right selector for this, for the deployment.

### Operational Entry 1472: certified-kubernetes-application-developer/07_Services & Networking/120_Solution_ Ingress Networking - 2.extraction.md::E109
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 120_Solution_ Ingress Networking - 2.txt
- Evidence: We don't need the certificate stuff, so we'll remove that.

### Operational Entry 1473: certified-kubernetes-application-developer/07_Services & Networking/120_Solution_ Ingress Networking - 2.extraction.md::E143
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 120_Solution_ Ingress Networking - 2.txt
- Evidence: So it, it looks like it's going into too many, and you can see the errors here, so it's going into too many redirects.

### Operational Entry 1474: certified-kubernetes-application-developer/07_Services & Networking/120_Solution_ Ingress Networking - 2.extraction.md::E150
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 120_Solution_ Ingress Networking - 2.txt
- Evidence: Then we need to add the annotations, so the annotations for the rewrite target, because as we discussed earlier we don't want it to go to a wear and watch URL and then this is, so to prevent the redirect, SSL redirect we have to add the false, the SSL redirect to false.

### Operational Entry 1475: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E9
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Evidence: Well, don't worry about that for now.

### Operational Entry 1476: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E50
- Type: Command
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Evidence: Docker automatically creates a copy of the file in the read write layer, and I will then be modifying a different version of the file in the read write layer.

### Operational Entry 1477: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E72
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Evidence: You should be able to see all these volumes if you list the contents of the var lib docker volumes folder.

### Operational Entry 1478: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E96
- Type: Command
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
- Evidence: Docker will choose the best storage driver available automatically based on the operating system.

### Operational Entry 1479: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E3
- Type: Command
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes.txt
- Evidence: Docker containers are meant to be transient in nature, which means they are meant to last only for a short period of time.

### Operational Entry 1480: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E31
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes.txt
- Evidence: However, it is not recommended for use in a multi node cluster.

### Operational Entry 1481: certified-kubernetes-application-developer/08_State Persistence/126_Persistent Volumes.extraction.md::E17
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes.txt
- Evidence: Access mode defines how a volume should be mounted on the hosts, whether in a read only mode or read write mode, etc. the supported values are read only, read write once or read write.

### Operational Entry 1482: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E37
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Evidence: However, note that this is an older option and is deprecated now because the Recycle controller originally did a best effort wipe by launching a tiny recycler pod that mounted the volume and ran a shell command like rm rf scrub star to clear files.

### Operational Entry 1483: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E46
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Evidence: Head over to the labs and practice configuring and troubleshooting persistent volumes and volume claims in Kubernetes.

### Operational Entry 1484: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E78
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Evidence: We don't need volume mode.

### Operational Entry 1485: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E97
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Evidence: So, we don't need the advanced selectors.

### Operational Entry 1486: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E103
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Evidence: We don't need a volume mode, and the storage is gonna be 50 Mi.

### Operational Entry 1487: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E136
- Type: Command
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Evidence: Kubectl get pvc.

### Operational Entry 1488: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E147
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Evidence: Should be able to see how to use a persistent volume in a pod.

### Operational Entry 1489: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E153
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Evidence: So, we don't need these lines.

### Operational Entry 1490: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E156
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Evidence: So, that should be it.

### Operational Entry 1491: certified-kubernetes-application-developer/08_State Persistence/132_Storage Classes.extraction.md::E17
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 08_State Persistence / 132_Storage Classes.txt
- Evidence: It's just that you don't have to manually create PVC anymore.

### Operational Entry 1492: certified-kubernetes-application-developer/08_State Persistence/134_Why Stateful Sets_.extraction.md::E9
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 08_State Persistence / 134_Why Stateful Sets_.txt
- Evidence: Our database is now operational.

### Operational Entry 1493: certified-kubernetes-application-developer/08_State Persistence/134_Why Stateful Sets_.extraction.md::E11
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 08_State Persistence / 134_Why Stateful Sets_.txt
- Evidence: To withstand failures, we are tasked to deploy a high availability solution so we deploy additional servers and install MySQL on those as well.

### Operational Entry 1494: certified-kubernetes-application-developer/08_State Persistence/134_Why Stateful Sets_.extraction.md::E15
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 08_State Persistence / 134_Why Stateful Sets_.txt
- Evidence: Now, you don't have to be a database admin or be an expert on MySQL to follow through.

### Operational Entry 1495: certified-kubernetes-application-developer/08_State Persistence/134_Why Stateful Sets_.extraction.md::E22
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 08_State Persistence / 134_Why Stateful Sets_.txt
- Evidence: So the master server should be set up first before deploying the slaves.

### Operational Entry 1496: certified-kubernetes-application-developer/08_State Persistence/134_Why Stateful Sets_.extraction.md::E72
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 08_State Persistence / 134_Why Stateful Sets_.txt
- Evidence: Even if the master fails and the POD is recreated, it would still come up with the same name.

### Operational Entry 1497: certified-kubernetes-application-developer/08_State Persistence/135_Stateful Sets Introduction.extraction.md::E21
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 08_State Persistence / 135_Stateful Sets Introduction.txt
- Evidence: Now, that's the default behavior of a StatefulSet, but you can override that behavior to cause StatefulSet to not follow an ordered launch.

### Operational Entry 1498: certified-kubernetes-application-developer/08_State Persistence/136_Headless Services.extraction.md::E38
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 08_State Persistence / 136_Headless Services.txt
- Evidence: And that should always work.

### Operational Entry 1499: certified-kubernetes-application-developer/08_State Persistence/136_Headless Services.extraction.md::E64
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 08_State Persistence / 136_Headless Services.txt
- Evidence: When creating a stateful set, you do not need to specify a subdomain or host name.

### Operational Entry 1500: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E20
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets.txt
- Evidence: The pods don't want to share data.

### Operational Entry 1501: certified-kubernetes-application-developer/08_State Persistence/137_Storage in StatefulSets.extraction.md::E38
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets.txt
- Evidence: State full sets do not automatically delete the PVC or the associated volume to the pod.

### Operational Entry 1502: certified-kubernetes-application-developer/09_Security/139_Authentication.extraction.md::E38
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 09_Security / 139_Authentication.txt
- Evidence: Remember that this authentication mechanism that stores usernames, passwords, and tokens in clear text in a static file is not a recommended approach as it is insecure.

### Operational Entry 1503: certified-kubernetes-application-developer/09_Security/142_KubeConfig.extraction.md::E13
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 09_Security / 142_KubeConfig.txt
- Evidence: So if you create the cube config file there, you don't have to specify the path to the file explicitly in the cube control command.

### Operational Entry 1504: certified-kubernetes-application-developer/09_Security/142_KubeConfig.extraction.md::E27
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 09_Security / 142_KubeConfig.txt
- Evidence: That way, you don't have to specify the user certificates and server address in each and every kube control command you run.

### Operational Entry 1505: certified-kubernetes-application-developer/09_Security/142_KubeConfig.extraction.md::E49
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 09_Security / 142_KubeConfig.txt
- Evidence: Once the file is ready, remember that you don't have to create any object like you usually do for other Kubernetes objects.

### Operational Entry 1506: certified-kubernetes-application-developer/09_Security/142_KubeConfig.extraction.md::E53
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 09_Security / 142_KubeConfig.txt
- Evidence: Which one should it start with?

### Operational Entry 1507: certified-kubernetes-application-developer/09_Security/142_KubeConfig.extraction.md::E61
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 09_Security / 142_KubeConfig.txt
- Evidence: As we discussed earlier, if you do not specify which kubeconfig file to use, it ends up using the default file located in the folder kube in the user's home directory.

### Operational Entry 1508: certified-kubernetes-application-developer/09_Security/142_KubeConfig.extraction.md::E91
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 09_Security / 142_KubeConfig.txt
- Evidence: Practice working with Kubeconfig files and troubleshooting issues.

### Operational Entry 1509: certified-kubernetes-application-developer/09_Security/144_Solution KubeConfig.extraction.md::E30
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 09_Security / 144_Solution KubeConfig.txt
- Evidence: So, you shouldn't assume that this is the actual user, configured, but it so happens that in this case, the name and convention is this user at the cluster.

### Operational Entry 1510: certified-kubernetes-application-developer/09_Security/144_Solution KubeConfig.extraction.md::E31
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 09_Security / 144_Solution KubeConfig.txt
- Evidence: But you should always look at this field.

### Operational Entry 1511: certified-kubernetes-application-developer/09_Security/144_Solution KubeConfig.extraction.md::E75
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 09_Security / 144_Solution KubeConfig.txt
- Evidence: Now, we don't want to have to specify the cube config file option, on each command.

### Operational Entry 1512: certified-kubernetes-application-developer/09_Security/144_Solution KubeConfig.extraction.md::E81
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 09_Security / 144_Solution KubeConfig.txt
- Evidence: So, going forward, we don't have to...

### Operational Entry 1513: certified-kubernetes-application-developer/09_Security/144_Solution KubeConfig.extraction.md::E87
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 09_Security / 144_Solution KubeConfig.txt
- Evidence: However, something seems to be wrong, identify and fix the issue.

### Operational Entry 1514: certified-kubernetes-application-developer/09_Security/144_Solution KubeConfig.extraction.md::E100
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 09_Security / 144_Solution KubeConfig.txt
- Evidence: So that's fixed.

### Operational Entry 1515: certified-kubernetes-application-developer/09_Security/145_API Groups.extraction.md::E35
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 09_Security / 145_API Groups.txt
- Evidence: That way you don't have to specify those in the curl command.

### Operational Entry 1516: certified-kubernetes-application-developer/09_Security/146_Authorization.extraction.md::E9
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 09_Security / 146_Authorization.txt
- Evidence: But we don't want all of them to have the same level of access as us.

### Operational Entry 1517: certified-kubernetes-application-developer/09_Security/146_Authorization.extraction.md::E10
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 09_Security / 146_Authorization.txt
- Evidence: For example, we don't want the developers to have access to modify our cluster configuration, like adding or deleting nodes or the storage or networking configurations.

### Operational Entry 1518: certified-kubernetes-application-developer/09_Security/146_Authorization.extraction.md::E22
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 09_Security / 146_Authorization.txt
- Evidence: In the earlier lectures, when we discussed about certificates, we discussed that the Cubelets should be part of the system nodes group and have a name prefixed with system node, so any requests coming from a user with the name system node and part of the system nodes group is authorized by the node authorizer and are granted these privileges.

### Operational Entry 1519: certified-kubernetes-application-developer/09_Security/146_Authorization.extraction.md::E49
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 09_Security / 146_Authorization.txt
- Evidence: You can have Kubernetes make an API call to the open policy agent with the information about the user and his access requirements, and have the open policy agent decide if the user should be permitted or not.

### Operational Entry 1520: certified-kubernetes-application-developer/09_Security/146_Authorization.extraction.md::E60
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 09_Security / 146_Authorization.txt
- Evidence: If you don't specify this option, it is set to always allow by default.

### Operational Entry 1521: certified-kubernetes-application-developer/09_Security/147_Role Based Access Controls.extraction.md::E44
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 09_Security / 147_Role Based Access Controls.txt
- Evidence: You don't have to authenticate as the user to test it.

### Operational Entry 1522: certified-kubernetes-application-developer/09_Security/149_Solution Role Based Access Controls.extraction.md::E97
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 09_Security / 149_Solution Role Based Access Controls.txt
- Evidence: But there is an issue.

### Operational Entry 1523: certified-kubernetes-application-developer/09_Security/149_Solution Role Based Access Controls.extraction.md::E98
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 09_Security / 149_Solution Role Based Access Controls.txt
- Evidence: So investigate and fix the issue.

### Operational Entry 1524: certified-kubernetes-application-developer/09_Security/149_Solution Role Based Access Controls.extraction.md::E120
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 09_Security / 149_Solution Role Based Access Controls.txt
- Evidence: So that's fixed.

### Operational Entry 1525: certified-kubernetes-application-developer/09_Security/149_Solution Role Based Access Controls.extraction.md::E144
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 09_Security / 149_Solution Role Based Access Controls.txt
- Evidence: So actually, it should be deployments.

### Operational Entry 1526: certified-kubernetes-application-developer/09_Security/149_Solution Role Based Access Controls.extraction.md::E149
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 09_Security / 149_Solution Role Based Access Controls.txt
- Evidence: Yep, so that should be the fix to this.

### Operational Entry 1527: certified-kubernetes-application-developer/09_Security/150_Cluster Roles.extraction.md::E4
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 09_Security / 150_Cluster Roles.txt
- Evidence: If you don't specify a namespace, they are created in the default namespace and control access within that namespace alone.

### Operational Entry 1528: certified-kubernetes-application-developer/09_Security/150_Cluster Roles.extraction.md::E15
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 09_Security / 150_Cluster Roles.txt
- Evidence: If you don't specify a namespace, they're created in the default namespace.

### Operational Entry 1529: certified-kubernetes-application-developer/09_Security/150_Cluster Roles.extraction.md::E17
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 09_Security / 150_Cluster Roles.txt
- Evidence: The cluster scoped resources are those where you don't specify a namespace when you create them.

### Operational Entry 1530: certified-kubernetes-application-developer/09_Security/152_Solution Cluster Roles.extraction.md::E46
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 09_Security / 152_Solution Cluster Roles.txt
- Evidence: So basically we should be able to do, we should be able to create any role and role bindings as we want.

### Operational Entry 1531: certified-kubernetes-application-developer/09_Security/152_Solution Cluster Roles.extraction.md::E47
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 09_Security / 152_Solution Cluster Roles.txt
- Evidence: As long as this command works this exercise should be good.

### Operational Entry 1532: certified-kubernetes-application-developer/09_Security/152_Solution Cluster Roles.extraction.md::E53
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 09_Security / 152_Solution Cluster Roles.txt
- Evidence: So we're going to name this, let's say Michelle role, and we should have a get list and watch.

### Operational Entry 1533: certified-kubernetes-application-developer/09_Security/152_Solution Cluster Roles.extraction.md::E79
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 09_Security / 152_Solution Cluster Roles.txt
- Evidence: So if you ever want to know what the short names are for some of these this is the command that you should look at.

### Operational Entry 1534: certified-kubernetes-application-developer/09_Security/152_Solution Cluster Roles.extraction.md::E86
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 09_Security / 152_Solution Cluster Roles.txt
- Evidence: So you should be able to see those here.

### Operational Entry 1535: certified-kubernetes-application-developer/09_Security/153_Admission Controllers.extraction.md::E22
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 09_Security / 153_Admission Controllers.txt
- Evidence: For example, when a pod creation request comes in, you'd like to review the configuration file and look at the image name and say that you do not want to allow images from a public Docker Hub registry.

### Operational Entry 1536: certified-kubernetes-application-developer/09_Security/153_Admission Controllers.extraction.md::E24
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 09_Security / 153_Admission Controllers.txt
- Evidence: Or say for example, you'd like to say if the container is running as the root user, then you do not want to allow that request or allow certain capabilities only, or to enforce that the metadata always contains labels.

### Operational Entry 1537: certified-kubernetes-application-developer/09_Security/153_Admission Controllers.extraction.md::E34
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 09_Security / 153_Admission Controllers.txt
- Evidence: Admission controller rejects requests to namespaces that do not exist, and there are many more admission controllers available.

### Operational Entry 1538: certified-kubernetes-application-developer/09_Security/153_Admission Controllers.extraction.md::E39
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 09_Security / 153_Admission Controllers.txt
- Evidence: If I run this command, it would throw an error that says the namespace blue is not found.

### Operational Entry 1539: certified-kubernetes-application-developer/09_Security/153_Admission Controllers.extraction.md::E63
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 09_Security / 153_Admission Controllers.txt
- Evidence: Admission controllers are deprecated and is now replaced by namespace lifecycle admission controller.

### Operational Entry 1540: certified-kubernetes-application-developer/09_Security/155_Solution_ Admission Controllers.extraction.md::E14
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 09_Security / 155_Solution_ Admission Controllers.txt
- Evidence: So it says admission plugins that should be enabled in addition to the default enabled ones.

### Operational Entry 1541: certified-kubernetes-application-developer/09_Security/155_Solution_ Admission Controllers.extraction.md::E21
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 09_Security / 155_Solution_ Admission Controllers.txt
- Evidence: However, we don't see NamespaceAutoProvision in this list.

### Operational Entry 1542: certified-kubernetes-application-developer/09_Security/155_Solution_ Admission Controllers.extraction.md::E29
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 09_Security / 155_Solution_ Admission Controllers.txt
- Evidence: And if you don't wanna go into vi we can always just grep for this.

### Operational Entry 1543: certified-kubernetes-application-developer/09_Security/155_Solution_ Admission Controllers.extraction.md::E36
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 09_Security / 155_Solution_ Admission Controllers.txt
- Evidence: And we can see that it throws an error because the namespace blue was not found.

### Operational Entry 1544: certified-kubernetes-application-developer/09_Security/155_Solution_ Admission Controllers.extraction.md::E37
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 09_Security / 155_Solution_ Admission Controllers.txt
- Evidence: Now the reason this ultimately failed and it threw that error was because Kubernetes has a NamespaceExist admission controller enabled which rejects requests and namespaces that do not exist.

### Operational Entry 1545: certified-kubernetes-application-developer/09_Security/155_Solution_ Admission Controllers.extraction.md::E54
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 09_Security / 155_Solution_ Admission Controllers.txt
- Evidence: So when we run this, what should happen is, it should now create a namespace called blue.

### Operational Entry 1546: certified-kubernetes-application-developer/09_Security/155_Solution_ Admission Controllers.extraction.md::E57
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 09_Security / 155_Solution_ Admission Controllers.txt
- Evidence: And this next question is just pointing out that the namespace exists in the namespace auto provision and mission controllers are deprecated and are now replaced by the namespace lifecycle admission controller.

### Operational Entry 1547: certified-kubernetes-application-developer/09_Security/156_Validating and Mutating Admission Controllers.extraction.md::E25
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 09_Security / 156_Validating and Mutating Admission Controllers.txt
- Evidence: And when a request goes through these admission controllers, if any admission controller rejects the request, the request is rejected and an error message is shown to the user.

### Operational Entry 1548: certified-kubernetes-application-developer/09_Security/156_Validating and Mutating Admission Controllers.extraction.md::E60
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 09_Security / 156_Validating and Mutating Admission Controllers.txt
- Evidence: So don't worry if you don't fully understand this piece of code.

### Operational Entry 1549: certified-kubernetes-application-developer/09_Security/156_Validating and Mutating Admission Controllers.extraction.md::E83
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 09_Security / 156_Validating and Mutating Admission Controllers.txt
- Evidence: So a certificate bundle should be configured.

### Operational Entry 1550: certified-kubernetes-application-developer/09_Security/156_Validating and Mutating Admission Controllers.extraction.md::E93
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 09_Security / 156_Validating and Mutating Admission Controllers.txt
- Evidence: And that should be it.

### Operational Entry 1551: certified-kubernetes-application-developer/09_Security/158_Solution_ Validating and Mutating Admission Controllers.extraction.md::E53
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 09_Security / 158_Solution_ Validating and Mutating Admission Controllers.txt
- Evidence: And so if we look for a security context, we should see what provided.

### Operational Entry 1552: certified-kubernetes-application-developer/09_Security/158_Solution_ Validating and Mutating Admission Controllers.extraction.md::E63
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 09_Security / 158_Solution_ Validating and Mutating Admission Controllers.txt
- Evidence: So, do kubectl apply-f and we should see that it's going to reject this because we are asking to runAsNonRoot: true but then run as user set to zero, which is the root user so.

### Operational Entry 1553: certified-kubernetes-application-developer/09_Security/159_API Versions.extraction.md::E26
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 09_Security / 159_API Versions.txt
- Evidence: Now, after some time the Alpha version and once all the major bug are fixed and it has end to end test, it moves to the Beta stage.

### Operational Entry 1554: certified-kubernetes-application-developer/09_Security/159_API Versions.extraction.md::E37
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 09_Security / 159_API Versions.txt
- Evidence: Now, since most bugs are fixed in Alpha and Beta stages in the API group, this API group is highly reliable and it'll be supported and present in many feature releases to come.

### Operational Entry 1555: certified-kubernetes-application-developer/09_Security/159_API Versions.extraction.md::E63
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 09_Security / 159_API Versions.txt
- Evidence: They don't necessarily have to be the same.

### Operational Entry 1556: certified-kubernetes-application-developer/09_Security/159_API Versions.extraction.md::E73
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 09_Security / 159_API Versions.txt
- Evidence: So if you'd like to try those out what you could do is you could actually add those to the runtime config parameter and the APIs here are comma separated and you would like to enable and specify the APIs that you would like to enable.

### Operational Entry 1557: certified-kubernetes-application-developer/09_Security/159_API Versions.extraction.md::E76
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 09_Security / 159_API Versions.txt
- Evidence: And once done you should be able to use that API and test it out.

### Operational Entry 1558: certified-kubernetes-application-developer/09_Security/160_API Deprecations.extraction.md::E2
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 09_Security / 160_API Deprecations.txt
- Evidence: So we discussed that a single API group can support multiple versions at a time, but why do you need to support multiple versions and how many should you support?

### Operational Entry 1559: certified-kubernetes-application-developer/09_Security/160_API Deprecations.extraction.md::E25
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 09_Security / 160_API Deprecations.txt
- Evidence: API objects must be able to round trip between API versions in a given release without information loss with the exception of whole risk resources that do not exist in some versions.

### Operational Entry 1560: certified-kubernetes-application-developer/09_Security/160_API Deprecations.extraction.md::E26
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 09_Security / 160_API Deprecations.txt
- Evidence: If we create an API, an object in the V one alpha one version and it is converted to V one alpha two and then back to V one alpha one, it should be the same as the original V one alpha one version.

### Operational Entry 1561: certified-kubernetes-application-developer/09_Security/160_API Deprecations.extraction.md::E33
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 09_Security / 160_API Deprecations.txt
- Evidence: So continuing with our story we fixed some more bugs and are now ready for beta.

### Operational Entry 1562: certified-kubernetes-application-developer/09_Security/160_API Deprecations.extraction.md::E38
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 09_Security / 160_API Deprecations.txt
- Evidence: And finally we want now we don't have to have all the versions available at all times like this.

### Operational Entry 1563: certified-kubernetes-application-developer/09_Security/160_API Deprecations.extraction.md::E40
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 09_Security / 160_API Deprecations.txt
- Evidence: So let's look at what are the rules and best practices around that.

### Operational Entry 1564: certified-kubernetes-application-developer/09_Security/160_API Deprecations.extraction.md::E64
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 09_Security / 160_API Deprecations.txt
- Evidence: The V1 beta one version is now deprecated a note that we want beta one version is only deprecated but not removed.

### Operational Entry 1565: certified-kubernetes-application-developer/09_Security/160_API Deprecations.extraction.md::E66
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 09_Security / 160_API Deprecations.txt
- Evidence: If you were to use the we want beta one API at this point it would display a deprecation warning.

### Operational Entry 1566: certified-kubernetes-application-developer/09_Security/160_API Deprecations.extraction.md::E76
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 09_Security / 160_API Deprecations.txt
- Evidence: V one beta two is still the preferred or storage version because this is the first release that has the V one version, but it now becomes deprecated.

### Operational Entry 1567: certified-kubernetes-application-developer/09_Security/160_API Deprecations.extraction.md::E77
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 09_Security / 160_API Deprecations.txt
- Evidence: So now V one beta one and V one beta two are deprecated.

### Operational Entry 1568: certified-kubernetes-application-developer/09_Security/160_API Deprecations.extraction.md::E78
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 09_Security / 160_API Deprecations.txt
- Evidence: In the next release, we can remove V one beta one version because as per rule four A a beta version needs to be supported for three releases. beta one version was deprecated in release X plus three and it's been around for X plus four and X plus five.

### Operational Entry 1569: certified-kubernetes-application-developer/09_Security/160_API Deprecations.extraction.md::E84
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 09_Security / 160_API Deprecations.txt
- Evidence: Now, if you look at the releases in the past every time we had a new version available, we deprecated we immediately deprecated the older version.

### Operational Entry 1570: certified-kubernetes-application-developer/09_Security/160_API Deprecations.extraction.md::E87
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 09_Security / 160_API Deprecations.txt
- Evidence: And rule three says an API version in a given track may not be deprecated until a new API version, at least as stable is released.

### Operational Entry 1571: certified-kubernetes-application-developer/09_Security/160_API Deprecations.extraction.md::E92
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 09_Security / 160_API Deprecations.txt
- Evidence: Now, as we have been seeing when Kubernetes clusters are upgraded, we have new APIs being added and old ones being deprecated and removed.

### Operational Entry 1572: certified-kubernetes-application-developer/09_Security/162_Solution_ API Versions_Deprecations.extraction.md::E41
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 09_Security / 162_Solution_ API Versions_Deprecations.txt
- Evidence: And so the backup should be here.

### Operational Entry 1573: certified-kubernetes-application-developer/09_Security/162_Solution_ API Versions_Deprecations.extraction.md::E64
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 09_Security / 162_Solution_ API Versions_Deprecations.txt
- Evidence: And we should see the help page come up.

### Operational Entry 1574: certified-kubernetes-application-developer/09_Security/162_Solution_ API Versions_Deprecations.extraction.md::E67
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 09_Security / 162_Solution_ API Versions_Deprecations.txt
- Evidence: And with the help of the kubectl convert command we need to change the deprecated API version to the networking .k8.io/v1.

### Operational Entry 1575: certified-kubernetes-application-developer/09_Security/163_Custom Resource Definition.extraction.md::E11
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 09_Security / 163_Custom Resource Definition.txt
- Evidence: Now we don't have to create a controller because the deployment controller is built in to the Kubernetes and is already available.

### Operational Entry 1576: certified-kubernetes-application-developer/09_Security/163_Custom Resource Definition.extraction.md::E18
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 09_Security / 163_Custom Resource Definition.txt
- Evidence: You don't have to understand go or understand this code.

### Operational Entry 1577: certified-kubernetes-application-developer/09_Security/163_Custom Resource Definition.extraction.md::E58
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 09_Security / 163_Custom Resource Definition.txt
- Evidence: If you tried to create a flight ticket resource now on your Kubernetes cluster, you will see that it fails with the error message that says there is.

### Operational Entry 1578: certified-kubernetes-application-developer/09_Security/163_Custom Resource Definition.extraction.md::E60
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 09_Security / 163_Custom Resource Definition.txt
- Evidence: Now this is because you can't simply create any resource that you want without configuring it in the Kubernetes API, without first telling Kubernetes that it should allow us to create a flight ticket object.

### Operational Entry 1579: certified-kubernetes-application-developer/09_Security/163_Custom Resource Definition.extraction.md::E108
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 09_Security / 163_Custom Resource Definition.txt
- Evidence: If the value is entered by the user does not fall within this range, the resource will not be created and will return an error message.

### Operational Entry 1580: certified-kubernetes-application-developer/09_Security/163_Custom Resource Definition.extraction.md::E114
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 09_Security / 163_Custom Resource Definition.txt
- Evidence: It's not actually going to do anything about these resources because we don't yet have a controller for it.

### Operational Entry 1581: certified-kubernetes-application-developer/09_Security/165_Custom Controllers.extraction.md::E30
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 09_Security / 165_Custom Controllers.txt
- Evidence: Now you don't want to build and run it each time.

### Operational Entry 1582: certified-kubernetes-application-developer/09_Security/165_Custom Controllers.extraction.md::E33
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 09_Security / 165_Custom Controllers.txt
- Evidence: Now in the exam, I don't expect them to ask a question about building a Custom Controller as it requires more coding knowledge.

### Operational Entry 1583: certified-kubernetes-application-developer/09_Security/165_Custom Controllers.extraction.md::E34
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 09_Security / 165_Custom Controllers.txt
- Evidence: So I don't anticipate a question on this.

### Operational Entry 1584: certified-kubernetes-application-developer/09_Security/166_Operator Framework.extraction.md::E11
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 09_Security / 166_Operator Framework.txt
- Evidence: So Kubernetes operators do what a human operator typically will do to manage a specific application such as installing it, maintaining it, by taking backups, and restoring backups in case of disasters, fixing any issues that may come across the application, et cetera.

### Operational Entry 1585: certified-kubernetes-application-developer/09_Security/166_Operator Framework.extraction.md::E20
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 09_Security / 166_Operator Framework.txt
- Evidence: For now, I do not anticipate any questions on operators itself in the exam.

### Operational Entry 1586: certified-kubernetes-application-developer/10_Helm Fundamentals/167_Helm Introduction.extraction.md::E18
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 10_Helm Fundamentals / 167_Helm Introduction.txt
- Evidence: So we don't change the wrong thing in the wrong place.

### Operational Entry 1587: certified-kubernetes-application-developer/10_Helm Fundamentals/167_Helm Introduction.extraction.md::E26
- Type: Command
- Source: certified-kubernetes-application-developer / 10_Helm Fundamentals / 167_Helm Introduction.txt
- Evidence: Helm changes the paradigm.

### Operational Entry 1588: certified-kubernetes-application-developer/10_Helm Fundamentals/167_Helm Introduction.extraction.md::E31
- Type: Command
- Source: certified-kubernetes-application-developer / 10_Helm Fundamentals / 167_Helm Introduction.txt
- Evidence: Helm, however, is built from the ground up to know about such stuff.

### Operational Entry 1589: certified-kubernetes-application-developer/10_Helm Fundamentals/167_Helm Introduction.extraction.md::E33
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 10_Helm Fundamentals / 167_Helm Introduction.txt
- Evidence: It looks at those objects as part of a big package as a group, whenever we need to perform an action we don't tell Helm the objects it should touch.

### Operational Entry 1590: certified-kubernetes-application-developer/10_Helm Fundamentals/167_Helm Introduction.extraction.md::E35
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 10_Helm Fundamentals / 167_Helm Introduction.txt
- Evidence: And based on the package name, it then knows what objects it should change and how.

### Operational Entry 1591: certified-kubernetes-application-developer/10_Helm Fundamentals/167_Helm Introduction.extraction.md::E42
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 10_Helm Fundamentals / 167_Helm Introduction.txt
- Evidence: Fortunately, we don't have to go through such horrors as we get a game installer.

### Operational Entry 1592: certified-kubernetes-application-developer/10_Helm Fundamentals/167_Helm Introduction.extraction.md::E45
- Type: Command
- Source: certified-kubernetes-application-developer / 10_Helm Fundamentals / 167_Helm Introduction.txt
- Evidence: Helm does a similar thing and more for the YAML files and Kubernetes objects that make up our application.

### Operational Entry 1593: certified-kubernetes-application-developer/10_Helm Fundamentals/167_Helm Introduction.extraction.md::E48
- Type: Command
- Source: certified-kubernetes-application-developer / 10_Helm Fundamentals / 167_Helm Introduction.txt
- Evidence: Helm proceeds to automatically add every necessary object to Kubernetes without bothering us with the details.

### Operational Entry 1594: certified-kubernetes-application-developer/10_Helm Fundamentals/167_Helm Introduction.extraction.md::E53
- Type: Command
- Source: certified-kubernetes-application-developer / 10_Helm Fundamentals / 167_Helm Introduction.txt
- Evidence: Helm will know what individual objects need to change to make this happen.

### Operational Entry 1595: certified-kubernetes-application-developer/10_Helm Fundamentals/167_Helm Introduction.extraction.md::E57
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 10_Helm Fundamentals / 167_Helm Introduction.txt
- Evidence: We don't need to remember each object that belongs to one of our apps anymore or use 10 separate commands to remove everything.

### Operational Entry 1596: certified-kubernetes-application-developer/10_Helm Fundamentals/167_Helm Introduction.extraction.md::E58
- Type: Command
- Source: certified-kubernetes-application-developer / 10_Helm Fundamentals / 167_Helm Introduction.txt
- Evidence: Helm does all the work.

### Operational Entry 1597: certified-kubernetes-application-developer/10_Helm Fundamentals/167_Helm Introduction.extraction.md::E62
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 10_Helm Fundamentals / 167_Helm Introduction.txt
- Evidence: This takes a huge burden of our shoulders as we don't have to micromanage each Kubernetes object anymore.

### Operational Entry 1598: certified-kubernetes-application-developer/10_Helm Fundamentals/167_Helm Introduction.extraction.md::E63
- Type: Command
- Source: certified-kubernetes-application-developer / 10_Helm Fundamentals / 167_Helm Introduction.txt
- Evidence: Helm can do that for us.

### Operational Entry 1599: certified-kubernetes-application-developer/10_Helm Fundamentals/170_Solution_ Install Helm.extraction.md::E8
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 10_Helm Fundamentals / 170_Solution_ Install Helm.txt
- Evidence: And at this point, Helm should be installed.

### Operational Entry 1600: certified-kubernetes-application-developer/10_Helm Fundamentals/170_Solution_ Install Helm.extraction.md::E13
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 10_Helm Fundamentals / 170_Solution_ Install Helm.txt
- Evidence: And we can see here for enabling verbose output, you pass in the --debug flag.

### Operational Entry 1601: certified-kubernetes-application-developer/10_Helm Fundamentals/173_Solution_ Helm Concepts.extraction.md::E12
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 10_Helm Fundamentals / 173_Solution_ Helm Concepts.txt
- Evidence: For the next question, we have to install drupal helm chart from the bitnami repository, and the release name should be bravo.

### Operational Entry 1602: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/174_Kustomize Problem Statement & idealogy.extraction.md::E26
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 174_Kustomize Problem Statement & idealogy.txt
- Evidence: There's no issues, there's no limitations with the solution.

### Operational Entry 1603: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/174_Kustomize Problem Statement & idealogy.extraction.md::E31
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 174_Kustomize Problem Statement & idealogy.txt
- Evidence: Well, now when we create a service.yml file, we have to remember to copy it to all three directories, because we don't want it to be missing from one of our environments.

### Operational Entry 1604: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/174_Kustomize Problem Statement & idealogy.extraction.md::E39
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 174_Kustomize Problem Statement & idealogy.txt
- Evidence: We need a better solution to addressing this issue.

### Operational Entry 1605: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/174_Kustomize Problem Statement & idealogy.extraction.md::E42
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 174_Kustomize Problem Statement & idealogy.txt
- Evidence: So let's take a look at how Kustomize addresses this issue.

### Operational Entry 1606: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/174_Kustomize Problem Statement & idealogy.extraction.md::E45
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 174_Kustomize Problem Statement & idealogy.txt
- Evidence: What we don't wanna do is copy all of our configs across each and every environment.

### Operational Entry 1607: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/174_Kustomize Problem Statement & idealogy.extraction.md::E59
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 174_Kustomize Problem Statement & idealogy.txt
- Evidence: Now, we already know we don't want it to be 1 in staging and production, and we only want it to be 1 in development, but we'll worry about that in a second.

### Operational Entry 1608: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/174_Kustomize Problem Statement & idealogy.extraction.md::E61
- Type: Operational Insight
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 174_Kustomize Problem Statement & idealogy.txt
- Evidence: So the overlays allow us to customize the behavior on a per-environment basis.

### Operational Entry 1609: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/174_Kustomize Problem Statement & idealogy.extraction.md::E76
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 174_Kustomize Problem Statement & idealogy.txt
- Evidence: And each one of these environments are going to have the values that you want to overwrite and change from the base config, as well as any new resources that should only be added exclusively for that specific environment.

### Operational Entry 1610: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/174_Kustomize Problem Statement & idealogy.extraction.md::E80
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 174_Kustomize Problem Statement & idealogy.txt
- Evidence: The great part about Kustomize is it actually comes built in with kubectl, so you don't have to install any other packages.

### Operational Entry 1611: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/174_Kustomize Problem Statement & idealogy.extraction.md::E82
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 174_Kustomize Problem Statement & idealogy.txt
- Evidence: With Kustomize, we're not actually making use of any sort of templating system like we do in Helm, and that's nice, because we don't actually have to learn a templating language.

### Operational Entry 1612: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/175_Kustomize vs Helm.extraction.md::E1
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 175_Kustomize vs Helm.txt
- Evidence: (bouncy piano music) Instructor: Before we move on to the next section, I wanted to talk about an alternative tool to Kustomize, and this tool is called Helm, and I wanted to just provide a brief, high level overview of how Helm addresses the same issue of providing modification to your Kubernetes manifest on a per environment basis.

### Operational Entry 1613: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/175_Kustomize vs Helm.extraction.md::E2
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 175_Kustomize vs Helm.txt
- Evidence: And I think it's good to see this just because, you know, when you're trying to figure out what is the best tool for your project or application, you should have a good understanding of how both of these tools work and what are the pros and cons of each one so that you can make the best decision for your project.

### Operational Entry 1614: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/175_Kustomize vs Helm.extraction.md::E3
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 175_Kustomize vs Helm.txt
- Evidence: So the way that Helm actually tackles this issue is that it makes use of a go templating syntax to assign variables to various properties.

### Operational Entry 1615: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/175_Kustomize vs Helm.extraction.md::E28
- Type: Command
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 175_Kustomize vs Helm.txt
- Evidence: Helm is actually a complete package manager for your application.

### Operational Entry 1616: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/176_Installation_Setup.extraction.md::E4
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 176_Installation_Setup.txt
- Evidence: So, on your terminal, run the following command which will download the script, and that script will pretty much be responsible for installing Kustomize for you, so you don't have to run any other commands, it's all done in that script itself.

### Operational Entry 1617: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/176_Installation_Setup.extraction.md::E6
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 176_Installation_Setup.txt
- Evidence: If you don't see an output similar to this, that means, most likely, there was an issue with an installation or maybe the environment variables weren't updated in the current terminal session.

### Operational Entry 1618: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/176_Installation_Setup.extraction.md::E8
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 176_Installation_Setup.txt
- Evidence: If there's still an issue, then rerun the installation script again.

### Operational Entry 1619: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/177_kustomization.yaml file.extraction.md::E10
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 177_kustomization.yaml file.txt
- Evidence: The first is it's going to contain a list of all of the Kubernetes resources that should be managed by kustomize.

### Operational Entry 1620: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/177_kustomization.yaml file.extraction.md::E28
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 177_kustomization.yaml file.txt
- Evidence: We learned that kustomize will look for a kustomization file, which is going to contain the two following things; a list of all of the Kubernetes resources or manifests that kustomize should manage, as well as all of the customizations that should be applied.

### Operational Entry 1621: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/178_Kustomize Output.extraction.md::E3
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 178_Kustomize Output.txt
- Evidence: And what's important to understand is that we don't actually deploy or apply any of these configs.

### Operational Entry 1622: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/180_Managing Directories.extraction.md::E36
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 180_Managing Directories.txt
- Evidence: So, kustomize has helped us address the issue of splitting all of our configs into separate directories.

### Operational Entry 1623: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/181_Managing Directories Demo.extraction.md::E58
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 181_Managing Directories Demo.txt
- Evidence: And just to remind you guys, if you don't wanna use the kustomize CLI, you can actually use the built-in version in kubectl.

### Operational Entry 1624: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/181_Managing Directories Demo.extraction.md::E67
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 181_Managing Directories Demo.txt
- Evidence: We don't need these anymore and we'll come back to fixing up this file, but I'm gonna go ahead and create a customizations file in all three directories.

### Operational Entry 1625: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/181_Managing Directories Demo.extraction.md::E81
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 181_Managing Directories Demo.txt
- Evidence: So in this case, you know, we don't need to provide a path to a specific file, we just provide a path to the directory.

### Operational Entry 1626: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/181_Managing Directories Demo.extraction.md::E83
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 181_Managing Directories Demo.txt
- Evidence: So, you only have to provide the path of the folder, and as long as you have a customizations file in there, it should be able to handle the rest.

### Operational Entry 1627: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/183_Common Transformers.extraction.md::E4
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 183_Common Transformers.txt
- Evidence: And before we even go over what that is and what they do, let's take a look at the issue they're trying to address first.

### Operational Entry 1628: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/183_Common Transformers.extraction.md::E9
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 183_Common Transformers.txt
- Evidence: Well, let's say that we want to specifically add a label in this case, so something like org:KodeKloud, or maybe we wanna go into all of our Kubernetes objects and add a specific prefix or suffix to the name.

### Operational Entry 1629: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/183_Common Transformers.extraction.md::E13
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 183_Common Transformers.txt
- Evidence: And so doing this by hand is not a scalable solution, and it's gonna be very time-consuming and it's going to lead to a lot of errors.

### Operational Entry 1630: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/183_Common Transformers.extraction.md::E19
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 183_Common Transformers.txt
- Evidence: We also have the namePrefix and suffix transformation.

### Operational Entry 1631: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/183_Common Transformers.extraction.md::E20
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 183_Common Transformers.txt
- Evidence: This is going to allow you to add a prefix or suffix to the names of all of your Kubernetes resources.

### Operational Entry 1632: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/183_Common Transformers.extraction.md::E35
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 183_Common Transformers.txt
- Evidence: For the prefix, suffix transformer, we can add in a specific prefix or suffix by providing the name prefix or the name suffix properties.

### Operational Entry 1633: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/183_Common Transformers.extraction.md::E36
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 183_Common Transformers.txt
- Evidence: And that's gonna map to the prefix of the name as well as the suffix of the name as well.

### Operational Entry 1634: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/184_Image Transformers.extraction.md::E15
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 184_Image Transformers.txt
- Evidence: So, ignore the name of the container that's set to web, we don't care about that.

### Operational Entry 1635: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/184_Image Transformers.extraction.md::E17
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 184_Image Transformers.txt
- Evidence: Something to keep in mind, it confused me at first, so I figured you guys would probably run into the same issue.

### Operational Entry 1636: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/184_Image Transformers.extraction.md::E20
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 184_Image Transformers.txt
- Evidence: However, let's say that we don't actually want to change the image, so we've got our nginx image here as well.

### Operational Entry 1637: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E46
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Evidence: So maybe, this'll be our debugging environment.

### Operational Entry 1638: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E47
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Evidence: And when the namespace is applied, if we do a build, we should see under everything, so all five of these YAML files, we should see it get applied there.

### Operational Entry 1639: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E48
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Evidence: So for the db side of things, we can see that the namespace was set to debugging, for api, we should see that the namespace was set to debugging.

### Operational Entry 1640: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E50
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Evidence: So now let's give everything a namePrefix and a nameSuffix.

### Operational Entry 1641: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E52
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Evidence: I want every single object to have a name prefixed with the word KodeCloud.

### Operational Entry 1642: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E53
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Evidence: And I want all of the resources to have a suffix that's specific to what folder they're in.

### Operational Entry 1643: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E56
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Evidence: I want it api-deployment-web, and it should be prefixed with KodeCloud.

### Operational Entry 1644: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E59
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Evidence: We're gonna change it to, it's gonna be prefixed with KodeCloud as well, but it's gonna end in -storage.

### Operational Entry 1645: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E61
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Evidence: So for the prefix of KodeCloud, we want this applied to every single resource, regardless of what folder they're in.

### Operational Entry 1646: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E63
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Evidence: So we'll go in here and we'll add a prefix.

### Operational Entry 1647: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E64
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Evidence: So this will be namePrefix and it's gonna be KodeCloud.

### Operational Entry 1648: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E67
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Evidence: Oh, okay, I've realized I wanna put a dash actually so that the words don't get jammed together.

### Operational Entry 1649: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E73
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Evidence: Now we wanna set up the suffix, and like I said, the suffix is going to change depending on which folder that we're in.

### Operational Entry 1650: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E76
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Evidence: And I'm gonna do a nameSuffix.

### Operational Entry 1651: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E79
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Evidence: So we'll do nameSuffix: -storage.

### Operational Entry 1652: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E82
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Evidence: So for this case, we have our db-deployment file, and we can see that the name is KodeCloud, so the prefix is still there, and then the suffix is set to storage.

### Operational Entry 1653: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E84
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Evidence: And if we take a look at one of the apis, we've got KodeCloud, and then the suffix is web.

### Operational Entry 1654: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E90
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Evidence: I'm just gonna say logging, it's gonna be set to debugging, or let's just say verbose.

### Operational Entry 1655: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E91
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Evidence: And now if we take a look at all of our resources, we should see a annotation of logging for both.

### Operational Entry 1656: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E102
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Evidence: So in this case, maybe you don't wanna apply it globally because maybe there's some other features that also use a Mongo database, and we don't wanna actually change those.

### Operational Entry 1657: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E108
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Evidence: Remember, don't look at the name, the name of the container doesn't matter.

### Operational Entry 1658: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E115
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Evidence: And if you guys noticed, I got an error, and it's important to take a look at these errors, and just read it because it's gonna give us some information as to what exactly happened.

### Operational Entry 1659: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E118
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Evidence: So I'm suspecting the issue is with the tag right here.

### Operational Entry 1660: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E119
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Evidence: If I actually comment this out, I assume we're probably not going to get an error, and it seems to work.

### Operational Entry 1661: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E120
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Evidence: So there seems to be an issue with this.

### Operational Entry 1662: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E122
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Evidence: And so now if I do a build, we should see it goes through.

### Operational Entry 1663: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E128
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Evidence: And if you scroll through everything else, you should see that we didn't change any other image.

### Operational Entry 1664: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/185_Transformers Demo.extraction.md::E129
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 185_Transformers Demo.txt
- Evidence: It should have left everything else untouched.

### Operational Entry 1665: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/187_Patches Intro.extraction.md::E25
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 187_Patches Intro.txt
- Evidence: So it's not just one, you don't have to just use one.

### Operational Entry 1666: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/187_Patches Intro.extraction.md::E96
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 187_Patches Intro.txt
- Evidence: I basically just copied the original API deployment file and I just pasted it in there and then I deleted all the stuff I don't wanna change.

### Operational Entry 1667: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/187_Patches Intro.extraction.md::E110
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 187_Patches Intro.txt
- Evidence: There's no issues with using either one, it's just a matter of personal preference.

### Operational Entry 1668: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/188_Different Types of Patches.extraction.md::E5
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 188_Different Types of Patches.txt
- Evidence: So what we can do instead is in the Kustomization.YAML file, we can provide the target like we normally do, and then we can provide a path to a YAML file that's going to contain all of our patches, so that we don't have to clutter up our Kustomization.YAML file.

### Operational Entry 1669: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/189_Patches Dictionary.extraction.md::E8
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 189_Patches Dictionary.txt
- Evidence: We don't wanna add or delete a label, we want to replace this one.

### Operational Entry 1670: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/190_Patches list.extraction.md::E68
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 190_Patches list.txt
- Evidence: And then we don't need to provide a value because this is a remove operation.

### Operational Entry 1671: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/190_Patches list.extraction.md::E76
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 190_Patches list.txt
- Evidence: If I don't include it, then customize just thinks that I don't wanna do anything.

### Operational Entry 1672: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/192_Overlays.extraction.md::E15
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 192_Overlays.txt
- Evidence: So your Dev folder is going to have a certain number of patches that will change things to match what the Dev should have.

### Operational Entry 1673: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/192_Overlays.extraction.md::E38
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 192_Overlays.txt
- Evidence: Once that's defined, kustomize will look for the kustomization.yaml file in the base directory to know all the resources it should be importing.

### Operational Entry 1674: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/192_Overlays.extraction.md::E50
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 192_Overlays.txt
- Evidence: But I wanna make sure that you guys don't think that, you know, overlays can only have patches.

### Operational Entry 1675: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/192_Overlays.extraction.md::E57
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 192_Overlays.txt
- Evidence: You don't have to just modify preexisting ones, you can use new ones.

### Operational Entry 1676: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/192_Overlays.extraction.md::E61
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 192_Overlays.txt
- Evidence: So one final note, I wanna make sure that you guys don't think that we're kind of forced into a certain directory structure.

### Operational Entry 1677: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/192_Overlays.extraction.md::E66
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 192_Overlays.txt
- Evidence: Don't think that you just have to jam everything under the base directory.

### Operational Entry 1678: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/192_Overlays.extraction.md::E69
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 192_Overlays.txt
- Evidence: And remember, these sub directories don't have to match up with what the base directory is.

### Operational Entry 1679: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/194_Components.extraction.md::E10
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 194_Components.txt
- Evidence: We usually try to avoid copying and pasting things like that 'cause a lot of times, it leads to some config drift, if you make changes in one, you forget to make changes in the other.

### Operational Entry 1680: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/194_Components.extraction.md::E12
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 194_Components.txt
- Evidence: Don't complicate it, it's just all of the resources for a specific feature, all of the patches, all of the config maps, secrets, and any other Kubernetes-related configs associated with the feature, they go into a component, and then you can enable it in multiple overlays, that's it.

### Operational Entry 1681: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/194_Components.extraction.md::E19
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 194_Components.txt
- Evidence: And let's say that only the premium and the self-hosted version of our application should have caching enabled.

### Operational Entry 1682: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/194_Components.extraction.md::E22
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 194_Components.txt
- Evidence: And then let's say we also want a external database service, like a Postgres database, and that should only be available for development and the premium versions of our application, so these two guys.

### Operational Entry 1683: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/194_Components.extraction.md::E23
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 194_Components.txt
- Evidence: So this is going to create a little bit of an issue 'cause we have these individual features that only apply to a certain subset of our overlays.

### Operational Entry 1684: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/194_Components.extraction.md::E27
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 194_Components.txt
- Evidence: And the problem with doing that is all three overlays will get the configuration, but remember, only self-hosted and premium should get the caching configuration.

### Operational Entry 1685: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/194_Components.extraction.md::E28
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 194_Components.txt
- Evidence: We don't want development to get it.

### Operational Entry 1686: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/194_Components.extraction.md::E34
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 194_Components.txt
- Evidence: So like most other things, like developing any applications, you wanna avoid copying and pasting whenever you can.

### Operational Entry 1687: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/194_Components.extraction.md::E36
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 194_Components.txt
- Evidence: So we could take our caching configuration, all the Kubernetes config for that, and create a component, a customized component, and then we can just import that component into all of the different overlays that should be using it.

### Operational Entry 1688: certified-kubernetes-application-developer/13_Certification Tips/198_Time Management.extraction.md::E13
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 13_Certification Tips / 198_Time Management.txt
- Evidence: Now, you don't have to get all of it right.

### Operational Entry 1689: certified-kubernetes-application-developer/13_Certification Tips/198_Time Management.extraction.md::E16
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 13_Certification Tips / 198_Time Management.txt
- Evidence: You don't want to get stuck in any of the early tough questions and not have enough time to attempt the easy ones that come after.

### Operational Entry 1690: certified-kubernetes-application-developer/13_Certification Tips/198_Time Management.extraction.md::E24
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 13_Certification Tips / 198_Time Management.txt
- Evidence: The first time you try to execute your work, it fails.

### Operational Entry 1691: certified-kubernetes-application-developer/13_Certification Tips/198_Time Management.extraction.md::E25
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 13_Certification Tips / 198_Time Management.txt
- Evidence: You read the error message and realize that you had made a mistake, like a typo.

### Operational Entry 1692: certified-kubernetes-application-developer/13_Certification Tips/198_Time Management.extraction.md::E26
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 13_Certification Tips / 198_Time Management.txt
- Evidence: So you go back and fix it and run it again.

### Operational Entry 1693: certified-kubernetes-application-developer/13_Certification Tips/198_Time Management.extraction.md::E27
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 13_Certification Tips / 198_Time Management.txt
- Evidence: This time you get an error message, but you're not able to make any sense out of it.

### Operational Entry 1694: certified-kubernetes-application-developer/13_Certification Tips/198_Time Management.extraction.md::E28
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 13_Certification Tips / 198_Time Management.txt
- Evidence: Even though that was an easy question and you knew you could do it, if you're not able to make any sense out of the error message, don't spend any more time troubleshooting or debugging that error.

### Operational Entry 1695: certified-kubernetes-application-developer/13_Certification Tips/198_Time Management.extraction.md::E31
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 13_Certification Tips / 198_Time Management.txt
- Evidence: Now I know that urge to troubleshoot and fix issues, but this is not the right time for it.

### Operational Entry 1696: certified-kubernetes-application-developer/13_Certification Tips/198_Time Management.extraction.md::E32
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 13_Certification Tips / 198_Time Management.txt
- Evidence: Leave it to the end and do all the troubleshooting you want, after you have attempted all the questions.

### Operational Entry 1697: certified-kubernetes-application-developer/13_Certification Tips/198_Time Management.extraction.md::E41
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 13_Certification Tips / 198_Time Management.txt
- Evidence: The first attempt, it fails.

### Operational Entry 1698: certified-kubernetes-application-developer/13_Certification Tips/198_Time Management.extraction.md::E42
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 13_Certification Tips / 198_Time Management.txt
- Evidence: You know what the issue is, so you try to fix it.

### Operational Entry 1699: certified-kubernetes-application-developer/13_Certification Tips/198_Time Management.extraction.md::E43
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 13_Certification Tips / 198_Time Management.txt
- Evidence: The second attempt, it fails again and you don't know what the issue is.

### Operational Entry 1700: certified-kubernetes-application-developer/13_Certification Tips/198_Time Management.extraction.md::E44
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 13_Certification Tips / 198_Time Management.txt
- Evidence: Don't spend any more time on it, as there are many easy questions waiting ahead.

### Operational Entry 1701: certified-kubernetes-application-developer/13_Certification Tips/198_Time Management.extraction.md::E49
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 13_Certification Tips / 198_Time Management.txt
- Evidence: If for each question, you're having to go through each line of your YAML file and fix the indentation errors, you're not going to be able to make it through all questions.

### Operational Entry 1702: certified-kubernetes-application-developer/13_Certification Tips/198_Time Management.extraction.md::E50
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 13_Certification Tips / 198_Time Management.txt
- Evidence: You shouldn't have to do that.

### Operational Entry 1703: certified-kubernetes-application-developer/13_Certification Tips/198_Time Management.extraction.md::E53
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 13_Certification Tips / 198_Time Management.txt
- Evidence: Your YAML files don't have to look pretty, because nobody is going to look at them.

### Operational Entry 1704: certified-kubernetes-application-developer/13_Certification Tips/198_Time Management.extraction.md::E55
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 13_Certification Tips / 198_Time Management.txt
- Evidence: So even if your file looks like this one on the right, whereas it should have looked like this one on the left.

### Operational Entry 1705: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E3
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Evidence: And it's saying that this should make use of a StorageClass name manual, it should use RWX as the access mode and have a size of 1 Gi, and the volume should use the host path /opt/volume/nginx.

### Operational Entry 1706: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E18
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Evidence: And now, if I do a kubectl get pv, we should see it.

### Operational Entry 1707: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E20
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Evidence: And once again, we can go back to the documentation and find an example of a PersistentVolumeClaim, so we don't have to hand write everything out.

### Operational Entry 1708: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E25
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Evidence: Then, for storage, it's saying that this should request a minimum of 200.

### Operational Entry 1709: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E26
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Evidence: And StorageClass name should be manual as well.

### Operational Entry 1710: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E31
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Evidence: And the Pod should be running an NGINX Alpine image.

### Operational Entry 1711: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E46
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Evidence: And it looks like incoming and outgoing connections to this Pod is currently not working, so we have to troubleshoot why this is happening.

### Operational Entry 1712: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E48
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Evidence: So traffic from webapp-color to the secure pod using the secure service should be successful.

### Operational Entry 1713: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E51
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Evidence: And if I do a kubectl get service, we should see the secure service that the secure Pod is using.

### Operational Entry 1714: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E52
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Evidence: So let's first confirm the issue.

### Operational Entry 1715: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E60
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Evidence: So this does confirm, in fact, there is some sort of connection issue, so we are unable to reach that specific pod using the service.

### Operational Entry 1716: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E66
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Evidence: So this is most likely the issue.

### Operational Entry 1717: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E76
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Evidence: And the instructions don't give a name, So we can just call this whatever you want, I'm just gonna call this network-policy.

### Operational Entry 1718: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E77
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Evidence: Then under spec, we have to select a pod, so what rule should this apply to, and this is going to be for the secure pod.

### Operational Entry 1719: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E86
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Evidence: So this policy, what it's saying is traffic coming from this Pod or any Pod with this specific label should be allowed to go to the Pod with the this specific label.

### Operational Entry 1720: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E87
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Evidence: So traffic coming from webapp-color should be able to reach the secure pod.

### Operational Entry 1721: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E99
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Evidence: And this should work this time, and we can see that the connection's open now.

### Operational Entry 1722: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E102
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Evidence: And this Pod should run a container called time-check that uses the BusyBox image.

### Operational Entry 1723: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E103
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Evidence: We also have to create a config map called time-config with the following key value pair, and the container itself should run the following command.

### Operational Entry 1724: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E104
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Evidence: And notice how this is going to make use of an environment variable that's going to reference the config map we created in the previous step and we have to write the result out to the following location here, and the path/opt/time on the Pod should mount a volume that lasts the lifetime of this Pod.

### Operational Entry 1725: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E109
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Evidence: And so the next thing that we have to do is create our Pod spec, so I'm gonna do a kubectl run and our Pod should be called time-check, and it should use an image that is a BusyBox image.

### Operational Entry 1726: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E124
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Evidence: The name of this is gonna be log-volume, and the mount path should be /opt/time.

### Operational Entry 1727: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E131
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Evidence: And I realized we made one issue, so I'm gonna go back in to that file and we forgot to change the namespace, so we wanna make sure it runs in that new namespace.

### Operational Entry 1728: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E135
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Evidence: The next question we have to create a new deployment called nginx-deploy which is going to deploy one single container called NGINX using the following image, and it should have full replicas.

### Operational Entry 1729: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E136
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Evidence: And the deployment should use a rolling update strategy with the maxSurge of one and a maxUnavailable of two.

### Operational Entry 1730: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E139
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Evidence: The image should be set to nginx 1.16 and the replicas should be set to four.

### Operational Entry 1731: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E146
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Evidence: Now, the next step is that we have to upgrade the deployment to a version of 1.17, So we could do a kubectl set image deployment, nginx-deploy, and we'll say nginx = nginx 1.17, So this should change the image to be a 1.17, it should be updated.

### Operational Entry 1732: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E155
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Evidence: And so the deployment name should be Redis, using this following image, and it should have one replica.

### Operational Entry 1733: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E156
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Evidence: And the container should use a .2 CPU.

### Operational Entry 1734: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E157
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Evidence: It should use a label of app=redis, and then we should also mount these two volumes.

### Operational Entry 1735: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E175
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Evidence: And for the last requirement, the container should expose port 6379, and it's just letting us know also that the config map that we're referencing here has already been created, so we don't have to create that ourselves.

### Operational Entry 1736: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E3
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Evidence: We have to inspect them and identify which pod is not in a ready state and then troubleshoot and fix that issue for the first part of the question.

### Operational Entry 1737: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E4
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Evidence: And then for the second part, for that same pod that has this issue, we want to add a check to restart the container on the same pod if the command LS slash var slash WWW slash HTML slash file underscore check fails.

### Operational Entry 1738: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E10
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Evidence: To troubleshoot this, I'm gonna start off by doing kubectl describe pod.

### Operational Entry 1739: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E13
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Evidence: So there's some sort of issue surrounding that, whether it's a misconfiguration on the probe itself or something else that's to be determined.

### Operational Entry 1740: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E20
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Evidence: So I suspect that this is actually a typo and this should be 9-0-8-0.

### Operational Entry 1741: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E21
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Evidence: So let's actually try changing that and see if that fixes the issue.

### Operational Entry 1742: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E22
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Evidence: Okay, so we changed the port, and while we're at it, let's go ahead and knock out this second task, which is, we want to add a check to restart the container on the same pod if this specific command fails.

### Operational Entry 1743: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E36
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Evidence: And let's do a kubectl get one one more time just to make sure that there's no issues.

### Operational Entry 1744: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E40
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Evidence: The image throw dash dice randomly returns a value between one and six, and the result of a six is considered a success and all others are a failure.

### Operational Entry 1745: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E41
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Evidence: And so a couple of other configurations that we have to provide the job should be run non-parallel, so in series, so one by one.

### Operational Entry 1746: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E43
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Evidence: And if the task is not completed within 20 seconds, the job should fail and pod should be terminated.

### Operational Entry 1747: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E51
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Evidence: From a schedule perspective, it's saying that this should run every one minute.

### Operational Entry 1748: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E54
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Evidence: And this should be one and the back off limit should be set to 25.

### Operational Entry 1749: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E55
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Evidence: And for this last requirement here, if the task is not completed within 20 seconds, the job should fail and the pod should be terminated.

### Operational Entry 1750: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E58
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Evidence: And we'll delete the command config here; we don't need that.

### Operational Entry 1751: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E65
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Evidence: And the container should be called secret and should sleep for 3,600 seconds.

### Operational Entry 1752: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E75
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Evidence: The next thing that we want to do is we have to change the command because it should sleep for 3,600 seconds.

### Operational Entry 1753: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E80
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Evidence: The next thing that we have to do is the container should mount a read only secret volume called secret dash volume at the path of slash etc slash secret volume.

### Operational Entry 1754: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E85
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Evidence: And it should be secret dash volume.

### Operational Entry 1755: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E94
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Evidence: And this resource should route HTB traffic to multiple host names as specified below.

### Operational Entry 1756: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E95
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Evidence: So for the service video dash service, this should be accessible on the following URL.

### Operational Entry 1757: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E96
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Evidence: And then for the apparel service, this should be available on the following URL.

### Operational Entry 1758: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E107
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Evidence: And so this is gonna be path type prefix the path, this one's going to be slash video.

### Operational Entry 1759: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E119
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Evidence: And also we wanna make sure we remove the port numbers from here; we don't need those.

### Operational Entry 1760: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E124
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Evidence: And if I do a kubectl get ingress, we should now see our ingress.

### Operational Entry 1761: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E127
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Evidence: Inspect the logs for the container called log dash X and redirect the warnings to the following file on the control plane node.

### Operational Entry 1762: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E133
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Evidence: So we've got different levels, informational warning, and it's saying we want to redirect all of the warnings to this specific file.

### Operational Entry 1763: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E136
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Evidence: We'll do grip and then we wanna grip for warning, keep in mind it is case sensitive.

### Operational Entry 1764: certified-kubernetes-application-developer/15_Mock Exams/206_Mock Exam -1 (Solution).extraction.md::E16
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 206_Mock Exam -1 (Solution).txt
- Evidence: A replica set with the name of rs-d333393 is created, how are the pods are not coming up, identify and fix this issue, and ensure that the replica set has four in a ready state.

### Operational Entry 1765: certified-kubernetes-application-developer/15_Mock Exams/206_Mock Exam -1 (Solution).extraction.md::E20
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 206_Mock Exam -1 (Solution).txt
- Evidence: And so if we just take a look events wise, I don't think we see anything interesting here.

### Operational Entry 1766: certified-kubernetes-application-developer/15_Mock Exams/206_Mock Exam -1 (Solution).extraction.md::E24
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 206_Mock Exam -1 (Solution).txt
- Evidence: So, this should just be busybox.

### Operational Entry 1767: certified-kubernetes-application-developer/15_Mock Exams/206_Mock Exam -1 (Solution).extraction.md::E25
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 206_Mock Exam -1 (Solution).txt
- Evidence: So, this is most likely what's causing this issue.

### Operational Entry 1768: certified-kubernetes-application-developer/15_Mock Exams/206_Mock Exam -1 (Solution).extraction.md::E34
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 206_Mock Exam -1 (Solution).txt
- Evidence: And this should be a kubectl, and it's gonna delete the four pods.

### Operational Entry 1769: certified-kubernetes-application-developer/15_Mock Exams/206_Mock Exam -1 (Solution).extraction.md::E35
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 206_Mock Exam -1 (Solution).txt
- Evidence: And now if I do a kubectl, get replica set, we should see that the replica set now has four and ready state.

### Operational Entry 1770: certified-kubernetes-application-developer/15_Mock Exams/206_Mock Exam -1 (Solution).extraction.md::E61
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 206_Mock Exam -1 (Solution).txt
- Evidence: So we'll do a kubectl, create, config map, and I'm just gonna copy the name, so I don't mistype anything.

### Operational Entry 1771: certified-kubernetes-application-developer/15_Mock Exams/206_Mock Exam -1 (Solution).extraction.md::E64
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 206_Mock Exam -1 (Solution).txt
- Evidence: And if we do a kubectl, describe, config map, we should see all of the key value pairs in there.

### Operational Entry 1772: certified-kubernetes-application-developer/15_Mock Exams/206_Mock Exam -1 (Solution).extraction.md::E85
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 206_Mock Exam -1 (Solution).txt
- Evidence: And we'll say security context, and then capabilities, and we'll say add cs underscore time, and that should be all that we have to do.

### Operational Entry 1773: certified-kubernetes-application-developer/15_Mock Exams/206_Mock Exam -1 (Solution).extraction.md::E144
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 206_Mock Exam -1 (Solution).txt
- Evidence: And the requirement says we should only allow traffic that comes from pods with the label of access equals redis.

### Operational Entry 1774: certified-kubernetes-application-developer/15_Mock Exams/206_Mock Exam -1 (Solution).extraction.md::E166
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 206_Mock Exam -1 (Solution).txt
- Evidence: And that should be all that we need, We'll do a kubectl, apply-f, sega.yaml and it's successfully created.

### Operational Entry 1775: certified-kubernetes-application-developer/15_Mock Exams/206_Mock Exam -1 (Solution).extraction.md::E171
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 206_Mock Exam -1 (Solution).txt
- Evidence: This should be 8080, not 8008, so I'll change that to 8080.

### Operational Entry 1776: certified-kubernetes-application-developer/15_Mock Exams/208_Mock Exam -2 (Solution).extraction.md::E6
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 208_Mock Exam -2 (Solution).txt
- Evidence: We shouldn't have to change anything here.

### Operational Entry 1777: certified-kubernetes-application-developer/15_Mock Exams/208_Mock Exam -2 (Solution).extraction.md::E25
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 208_Mock Exam -2 (Solution).txt
- Evidence: And so now if I do a kubectl describe node node1, and we go under taints near the top, we should see the new taint that we just created.

### Operational Entry 1778: certified-kubernetes-application-developer/15_Mock Exams/208_Mock Exam -2 (Solution).extraction.md::E27
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 208_Mock Exam -2 (Solution).txt
- Evidence: So I'll do a kubectl run, and then the pod should be called alpha, image is going to be redis.

### Operational Entry 1779: certified-kubernetes-application-developer/15_Mock Exams/208_Mock Exam -2 (Solution).extraction.md::E37
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 208_Mock Exam -2 (Solution).txt
- Evidence: So if I do a kubectl get node, we should see that we have a node called controlplane, and we want to add a new label to that.

### Operational Entry 1780: certified-kubernetes-application-developer/15_Mock Exams/208_Mock Exam -2 (Solution).extraction.md::E47
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 208_Mock Exam -2 (Solution).txt
- Evidence: So I'm gonna just copy this, and under spec, let's add that in there, and let me fix the spacings.

### Operational Entry 1781: certified-kubernetes-application-developer/15_Mock Exams/208_Mock Exam -2 (Solution).extraction.md::E55
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 208_Mock Exam -2 (Solution).txt
- Evidence: And we did the configuration the host should be set to this, and then the specific path is gonna be a /video.

### Operational Entry 1782: certified-kubernetes-application-developer/15_Mock Exams/208_Mock Exam -2 (Solution).extraction.md::E61
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 208_Mock Exam -2 (Solution).txt
- Evidence: So I'm gonna copy this, and I'm gonna delete the host part here, I don't need that.

### Operational Entry 1783: certified-kubernetes-application-developer/15_Mock Exams/208_Mock Exam -2 (Solution).extraction.md::E80
- Type: Troubleshooting
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 208_Mock Exam -2 (Solution).txt
- Evidence: And we have to add a liveness probe to the container to restart if the command ls/bar/www/atm/probe fails.

### Operational Entry 1784: certified-kubernetes-application-developer/15_Mock Exams/208_Mock Exam -2 (Solution).extraction.md::E81
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 208_Mock Exam -2 (Solution).txt
- Evidence: And this check should start after a delay of 10 seconds and run every 60 seconds.

### Operational Entry 1785: certified-kubernetes-application-developer/15_Mock Exams/208_Mock Exam -2 (Solution).extraction.md::E91
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 208_Mock Exam -2 (Solution).txt
- Evidence: So this is gonna run every 60 seconds, and I made a mistake this should be moved back so it lines up with exec.

### Operational Entry 1786: certified-kubernetes-application-developer/15_Mock Exams/208_Mock Exam -2 (Solution).extraction.md::E103
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 208_Mock Exam -2 (Solution).txt
- Evidence: So I'll say command, I'm gonna do sh -c, and then I'll copy in, copy in that, and that should be all that we have to change.

### Operational Entry 1787: certified-kubernetes-application-developer/15_Mock Exams/209_Bonus Lecture.extraction.md::E8
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 209_Bonus Lecture.txt
- Evidence: Don't forget to tag us in your posts so we can celebrate your accomplishments with you and the rest of our community.

### Operational Entry 1788: certified-kubernetes-application-developer/15_Mock Exams/209_Bonus Lecture.extraction.md::E19
- Type: Warning/Pitfall
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 209_Bonus Lecture.txt
- Evidence: But don't worry, use the coupon code UDEMY10 to get a special extra discount where you purchase your subscription.

### Operational Entry 1789: certified-kubernetes-application-developer/15_Mock Exams/211_What's Next_.extraction.md::E13
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 211_What's Next_.txt
- Evidence: All right, so I'm going to launch the very first exam here and it should load up in a couple of minutes.

### Operational Entry 1790: certified-kubernetes-application-developer/15_Mock Exams/211_What's Next_.extraction.md::E28
- Type: Best Practice
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 211_What's Next_.txt
- Evidence: And if you've got any of the questions incorrect, the solution should be displayed right here.

### Operational Entry 1791: learn-kubernetes/01_Introduction/001_Introduction.extraction.md::E14
- Type: Warning/Pitfall
- Source: learn-kubernetes / 01_Introduction / 001_Introduction.txt
- Evidence: You don't have to have a high end system or access to cloud platforms or worry about cloud costs to gain practice.

### Operational Entry 1792: learn-kubernetes/01_Introduction/001_Introduction.extraction.md::E16
- Type: Warning/Pitfall
- Source: learn-kubernetes / 01_Introduction / 001_Introduction.txt
- Evidence: Our labs are unique, as in, we don't provide a blank environment and give you instructions to copy and paste.

### Operational Entry 1793: learn-kubernetes/01_Introduction/002_Accessing the Lab.extraction.md::E6
- Type: Warning/Pitfall
- Source: learn-kubernetes / 01_Introduction / 002_Accessing the Lab.txt
- Evidence: You don't have to make any extra payments to access the labs.

### Operational Entry 1794: learn-kubernetes/01_Introduction/002_Accessing the Lab.extraction.md::E25
- Type: Troubleshooting
- Source: learn-kubernetes / 01_Introduction / 002_Accessing the Lab.txt
- Evidence: And if you run into issues with accessing labs, please write to support at support at code Cloud.com.

### Operational Entry 1795: learn-kubernetes/02_Kubernetes Overview/005_Containers Overview.extraction.md::E2
- Type: Operational Insight
- Source: learn-kubernetes / 02_Kubernetes Overview / 005_Containers Overview.txt
- Evidence: Kubernetes, also known as K8's, was built by Google based on their experience running containers in production.

### Operational Entry 1796: learn-kubernetes/02_Kubernetes Overview/005_Containers Overview.extraction.md::E16
- Type: Troubleshooting
- Source: learn-kubernetes / 02_Kubernetes Overview / 005_Containers Overview.txt
- Evidence: We had a lot of issues developing this application stack with all these different components.

### Operational Entry 1797: learn-kubernetes/02_Kubernetes Overview/005_Containers Overview.extraction.md::E17
- Type: Troubleshooting
- Source: learn-kubernetes / 02_Kubernetes Overview / 005_Containers Overview.txt
- Evidence: First of all, their compatibility with the underlying OS was an issue.

### Operational Entry 1798: learn-kubernetes/02_Kubernetes Overview/005_Containers Overview.extraction.md::E21
- Type: Troubleshooting
- Source: learn-kubernetes / 02_Kubernetes Overview / 005_Containers Overview.txt
- Evidence: We've had issues where one service requires one version of a dependent library, whereas another service requires another version.

### Operational Entry 1799: learn-kubernetes/02_Kubernetes Overview/005_Containers Overview.extraction.md::E24
- Type: Troubleshooting
- Source: learn-kubernetes / 02_Kubernetes Overview / 005_Containers Overview.txt
- Evidence: This compatibility matrix issue is usually referred to as the matrix from hell.

### Operational Entry 1800: learn-kubernetes/02_Kubernetes Overview/005_Containers Overview.extraction.md::E31
- Type: Troubleshooting
- Source: learn-kubernetes / 02_Kubernetes Overview / 005_Containers Overview.txt
- Evidence: So I needed something that could help us with the compatibility issue, and something that will allow us to modify or change these components without affecting the other components, and even modify the underlying operating systems as required.

### Operational Entry 1801: learn-kubernetes/02_Kubernetes Overview/005_Containers Overview.extraction.md::E42
- Type: Command
- Source: learn-kubernetes / 02_Kubernetes Overview / 005_Containers Overview.txt
- Evidence: Docker utilizes LXC containers.

### Operational Entry 1802: learn-kubernetes/02_Kubernetes Overview/005_Containers Overview.extraction.md::E53
- Type: Command
- Source: learn-kubernetes / 02_Kubernetes Overview / 005_Containers Overview.txt
- Evidence: Docker can run any flavor of OS on top of it, as long as they are all based on the same kernel.

### Operational Entry 1803: learn-kubernetes/02_Kubernetes Overview/005_Containers Overview.extraction.md::E56
- Type: Command
- Source: learn-kubernetes / 02_Kubernetes Overview / 005_Containers Overview.txt
- Evidence: Docker can run a container based on another distribution like Debian, fedora, Susi or CentOS.

### Operational Entry 1804: learn-kubernetes/02_Kubernetes Overview/005_Containers Overview.extraction.md::E59
- Type: Warning/Pitfall
- Source: learn-kubernetes / 02_Kubernetes Overview / 005_Containers Overview.txt
- Evidence: So what is an OS that do not share the same kernel as this windows?

### Operational Entry 1805: learn-kubernetes/02_Kubernetes Overview/005_Containers Overview.extraction.md::E74
- Type: Command
- Source: learn-kubernetes / 02_Kubernetes Overview / 005_Containers Overview.txt
- Evidence: Docker then manages the containers that run with libraries and dependencies alone.

### Operational Entry 1806: learn-kubernetes/02_Kubernetes Overview/005_Containers Overview.extraction.md::E79
- Type: Warning/Pitfall
- Source: learn-kubernetes / 02_Kubernetes Overview / 005_Containers Overview.txt
- Evidence: It is also important to note that Docker has less isolation as more resources are shared between the containers, like the kernel, whereas VMs have complete isolation from each other since VMs don't rely on the underlying OS or kernel.

### Operational Entry 1807: learn-kubernetes/02_Kubernetes Overview/005_Containers Overview.extraction.md::E99
- Type: Warning/Pitfall
- Source: learn-kubernetes / 02_Kubernetes Overview / 005_Containers Overview.txt
- Evidence: There are other solutions available for handling such cases that we will look at later during this course, and for now, don't focus too much on the commands.

### Operational Entry 1808: learn-kubernetes/02_Kubernetes Overview/005_Containers Overview.extraction.md::E109
- Type: Troubleshooting
- Source: learn-kubernetes / 02_Kubernetes Overview / 005_Containers Overview.txt
- Evidence: They do that by providing a set of instructions, such as information about how the host must be set up, what prerequisites are to be installed on the host, and how the dependencies are to be configured, etc. since the ops team did not really develop the application on their own, they struggled with setting it up when they hit an issue.

### Operational Entry 1809: learn-kubernetes/02_Kubernetes Overview/006_Container Orchestration.extraction.md::E3
- Type: Operational Insight
- Source: learn-kubernetes / 02_Kubernetes Overview / 006_Container Orchestration.txt
- Evidence: How do you run it in production?

### Operational Entry 1810: learn-kubernetes/02_Kubernetes Overview/006_Container Orchestration.extraction.md::E12
- Type: Command
- Source: learn-kubernetes / 02_Kubernetes Overview / 006_Container Orchestration.txt
- Evidence: Docker has its own tool called Docker Swarm Kubernetes from Google and Mesos from Apache.

### Operational Entry 1811: learn-kubernetes/02_Kubernetes Overview/006_Container Orchestration.extraction.md::E19
- Type: Warning/Pitfall
- Source: learn-kubernetes / 02_Kubernetes Overview / 006_Container Orchestration.txt
- Evidence: Your application is now highly available, as hardware failures do not bring your application down because you have multiple instances of your application running on different nodes.

### Operational Entry 1812: learn-kubernetes/02_Kubernetes Overview/006_Container Orchestration.extraction.md::E26
- Type: Warning/Pitfall
- Source: learn-kubernetes / 02_Kubernetes Overview / 006_Container Orchestration.txt
- Evidence: Don't worry if you didn't get all of what I just said.

### Operational Entry 1813: learn-kubernetes/02_Kubernetes Overview/007_Kubernetes Architecture.extraction.md::E8
- Type: Troubleshooting
- Source: learn-kubernetes / 02_Kubernetes Overview / 007_Kubernetes Architecture.txt
- Evidence: But what if the node on which your application is running fails?

### Operational Entry 1814: learn-kubernetes/02_Kubernetes Overview/007_Kubernetes Architecture.extraction.md::E11
- Type: Troubleshooting
- Source: learn-kubernetes / 02_Kubernetes Overview / 007_Kubernetes Architecture.txt
- Evidence: This way, even if one node fails, you have your application still accessible from the other nodes.

### Operational Entry 1815: learn-kubernetes/02_Kubernetes Overview/007_Kubernetes Architecture.extraction.md::E17
- Type: Troubleshooting
- Source: learn-kubernetes / 02_Kubernetes Overview / 007_Kubernetes Architecture.txt
- Evidence: When a node fails, how do you move the workload of the failed node to another worker node?

### Operational Entry 1816: learn-kubernetes/02_Kubernetes Overview/007_Kubernetes Architecture.extraction.md::E31
- Type: Operational Insight
- Source: learn-kubernetes / 02_Kubernetes Overview / 007_Kubernetes Architecture.txt
- Evidence: In such cases, the container runtime is the underlying software that is used to run containers.

### Operational Entry 1817: learn-kubernetes/02_Kubernetes Overview/007_Kubernetes Architecture.extraction.md::E40
- Type: Operational Insight
- Source: learn-kubernetes / 02_Kubernetes Overview / 007_Kubernetes Architecture.txt
- Evidence: And to run Docker containers on a system, we need container runtime installed.

### Operational Entry 1818: learn-kubernetes/02_Kubernetes Overview/007_Kubernetes Architecture.extraction.md::E41
- Type: Operational Insight
- Source: learn-kubernetes / 02_Kubernetes Overview / 007_Kubernetes Architecture.txt
- Evidence: And that's where the container runtime falls.

### Operational Entry 1819: learn-kubernetes/02_Kubernetes Overview/007_Kubernetes Architecture.extraction.md::E44
- Type: Operational Insight
- Source: learn-kubernetes / 02_Kubernetes Overview / 007_Kubernetes Architecture.txt
- Evidence: There are other container runtime alternatives available, such as Rocket or Cryo.

### Operational Entry 1820: learn-kubernetes/02_Kubernetes Overview/007_Kubernetes Architecture.extraction.md::E45
- Type: Operational Insight
- Source: learn-kubernetes / 02_Kubernetes Overview / 007_Kubernetes Architecture.txt
- Evidence: But throughout this course we are going to use Docker as our container runtime engine.

### Operational Entry 1821: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E5
- Type: Best Practice
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: And you'll wonder what are these CLI tools and which one should you be using?

### Operational Entry 1822: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E14
- Type: Operational Insight
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: And now other container runtimes like rocket wanted in Kubernetes.

### Operational Entry 1823: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E15
- Type: Operational Insight
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: Users needed it to work with container runtimes that are other than just Docker.

### Operational Entry 1824: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E16
- Type: Operational Insight
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: And so Kubernetes introduced an interface called Container Runtime Interface or CRE.

### Operational Entry 1825: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E17
- Type: Operational Insight
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So CRE allowed any vendor to work as a container runtime for Kubernetes as long as they adhere to the OCI standards.

### Operational Entry 1826: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E18
- Type: Operational Insight
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So OCI stands for Open Container Initiative, and it consists of an image spec and a runtime spec.

### Operational Entry 1827: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E19
- Type: Best Practice
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: Image spec means the specifications on how an image should be built.

### Operational Entry 1828: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E21
- Type: Best Practice
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: An image spec defined the specifications on how an image should be built, and the runtime spec defined the standards on how any container runtime should be developed.

### Operational Entry 1829: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E22
- Type: Operational Insight
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So keeping these standards in mind, Anyone can build a container runtime that can be used by anybody to work with Kubernetes.

### Operational Entry 1830: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E24
- Type: Operational Insight
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So rocket and other container runtimes that adhere to the OCI standards were now supported as container runtimes for Kubernetes via the CRI.

### Operational Entry 1831: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E27
- Type: Operational Insight
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: And so Kubernetes introduced what is known as Docker shim, which was a hacky but temporary way to continue to support Docker outside of the container runtime interface.

### Operational Entry 1832: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E28
- Type: Operational Insight
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: While most other container runtimes worked through the CRI, Docker continued to work without it.

### Operational Entry 1833: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E29
- Type: Operational Insight
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: Now you see Docker isn't just a container runtime alone.

### Operational Entry 1834: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E30
- Type: Command
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: Docker consists of multiple tools that are put together, for example, the Docker CLI, the Docker API, the build tools that help in building images.

### Operational Entry 1835: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E32
- Type: Operational Insight
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: And finally also the container runtime called Runcie, the daemon that managed Runcie.

### Operational Entry 1836: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E34
- Type: Operational Insight
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So container D is CLI compatible and can work directly with Kubernetes as all other runtimes.

### Operational Entry 1837: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E35
- Type: Operational Insight
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So container D can be used as a runtime on its own separate from Docker.

### Operational Entry 1838: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E36
- Type: Operational Insight
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So now you have container D as a separate runtime and Docker separately.

### Operational Entry 1839: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E43
- Type: Operational Insight
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: But Docker itself was removed as a supported runtime from Kubernetes.

### Operational Entry 1840: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E48
- Type: Warning/Pitfall
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So if you don't really need Docker's other features, you could ideally just install container D alone.

### Operational Entry 1841: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E52
- Type: Troubleshooting
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: And this tool is solely made for debugging container D and is not very user friendly as it only supports a limited set of features.

### Operational Entry 1842: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E58
- Type: Troubleshooting
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: But as I mentioned, this tool is solely made for debugging container D and is not very user friendly and not to be used for running or managing containers on a production environment, so a better alternative recommended is the nerd control tool or nerd CTL tool.

### Operational Entry 1843: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E73
- Type: Operational Insight
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So earlier we talked about the container Runtime interface or CRI which is a single interface used to connect CRI compatible container runtimes the container, the rocket and others.

### Operational Entry 1844: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E74
- Type: Operational Insight
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: The CRI control is a command line utility that is used to interact with the CRI compatible container runtime.

### Operational Entry 1845: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E77
- Type: Operational Insight
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: And this is this tool works across all the different container runtimes as opposed to earlier, you had the Ctor and the node control.

### Operational Entry 1846: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E80
- Type: Operational Insight
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: Different container runtimes.

### Operational Entry 1847: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E83
- Type: Troubleshooting
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: Inspect and debug container runtime.

### Operational Entry 1848: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E85
- Type: Troubleshooting
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: Unlike Docker or the node control utility this is again a debugging tool.

### Operational Entry 1849: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E87
- Type: Troubleshooting
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: It's only to be used for some special debugging purposes.

### Operational Entry 1850: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E92
- Type: Troubleshooting
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So because of those things, remember that the cry control utility is only used for debugging purposes and getting into containers and all of that.

### Operational Entry 1851: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E104
- Type: Troubleshooting
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So while working with Kubernetes in the past, we used Docker commands a lot to troubleshoot containers and view logs, especially on the worker nodes.

### Operational Entry 1852: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E107
- Type: Best Practice
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So it shouldn't be shouldn't be really hard.

### Operational Entry 1853: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E111
- Type: Operational Insight
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: Since, as I mentioned, cry control can be used to connect to any cry compatible runtime.

### Operational Entry 1854: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E117
- Type: Operational Insight
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: But if you want to override that and set a specific endpoint, you use the runtime endpoint option with the CRI control command line.

### Operational Entry 1855: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E118
- Type: Operational Insight
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: Or you could use the container runtime endpoint environment variable.

### Operational Entry 1856: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E120
- Type: Troubleshooting
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So to summarize, we have the Ktor command line utility that comes with Containerd and works with Containerd, which is used for debugging purposes only and has a very limited set of features.

### Operational Entry 1857: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E128
- Type: Operational Insight
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: This can be used for all CRI supported runtimes.

### Operational Entry 1858: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E129
- Type: Troubleshooting
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: Again this is mainly for to be used for debugging purposes.

### Operational Entry 1859: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E130
- Type: Troubleshooting
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So if you look at the comparisons here you can see that CTR and CRI control are used mainly for debugging purposes, whereas the control is used for general purpose.

### Operational Entry 1860: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E131
- Type: Operational Insight
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: The CTR and control are from the container the community and works with container D, whereas CRI control is from the Kubernetes community and works across all CRI compatible runtimes.

### Operational Entry 1861: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E133
- Type: Troubleshooting
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So we used the Docker commands to troubleshoot.

### Operational Entry 1862: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E135
- Type: Troubleshooting
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So remember to use the the CRI control command instead to troubleshoot.

### Operational Entry 1863: learn-kubernetes/02_Kubernetes Overview/009_A note on Docker deprecation.extraction.md::E1
- Type: Warning/Pitfall
- Source: learn-kubernetes / 02_Kubernetes Overview / 009_A note on Docker deprecation.txt
- Evidence: Every time we mention about Docker in this course, one of the common questions we get is why are we still talking about Docker if it's deprecated?

### Operational Entry 1864: learn-kubernetes/02_Kubernetes Overview/009_A note on Docker deprecation.extraction.md::E3
- Type: Operational Insight
- Source: learn-kubernetes / 02_Kubernetes Overview / 009_A note on Docker deprecation.txt
- Evidence: So as we discussed before, Docker was the original and only supported container runtime for Kubernetes, and to make Kubernetes open to other runtimes, we had the container runtime interface introduced.

### Operational Entry 1865: learn-kubernetes/02_Kubernetes Overview/009_A note on Docker deprecation.extraction.md::E5
- Type: Operational Insight
- Source: learn-kubernetes / 02_Kubernetes Overview / 009_A note on Docker deprecation.txt
- Evidence: There was support for volumes, auth, security and finally also the container runtime called Runc and the daemon that managed the runtime called the container.

### Operational Entry 1866: learn-kubernetes/02_Kubernetes Overview/009_A note on Docker deprecation.extraction.md::E7
- Type: Operational Insight
- Source: learn-kubernetes / 02_Kubernetes Overview / 009_A note on Docker deprecation.txt
- Evidence: And as all of the other runtimes.

### Operational Entry 1867: learn-kubernetes/02_Kubernetes Overview/009_A note on Docker deprecation.extraction.md::E8
- Type: Operational Insight
- Source: learn-kubernetes / 02_Kubernetes Overview / 009_A note on Docker deprecation.txt
- Evidence: So container D can be used as a runtime on its own separate from Docker.

### Operational Entry 1868: learn-kubernetes/02_Kubernetes Overview/009_A note on Docker deprecation.extraction.md::E14
- Type: Operational Insight
- Source: learn-kubernetes / 02_Kubernetes Overview / 009_A note on Docker deprecation.txt
- Evidence: It's just that Kubernetes no longer required Docker as the runtime now.

### Operational Entry 1869: learn-kubernetes/02_Kubernetes Overview/009_A note on Docker deprecation.extraction.md::E18
- Type: Warning/Pitfall
- Source: learn-kubernetes / 02_Kubernetes Overview / 009_A note on Docker deprecation.txt
- Evidence: And if you don't happen to have Docker on your machine or are only using container D, then you can still work with the same examples by replacing the docker command with the node control command, or most of the time.

### Operational Entry 1870: learn-kubernetes/02_Kubernetes Overview/011_A Quick Reminder.extraction.md::E1
- Type: Warning/Pitfall
- Source: learn-kubernetes / 02_Kubernetes Overview / 011_A Quick Reminder.txt
- Evidence: Hey, so here is a quick reminder and I hope you don't mind me jumping in like this.

### Operational Entry 1871: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E5
- Type: Command
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: Docker desktop is probably the easiest to get started with, and as it has Kubernetes support built in, and then you have minikube, which is a tool used to set up a single instance of Kubernetes in an all in one setup.

### Operational Entry 1872: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E12
- Type: Warning/Pitfall
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: And finally, if you don't have the resources or if you don't want to go through this hassle of setting it all up for yourself as part of your learning process, and you just want an instant access to a Kubernetes cluster just to play with or run some commands and test test it around, then the best option is playgrounds.

### Operational Entry 1873: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E16
- Type: Warning/Pitfall
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: You don't need to go through all of the demos.

### Operational Entry 1874: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E39
- Type: Warning/Pitfall
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: Now you don't have to download it yourself.

### Operational Entry 1875: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E40
- Type: Command
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: Minikube provides an executable command line utility that will automatically download the ISO image and deploy it in a virtualization platform such as Oracle VirtualBox or VMware fusion.

### Operational Entry 1876: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E35
- Type: Best Practice
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: So if you scroll down, you'll see that there are instructions for installation on Mac OS, and there should be one for windows as well.

### Operational Entry 1877: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E42
- Type: Warning/Pitfall
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: And you don't have to enable it specifically from the Bios.

### Operational Entry 1878: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E44
- Type: Best Practice
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: So you have to restart your laptop, go into the Bios and there should be an option to enable virtualization.

### Operational Entry 1879: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E59
- Type: Warning/Pitfall
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: However, note that as you can see here in the documentation page, um, there's a warning that says it can result in security or data loss issues.

### Operational Entry 1880: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E75
- Type: Best Practice
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: Um, with minor differences, but that should not matter.

### Operational Entry 1881: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E76
- Type: Warning/Pitfall
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: So right now we don't have any virtual machines running.

### Operational Entry 1882: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E78
- Type: Warning/Pitfall
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: So apart from just installing VirtualBox, you don't really have to do anything directly with it.

### Operational Entry 1883: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E88
- Type: Warning/Pitfall
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: The user local bin directory has already been created, so we don't have to do that first step.

### Operational Entry 1884: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E118
- Type: Troubleshooting
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: Uh, if you run into issues with the installation anytime, feel free to run this command and check the status.

### Operational Entry 1885: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E145
- Type: Warning/Pitfall
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: Now don't worry about the command for now.

### Operational Entry 1886: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E152
- Type: Best Practice
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: And it should list the details about the application like this.

### Operational Entry 1887: learn-kubernetes/03_Kubernetes Concepts/014_Pods.extraction.md::E25
- Type: Warning/Pitfall
- Source: learn-kubernetes / 03_Kubernetes Concepts / 014_Pods.txt
- Evidence: You do not add additional containers to an existing pod to scale your application.

### Operational Entry 1888: learn-kubernetes/03_Kubernetes Concepts/014_Pods.extraction.md::E73
- Type: Operational Insight
- Source: learn-kubernetes / 03_Kubernetes Concepts / 014_Pods.txt
- Evidence: You can access it internally from the node.

### Operational Entry 1889: learn-kubernetes/04_YAML Introduction/017_Introduction to YAML.extraction.md::E4
- Type: Best Practice
- Source: learn-kubernetes / 04_YAML Introduction / 017_Introduction to YAML.txt
- Evidence: If you have worked with other data structure formats like XML or JSON, you should be able to easily pick it up.

### Operational Entry 1890: learn-kubernetes/04_YAML Introduction/017_Introduction to YAML.extraction.md::E5
- Type: Warning/Pitfall
- Source: learn-kubernetes / 04_YAML Introduction / 017_Introduction to YAML.txt
- Evidence: Don't worry if you haven't worked on any of these, you should still be able to easily pick it up.

### Operational Entry 1891: learn-kubernetes/04_YAML Introduction/017_Introduction to YAML.extraction.md::E36
- Type: Troubleshooting
- Source: learn-kubernetes / 04_YAML Introduction / 017_Introduction to YAML.txt
- Evidence: This will result in a syntax error, which will tell you that mapping values are not allowed here because calories already have a value set, which is 105.

### Operational Entry 1892: learn-kubernetes/04_YAML Introduction/017_Introduction to YAML.extraction.md::E74
- Type: Warning/Pitfall
- Source: learn-kubernetes / 04_YAML Introduction / 017_Introduction to YAML.txt
- Evidence: However, you can see that the order of properties fat and carbs do not match.

### Operational Entry 1893: learn-kubernetes/04_YAML Introduction/018_Introduction to Coding Exercises.extraction.md::E12
- Type: Warning/Pitfall
- Source: learn-kubernetes / 04_YAML Introduction / 018_Introduction to Coding Exercises.txt
- Evidence: Do not type in your solution in this file and you must always use the edges in .yml or .txt file.

### Operational Entry 1894: learn-kubernetes/04_YAML Introduction/018_Introduction to Coding Exercises.extraction.md::E22
- Type: Troubleshooting
- Source: learn-kubernetes / 04_YAML Introduction / 018_Introduction to Coding Exercises.txt
- Evidence: In this case I got an error because I typed in the spelling for Vegetable wrong.

### Operational Entry 1895: learn-kubernetes/04_YAML Introduction/018_Introduction to Coding Exercises.extraction.md::E24
- Type: Best Practice
- Source: learn-kubernetes / 04_YAML Introduction / 018_Introduction to Coding Exercises.txt
- Evidence: Click on it again and you should see that your solution is correct.

### Operational Entry 1896: learn-kubernetes/04_YAML Introduction/018_Introduction to Coding Exercises.extraction.md::E26
- Type: Troubleshooting
- Source: learn-kubernetes / 04_YAML Introduction / 018_Introduction to Coding Exercises.txt
- Evidence: So this way you can go over all exercises until they are complete and if you have any questions about any of these exercises or if you find any issues with any of these exercises feel free to reach out to me.

### Operational Entry 1897: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/020_Pods with YAML.extraction.md::E23
- Type: Best Practice
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 020_Pods with YAML.txt
- Evidence: The number of spaces before the two properties name and labels doesn't matter, but they should be the same as they are siblings.

### Operational Entry 1898: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/021_Demo - Pods with YAML.extraction.md::E35
- Type: Best Practice
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 021_Demo - Pods with YAML.txt
- Evidence: Typically it would be two spaces or a tab, but it is recommended not to use tabs.

### Operational Entry 1899: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/021_Demo - Pods with YAML.extraction.md::E74
- Type: Best Practice
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 021_Demo - Pods with YAML.txt
- Evidence: And you should get a much more in-depth information about the pod.

### Operational Entry 1900: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/022_Demo - YAML - Tips.extraction.md::E6
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 022_Demo - YAML - Tips.txt
- Evidence: They are very basic and prone to errors.

### Operational Entry 1901: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/022_Demo - YAML - Tips.extraction.md::E7
- Type: Warning/Pitfall
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 022_Demo - YAML - Tips.txt
- Evidence: They don't really tell you if you made a mistake.

### Operational Entry 1902: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/022_Demo - YAML - Tips.extraction.md::E11
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 022_Demo - YAML - Tips.txt
- Evidence: And all of these come with support for YAML files, and they will help in highlighting errors in a YAML file and make making sure that you develop them right.

### Operational Entry 1903: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/022_Demo - YAML - Tips.extraction.md::E12
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 022_Demo - YAML - Tips.txt
- Evidence: But they won't natively tell you if there are errors within the Kubernetes manifest files that you are developing.

### Operational Entry 1904: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/022_Demo - YAML - Tips.extraction.md::E14
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 022_Demo - YAML - Tips.txt
- Evidence: Uh, so those, uh, tools that can first verify structure of your YAML file and the syntax, making sure that it works fine, and also, um, point out errors related to Kubernetes.

### Operational Entry 1905: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/022_Demo - YAML - Tips.extraction.md::E22
- Type: Warning/Pitfall
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 022_Demo - YAML - Tips.txt
- Evidence: Now, you don't necessarily have to use the same tool.

### Operational Entry 1906: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/022_Demo - YAML - Tips.extraction.md::E29
- Type: Best Practice
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 022_Demo - YAML - Tips.txt
- Evidence: It should automatically list the right version, um, to download for you depending on your operating system.

### Operational Entry 1907: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/022_Demo - YAML - Tips.extraction.md::E49
- Type: Best Practice
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 022_Demo - YAML - Tips.txt
- Evidence: It should have the YAML schema section.

### Operational Entry 1908: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/022_Demo - YAML - Tips.extraction.md::E53
- Type: Warning/Pitfall
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 022_Demo - YAML - Tips.txt
- Evidence: If you don't really want to do that, if you don't want to use the Kubernetes schema for all YAML files instead.

### Operational Entry 1909: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/022_Demo - YAML - Tips.extraction.md::E65
- Type: Warning/Pitfall
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 022_Demo - YAML - Tips.txt
- Evidence: So we don't have to do anything else.

### Operational Entry 1910: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/022_Demo - YAML - Tips.extraction.md::E68
- Type: Warning/Pitfall
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 022_Demo - YAML - Tips.txt
- Evidence: And so we don't have an option to enable or install here, which means that it is already enabled.

### Operational Entry 1911: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/022_Demo - YAML - Tips.extraction.md::E94
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 022_Demo - YAML - Tips.txt
- Evidence: Um, and you will notice that there is this error indicated, um, here below the name.

### Operational Entry 1912: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/022_Demo - YAML - Tips.extraction.md::E96
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 022_Demo - YAML - Tips.txt
- Evidence: So as long as this is empty it will continue to show that error.

### Operational Entry 1913: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/022_Demo - YAML - Tips.extraction.md::E98
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 022_Demo - YAML - Tips.txt
- Evidence: And as soon as I complete that you'll see that the error indicator is gone.

### Operational Entry 1914: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/022_Demo - YAML - Tips.extraction.md::E123
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 022_Demo - YAML - Tips.txt
- Evidence: So if I make a mistake here, for example, if I add an image property and set it to say nginx again, it knows that there is an error because.

### Operational Entry 1915: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/022_Demo - YAML - Tips.extraction.md::E128
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 022_Demo - YAML - Tips.txt
- Evidence: So those are not validated and it won't give you an error if you used an image that's not available on Docker Registry.

### Operational Entry 1916: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/022_Demo - YAML - Tips.extraction.md::E132
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 022_Demo - YAML - Tips.txt
- Evidence: Then it will throw an error.

### Operational Entry 1917: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/022_Demo - YAML - Tips.extraction.md::E139
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 022_Demo - YAML - Tips.txt
- Evidence: So now, um, our code is clear and as you can see, there are no errors.

### Operational Entry 1918: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/022_Demo - YAML - Tips.extraction.md::E140
- Type: Warning/Pitfall
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 022_Demo - YAML - Tips.txt
- Evidence: Now, I don't really need the second container for now, so I'll just go ahead and delete this line and make sure that, um, everything else is is clean.

### Operational Entry 1919: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/025_Solution _ Pods with YAML Lab.extraction.md::E9
- Type: Warning/Pitfall
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 025_Solution _ Pods with YAML Lab.txt
- Evidence: So you don't have to worry about that for now.

### Operational Entry 1920: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/025_Solution _ Pods with YAML Lab.extraction.md::E70
- Type: Best Practice
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 025_Solution _ Pods with YAML Lab.txt
- Evidence: Actually it should be.

### Operational Entry 1921: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/025_Solution _ Pods with YAML Lab.extraction.md::E82
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 025_Solution _ Pods with YAML Lab.txt
- Evidence: It's actually error or waiting.

### Operational Entry 1922: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/025_Solution _ Pods with YAML Lab.extraction.md::E85
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 025_Solution _ Pods with YAML Lab.txt
- Evidence: Now, why do you think the container age index import is in an error or rating state?

### Operational Entry 1923: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/025_Solution _ Pods with YAML Lab.extraction.md::E88
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 025_Solution _ Pods with YAML Lab.txt
- Evidence: One of the section here under state you have the reason we call this error image pool.

### Operational Entry 1924: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/025_Solution _ Pods with YAML Lab.extraction.md::E90
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 025_Solution _ Pods with YAML Lab.txt
- Evidence: Look at it below here in the event section, you can see the error.

### Operational Entry 1925: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/025_Solution _ Pods with YAML Lab.extraction.md::E129
- Type: Warning/Pitfall
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 025_Solution _ Pods with YAML Lab.txt
- Evidence: And it says dry run command is deprecated and is replaced with the dry run equals client.

### Operational Entry 1926: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/025_Solution _ Pods with YAML Lab.extraction.md::E146
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 025_Solution _ Pods with YAML Lab.txt
- Evidence: So it's graded and it's in an error image pool state because we have the wrong image name.

### Operational Entry 1927: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/025_Solution _ Pods with YAML Lab.extraction.md::E151
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 025_Solution _ Pods with YAML Lab.txt
- Evidence: And the last question for this lab is to change the image on this pod, to read this, to fix that error that we purposefully create, and to get the pod in a running state.

### Operational Entry 1928: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/025_Solution _ Pods with YAML Lab.extraction.md::E165
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 025_Solution _ Pods with YAML Lab.txt
- Evidence: Now we'll talk about this error message later when we talk about imperative commands and the declarative way that we apply.

### Operational Entry 1929: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/026_Replication Controllers and ReplicaSets.extraction.md::E6
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 026_Replication Controllers and ReplicaSets.txt
- Evidence: What if for some reason our application crashes and the pod fails, users will no longer be able to access our application?

### Operational Entry 1930: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/026_Replication Controllers and ReplicaSets.extraction.md::E8
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 026_Replication Controllers and ReplicaSets.txt
- Evidence: That way, if one fails, we still have our application running on the other one.

### Operational Entry 1931: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/026_Replication Controllers and ReplicaSets.extraction.md::E12
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 026_Replication Controllers and ReplicaSets.txt
- Evidence: Even if you have a single pod, replication controller can help by automatically bringing up a new pod when the existing one fails.

### Operational Entry 1932: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/026_Replication Controllers and ReplicaSets.extraction.md::E23
- Type: Best Practice
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 026_Replication Controllers and ReplicaSets.txt
- Evidence: Replica set is the new recommended way to set up replication.

### Operational Entry 1933: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/026_Replication Controllers and ReplicaSets.extraction.md::E47
- Type: Best Practice
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 026_Replication Controllers and ReplicaSets.txt
- Evidence: Remember, whatever we move must be under the templates section, meaning this should be intended to the right and have more spaces before them than the template line itself.

### Operational Entry 1934: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/026_Replication Controllers and ReplicaSets.extraction.md::E48
- Type: Best Practice
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 026_Replication Controllers and ReplicaSets.txt
- Evidence: There should be children of the template section looking at our file now.

### Operational Entry 1935: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/026_Replication Controllers and ReplicaSets.extraction.md::E71
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 026_Replication Controllers and ReplicaSets.txt
- Evidence: If you get this wrong, you are likely to get an error that looks like this.

### Operational Entry 1936: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/027_Demo - ReplicaSets.extraction.md::E8
- Type: Best Practice
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 027_Demo - ReplicaSets.txt
- Evidence: And if you remember from the lecture the the version for replica set should be apps slash v1.

### Operational Entry 1937: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/027_Demo - ReplicaSets.extraction.md::E34
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 027_Demo - ReplicaSets.txt
- Evidence: So in order to fix this, um, one easy way to do it is to select the, the whole section that we just pasted, except for the the first line and then press tab twice and then or until, um, you know, um, it fixes, uh, the, the, the indentation.

### Operational Entry 1938: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/027_Demo - ReplicaSets.extraction.md::E41
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 027_Demo - ReplicaSets.txt
- Evidence: So for now, we will just stick to the manual way of fixing it.

### Operational Entry 1939: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/027_Demo - ReplicaSets.extraction.md::E42
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 027_Demo - ReplicaSets.txt
- Evidence: Um, so, uh, now the the format is corrected and there are no more errors in the file.

### Operational Entry 1940: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/027_Demo - ReplicaSets.extraction.md::E96
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 027_Demo - ReplicaSets.txt
- Evidence: So this is, um, a handy tool and command if you would like to inspect, um, what happened to a replica set in case, you know, you're troubleshooting something or you're just looking for more information on what's happening with the replica set, um, etc..

### Operational Entry 1941: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/027_Demo - ReplicaSets.extraction.md::E116
- Type: Best Practice
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 027_Demo - ReplicaSets.txt
- Evidence: So now if I go back and run the kubectl get pods command, I see that it is under terminating state, and soon, um, it should go away from it from the list altogether.

### Operational Entry 1942: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/027_Demo - ReplicaSets.extraction.md::E136
- Type: Best Practice
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 027_Demo - ReplicaSets.txt
- Evidence: Now it should now spin up a new pod in addition to the three that we already had to match the new number of replicas that we specified.

### Operational Entry 1943: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/029_Solution - ReplicaSets.extraction.md::E40
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 029_Solution - ReplicaSets.txt
- Evidence: Of course, it's obvious, but I'm just I just want to show you, if you're not sure what the error is, then you've got to look at one of these parts in a bit more detail.

### Operational Entry 1944: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/029_Solution - ReplicaSets.extraction.md::E75
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 029_Solution - ReplicaSets.txt
- Evidence: So there's one here and there's an issue with the file, so we have to try and fix it.

### Operational Entry 1945: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/029_Solution - ReplicaSets.extraction.md::E81
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 029_Solution - ReplicaSets.txt
- Evidence: So the error is that it's unable to recognize this file.

### Operational Entry 1946: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/029_Solution - ReplicaSets.extraction.md::E97
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 029_Solution - ReplicaSets.txt
- Evidence: So let's go ahead and fix that.

### Operational Entry 1947: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/029_Solution - ReplicaSets.extraction.md::E104
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 029_Solution - ReplicaSets.txt
- Evidence: So next task is to fix the issue in the second file and create the replica set.

### Operational Entry 1948: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/029_Solution - ReplicaSets.extraction.md::E121
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 029_Solution - ReplicaSets.txt
- Evidence: So basically the issue here is that you have the labels specified here called tier front end, and then the label for the part that the replicas will create is engine X.

### Operational Entry 1949: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/029_Solution - ReplicaSets.extraction.md::E122
- Type: Best Practice
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 029_Solution - ReplicaSets.txt
- Evidence: So these two should match.

### Operational Entry 1950: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/029_Solution - ReplicaSets.extraction.md::E125
- Type: Best Practice
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 029_Solution - ReplicaSets.txt
- Evidence: Change this to front end or change this to engine X, but at the end both of them should match.

### Operational Entry 1951: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/029_Solution - ReplicaSets.extraction.md::E141
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 029_Solution - ReplicaSets.txt
- Evidence: Now fix the original replica set to use the correct Xbox image.

### Operational Entry 1952: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/029_Solution - ReplicaSets.extraction.md::E145
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 029_Solution - ReplicaSets.txt
- Evidence: So we've got to fix that.

### Operational Entry 1953: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/029_Solution - ReplicaSets.extraction.md::E168
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 029_Solution - ReplicaSets.txt
- Evidence: So let's go back and look at parts and you see they're all still in the error state, so we're just going to go through and delete them.

### Operational Entry 1954: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/030_Deployments.extraction.md::E7
- Type: Warning/Pitfall
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 030_Deployments.txt
- Evidence: However, when you upgrade your instances, you do not want to upgrade all of them at once, as we just did.

### Operational Entry 1955: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/030_Deployments.extraction.md::E10
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 030_Deployments.txt
- Evidence: Suppose one of the upgrades you performed resulted in an unexpected error, and you're asked to undo the recent change You would like to be able to roll back the changes that were recently carried out.

### Operational Entry 1956: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/030_Deployments.extraction.md::E11
- Type: Warning/Pitfall
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 030_Deployments.txt
- Evidence: Finally, say, for example, you would like to make multiple changes to your environment, such as upgrading the underlying web server versions, as well as scaling your environment and also modifying the resource allocations, etc. you do not want to apply each change immediately after the command is run.

### Operational Entry 1957: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/031_Demo - Deployments.extraction.md::E22
- Type: Best Practice
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 031_Demo - Deployments.txt
- Evidence: So that should be good enough for us to start the deployment.

### Operational Entry 1958: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/033_Solution - Deployments.extraction.md::E23
- Type: Warning/Pitfall
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 033_Solution - Deployments.txt
- Evidence: We do not know how many replica sets.

### Operational Entry 1959: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/033_Solution - Deployments.extraction.md::E61
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 033_Solution - Deployments.txt
- Evidence: So there is some kind of error.

### Operational Entry 1960: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/033_Solution - Deployments.extraction.md::E66
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 033_Solution - Deployments.txt
- Evidence: Right, but the issue is that it's case sensitive, right?

### Operational Entry 1961: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/033_Solution - Deployments.extraction.md::E70
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 033_Solution - Deployments.txt
- Evidence: So the reason we have these kind of exercises is just to help you understand and learn how to, you know, know what the issue is when you come across these errors.

### Operational Entry 1962: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/033_Solution - Deployments.extraction.md::E71
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 033_Solution - Deployments.txt
- Evidence: So oftentimes you you'll face these kind of errors because of these kind of typos or, you know, what's not being spelled correctly or not in the right case.

### Operational Entry 1963: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/033_Solution - Deployments.extraction.md::E72
- Type: Best Practice
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 033_Solution - Deployments.txt
- Evidence: And you should know.

### Operational Entry 1964: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/033_Solution - Deployments.extraction.md::E73
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 033_Solution - Deployments.txt
- Evidence: What those mean when you when you see these kind of errors.

### Operational Entry 1965: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/033_Solution - Deployments.extraction.md::E75
- Type: Warning/Pitfall
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 033_Solution - Deployments.txt
- Evidence: And we don't want to spend a lot of time during the exam.

### Operational Entry 1966: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/033_Solution - Deployments.extraction.md::E79
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 033_Solution - Deployments.txt
- Evidence: So just fix that.

### Operational Entry 1967: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/034_Deployments - Update and Rollback.extraction.md::E14
- Type: Warning/Pitfall
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 034_Deployments - Update and Rollback.txt
- Evidence: The second strategy is where we do not destroy all of them at once.

### Operational Entry 1968: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/034_Deployments - Update and Rollback.extraction.md::E17
- Type: Warning/Pitfall
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 034_Deployments - Update and Rollback.txt
- Evidence: Remember, if you do not specify a strategy while creating the deployment, it will assume it to be rolling.

### Operational Entry 1969: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/035_Demo - Deployments - Update and Rollback.extraction.md::E17
- Type: Warning/Pitfall
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 035_Demo - Deployments - Update and Rollback.txt
- Evidence: But I do not actually see a change cause that's that's the second column in the output.

### Operational Entry 1970: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/035_Demo - Deployments - Update and Rollback.extraction.md::E49
- Type: Warning/Pitfall
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 035_Demo - Deployments - Update and Rollback.txt
- Evidence: But since we're already at the latest version, we do not have a newer image.

### Operational Entry 1971: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/035_Demo - Deployments - Update and Rollback.extraction.md::E85
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 035_Demo - Deployments - Update and Rollback.txt
- Evidence: Okay, so let's pretend that there was an issue with the last change.

### Operational Entry 1972: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/035_Demo - Deployments - Update and Rollback.extraction.md::E87
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 035_Demo - Deployments - Update and Rollback.txt
- Evidence: When I use the 1.12 Perl image and users are reporting issues.

### Operational Entry 1973: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/035_Demo - Deployments - Update and Rollback.extraction.md::E95
- Type: Operational Insight
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 035_Demo - Deployments - Update and Rollback.txt
- Evidence: So Kubernetes keeps a record of this internally.

### Operational Entry 1974: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/035_Demo - Deployments - Update and Rollback.extraction.md::E99
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 035_Demo - Deployments - Update and Rollback.txt
- Evidence: Now let's take a look at another scenario where we have an error.

### Operational Entry 1975: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/035_Demo - Deployments - Update and Rollback.extraction.md::E100
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 035_Demo - Deployments - Update and Rollback.txt
- Evidence: So we will simulate an error by providing the name of an nginx image that doesn't really exist.

### Operational Entry 1976: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/035_Demo - Deployments - Update and Rollback.extraction.md::E102
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 035_Demo - Deployments - Update and Rollback.txt
- Evidence: We'll call it 1.5 error.

### Operational Entry 1977: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/035_Demo - Deployments - Update and Rollback.extraction.md::E103
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 035_Demo - Deployments - Update and Rollback.txt
- Evidence: We know that this image does not exist, but our intention is to create it to simulate an error in deployment.

### Operational Entry 1978: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/035_Demo - Deployments - Update and Rollback.extraction.md::E126
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 035_Demo - Deployments - Update and Rollback.txt
- Evidence: I now know that there is an error with the image that I'm trying to download, so I'm going to undo that recent change by running the cube control rollout undo command.

### Operational Entry 1979: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/037_Solution - Rolling Updates and Rollbacks.extraction.md::E7
- Type: Command
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 037_Solution - Rolling Updates and Rollbacks.txt
- Evidence: K for for cube cuddle.

### Operational Entry 1980: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/037_Solution - Rolling Updates and Rollbacks.extraction.md::E81
- Type: Command
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 037_Solution - Rolling Updates and Rollbacks.txt
- Evidence: Kubectl set.

### Operational Entry 1981: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/037_Solution - Rolling Updates and Rollbacks.extraction.md::E143
- Type: Troubleshooting
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 037_Solution - Rolling Updates and Rollbacks.txt
- Evidence: And when we run this this time, unlike the previous time, we see a lot of failures.

### Operational Entry 1982: learn-kubernetes/06_Networking in Kubernetes/038_Basics of Networking in Kubernetes.extraction.md::E33
- Type: Troubleshooting
- Source: learn-kubernetes / 06_Networking in Kubernetes / 038_Basics of Networking in Kubernetes.txt
- Evidence: When a Kubernetes cluster is setup, Kubernetes does not automatically set up any kind of networking to handle these issues.

### Operational Entry 1983: learn-kubernetes/06_Networking in Kubernetes/038_Basics of Networking in Kubernetes.extraction.md::E38
- Type: Warning/Pitfall
- Source: learn-kubernetes / 06_Networking in Kubernetes / 038_Basics of Networking in Kubernetes.txt
- Evidence: Fortunately, we don't have to set it up all on our own as there are multiple pre-built solutions available.

### Operational Entry 1984: learn-kubernetes/07_Services/039_Services - NodePort.extraction.md::E60
- Type: Warning/Pitfall
- Source: learn-kubernetes / 07_Services / 039_Services - NodePort.txt
- Evidence: It can have labels, but we don't need that for now.

### Operational Entry 1985: learn-kubernetes/07_Services/039_Services - NodePort.extraction.md::E74
- Type: Warning/Pitfall
- Source: learn-kubernetes / 07_Services / 039_Services - NodePort.txt
- Evidence: If you don't provide a target port, it is assumed to be the same as port.

### Operational Entry 1986: learn-kubernetes/07_Services/039_Services - NodePort.extraction.md::E75
- Type: Warning/Pitfall
- Source: learn-kubernetes / 07_Services / 039_Services - NodePort.txt
- Evidence: And if you don't provide a node port, a free port in the valid range between 30,000 and 32,767 is automatically allocated.

### Operational Entry 1987: learn-kubernetes/07_Services/039_Services - NodePort.extraction.md::E109
- Type: Warning/Pitfall
- Source: learn-kubernetes / 07_Services / 039_Services - NodePort.txt
- Evidence: You don't have to do any additional configuration to make this happen.

### Operational Entry 1988: learn-kubernetes/07_Services/040_Demo - Services.extraction.md::E11
- Type: Warning/Pitfall
- Source: learn-kubernetes / 07_Services / 040_Demo - Services.txt
- Evidence: Note that you don't really need to follow this directory structure as I'm doing.

### Operational Entry 1989: learn-kubernetes/07_Services/040_Demo - Services.extraction.md::E15
- Type: Best Practice
- Source: learn-kubernetes / 07_Services / 040_Demo - Services.txt
- Evidence: And for service it should be set to v1.

### Operational Entry 1990: learn-kubernetes/07_Services/040_Demo - Services.extraction.md::E44
- Type: Best Practice
- Source: learn-kubernetes / 07_Services / 040_Demo - Services.txt
- Evidence: So if you know the IP of the worker node, you can simply go to a browser and just type in the IP of the worker node followed by the port number, and you should be able to access this application.

### Operational Entry 1991: learn-kubernetes/07_Services/040_Demo - Services.extraction.md::E45
- Type: Best Practice
- Source: learn-kubernetes / 07_Services / 040_Demo - Services.txt
- Evidence: Now, since we are running this on minikube, we can also run the minikube service command followed by the name of the service, which is the My App service, and use the option Dash dash URL and it should print us the URL and with the service where the service is available.

### Operational Entry 1992: learn-kubernetes/07_Services/041_Services - ClusterIP.extraction.md::E19
- Type: Best Practice
- Source: learn-kubernetes / 07_Services / 041_Services - ClusterIP.txt
- Evidence: Each service gets an IP and name assigned to it inside the cluster, and that is the name that should be used by other pods to access the service.

### Operational Entry 1993: learn-kubernetes/07_Services/041_Services - ClusterIP.extraction.md::E32
- Type: Best Practice
- Source: learn-kubernetes / 07_Services / 041_Services - ClusterIP.txt
- Evidence: We will refer to the pod definition file and copy the labels from it and move it under selector, and that should be it.

### Operational Entry 1994: learn-kubernetes/07_Services/044_Solution - Services.extraction.md::E33
- Type: Warning/Pitfall
- Source: learn-kubernetes / 07_Services / 044_Solution - Services.txt
- Evidence: We don't really know what it is, so we're kind of exploring and finding out more about it.

### Operational Entry 1995: learn-kubernetes/07_Services/044_Solution - Services.extraction.md::E85
- Type: Troubleshooting
- Source: learn-kubernetes / 07_Services / 044_Solution - Services.txt
- Evidence: We see that it gives us a bad gateway error.

### Operational Entry 1996: learn-kubernetes/08_Microservices Architecture/045_Microservices Application.extraction.md::E61
- Type: Warning/Pitfall
- Source: learn-kubernetes / 08_Microservices Architecture / 045_Microservices Application.txt
- Evidence: Note that using links this way is deprecated and the support may be removed in a future in Docker.

### Operational Entry 1997: learn-kubernetes/08_Microservices Architecture/046_Deploying Voting App on Kubernetes.extraction.md::E34
- Type: Best Practice
- Source: learn-kubernetes / 08_Microservices Architecture / 046_Deploying Voting App on Kubernetes.txt
- Evidence: Should the voting app use the IP address of the Redis pod?

### Operational Entry 1998: learn-kubernetes/08_Microservices Architecture/046_Deploying Voting App on Kubernetes.extraction.md::E37
- Type: Troubleshooting
- Source: learn-kubernetes / 08_Microservices Architecture / 046_Deploying Voting App on Kubernetes.txt
- Evidence: And you may also run into issues when you try to scale your applications in the future.

### Operational Entry 1999: learn-kubernetes/08_Microservices Architecture/046_Deploying Voting App on Kubernetes.extraction.md::E45
- Type: Best Practice
- Source: learn-kubernetes / 08_Microservices Architecture / 046_Deploying Voting App on Kubernetes.txt
- Evidence: And this is not a best practice to hard code stuff like this within the source code of an application.

### Operational Entry 2000: learn-kubernetes/08_Microservices Architecture/046_Deploying Voting App on Kubernetes.extraction.md::E46
- Type: Best Practice
- Source: learn-kubernetes / 08_Microservices Architecture / 046_Deploying Voting App on Kubernetes.txt
- Evidence: Instead you should be using environment variables or something.

### Operational Entry 2001: learn-kubernetes/08_Microservices Architecture/046_Deploying Voting App on Kubernetes.extraction.md::E49
- Type: Best Practice
- Source: learn-kubernetes / 08_Microservices Architecture / 046_Deploying Voting App on Kubernetes.txt
- Evidence: So, um, they should just be of type cluster IP.

### Operational Entry 2002: learn-kubernetes/08_Microservices Architecture/046_Deploying Voting App on Kubernetes.extraction.md::E51
- Type: Best Practice
- Source: learn-kubernetes / 08_Microservices Architecture / 046_Deploying Voting App on Kubernetes.txt
- Evidence: So what should we name the PostgreSQL service?

### Operational Entry 2003: learn-kubernetes/08_Microservices Architecture/046_Deploying Voting App on Kubernetes.extraction.md::E53
- Type: Best Practice
- Source: learn-kubernetes / 08_Microservices Architecture / 046_Deploying Voting App on Kubernetes.txt
- Evidence: So the service that we create for PostgreSQL should be named DB.

### Operational Entry 2004: learn-kubernetes/08_Microservices Architecture/047_Demo - Deploying Voting App on Kubernetes.extraction.md::E51
- Type: Best Practice
- Source: learn-kubernetes / 08_Microservices Architecture / 047_Demo - Deploying Voting App on Kubernetes.txt
- Evidence: And we should be done with the Reedus pod.

### Operational Entry 2005: learn-kubernetes/08_Microservices Architecture/047_Demo - Deploying Voting App on Kubernetes.extraction.md::E69
- Type: Best Practice
- Source: learn-kubernetes / 08_Microservices Architecture / 047_Demo - Deploying Voting App on Kubernetes.txt
- Evidence: It should be Postgres underscore user.

### Operational Entry 2006: learn-kubernetes/08_Microservices Architecture/047_Demo - Deploying Voting App on Kubernetes.extraction.md::E84
- Type: Warning/Pitfall
- Source: learn-kubernetes / 08_Microservices Architecture / 047_Demo - Deploying Voting App on Kubernetes.txt
- Evidence: So in this case we don't really need to specify the port because it's not going to have the service associated with it.

### Operational Entry 2007: learn-kubernetes/08_Microservices Architecture/047_Demo - Deploying Voting App on Kubernetes.extraction.md::E106
- Type: Best Practice
- Source: learn-kubernetes / 08_Microservices Architecture / 047_Demo - Deploying Voting App on Kubernetes.txt
- Evidence: The reader's database should not be exposed to the outside world.

### Operational Entry 2008: learn-kubernetes/08_Microservices Architecture/047_Demo - Deploying Voting App on Kubernetes.extraction.md::E108
- Type: Best Practice
- Source: learn-kubernetes / 08_Microservices Architecture / 047_Demo - Deploying Voting App on Kubernetes.txt
- Evidence: Um, so basically components already on our Kubernetes cluster should be able to talk to it, not the outside world.

### Operational Entry 2009: learn-kubernetes/08_Microservices Architecture/047_Demo - Deploying Voting App on Kubernetes.extraction.md::E118
- Type: Best Practice
- Source: learn-kubernetes / 08_Microservices Architecture / 047_Demo - Deploying Voting App on Kubernetes.txt
- Evidence: So target port is going to be what port should it forward to on the container.

### Operational Entry 2010: learn-kubernetes/08_Microservices Architecture/047_Demo - Deploying Voting App on Kubernetes.extraction.md::E124
- Type: Best Practice
- Source: learn-kubernetes / 08_Microservices Architecture / 047_Demo - Deploying Voting App on Kubernetes.txt
- Evidence: So this is basically telling the service what pods should it forward traffic to.

### Operational Entry 2011: learn-kubernetes/08_Microservices Architecture/047_Demo - Deploying Voting App on Kubernetes.extraction.md::E137
- Type: Best Practice
- Source: learn-kubernetes / 08_Microservices Architecture / 047_Demo - Deploying Voting App on Kubernetes.txt
- Evidence: It should be only internal to our application.

### Operational Entry 2012: learn-kubernetes/08_Microservices Architecture/047_Demo - Deploying Voting App on Kubernetes.extraction.md::E138
- Type: Best Practice
- Source: learn-kubernetes / 08_Microservices Architecture / 047_Demo - Deploying Voting App on Kubernetes.txt
- Evidence: We shouldn't allow it to be exposed to the outside world.

### Operational Entry 2013: learn-kubernetes/08_Microservices Architecture/047_Demo - Deploying Voting App on Kubernetes.extraction.md::E141
- Type: Warning/Pitfall
- Source: learn-kubernetes / 08_Microservices Architecture / 047_Demo - Deploying Voting App on Kubernetes.txt
- Evidence: So you don't technically need it.

### Operational Entry 2014: learn-kubernetes/08_Microservices Architecture/047_Demo - Deploying Voting App on Kubernetes.extraction.md::E164
- Type: Best Practice
- Source: learn-kubernetes / 08_Microservices Architecture / 047_Demo - Deploying Voting App on Kubernetes.txt
- Evidence: So this should be port 80.

### Operational Entry 2015: learn-kubernetes/08_Microservices Architecture/047_Demo - Deploying Voting App on Kubernetes.extraction.md::E170
- Type: Best Practice
- Source: learn-kubernetes / 08_Microservices Architecture / 047_Demo - Deploying Voting App on Kubernetes.txt
- Evidence: And this is basically going to tell the the nodes in our Kubernetes cluster what port they should listen on so that they can forward traffic to these remote servers.

### Operational Entry 2016: learn-kubernetes/08_Microservices Architecture/047_Demo - Deploying Voting App on Kubernetes.extraction.md::E178
- Type: Best Practice
- Source: learn-kubernetes / 08_Microservices Architecture / 047_Demo - Deploying Voting App on Kubernetes.txt
- Evidence: And that should be everything that we need for the vote service.

### Operational Entry 2017: learn-kubernetes/08_Microservices Architecture/047_Demo - Deploying Voting App on Kubernetes.extraction.md::E233
- Type: Operational Insight
- Source: learn-kubernetes / 08_Microservices Architecture / 047_Demo - Deploying Voting App on Kubernetes.txt
- Evidence: They're only going to be accessible internally.

### Operational Entry 2018: learn-kubernetes/08_Microservices Architecture/048_Demo - Deploying Voting App on Kubernetes With Deployments.extraction.md::E8
- Type: Warning/Pitfall
- Source: learn-kubernetes / 08_Microservices Architecture / 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Evidence: You don't get that functionality with just pods.

### Operational Entry 2019: learn-kubernetes/08_Microservices Architecture/048_Demo - Deploying Voting App on Kubernetes With Deployments.extraction.md::E76
- Type: Troubleshooting
- Source: learn-kubernetes / 08_Microservices Architecture / 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Evidence: And we'll fix the spacing.

### Operational Entry 2020: learn-kubernetes/08_Microservices Architecture/048_Demo - Deploying Voting App on Kubernetes With Deployments.extraction.md::E78
- Type: Best Practice
- Source: learn-kubernetes / 08_Microservices Architecture / 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Evidence: So this should be whatever label you put here.

### Operational Entry 2021: learn-kubernetes/08_Microservices Architecture/048_Demo - Deploying Voting App on Kubernetes With Deployments.extraction.md::E112
- Type: Warning/Pitfall
- Source: learn-kubernetes / 08_Microservices Architecture / 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Evidence: So you don't have to change anything with the service.

### Operational Entry 2022: learn-kubernetes/08_Microservices Architecture/048_Demo - Deploying Voting App on Kubernetes With Deployments.extraction.md::E115
- Type: Best Practice
- Source: learn-kubernetes / 08_Microservices Architecture / 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Evidence: Everything should be good.

### Operational Entry 2023: learn-kubernetes/08_Microservices Architecture/048_Demo - Deploying Voting App on Kubernetes With Deployments.extraction.md::E120
- Type: Troubleshooting
- Source: learn-kubernetes / 08_Microservices Architecture / 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Evidence: And hopefully there's no errors.

### Operational Entry 2024: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E13
- Type: Warning/Pitfall
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 050_Kubernetes on Cloud - Introduction.txt
- Evidence: So in these environments, um, mostly you won't have access to the master nodes or you, you most likely do not have access to the VMs themselves, um, to perform any kind of, um, you know, configuration changes on the master nodes.

### Operational Entry 2025: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E18
- Type: Warning/Pitfall
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 050_Kubernetes on Cloud - Introduction.txt
- Evidence: So, uh, a lot of concepts that we learned throughout this course about Kubernetes itself don't change and are applicable to any of these Kubernetes environments.

### Operational Entry 2026: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E4
- Type: Best Practice
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Evidence: And that should be sufficient to follow this demo.

### Operational Entry 2027: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E5
- Type: Warning/Pitfall
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Evidence: So if you don't have access to Google Cloud already, use this link and sign up.

### Operational Entry 2028: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E12
- Type: Best Practice
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Evidence: So this should load the Kubernetes cluster creation interface.

### Operational Entry 2029: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E30
- Type: Best Practice
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Evidence: And on the lower half of the screen the Google Cloud Shell should open up.

### Operational Entry 2030: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E68
- Type: Warning/Pitfall
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Evidence: And we can also see that our load balancers, um, do not have an external IP yet, so they are still in a pending state.

### Operational Entry 2031: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E82
- Type: Best Practice
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Evidence: If you'd like to see more details, you can click on any of these and this should give you more details about the service in general.

### Operational Entry 2032: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E50
- Type: Warning/Pitfall
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Evidence: Now um you don't really need this unless you are really, uh unless you really want to ssh to the worker nodes.

### Operational Entry 2033: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E75
- Type: Warning/Pitfall
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Evidence: Now if you don't have the AWS cli installed then you follow the relevant, um, steps in the documentation, uh, for your operating system.

### Operational Entry 2034: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E80
- Type: Best Practice
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Evidence: So once run, we see that the Kubeconfig um is configured in our home directory under the folder kube to verify if it's working as expected, run the kubectl get nodes command, and we should see the two worker nodes that are provisioned on AWS with their status and version of 1.16.

### Operational Entry 2035: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E83
- Type: Warning/Pitfall
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Evidence: The master nodes do not host any applications or workloads.

### Operational Entry 2036: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E86
- Type: Best Practice
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Evidence: So now we should be good to move ahead with our application deployment.

### Operational Entry 2037: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E12
- Type: Warning/Pitfall
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Evidence: And we do not have a cluster created.

### Operational Entry 2038: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E47
- Type: Best Practice
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Evidence: And then we should be able to log in to the cloud shell.

### Operational Entry 2039: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E61
- Type: Best Practice
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Evidence: So now the Kubeconfig, um, has been set up and we should be able to access the cluster.

### Operational Entry 2040: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/058_Kubernetes Setup - Kubeadm.extraction.md::E2
- Type: Best Practice
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 058_Kubernetes Setup - Kubeadm.txt
- Evidence: The cube admin tool helps us set up a multi-node cluster following the Kubernetes best practices.

### Operational Entry 2041: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E25
- Type: Troubleshooting
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So if you're running, you know, like one of the M1, M2, M3, M4 chips, there have been certain issues with trying to get VirtualBox up and running on Mac.

### Operational Entry 2042: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E27
- Type: Troubleshooting
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: You'll see that when we get to the Mac section, we're going to actually be using a different tool called Multipass just to help avoid any issues with running VirtualBox on Apple Silicon.

### Operational Entry 2043: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E41
- Type: Warning/Pitfall
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: We don't need to change anything.

### Operational Entry 2044: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E42
- Type: Warning/Pitfall
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: It's going to give you a warning that you're going to temporarily lose network connectivity.

### Operational Entry 2045: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E53
- Type: Warning/Pitfall
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: Um, if you don't select that, that's okay.

### Operational Entry 2046: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E92
- Type: Best Practice
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So after your computer rebooted you should have vagrant installed.

### Operational Entry 2047: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E95
- Type: Warning/Pitfall
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: I don't think it should matter.

### Operational Entry 2048: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E103
- Type: Best Practice
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: This confirms that we have installed vagrant, um, and everything is working as it should.

### Operational Entry 2049: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E157
- Type: Troubleshooting
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: You want to make sure that there's no errors.

### Operational Entry 2050: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E158
- Type: Troubleshooting
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: If there's some sort of error just go ahead and run a vagrant.

### Operational Entry 2051: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E162
- Type: Troubleshooting
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And if there's some sort of error, the logs are usually fairly helpful.

### Operational Entry 2052: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E163
- Type: Troubleshooting
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And you can kind of debug by taking a look at the error messages that it's outputting.

### Operational Entry 2053: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E193
- Type: Best Practice
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So at this point we should have a connection to all three nodes.

### Operational Entry 2054: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E205
- Type: Operational Insight
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: Uses this internally.

### Operational Entry 2055: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E7
- Type: Warning/Pitfall
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: We don't need to install or we don't need to purchase other physical equipment or hardware servers or other computers.

### Operational Entry 2056: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E56
- Type: Warning/Pitfall
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: And I'm going to go to in this case VS code I don't need this.

### Operational Entry 2057: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E69
- Type: Best Practice
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: So now we can see that the script has finished running, so it should have created three virtual machines for us.

### Operational Entry 2058: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E105
- Type: Best Practice
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: We should be good to go.

### Operational Entry 2059: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E118
- Type: Best Practice
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: But you should be good to go.

### Operational Entry 2060: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E2
- Type: Best Practice
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So if you've been following along, you should now have three servers that we're going to use as nodes for our Kubernetes cluster.

### Operational Entry 2061: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E34
- Type: Best Practice
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: If you install the virtual machines as per the previous demos, you should already have three virtual machines that meet the minimum requirements.

### Operational Entry 2062: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E36
- Type: Operational Insight
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Remember Kubernetes utilizes container runtimes to actually spin up containers.

### Operational Entry 2063: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E39
- Type: Operational Insight
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And you're going to see the instructions for installing Stalling one of the supported container runtimes.

### Operational Entry 2064: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E41
- Type: Operational Insight
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: But if you want to set up your cluster however you'd like, you can use one of the other container runtimes.

### Operational Entry 2065: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E76
- Type: Best Practice
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So if we want to say like, oh, this pod should only have access to X amount of memory.

### Operational Entry 2066: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E87
- Type: Warning/Pitfall
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So you don't have to change anything for kubelet.

### Operational Entry 2067: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E88
- Type: Warning/Pitfall
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: If you're using even somewhat modern version of Kubelet or Kubernetes, it's going to be using systemd already, so you don't have to configure anything, but you do have to configure the systemd cgroup driver for your container runtime.

### Operational Entry 2068: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E113
- Type: Warning/Pitfall
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So you don't have to manually go in and change it.

### Operational Entry 2069: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E118
- Type: Troubleshooting
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So that's why we get an error.

### Operational Entry 2070: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E120
- Type: Warning/Pitfall
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Um, let's just make sure we don't copy that again.

### Operational Entry 2071: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E153
- Type: Warning/Pitfall
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Technically you don't need to install kubectl on all of the nodes if you don't want to have the tool on all of the nodes, you would just you would at least need it on the control plane node.

### Operational Entry 2072: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E157
- Type: Troubleshooting
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Um that's going to be in like troubleshooting scenarios where the kube API server is down and you want to be able to check if a container is running you.

### Operational Entry 2073: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E161
- Type: Troubleshooting
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: For those specific troubleshooting scenarios.

### Operational Entry 2074: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E163
- Type: Warning/Pitfall
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: You don't need to install this, but we're going to go ahead and install it anyways.

### Operational Entry 2075: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E164
- Type: Troubleshooting
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Now the last step here is very specific to our environment, and I want to explain the issue that we're going.

### Operational Entry 2076: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E180
- Type: Warning/Pitfall
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Which we don't want.

### Operational Entry 2077: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E185
- Type: Best Practice
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And all of our virtual machines should already have an environment variable called primary IP.

### Operational Entry 2078: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E188
- Type: Warning/Pitfall
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And that's important because we don't want it to use the first interface.

### Operational Entry 2079: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E196
- Type: Best Practice
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And we should be good.

### Operational Entry 2080: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E198
- Type: Warning/Pitfall
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So at this point, if we go back to the install the installation page and we don't want to go to, we want creating a cluster with kube ADM, we're going to be at the following stage which is initializing your control plane node.

### Operational Entry 2081: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E209
- Type: Warning/Pitfall
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: We don't want that.

### Operational Entry 2082: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E213
- Type: Warning/Pitfall
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And it's going to tell all of the downstream servers to use this address instead of this one, because if we don't pass in that flag, it'll just default to this one, which if you're using another environment where you just have one interface, then it'll work out of the box.

### Operational Entry 2083: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E214
- Type: Warning/Pitfall
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: But we have this extra interface that we don't want to use.

### Operational Entry 2084: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E217
- Type: Warning/Pitfall
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So we don't want to use this one.

### Operational Entry 2085: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E247
- Type: Warning/Pitfall
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: But don't worry, if you lose it, there's a command that you can use to then generate this command again.

### Operational Entry 2086: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E255
- Type: Best Practice
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And so now if you did kubectl get node we should see we have one node called control plane.

### Operational Entry 2087: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E259
- Type: Warning/Pitfall
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: We can see that the role is control plane, and we don't see any worker nodes because we haven't configured them to join yet.

### Operational Entry 2088: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E267
- Type: Best Practice
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: It doesn't matter which one you use, they should all work if they follow the proper standards.

### Operational Entry 2089: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E311
- Type: Warning/Pitfall
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Don't worry about the ones that got evicted.

### Operational Entry 2090: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E313
- Type: Best Practice
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And everything else should be good to go.

### Operational Entry 2091: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E322
- Type: Warning/Pitfall
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: We don't.

### Operational Entry 2092: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E343
- Type: Best Practice
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So everything should be good to go.

### Operational Entry 2093: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E350
- Type: Best Practice
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And we should be able to test to see if we're able to access it.

### Operational Entry 2094: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E353
- Type: Best Practice
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So we should theoretically, if I do a cube CTL get service.

### Operational Entry 2095: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E355
- Type: Best Practice
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: We should be able to access it using that port on that node.

### Operational Entry 2096: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E359
- Type: Best Practice
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And we should be able to do this with the IP address of node two as well.

### Operational Entry 2097: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E361
- Type: Best Practice
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And all of the networking is working as it should.

### Operational Entry 2098: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E371
- Type: Troubleshooting
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And this is to help avoid certain issues that you may.

### Operational Entry 2099: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E377
- Type: Troubleshooting
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And it's going to help avoid any potential issues.
