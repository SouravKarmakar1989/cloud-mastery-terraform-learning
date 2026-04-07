# Normalized Concept: Kubelet

- Concept Key: kubelet
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 830

## 1. Definition
- In this lecture we will discuss about service networking.
- And we also saw through routes or other overlay techniques, we can get the pods in different nodes to talk to each other, forming a large virtual network where all pods can reach each other.
- If you want a pod to access services hosted on another pod, you would always use a service.
- Let's quickly recap the different kinds of services to make the orange pod accessible to the blue pod.
- The orange service gets an IP address and a name assigned to it.
- The blue pod can now access the orange pod through the Orange Services IP or its name.
- We'll talk about name resolution in the upcoming lectures.
- For now, let's just focus on IP addresses.
- The blue and orange pod are on the same node.
- What about access from the other pods on other nodes?

## 2. First-Principles Mental Model
- In the previous lectures we talked about pod networking, how bridge networks are created within each node, and how pods get a namespace created for them, and how interfaces are attached to those namespaces, and how pods get an IP address assigned ...
- Now, you would rarely configure your pods to communicate directly with each other.
- We create an orange service.
- When a service is created, it is accessible from all pods on the cluster, irrespective of what nodes the pods are on.
- If the orange pod was hosting a database application that is to be only accessed from within the cluster, then this type of service works just fine.
- Outside the cluster, we create another service of type node port.
- No pods or services yet we know that every Kubernetes node runs a kubelet process which is responsible for creating pods.
- Each kubelet service on each node watches the changes in the cluster through the kube API server, and every time a new pod is to be created, it creates the pod on the nodes.
- It then invokes the CNI plugin to configure networking for that pod.
- Kube proxy watches the changes in the cluster through kube API server, and every time a new service is to be created, kube proxy gets into action.

## 3. Why This Exists
- In the previous lectures we talked about pod networking, how bridge networks are created within each node, and how pods get a namespace created for them, and how interfaces are attached to those namespaces, and how pods get an IP address assigned ...
- And we also saw through routes or other overlay techniques, we can get the pods in different nodes to talk to each other, forming a large virtual network where all pods can reach each other.
- Now, you would rarely configure your pods to communicate directly with each other.
- If you want a pod to access services hosted on another pod, you would always use a service.
- Let's quickly recap the different kinds of services to make the orange pod accessible to the blue pod.
- The orange service gets an IP address and a name assigned to it.
- It is not bound to a specific node.
- If the orange pod was hosting a database application that is to be only accessed from within the cluster, then this type of service works just fine.
- Say, for instance, the purple pod was hosting a web application to make the application on the pod accessible.
- This service also gets an IP address assigned to it and works just like cluster IP.

## 4. Internal Working
- In the previous lectures we talked about pod networking, how bridge networks are created within each node, and how pods get a namespace created for them, and how interfaces are attached to those namespaces, and how pods get an IP address assigned ...
- Now, you would rarely configure your pods to communicate directly with each other.
- We create an orange service.
- When a service is created, it is accessible from all pods on the cluster, irrespective of what nodes the pods are on.
- If the orange pod was hosting a database application that is to be only accessed from within the cluster, then this type of service works just fine.
- Outside the cluster, we create another service of type node port.
- No pods or services yet we know that every Kubernetes node runs a kubelet process which is responsible for creating pods.
- Each kubelet service on each node watches the changes in the cluster through the kube API server, and every time a new pod is to be created, it creates the pod on the nodes.
- It then invokes the CNI plugin to configure networking for that pod.
- Kube proxy watches the changes in the cluster through kube API server, and every time a new service is to be created, kube proxy gets into action.
- Unlike pods, services are not created on each node or assigned to each node.
- Then how do they get an IP address, and how were we able to access the application on the pod through service?

## 5. Key Objects / Fields / Relationships
- In this lecture we will discuss about service networking.
- In the previous lectures we talked about pod networking, how bridge networks are created within each node, and how pods get a namespace created for them, and how interfaces are attached to those namespaces, and how pods get an IP address assigned ...
- And we also saw through routes or other overlay techniques, we can get the pods in different nodes to talk to each other, forming a large virtual network where all pods can reach each other.
- Now, you would rarely configure your pods to communicate directly with each other.
- If you want a pod to access services hosted on another pod, you would always use a service.
- Let's quickly recap the different kinds of services to make the orange pod accessible to the blue pod.
- We create an orange service.
- The orange service gets an IP address and a name assigned to it.
- The blue pod can now access the orange pod through the Orange Services IP or its name.
- The blue and orange pod are on the same node.

