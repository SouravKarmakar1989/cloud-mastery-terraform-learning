# Normalized Concept: Cni

- Concept Key: cni
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 1417

## 1. Definition
- Hello and welcome to this lecture.
- In this lecture we look at container networking interface.
- Within our system.
- It was pretty much the same way, except that it uses different naming patterns.
- So we take all of these ideas from the different solutions, and move all the networking portions of it into a single program or code.
- And since this is for the bridge network, we call it bridge.
- Basuo container network interface comes in.
- The programs are referred to as plugins, in this case bridge Brits program that we have been referring to is a plugin for CNI.
- CNI specifies that it is responsible for creating a network namespace for each container.
- CNI comes with a set of supported plugins already, such as bridge, Vlan, IP, Vlan, Macvlan one for windows, as well as iPam plugins like host, local and DHCP.

## 2. First-Principles Mental Model
- So far we saw how network namespaces work as in how to create an isolated network namespace environment.
- Well, other container solutions solve their networking challenges in kind of the same way, like Rocket or Mesos, containerization, or any other solutions that work with containers and requires to configure networking between them like Kubernetes.
- Why not just create a single standard approach that everyone can follow?
- So we created a program or script that performs all the required tasks to get the container attached to a bridge network.
- The bridge program takes care of the rest so that the container runtime environments are relieved of those tasks.
- So what if you wanted to create such a program for yourself, maybe for a new networking type?
- How do you make sure the program you create will work correctly with these runtimes?
- How do you know that container runtimes like Kubernetes or Rocket will invoke your program correctly?
- Runtime environments.
- CNI defines a set of responsibilities for container runtimes and plugins for container runtimes.

## 3. Why This Exists
- Hello and welcome to this lecture.
- So far we saw how network namespaces work as in how to create an isolated network namespace environment.
- We saw how to connect multiple such namespaces through a bridged network, how to create virtual cables or pipes with virtual interfaces on either end, and then how to attach each end to a namespace and the bridge.
- We don't know how to assign IP and bring them on, and finally enable Nat or IP masquerade for external communication, etc. we then saw how Docker did it for its bridge networking option.
- Well, other container solutions solve their networking challenges in kind of the same way, like Rocket or Mesos, containerization, or any other solutions that work with containers and requires to configure networking between them like Kubernetes.
- If we are all trying to solve the same networking challenges by researching and finally identifying a similar approach with our own little minor differences.
- So we created a program or script that performs all the required tasks to get the container attached to a bridge network.
- For example, you could run this program using its name bridge and specify that you want to add this container to a particular network namespace.
- The bridge program takes care of the rest so that the container runtime environments are relieved of those tasks.
- For example, when Rocket or Kubernetes creates a new container, they call the bridge program and pass the container ID and namespace to get networking configured for that container.

## 4. Internal Working
- So far we saw how network namespaces work as in how to create an isolated network namespace environment.
- Well, other container solutions solve their networking challenges in kind of the same way, like Rocket or Mesos, containerization, or any other solutions that work with containers and requires to configure networking between them like Kubernetes.
- Why not just create a single standard approach that everyone can follow?
- So we created a program or script that performs all the required tasks to get the container attached to a bridge network.
- The bridge program takes care of the rest so that the container runtime environments are relieved of those tasks.
- So what if you wanted to create such a program for yourself, maybe for a new networking type?
- How do you make sure the program you create will work correctly with these runtimes?
- How do you know that container runtimes like Kubernetes or Rocket will invoke your program correctly?
- Runtime environments.
- CNI defines a set of responsibilities for container runtimes and plugins for container runtimes.
- Container runtime must then invoke the plugin when a container is created using the add command, and also invoke the plugin when the container is deleted using the del command.
- It also specifies how to configure a network plugin on the container runtime environment using a JSON file.

## 5. Key Objects / Fields / Relationships
- So far we saw how network namespaces work as in how to create an isolated network namespace environment.
- We saw how to connect multiple such namespaces through a bridged network, how to create virtual cables or pipes with virtual interfaces on either end, and then how to attach each end to a namespace and the bridge.
- For example, you could run this program using its name bridge and specify that you want to add this container to a particular network namespace.
- For example, when Rocket or Kubernetes creates a new container, they call the bridge program and pass the container ID and namespace to get networking configured for that container.
- CNI specifies that it is responsible for creating a network namespace for each container.
- On the plugin side, it defines that the plugin should support add del and check command line arguments, and that these should accept parameters like container and network namespace.
- The plugin should take care of assigning IP addresses to the pods and any associated routes required for the containers to reach other containers in the network at the end, the results should be specified in a particular format, as long as the con...
- In the prerequisite lectures we started all the way from the absolute basics of network namespaces.
- In our case, Kubernetes is responsible for creating container network namespaces, identifying and attaching those namespaces to the right network by calling the right network plugin.
- D is gateway defines whether the bridge interface should get an IP address assigned so it can act as a gateway.

