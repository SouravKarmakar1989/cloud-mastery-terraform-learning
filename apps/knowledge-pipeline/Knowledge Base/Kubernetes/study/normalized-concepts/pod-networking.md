# Normalized Concept: Pod Networking

- Concept Key: pod-networking
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 817

## 1. Definition
- In this lecture we discuss about pod networking in Kubernetes.
- So they are all on a network that can reach each other.
- Assume that we have also set up all the Kubernetes control plane components, such as the cube API server, the etcd servers, kubelets, etc. and we are finally ready to deploy our applications.
- But before we can do that, there is something that we must address.
- We talked about the network that connects the nodes together, but there's also another layer of networking that is crucial to the clusters functioning, and that is the networking at the pod layer.
- Our Kubernetes cluster is soon going to have a large number of pods and services running on it.
- How are the pods addressed?
- How do they communicate with each other?
- These are challenges that Kubernetes expects you to solve.
- As of today, Kubernetes does not come with a built in solution for this.

## 2. First-Principles Mental Model
- So far, we have set up several Kubernetes master and worker nodes and configured networking between them.
- We also make sure the firewall and network security groups are configured correctly to allow for the Kubernetes control plane components to reach each other.
- Assume that we have also set up all the Kubernetes control plane components, such as the cube API server, the etcd servers, kubelets, etc. and we are finally ready to deploy our applications.
- How do you access the services running on these parts internally from within the cluster, as well as externally from outside the cluster.
- As long as you can implement a solution that takes care of automatically assigning IP addresses and establish connectivity between the pods in a node as well as pods on different nodes, you're good without having to configure any Nat rules.
- So let's try to use that knowledge to solve this problem by ourselves first.
- So first let's plan what we're going to do.
- Next step.
- When containers are created, Kubernetes creates network namespaces for them to enable communication between them.
- We've learned about networks that can be created within nodes to attach namespaces.

## 3. Why This Exists
- We also make sure the firewall and network security groups are configured correctly to allow for the Kubernetes control plane components to reach each other.
- Assume that we have also set up all the Kubernetes control plane components, such as the cube API server, the etcd servers, kubelets, etc. and we are finally ready to deploy our applications.
- We talked about the network that connects the nodes together, but there's also another layer of networking that is crucial to the clusters functioning, and that is the networking at the pod layer.
- Our Kubernetes cluster is soon going to have a large number of pods and services running on it.
- These are challenges that Kubernetes expects you to solve.
- It expects you to implement a networking solution that solves these challenges.
- Kubernetes expects every pod to get its own unique IP address, and that every pod should be able to reach every other pod within the same node using that IP address.
- And every pod should be able to reach every other pod on other nodes as well, using the same IP address.
- As long as you can implement a solution that takes care of automatically assigning IP addresses and establish connectivity between the pods in a node as well as pods on different nodes, you're good without having to configure any Nat rules.
- So let's try to use that knowledge to solve this problem by ourselves first.

## 4. Internal Working
- So far, we have set up several Kubernetes master and worker nodes and configured networking between them.
- We also make sure the firewall and network security groups are configured correctly to allow for the Kubernetes control plane components to reach each other.
- Assume that we have also set up all the Kubernetes control plane components, such as the cube API server, the etcd servers, kubelets, etc. and we are finally ready to deploy our applications.
- How do you access the services running on these parts internally from within the cluster, as well as externally from outside the cluster.
- As long as you can implement a solution that takes care of automatically assigning IP addresses and establish connectivity between the pods in a node as well as pods on different nodes, you're good without having to configure any Nat rules.
- So let's try to use that knowledge to solve this problem by ourselves first.
- So first let's plan what we're going to do.
- Next step.
- When containers are created, Kubernetes creates network namespaces for them to enable communication between them.
- We've learned about networks that can be created within nodes to attach namespaces.
- So we create a bridge network on each node and then bring them up.
- Next we set the IP address for the bridge interface.

