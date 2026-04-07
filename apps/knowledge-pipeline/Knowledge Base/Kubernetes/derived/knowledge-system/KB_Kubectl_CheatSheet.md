# KB Kubectl CheatSheet

এই cheat sheet transcript-derived command evidence only; কোন command paraphrase করা হয়নি।

## Command Entry 1: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E31
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
```bash
Docker consists of multiple tools that are put together for example, the Docker CLI, the Docker API, the build tools that help in building images.
```

## Command Entry 2: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/018_Pods.extraction.md::E67
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 018_Pods.txt
```bash
Docker hub, as we discussed, is a public repository where Docker images of various applications are stored.
```

## Command Entry 3: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/045_Lab Solution - Imperative Commands (optional).extraction.md::E66
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 045_Lab Solution - Imperative Commands (optional).txt
```bash
KUBECTL EXPOSE Redis, and then we gonna' specify the port, which is 6379.
```

## Command Entry 4: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/045_Lab Solution - Imperative Commands (optional).extraction.md::E98
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 045_Lab Solution - Imperative Commands (optional).txt
```bash
KUBECTL CREATE namespace Dev NS.
```

## Command Entry 5: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/098_Lab Solution_ Rolling update.extraction.md::E56
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 098_Lab Solution_ Rolling update.txt
```bash
Kubectle, set image, deploy, front end.
```

## Command Entry 6: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/100_Commands and Arguments in Docker.extraction.md::E55
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 100_Commands and Arguments in Docker.txt
```bash
Docker run ubuntu sleeper ten.
```

## Command Entry 7: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/135_Cluster Upgrade Introduction.extraction.md::E63
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 135_Cluster Upgrade Introduction.txt
```bash
Kubeadm has an upgrade command that helps in upgrading clusters with Kubeadm.
```

## Command Entry 8: certified-kubernetes-administrator-with-practice-tests/07_Security/168_Lab Solution - Cluster Roles.extraction.md::E37
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 168_Lab Solution - Cluster Roles.txt
```bash
Kubectl describe cluster role and cluster admin.
```

## Command Entry 9: certified-kubernetes-administrator-with-practice-tests/07_Security/168_Lab Solution - Cluster Roles.extraction.md::E96
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 168_Lab Solution - Cluster Roles.txt
```bash
Kubectl describe cluster role storage-admin.
```

## Command Entry 10: certified-kubernetes-administrator-with-practice-tests/07_Security/172_Image Security.extraction.md::E21
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 172_Image Security.txt
```bash
Docker hub.
```

## Command Entry 11: certified-kubernetes-administrator-with-practice-tests/07_Security/172_Image Security.extraction.md::E43
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 172_Image Security.txt
```bash
Docker registry is a built in secret type that was built for storing Docker credentials.
```

## Command Entry 12: certified-kubernetes-administrator-with-practice-tests/07_Security/174_Lab Solution - Image Security.extraction.md::E40
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 174_Lab Solution - Image Security.txt
```bash
Docker server as this, and the Docker username, user.
```

## Command Entry 13: certified-kubernetes-administrator-with-practice-tests/07_Security/175_Pre-requisite - Security in Docker.extraction.md::E37
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 175_Pre-requisite - Security in Docker.txt
```bash
Docker uses Linux capabilities to implement this.
```

## Command Entry 14: certified-kubernetes-administrator-with-practice-tests/08_Storage/190_Storage in Docker.extraction.md::E96
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 190_Storage in Docker.txt
```bash
Docker will choose the best storage driver available automatically based on the operating system.
```

## Command Entry 15: certified-kubernetes-administrator-with-practice-tests/08_Storage/193_Volumes.extraction.md::E3
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes.txt
```bash
Docker containers are meant to be transient in nature, which means they are meant to last only for a short period of time.
```

## Command Entry 16: certified-kubernetes-administrator-with-practice-tests/09_Networking/210_Prerequisite Docker Networking.extraction.md::E27
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 210_Prerequisite Docker Networking.txt
```bash
Docker internally uses a technique similar to what we saw in the video on namespaces, by running the IP link ad command with the type set to bridge.
```

## Command Entry 17: certified-kubernetes-administrator-with-practice-tests/09_Networking/210_Prerequisite Docker Networking.extraction.md::E52
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 210_Prerequisite Docker Networking.txt
```bash
Docker creates a namespace, creates a pair of interfaces, attaches one end to the container, and another end to the bridge network.
```

## Command Entry 18: certified-kubernetes-administrator-with-practice-tests/09_Networking/210_Prerequisite Docker Networking.extraction.md::E64
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 210_Prerequisite Docker Networking.txt
```bash
Docker provides a port publishing or port mapping option when you run containers.
```