## 6. YAML Deep Dive
- Well, other container solutions solve their networking challenges in kind of the same way, like Rocket or Mesos, containerization, or any other solutions that work with containers and requires to configure networking between them like Kubernetes.
- For example, you could run this program using its name bridge and specify that you want to add this container to a particular network namespace.
- CNI specifies that it is responsible for creating a network namespace for each container.
- It also specifies how to configure a network plugin on the container runtime environment using a JSON file.
- The plugin should take care of assigning IP addresses to the pods and any associated routes required for the containers to reach other containers in the network at the end, the results should be specified in a particular format, as long as the con...
- These plugins don't natively integrate with Docker, meaning you can't run a Docker container and specify the network plugin to use is CNI and specify one of these plugins.
- So where do we specify the CNI plugins for Kubernetes to use?
- Not that Docker was the original container runtime, which was later replaced by an abstraction called container D, which we kind of explained in the beginning of this course.
- This is where you specify the subnet or range of IP addresses that will be assigned to pods and any necessary routes.
- A daemon set ensures that one pod of the given kind is deployed on all nodes in the cluster.

## 7. kubectl / command usage
- If you were doing so, what arguments and commands should it support?
- Container runtime must then invoke the plugin when a container is created using the add command, and also invoke the plugin when the container is deleted using the del command.
- On the plugin side, it defines that the plugin should support add del and check command line arguments, and that these should accept parameters like container and network namespace.
- Once the base Kubernetes system is ready, with nodes and networking configured correctly between the nodes and the basic control plane components are deployed, Weave can be deployed in the cluster with a single kubectl apply command.
- If you deployed your cluster with a Kubeadm tool and Weave plugin, you can see the Weave peers as pods deployed on each node.
- For troubleshooting purpose, view the logs using the kubectl logs command.
- And we can see the --container-runtime-endpoint flag is set to unix:///var/run/containerd/containerd.sock.
- So this is going to walk you through how to install kube ADM which is just using the the respective or installing the respective packages for kube adm kubelet and kubectl and so on.
- And you'll see that all of the commands that we run on this page here, you're going to run them on all of the nodes.
- So if you have the ability to run commands on multiple terminals, then you could just have a single command get sent to all of the terminals.

## 8. Real-world scenarios
- For example, you could run this program using its name bridge and specify that you want to add this container to a particular network namespace.
- For example, when Rocket or Kubernetes creates a new container, they call the bridge program and pass the container ID and namespace to get networking configured for that container.
- There are other plugins available from third party organizations as well.
- Some examples are weave, flannel, cilium, VMware, NSX, calico, Infoblox, etc. all of these container runtimes implement CNI standards, so any of them can work with any of these plugins.
- For example, create a Docker container without any network configuration and then manually invoke the bridge plugin yourself.
- And then we saw a list of supported plugins available with CNI.
- The two good examples are Containerd and Cri-o.
- Now, we discussed earlier that there are many network plugins available today.
- Head over to the practice exercises and practice working with CNI in Kubernetes.
- In the previous practice test, we saw how it is configured.

## 9. Pitfalls and misunderstandings
- We don't know how to assign IP and bring them on, and finally enable Nat or IP masquerade for external communication, etc. we then saw how Docker did it for its bridge networking option.
- These plugins don't natively integrate with Docker, meaning you can't run a Docker container and specify the network plugin to use is CNI and specify one of these plugins.
- So you don't have to change anything for kubelet.
- If you're using even somewhat modern version of Kubelet or Kubernetes, it's going to be using systemd already, so you don't have to configure anything, but you do have to configure the systemd cgroup driver for your container runtime.
- So you don't have to manually go in and change it.
- Um, let's just make sure we don't copy that again.
- Technically you don't need to install kubectl on all of the nodes if you don't want to have the tool on all of the nodes, you would just you would at least need it on the control plane node.
- You don't need to install this, but we're going to go ahead and install it anyways.
- Which we don't want.
- And that's important because we don't want it to use the first interface.

## 10. Troubleshooting angle
- For troubleshooting purpose, view the logs using the kubectl logs command.
- So that's why we get an error.
- Um that's going to be in like troubleshooting scenarios where the kube API server is down and you want to be able to check if a container is running you.
- For those specific troubleshooting scenarios.
- Now the last step here is very specific to our environment, and I want to explain the issue that we're going.
- And this is to help avoid certain issues that you may.
- And it's going to help avoid any potential issues.
- And you could see that it deleted the old one, but then we got an error.
- So this error is expected and I recommend you read this error 'cause it tells us everything we need to know.
- So what is the issue?

