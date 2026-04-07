# Normalized Concept: Namespaces

- Concept Key: namespaces
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 657

## 1. Definition
- This lecture will discuss about CNI in Kubernetes.
- In the prerequisite lectures we started all the way from the absolute basics of network namespaces.
- In our case, Kubernetes is responsible for creating container network namespaces, identifying and attaching those namespaces to the right network by calling the right network plugin.
- So where do we specify the CNI plugins for Kubernetes to use?
- Now, we discussed earlier that there are many network plugins available today.
- If you look at the CNI bin directory, you'll see that it has all the supported CNI plugins as executables such as the bridge, DHCP, flannel, etc. the CNI config directory has a set of configuration files.
- In this case it finds the bridge configuration file.
- If you look at the bridge conf file, it looks like this.
- This is a format defined by the CNI standard for a plugin configuration file.
- Its name is minute.

## 2. First-Principles Mental Model
- Then we saw how it is done in Docker.
- We then discussed why you need standards for networking containers and how the container network interface came to be.
- And then we saw a list of supported plugins available with CNI.
- In this lecture we will see how Kubernetes is configured to use these network plugins.
- As we discussed in the prerequisite lecture, CNI defines the responsibilities of container runtime as per CNI container runtimes.
- The CNI plugin must be invoked by the component within Kubernetes that is responsible for creating containers, because that component must then invoke the appropriate network plugin after the container is created, the component that is responsible...
- Not that Docker was the original container runtime, which was later replaced by an abstraction called container D, which we kind of explained in the beginning of this course.
- How do you configure these container runtimes to use a particular plugin?
- First of all, the network plugins are all installed in the directory op cni bin.
- So that's where the container runtimes find the plugins.

## 3. Why This Exists
- We then discussed why you need standards for networking containers and how the container network interface came to be.
- In this lecture we will see how Kubernetes is configured to use these network plugins.
- In our case, Kubernetes is responsible for creating container network namespaces, identifying and attaching those namespaces to the right network by calling the right network plugin.
- So where do we specify the CNI plugins for Kubernetes to use?
- How do you configure these container runtimes to use a particular plugin?
- So that's where the container runtimes find the plugins.
- But which plugin to use and how to use it is configured in the directory forward slash forward slash CNI forward slash net d.
- This is where container runtime looks to find out which plugin needs to be used.
- This is where you specify the subnet or range of IP addresses that will be assigned to pods and any necessary routes.
- The type can also be set to DHCP to configure an external DHCP server.

## 4. Internal Working
- Then we saw how it is done in Docker.
- We then discussed why you need standards for networking containers and how the container network interface came to be.
- And then we saw a list of supported plugins available with CNI.
- In this lecture we will see how Kubernetes is configured to use these network plugins.
- As we discussed in the prerequisite lecture, CNI defines the responsibilities of container runtime as per CNI container runtimes.
- The CNI plugin must be invoked by the component within Kubernetes that is responsible for creating containers, because that component must then invoke the appropriate network plugin after the container is created, the component that is responsible...
- Not that Docker was the original container runtime, which was later replaced by an abstraction called container D, which we kind of explained in the beginning of this course.
- How do you configure these container runtimes to use a particular plugin?
- First of all, the network plugins are all installed in the directory op cni bin.
- So that's where the container runtimes find the plugins.
- But which plugin to use and how to use it is configured in the directory forward slash forward slash CNI forward slash net d.
- This is where container runtime looks to find out which plugin needs to be used.

## 5. Key Objects / Fields / Relationships
- In the prerequisite lectures we started all the way from the absolute basics of network namespaces.
- In our case, Kubernetes is responsible for creating container network namespaces, identifying and attaching those namespaces to the right network by calling the right network plugin.
- D is gateway defines whether the bridge interface should get an IP address assigned so it can act as a gateway.
- This is where you specify the subnet or range of IP addresses that will be assigned to pods and any necessary routes.
- In this lecture we discuss about pod networking in Kubernetes.
- So far, we have set up several Kubernetes master and worker nodes and configured networking between them.
- Assume that we have also set up all the Kubernetes control plane components, such as the cube API server, the etcd servers, kubelets, etc. and we are finally ready to deploy our applications.
- We talked about the network that connects the nodes together, but there's also another layer of networking that is crucial to the clusters functioning, and that is the networking at the pod layer.
- Our Kubernetes cluster is soon going to have a large number of pods and services running on it.
- How are the pods addressed?

## 6. YAML Deep Dive
- So where do we specify the CNI plugins for Kubernetes to use?
- Not that Docker was the original container runtime, which was later replaced by an abstraction called container D, which we kind of explained in the beginning of this course.
- This is where you specify the subnet or range of IP addresses that will be assigned to pods and any necessary routes.
- Now, you don't have to know any kind of complicated scripting.
- We either manage that ourselves or store that information in some kind of database.
- Similarly, we configure root on all hosts to all the other hosts with information regarding the respective networks within them.
- Hopefully that should give you enough knowledge on inspecting networking within pods in a Kubernetes cluster.
- Well, other container solutions solve their networking challenges in kind of the same way, like Rocket or Mesos, containerization, or any other solutions that work with containers and requires to configure networking between them like Kubernetes.
- For example, you could run this program using its name bridge and specify that you want to add this container to a particular network namespace.
- CNI specifies that it is responsible for creating a network namespace for each container.