## Command Entry 19: certified-kubernetes-administrator-with-practice-tests/09_Networking/210_Prerequisite Docker Networking.extraction.md::E77
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 210_Prerequisite Docker Networking.txt
```bash
Docker does it the same way.
```

## Command Entry 20: certified-kubernetes-administrator-with-practice-tests/09_Networking/210_Prerequisite Docker Networking.extraction.md::E78
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 210_Prerequisite Docker Networking.txt
```bash
Docker adds the rule to the Docker chain and sets destination to include the container's IP as well.
```

## Command Entry 21: certified-kubernetes-administrator-with-practice-tests/09_Networking/211_Prerequisite CNI.extraction.md::E40
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 211_Prerequisite CNI.txt
```bash
Docker.
```

## Command Entry 22: certified-kubernetes-administrator-with-practice-tests/09_Networking/211_Prerequisite CNI.extraction.md::E42
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 211_Prerequisite CNI.txt
```bash
Docker has its own set of standards known as CNM, which stands for Container Network Model, which is another standard that aims at solving container networking challenges similar to CNI, but with some differences due to the differences.
```

## Command Entry 23: certified-kubernetes-administrator-with-practice-tests/09_Networking/230_Lab Solution - Explore DNS (optional).extraction.md::E4
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 230_Lab Solution - Explore DNS (optional).txt
```bash
K equals kubectl.
```

## Command Entry 24: certified-kubernetes-administrator-with-practice-tests/09_Networking/230_Lab Solution - Explore DNS (optional).extraction.md::E151
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 230_Lab Solution - Explore DNS (optional).txt
```bash
Kubectl, get deployment.
```

## Command Entry 25: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/241_Design a Kubernetes Cluster.extraction.md::E19
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 241_Design a Kubernetes Cluster.txt
```bash
Kubeadm is an appropriate tool.
```

## Command Entry 26: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/252_Helm - Introduction.extraction.md::E24
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 252_Helm - Introduction.txt
```bash
Helm, however, is built from ground up to know about such stuff.
```

## Command Entry 27: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/252_Helm - Introduction.extraction.md::E33
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 252_Helm - Introduction.txt
```bash
Helm does a similar thing and more for YAML files and the Kubernetes objects that make up our application.
```

## Command Entry 28: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/252_Helm - Introduction.extraction.md::E38
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 252_Helm - Introduction.txt
```bash
Helm will know what individual objects need to change to make this happen.
```

## Command Entry 29: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/252_Helm - Introduction.extraction.md::E39
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 252_Helm - Introduction.txt
```bash
Helm keeps track of all the changes made to the app files, and that allows us to roll back to the previous so-called revision.
```

## Command Entry 30: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/252_Helm - Introduction.extraction.md::E42
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 252_Helm - Introduction.txt
```bash
Helm does all the work.
```

## Command Entry 31: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/252_Helm - Introduction.extraction.md::E46
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 252_Helm - Introduction.txt
```bash
Helm can do that for us.
```

## Command Entry 32: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/255_A Quick Note on Helm2 vs Helm3.extraction.md::E5
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 255_A Quick Note on Helm2 vs Helm3.txt
```bash
Helm 1.0 was first released in February, 2016, Helm 2.0 in November, 2016, and Helm 3.0 in November, 2019.
```

## Command Entry 33: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/255_A Quick Note on Helm2 vs Helm3.extraction.md::E11
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 255_A Quick Note on Helm2 vs Helm3.txt
```bash
Helm has a CLI client installed on your local machine that helps you perform Helm-specific actions against your Kubernetes cluster.
```

## Command Entry 34: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/255_A Quick Note on Helm2 vs Helm3.extraction.md::E26
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 255_A Quick Note on Helm2 vs Helm3.txt
```bash
Helm 2 had Tiller and Helm 3 simplifies integration with Kubernetes by removing Tiller.
```

## Command Entry 35: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/255_A Quick Note on Helm2 vs Helm3.extraction.md::E43
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 255_A Quick Note on Helm2 vs Helm3.txt
```bash
Helm 2 was less sophisticated when it came to how it did such rollbacks.
```

## Command Entry 36: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/255_A Quick Note on Helm2 vs Helm3.extraction.md::E56
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 255_A Quick Note on Helm2 vs Helm3.txt
```bash
Helm 3, on the other hand, is more intelligent.
```

## Command Entry 37: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/255_A Quick Note on Helm2 vs Helm3.extraction.md::E64
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 255_A Quick Note on Helm2 vs Helm3.txt
```bash
Helm 2 looks at the old chart and then the new chart that you want to upgrade to, and all your changes will be lost since they don't exist in the old chart or the new chart.
```

## Command Entry 38: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/256_Helm Components.extraction.md::E2
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 256_Helm Components.txt
```bash
Helm has multiple components we'll be working with, so let's take a look at its general structure, concepts, and the pieces we'll be working with.
```