## 11. CKA / CKAD relevance
- We saw how to connect multiple such namespaces through a bridged network, how to create virtual cables or pipes with virtual interfaces on either end, and then how to attach each end to a namespace and the bridge.
- Why code and develop the same solution multiple times?
- For example, you could run this program using its name bridge and specify that you want to add this container to a particular network namespace.
- For example, when Rocket or Kubernetes creates a new container, they call the bridge program and pass the container ID and namespace to get networking configured for that container.
- Some examples are weave, flannel, cilium, VMware, NSX, calico, Infoblox, etc. all of these container runtimes implement CNI standards, so any of them can work with any of these plugins.
- For example, create a Docker container without any network configuration and then manually invoke the bridge plugin yourself.
- The two good examples are Containerd and Cri-o.
- There may be multiple configuration files in this directory that's responsible for configuring each plugin.
- If there are multiple files here, it will choose the one in alphabetical order.
- The office boy takes the package, gets in his car, looks up the address for the target office in GPS, uses directions on the streets and finds his way to the destination site, delivers the package to the payroll department, who in turn forwards th...

## 12. Source Contributions
- Matched Global Concepts:
  - Prerequisite CNI (match score: 2, notes: 49)
  - CNI in kubernetes (match score: 2, notes: 36)
  - CNI weave (match score: 1, notes: 52)
  - Lab Solution - Explore CNI (optional) (match score: 1, notes: 30)
  - Demo - Kubeadm - Configuring Cluster With Kubeadm (match score: 1, notes: 377)
  - Demo - Deployment with Kubeadm (match score: 1, notes: 364)
  - Mock Exam - 3 - Solution _ (Optional) (match score: 1, notes: 485)
  - ipam weave (match score: 1, notes: 24)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 09_Networking: 191 note entries
  - certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_: 364 note entries
  - certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams: 485 note entries
  - learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm: 377 note entries
- Explicit Source Reference Samples:
  - section-maps/BATCH-009_section_concept_map.md | 211_Prerequisite CNI.extraction.md | Entry 1 | Type Concept
  - section-maps/BATCH-009_section_concept_map.md | 211_Prerequisite CNI.extraction.md | Entry 2 | Type Concept
  - section-maps/BATCH-009_section_concept_map.md | 211_Prerequisite CNI.extraction.md | Entry 3 | Type Implementation Step
  - section-maps/BATCH-009_section_concept_map.md | 211_Prerequisite CNI.extraction.md | Entry 4 | Type Concept
  - section-maps/BATCH-009_section_concept_map.md | 211_Prerequisite CNI.extraction.md | Entry 5 | Type Exam Tip
  - section-maps/BATCH-009_section_concept_map.md | 211_Prerequisite CNI.extraction.md | Entry 6 | Type Warning/Pitfall
  - section-maps/BATCH-009_section_concept_map.md | 211_Prerequisite CNI.extraction.md | Entry 7 | Type Concept
  - section-maps/BATCH-009_section_concept_map.md | 211_Prerequisite CNI.extraction.md | Entry 8 | Type Implementation Step
  - section-maps/BATCH-009_section_concept_map.md | 211_Prerequisite CNI.extraction.md | Entry 9 | Type Comparison
  - section-maps/BATCH-009_section_concept_map.md | 211_Prerequisite CNI.extraction.md | Entry 10 | Type Exam Tip
  - section-maps/BATCH-009_section_concept_map.md | 211_Prerequisite CNI.extraction.md | Entry 11 | Type Implementation Step
  - section-maps/BATCH-009_section_concept_map.md | 211_Prerequisite CNI.extraction.md | Entry 12 | Type Concept
  - section-maps/BATCH-009_section_concept_map.md | 211_Prerequisite CNI.extraction.md | Entry 13 | Type Concept
  - section-maps/BATCH-009_section_concept_map.md | 211_Prerequisite CNI.extraction.md | Entry 14 | Type Implementation Step
  - section-maps/BATCH-009_section_concept_map.md | 211_Prerequisite CNI.extraction.md | Entry 15 | Type Exam Tip
  - section-maps/BATCH-009_section_concept_map.md | 211_Prerequisite CNI.extraction.md | Entry 16 | Type Operational Insight
  - section-maps/BATCH-009_section_concept_map.md | 211_Prerequisite CNI.extraction.md | Entry 17 | Type Exam Tip
  - section-maps/BATCH-009_section_concept_map.md | 211_Prerequisite CNI.extraction.md | Entry 18 | Type Implementation Step
  - section-maps/BATCH-009_section_concept_map.md | 211_Prerequisite CNI.extraction.md | Entry 19 | Type Best Practice
  - section-maps/BATCH-009_section_concept_map.md | 211_Prerequisite CNI.extraction.md | Entry 20 | Type Implementation Step