## 6. YAML Deep Dive
- Let's quickly recap the different kinds of services to make the orange pod accessible to the blue pod.
- When a service is created, it is accessible from all pods on the cluster, irrespective of what nodes the pods are on.
- It is not bound to a specific node.
- This range is specified in the kube API servers option called Service Cluster IP range, which is by default set to 10.0.0.0 slash 24.
- The reason I brought this up here is because whatever range you specify for each of these networks, it shouldn't overlap, which it doesn't in this case.
- Similarly, when you create a service of type node port, kube proxy creates iptables rules to forward all traffic coming on a port on all nodes to the respective backend ports.
- We then point these pods to the DNS server by adding an entry into their Etsy resolv.conf file, specifying that the Nameserver is at the IP address of the DNS server, which happens to be 1.96.0.1.
- This is kind of how Kubernetes does it, except that it does not create similar entries for pods to map pod name to its IP address, as we have seen in the previous lecture.
- For example, say a pod tries to reach w-w-w-what google.com, it is forwarded to the nameserver specified in the DNS pods.
- For that, you need to specify the full FQDN of the pod.

## 7. kubectl / command usage
- If you try to manually look up the web service using Nslookup or the Host Web Service command, it will return the fully qualified domain name of the web service, which happens to be Web Service default SVC cluster local.
- But I'm going to copy this command, and we're going to paste it on all of our, um, all of our nodes because we're going to need cube ADM installed on all three of them.
- You can see here in the command here we're installing Cubelet cube adm cube CTL.
- So I'm just going to copy these three commands.
- And then when you run the kube adm init command, you pass the dash dash config flag so that you can pass in the kube adm config file, which is going to make sure that the kubelet process uses the systemd.
- And you can actually take a look at these configurations by running the command container D config default.
- So I'm going to use this command to generate the configs.
- Now I've got this nice command right here.
- And I'm going to show you guys what this command does.
- But I'm going to paste this command here.

## 8. Real-world scenarios
- When a service is created, it is accessible from all pods on the cluster, irrespective of what nodes the pods are on.
- While a pod is hosted on a node, a service is hosted across the cluster.
- But remember the service is only accessible from within the cluster.
- This type of service is known as cluster IP.
- If the orange pod was hosting a database application that is to be only accessed from within the cluster, then this type of service works just fine.
- Outside the cluster, we create another service of type node port.
- This service also gets an IP address assigned to it and works just like cluster IP.
- But in addition, it also exposes the application on a port on all nodes in the cluster.
- How are the services getting these IP addresses and how were they made available across all the nodes in the cluster?
- How is the service made available to external users through a port on each node?

## 9. Pitfalls and misunderstandings
- As a matter of fact, they don't exist at all.
- If you don't see these entries, you must also check the verbosity level of the process as well.
- Now you don't have to configure this yourself.
- We don't technically need cube CTL and Cubelet at the moment.
- So we're going to just not pass in that file because we don't need to change anything.
- So we don't have to worry about the kubelet process.
- So and so I'll go to slash Etsy container D and it looks like I don't have a container d directory.
- So if you don't specify a config file it's going to use these default configurations.
- So if we don't provide a file it's going to look like this.
- That way when you migrate over, you don't really have to change anything for the most part, and you've already got the load balancer set up to forward it.

## 10. Troubleshooting angle
- The ones highlighted in orange plugins are configured for handling errors, reporting, health monitoring, metrics, cache, etc. the plugin that makes core DNS work with Kubernetes is the Kubernetes plugin, and that is where the top level domain name...
- For troubleshooting purpose, view the logs using the kubectl logs command.
- So when we paste this, we see that we get this error.
- This error is a little misleading, but what's happening is, we're downloading the gpg key and we're downloading it to this folder /etc/apt/keyrings.
- And after we create it, if we run the same command, we should see that there's no issues when we run it now.
- We can see that there's an error, couldn't get current server API group list.
- So this error is actually expected because we actually haven't initialized our cluster yet.