## Command Entry 39: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/257_Helm Charts.extraction.md::E2
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 257_Helm Charts.txt
```bash
Helm is rather an easy to use command line tool.
```

## Command Entry 40: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/257_Helm Charts.extraction.md::E7
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 257_Helm Charts.txt
```bash
Helm knows how to do its job with the help of what are called charts.
```

## Command Entry 41: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/258_Working With Helm - Basics.extraction.md::E7
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 258_Working With Helm - Basics.txt
```bash
Helm restore?
```

## Command Entry 42: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/261_Lifecycle Management With Helm.extraction.md::E17
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 261_Lifecycle Management With Helm.txt
```bash
Helm can automatically upgrade them all with one single command.
```

## Command Entry 43: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/261_Lifecycle Management With Helm.extraction.md::E54
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 261_Lifecycle Management With Helm.txt
```bash
Helm's Lifecycle Management allows for another cool thing called rollback.
```

## Command Entry 44: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E65
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
```bash
Kubectl describe deploy app, and we see the image set we see scale that replica set to one, but we don't see it the deployment, scaling up the replica set to two.
```

## Command Entry 45: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E31
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
```bash
Docker consists of multiple tools that are put together, for example Docker CLI, the Docker API, the build tools that help in building images.
```

## Command Entry 46: certified-kubernetes-application-developer/02_Core Concepts/010_Recap - Pods.extraction.md::E71
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 010_Recap - Pods.txt
```bash
Docker hub, as we discussed, is a public repository where latest Docker images of various applications are stored.
```

## Command Entry 47: certified-kubernetes-application-developer/02_Core Concepts/019_Solution - Pods (optional).extraction.md::E22
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 019_Solution - Pods (optional).txt
```bash
Kubectl Run and since there's no specification about the name of the pod.
```

## Command Entry 48: certified-kubernetes-application-developer/02_Core Concepts/038_Solution - Imperative Commands (optional).extraction.md::E65
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 038_Solution - Imperative Commands (optional).txt
```bash
Kubectl, expose, and Redis, and then we're gonna specify the port, which is 6379.
```

## Command Entry 49: certified-kubernetes-application-developer/02_Core Concepts/038_Solution - Imperative Commands (optional).extraction.md::E102
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 038_Solution - Imperative Commands (optional).txt
```bash
Kubectl, create, namespace, DEV NS.
```

## Command Entry 50: certified-kubernetes-application-developer/03_Configuration/041_Define, build and modify container images.extraction.md::E19
- Source: certified-kubernetes-application-developer / 03_Configuration / 041_Define, build and modify container images.txt
```bash
Docker file is a text file written in a specific format that Docker can understand.
```

## Command Entry 51: certified-kubernetes-application-developer/03_Configuration/043_Commands and Arguments in Docker.extraction.md::E52
- Source: certified-kubernetes-application-developer / 03_Configuration / 043_Commands and Arguments in Docker.txt
```bash
Docker run ubuntu sleeper ten.
```

## Command Entry 52: certified-kubernetes-application-developer/03_Configuration/058_Pre-requisite - Security in Docker.extraction.md::E37
- Source: certified-kubernetes-application-developer / 03_Configuration / 058_Pre-requisite - Security in Docker.txt
```bash
Docker uses Linux capabilities to implement this.
```

## Command Entry 53: certified-kubernetes-application-developer/06_POD Design/102_Solution - Rolling Updates (Optional).extraction.md::E59
- Source: certified-kubernetes-application-developer / 06_POD Design / 102_Solution - Rolling Updates (Optional).txt
```bash
Kubectl, set image, deploy front end, container name is "Simple Web App", equals test the image.
```

## Command Entry 54: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E50
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
```bash
Docker automatically creates a copy of the file in the read write layer, and I will then be modifying a different version of the file in the read write layer.
```

## Command Entry 55: certified-kubernetes-application-developer/08_State Persistence/123_Storage in Docker.extraction.md::E96
- Source: certified-kubernetes-application-developer / 08_State Persistence / 123_Storage in Docker.txt
```bash
Docker will choose the best storage driver available automatically based on the operating system.
```

## Command Entry 56: certified-kubernetes-application-developer/08_State Persistence/125_Volumes in Kubernetes.extraction.md::E3
- Source: certified-kubernetes-application-developer / 08_State Persistence / 125_Volumes in Kubernetes.txt
```bash
Docker containers are meant to be transient in nature, which means they are meant to last only for a short period of time.
```

## Command Entry 57: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E136
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
```bash
Kubectl get pvc.
```

## Command Entry 58: certified-kubernetes-application-developer/10_Helm Fundamentals/167_Helm Introduction.extraction.md::E26
- Source: certified-kubernetes-application-developer / 10_Helm Fundamentals / 167_Helm Introduction.txt
```bash
Helm changes the paradigm.
```