## 7. kubectl / command usage
- It's just a file that has all commands we will be using, and we can run this multiple times for each container.
- We create that using the IP link add command.
- Using the IP link, set command with an assigned IP address using the IP addr command, and add a route to the default gateway.
- Whenever a container is created, the container runtime looks at the CNI configuration passed as a command line argument when it was run, and identifies our scripts name.
- It then looks in the CNI bin directory to find our script, and then executes the script with the add command and the name and namespace ID of the container, and then our script takes care of the rest.
- If you were doing so, what arguments and commands should it support?
- Container runtime must then invoke the plugin when a container is created using the add command, and also invoke the plugin when the container is deleted using the del command.
- On the plugin side, it defines that the plugin should support add del and check command line arguments, and that these should accept parameters like container and network namespace.
- So, what I'm gonna do is I'm gonna do a kubectl get nodes -o, and I'm gonna do wide.
- And so, I'm gonna just do a kubectl get all --all-namespaces just to see everything that's deployed.

## 8. Real-world scenarios
- And then we saw a list of supported plugins available with CNI.
- The two good examples are Containerd and Cri-o.
- Now, we discussed earlier that there are many network plugins available today.
- Head over to the practice exercises and practice working with CNI in Kubernetes.
- Assume that we have also set up all the Kubernetes control plane components, such as the cube API server, the etcd servers, kubelets, etc. and we are finally ready to deploy our applications.
- We talked about the network that connects the nodes together, but there's also another layer of networking that is crucial to the clusters functioning, and that is the networking at the pod layer.
- Our Kubernetes cluster is soon going to have a large number of pods and services running on it.
- How do you access the services running on these parts internally from within the cluster, as well as externally from outside the cluster.
- Now there are many networking solutions available out there that does this, but we have already learned about networking concepts routing, IP address management, namespaces and CNI.
- So we have a three node cluster.

## 9. Pitfalls and misunderstandings
- Now, you don't have to know any kind of complicated scripting.
- Don't focus on the options as they are similar to what we saw in our previous lectures.
- Of course, we don't want to do that, as in large environments where thousands of pods are created every minute.
- We don't know how to assign IP and bring them on, and finally enable Nat or IP masquerade for external communication, etc. we then saw how Docker did it for its bridge networking option.
- These plugins don't natively integrate with Docker, meaning you can't run a Docker container and specify the network plugin to use is CNI and specify one of these plugins.
- As a matter of fact, they don't exist at all.
- If you don't see these entries, you must also check the verbosity level of the process as well.
- So we don't need to worry about the web pod or its port, as we don't want to allow any traffic from any other sources other than the EPA poured, so let's get rid of that.
- We can also forget about the port on the API pod to which the web server connects, as we don't care about that either.
- We don't need a separate rule for that.

## 10. Troubleshooting angle
- No direct source-supported coverage found for this concept in the current merged map.

## 11. CKA / CKAD relevance
- The two good examples are Containerd and Cri-o.
- There may be multiple configuration files in this directory that's responsible for configuring each plugin.
- If there are multiple files here, it will choose the one in alphabetical order.
- It's just a file that has all commands we will be using, and we can run this multiple times for each container.
- Say for example, the pod at ten 244 1.2 on node one wants to ping pod 10 to 4 4.2.2 on node two.
- We saw how to connect multiple such namespaces through a bridged network, how to create virtual cables or pipes with virtual interfaces on either end, and then how to attach each end to a namespace and the bridge.
- Why code and develop the same solution multiple times?
- For example, you could run this program using its name bridge and specify that you want to add this container to a particular network namespace.
- For example, when Rocket or Kubernetes creates a new container, they call the bridge program and pass the container ID and namespace to get networking configured for that container.
- Some examples are weave, flannel, cilium, VMware, NSX, calico, Infoblox, etc. all of these container runtimes implement CNI standards, so any of them can work with any of these plugins.

## 12. Source Contributions
- Matched Global Concepts:
  - CNI in kubernetes (match score: 2, notes: 36)
  - Pod Networking (match score: 2, notes: 96)
  - Prerequisite CNI (match score: 2, notes: 49)
  - Lab Solution - Service Networking (optional) (match score: 2, notes: 53)
  - Service Networking (match score: 2, notes: 89)
  - Lab Solution - Explore CNI (optional) (match score: 2, notes: 30)
  - Prerequisite Docker Networking (match score: 2, notes: 81)
  - Developing network policies (match score: 2, notes: 223)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 07_Security: 114 note entries
  - certified-kubernetes-administrator-with-practice-tests / 09_Networking: 434 note entries
  - certified-kubernetes-application-developer / 07_Services & Networking: 109 note entries
- Explicit Source Reference Samples:
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 217_CNI in kubernetes.extraction.md | Entry 1 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 217_CNI in kubernetes.extraction.md | Entry 2 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 217_CNI in kubernetes.extraction.md | Entry 3 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 217_CNI in kubernetes.extraction.md | Entry 4 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 217_CNI in kubernetes.extraction.md | Entry 5 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 217_CNI in kubernetes.extraction.md | Entry 6 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 217_CNI in kubernetes.extraction.md | Entry 7 | Type Operational Insight
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 217_CNI in kubernetes.extraction.md | Entry 8 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 217_CNI in kubernetes.extraction.md | Entry 9 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 217_CNI in kubernetes.extraction.md | Entry 10 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 217_CNI in kubernetes.extraction.md | Entry 11 | Type Exam Tip
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 217_CNI in kubernetes.extraction.md | Entry 12 | Type Operational Insight
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 217_CNI in kubernetes.extraction.md | Entry 13 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 217_CNI in kubernetes.extraction.md | Entry 14 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 217_CNI in kubernetes.extraction.md | Entry 15 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 217_CNI in kubernetes.extraction.md | Entry 16 | Type Operational Insight
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 217_CNI in kubernetes.extraction.md | Entry 17 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 217_CNI in kubernetes.extraction.md | Entry 18 | Type Exam Tip
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 217_CNI in kubernetes.extraction.md | Entry 19 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 217_CNI in kubernetes.extraction.md | Entry 20 | Type Operational Insight