## 5. Key Objects / Fields / Relationships
- In this lecture we discuss about pod networking in Kubernetes.
- So far, we have set up several Kubernetes master and worker nodes and configured networking between them.
- Assume that we have also set up all the Kubernetes control plane components, such as the cube API server, the etcd servers, kubelets, etc. and we are finally ready to deploy our applications.
- We talked about the network that connects the nodes together, but there's also another layer of networking that is crucial to the clusters functioning, and that is the networking at the pod layer.
- Our Kubernetes cluster is soon going to have a large number of pods and services running on it.
- How are the pods addressed?
- How do you access the services running on these parts internally from within the cluster, as well as externally from outside the cluster.
- However, Kubernetes has laid out clearly the requirements for pod networking.
- Kubernetes expects every pod to get its own unique IP address, and that every pod should be able to reach every other pod within the same node using that IP address.
- And every pod should be able to reach every other pod on other nodes as well, using the same IP address.

## 6. YAML Deep Dive
- Now, you don't have to know any kind of complicated scripting.
- We either manage that ourselves or store that information in some kind of database.
- Similarly, we configure root on all hosts to all the other hosts with information regarding the respective networks within them.
- Hopefully that should give you enough knowledge on inspecting networking within pods in a Kubernetes cluster.
- A daemon set ensures that one pod of the given kind is deployed on all nodes in the cluster.
- Let's quickly recap the different kinds of services to make the orange pod accessible to the blue pod.
- When a service is created, it is accessible from all pods on the cluster, irrespective of what nodes the pods are on.
- It is not bound to a specific node.
- This range is specified in the kube API servers option called Service Cluster IP range, which is by default set to 10.0.0.0 slash 24.
- The reason I brought this up here is because whatever range you specify for each of these networks, it shouldn't overlap, which it doesn't in this case.

## 7. kubectl / command usage
- It's just a file that has all commands we will be using, and we can run this multiple times for each container.
- We create that using the IP link add command.
- Using the IP link, set command with an assigned IP address using the IP addr command, and add a route to the default gateway.
- Whenever a container is created, the container runtime looks at the CNI configuration passed as a command line argument when it was run, and identifies our scripts name.
- It then looks in the CNI bin directory to find our script, and then executes the script with the add command and the name and namespace ID of the container, and then our script takes care of the rest.
- Once the base Kubernetes system is ready, with nodes and networking configured correctly between the nodes and the basic control plane components are deployed, Weave can be deployed in the cluster with a single kubectl apply command.
- If you deployed your cluster with a Kubeadm tool and Weave plugin, you can see the Weave peers as pods deployed on each node.
- For troubleshooting purpose, view the logs using the kubectl logs command.
- Create command and input the service definition file and there you have the service created.
- Get service's command that lists the service, the cluster IP and the mapped ports.

## 8. Real-world scenarios
- Assume that we have also set up all the Kubernetes control plane components, such as the cube API server, the etcd servers, kubelets, etc. and we are finally ready to deploy our applications.
- We talked about the network that connects the nodes together, but there's also another layer of networking that is crucial to the clusters functioning, and that is the networking at the pod layer.
- Our Kubernetes cluster is soon going to have a large number of pods and services running on it.
- How do you access the services running on these parts internally from within the cluster, as well as externally from outside the cluster.
- Now there are many networking solutions available out there that does this, but we have already learned about networking concepts routing, IP address management, namespaces and CNI.
- So we have a three node cluster.
- Say for example, the pod at ten 244 1.2 on node one wants to ping pod 10 to 4 4.2.2 on node two.
- We will look at how and where the CNI is configured in Kubernetes in the next lecture, along with practice tests.
- Hopefully that should give you enough knowledge on inspecting networking within pods in a Kubernetes cluster.
- In the previous practice test, we saw how it is configured.

## 9. Pitfalls and misunderstandings
- Now, you don't have to know any kind of complicated scripting.
- Don't focus on the options as they are similar to what we saw in our previous lectures.
- Of course, we don't want to do that, as in large environments where thousands of pods are created every minute.
- As a matter of fact, they don't exist at all.
- If you don't see these entries, you must also check the verbosity level of the process as well.
- Well, if you don't know about Daemonset yet, don't worry.
- It can have labels, but we don't need that for now.
- If you don't provide a target port, it is assumed to be the same as port.
- And if you don't provide a node port, a free port in the valid range between 30,000 and 32,767 is automatically allocated.
- You don't have to do any additional configuration to make this happen.