## Command Entry 59: certified-kubernetes-application-developer/10_Helm Fundamentals/167_Helm Introduction.extraction.md::E31
- Source: certified-kubernetes-application-developer / 10_Helm Fundamentals / 167_Helm Introduction.txt
```bash
Helm, however, is built from the ground up to know about such stuff.
```

## Command Entry 60: certified-kubernetes-application-developer/10_Helm Fundamentals/167_Helm Introduction.extraction.md::E45
- Source: certified-kubernetes-application-developer / 10_Helm Fundamentals / 167_Helm Introduction.txt
```bash
Helm does a similar thing and more for the YAML files and Kubernetes objects that make up our application.
```

## Command Entry 61: certified-kubernetes-application-developer/10_Helm Fundamentals/167_Helm Introduction.extraction.md::E48
- Source: certified-kubernetes-application-developer / 10_Helm Fundamentals / 167_Helm Introduction.txt
```bash
Helm proceeds to automatically add every necessary object to Kubernetes without bothering us with the details.
```

## Command Entry 62: certified-kubernetes-application-developer/10_Helm Fundamentals/167_Helm Introduction.extraction.md::E53
- Source: certified-kubernetes-application-developer / 10_Helm Fundamentals / 167_Helm Introduction.txt
```bash
Helm will know what individual objects need to change to make this happen.
```

## Command Entry 63: certified-kubernetes-application-developer/10_Helm Fundamentals/167_Helm Introduction.extraction.md::E58
- Source: certified-kubernetes-application-developer / 10_Helm Fundamentals / 167_Helm Introduction.txt
```bash
Helm does all the work.
```

## Command Entry 64: certified-kubernetes-application-developer/10_Helm Fundamentals/167_Helm Introduction.extraction.md::E63
- Source: certified-kubernetes-application-developer / 10_Helm Fundamentals / 167_Helm Introduction.txt
```bash
Helm can do that for us.
```

## Command Entry 65: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/175_Kustomize vs Helm.extraction.md::E28
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 175_Kustomize vs Helm.txt
```bash
Helm is actually a complete package manager for your application.
```

## Command Entry 66: learn-kubernetes/02_Kubernetes Overview/005_Containers Overview.extraction.md::E42
- Source: learn-kubernetes / 02_Kubernetes Overview / 005_Containers Overview.txt
```bash
Docker utilizes LXC containers.
```

## Command Entry 67: learn-kubernetes/02_Kubernetes Overview/005_Containers Overview.extraction.md::E53
- Source: learn-kubernetes / 02_Kubernetes Overview / 005_Containers Overview.txt
```bash
Docker can run any flavor of OS on top of it, as long as they are all based on the same kernel.
```

## Command Entry 68: learn-kubernetes/02_Kubernetes Overview/005_Containers Overview.extraction.md::E56
- Source: learn-kubernetes / 02_Kubernetes Overview / 005_Containers Overview.txt
```bash
Docker can run a container based on another distribution like Debian, fedora, Susi or CentOS.
```

## Command Entry 69: learn-kubernetes/02_Kubernetes Overview/005_Containers Overview.extraction.md::E74
- Source: learn-kubernetes / 02_Kubernetes Overview / 005_Containers Overview.txt
```bash
Docker then manages the containers that run with libraries and dependencies alone.
```

## Command Entry 70: learn-kubernetes/02_Kubernetes Overview/006_Container Orchestration.extraction.md::E12
- Source: learn-kubernetes / 02_Kubernetes Overview / 006_Container Orchestration.txt
```bash
Docker has its own tool called Docker Swarm Kubernetes from Google and Mesos from Apache.
```

## Command Entry 71: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E30
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
```bash
Docker consists of multiple tools that are put together, for example, the Docker CLI, the Docker API, the build tools that help in building images.
```

## Command Entry 72: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E5
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
```bash
Docker desktop is probably the easiest to get started with, and as it has Kubernetes support built in, and then you have minikube, which is a tool used to set up a single instance of Kubernetes in an all in one setup.
```

## Command Entry 73: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E40
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
```bash
Minikube provides an executable command line utility that will automatically download the ISO image and deploy it in a virtualization platform such as Oracle VirtualBox or VMware fusion.
```

## Command Entry 74: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/037_Solution - Rolling Updates and Rollbacks.extraction.md::E7
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 037_Solution - Rolling Updates and Rollbacks.txt
```bash
K for for cube cuddle.
```

## Command Entry 75: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/037_Solution - Rolling Updates and Rollbacks.extraction.md::E81
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 037_Solution - Rolling Updates and Rollbacks.txt
```bash
Kubectl set.
```