## 11. CKA / CKAD relevance
- With the Kubernetes plugin, there are multiple options.
- For example, say a pod tries to reach w-w-w-what google.com, it is forwarded to the nameserver specified in the DNS pods.
- And if you're going to be deploying a highly available Kubernetes cluster that's with multiple master nodes, then you want to select creating highly available clusters with kube ADM.
- So the first thing that we're going to do is download the public signing keys for the Kubernetes package repositories.
- And then we have to install the cube ADM package.
- Now here it gives you an example on how to do that.
- If you have multiple master nodes then you're going to have to pick one that you want to run the command first.
- And if you take a look at step one, is that if you have plans to upgrade a single control plane node to a high available cluster with multiple control plane nodes, you want to make sure you pass in the dash dash control plane dash endpoint and set...
- And I'm going to just show you what the output would look like if we were using a setup with multiple master nodes.
- So at this point, if you had multiple master nodes, you would run this command that it gave us right here, so that you can then bootstrap the other control plane nodes and connect them to the cluster.

## 12. Source Contributions
- Matched Global Concepts:
  - Service Networking (match score: 1, notes: 89)
  - CoreDNS in Kubernetes (match score: 1, notes: 70)
  - Demo - Deployment with Kubeadm (match score: 1, notes: 364)
  - Lab Solution - Explore CNI (optional) (match score: 1, notes: 30)
  - Cluster Networking (match score: 1, notes: 31)
  - Pod Networking (match score: 1, notes: 96)
  - CNI weave (match score: 1, notes: 52)
  - Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional) (match score: 1, notes: 98)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 09_Networking: 368 note entries
  - certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_: 462 note entries
- Explicit Source Reference Samples:
  - section-maps/BATCH-009_section_concept_map.md | 224_Service Networking.extraction.md | Entry 1 | Type Concept
  - section-maps/BATCH-009_section_concept_map.md | 224_Service Networking.extraction.md | Entry 2 | Type Implementation Step
  - section-maps/BATCH-009_section_concept_map.md | 224_Service Networking.extraction.md | Entry 3 | Type Concept
  - section-maps/BATCH-009_section_concept_map.md | 224_Service Networking.extraction.md | Entry 4 | Type Implementation Step
  - section-maps/BATCH-009_section_concept_map.md | 224_Service Networking.extraction.md | Entry 5 | Type Concept
  - section-maps/BATCH-009_section_concept_map.md | 224_Service Networking.extraction.md | Entry 6 | Type Concept
  - section-maps/BATCH-009_section_concept_map.md | 224_Service Networking.extraction.md | Entry 7 | Type Implementation Step
  - section-maps/BATCH-009_section_concept_map.md | 224_Service Networking.extraction.md | Entry 8 | Type Concept
  - section-maps/BATCH-009_section_concept_map.md | 224_Service Networking.extraction.md | Entry 9 | Type Concept
  - section-maps/BATCH-009_section_concept_map.md | 224_Service Networking.extraction.md | Entry 10 | Type Concept
  - section-maps/BATCH-009_section_concept_map.md | 224_Service Networking.extraction.md | Entry 11 | Type Concept
  - section-maps/BATCH-009_section_concept_map.md | 224_Service Networking.extraction.md | Entry 12 | Type Concept
  - section-maps/BATCH-009_section_concept_map.md | 224_Service Networking.extraction.md | Entry 13 | Type Concept
  - section-maps/BATCH-009_section_concept_map.md | 224_Service Networking.extraction.md | Entry 14 | Type Implementation Step
  - section-maps/BATCH-009_section_concept_map.md | 224_Service Networking.extraction.md | Entry 15 | Type Concept
  - section-maps/BATCH-009_section_concept_map.md | 224_Service Networking.extraction.md | Entry 16 | Type Concept
  - section-maps/BATCH-009_section_concept_map.md | 224_Service Networking.extraction.md | Entry 17 | Type Concept
  - section-maps/BATCH-009_section_concept_map.md | 224_Service Networking.extraction.md | Entry 18 | Type Concept
  - section-maps/BATCH-009_section_concept_map.md | 224_Service Networking.extraction.md | Entry 19 | Type Implementation Step
  - section-maps/BATCH-009_section_concept_map.md | 224_Service Networking.extraction.md | Entry 20 | Type Concept