## 10. Troubleshooting angle
- For troubleshooting purpose, view the logs using the kubectl logs command.
- So that's why we get an error.
- Um that's going to be in like troubleshooting scenarios where the kube API server is down and you want to be able to check if a container is running you.
- For those specific troubleshooting scenarios.
- Now the last step here is very specific to our environment, and I want to explain the issue that we're going.
- And this is to help avoid certain issues that you may.
- And it's going to help avoid any potential issues.

## 11. CKA / CKAD relevance
- It's just a file that has all commands we will be using, and we can run this multiple times for each container.
- Say for example, the pod at ten 244 1.2 on node one wants to ping pod 10 to 4 4.2.2 on node two.
- The office boy takes the package, gets in his car, looks up the address for the target office in GPS, uses directions on the streets and finds his way to the destination site, delivers the package to the payroll department, who in turn forwards th...
- And so when a package is sent from, say, office 10 to office three, the shipping agent in that site intercepts the package and looks at the target office name.
- He knows exactly in which site and department that office is in through his little internal network with his peers on the other sites, he then places this package into his own new package with the destination address set to the target site's locat...
- Once the package arrives at the destination, it is again intercepted by the agent on that site, he opens the packet, retrieves the original packet, and delivers it to the right department.
- The IPs shown here are just examples.
- Remember that a single pod may be attached to multiple bridge networks.
- For example, you could have a pod attached to the Weave Bridge as well as the Docker Bridge created by Docker.
- For example, our application has groups of pods running various sections, such as a group for serving a front end load to users, another group for running back end processes, and a third group connecting to an external data source.

## 12. Source Contributions
- Matched Global Concepts:
  - Pod Networking (match score: 2, notes: 96)
  - CNI weave (match score: 2, notes: 52)
  - Service Networking (match score: 2, notes: 89)
  - Kube Proxy (match score: 2, notes: 42)
  - Networking - Introduction (match score: 2, notes: 18)
  - Services - NodePort (match score: 1, notes: 122)
  - Kubernetes Setup - Kubeadm (match score: 1, notes: 21)
  - Demo - Kubeadm - Configuring Cluster With Kubeadm (match score: 1, notes: 377)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts: 42 note entries
  - certified-kubernetes-administrator-with-practice-tests / 09_Networking: 255 note entries
  - learn-kubernetes / 07_Services: 122 note entries
  - learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm: 398 note entries
- Explicit Source Reference Samples:
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 216_Pod Networking.extraction.md | Entry 1 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 216_Pod Networking.extraction.md | Entry 2 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 216_Pod Networking.extraction.md | Entry 3 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 216_Pod Networking.extraction.md | Entry 4 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 216_Pod Networking.extraction.md | Entry 5 | Type Architecture
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 216_Pod Networking.extraction.md | Entry 6 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 216_Pod Networking.extraction.md | Entry 7 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 216_Pod Networking.extraction.md | Entry 8 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 216_Pod Networking.extraction.md | Entry 9 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 216_Pod Networking.extraction.md | Entry 10 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 216_Pod Networking.extraction.md | Entry 11 | Type Operational Insight
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 216_Pod Networking.extraction.md | Entry 12 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 216_Pod Networking.extraction.md | Entry 13 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 216_Pod Networking.extraction.md | Entry 14 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 216_Pod Networking.extraction.md | Entry 15 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 216_Pod Networking.extraction.md | Entry 16 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 216_Pod Networking.extraction.md | Entry 17 | Type Best Practice
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 216_Pod Networking.extraction.md | Entry 18 | Type Best Practice
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 216_Pod Networking.extraction.md | Entry 19 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 216_Pod Networking.extraction.md | Entry 20 | Type Implementation Step

