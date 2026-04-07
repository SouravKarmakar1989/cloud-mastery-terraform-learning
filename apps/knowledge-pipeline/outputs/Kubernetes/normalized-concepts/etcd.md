# Normalized Concept: Etcd

- Concept Key: etcd
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 569

## 1. Definition
- We now look at high availability in Kubernetes.
- So what happens when you lose the master node in your cluster?
- As long as the workers are up and continuous are alive, your applications are still running.
- Users can access the application until things start to fail.
- But the master is not available and so are the controllers and schedulers on the master.
- The master nodes.
- The worker nodes.
- The control plane components.
- So our focus in this lecture is going to be on the master and control plane components.
- Let's take a better look at how it works.

## 2. First-Principles Mental Model
- Now, if that pod was part of a replica set, then the replication controller on the master needs to instruct the worker to load a new pod.
- But the master is not available and so are the controllers and schedulers on the master.
- There is no one to recreate the pod and no one to schedule it on nodes.
- As we learned already, the master node hosts the control plane components, including the API controller, manager, scheduler and etcd server in a setup with an additional master node.
- Now we know that the API server is responsible for receiving requests and processing them or providing information about the cluster.
- So the API servers on all cluster nodes can be alive and running at the same time in an active active mode.
- So far in this course, we know that the kube control utility talks to the API server to get things done, and we point the kube control utility to reach the master node at port 643.
- That's where the API server listens.
- And this is configured in the kube config file.
- So it is better to have a load balancer of some kind configured in the front of the master nodes that split traffic between the API servers.

## 3. Why This Exists
- Users can access the application until things start to fail.
- Now, if that pod was part of a replica set, then the replication controller on the master needs to instruct the worker to load a new pod.
- There is no one to recreate the pod and no one to schedule it on nodes.
- A high availability configuration is where you have redundancy across every component in the cluster, so as to avoid a single point of failure.
- So our focus in this lecture is going to be on the master and control plane components.
- Are they going to do the same thing twice?
- So far in this course, we know that the kube control utility talks to the API server to get things done, and we point the kube control utility to reach the master node at port 643.
- We can send the request to either one of them.
- But we shouldn't be sending the same request to both of them.
- So it is better to have a load balancer of some kind configured in the front of the master nodes that split traffic between the API servers.

## 4. Internal Working
- Now, if that pod was part of a replica set, then the replication controller on the master needs to instruct the worker to load a new pod.
- But the master is not available and so are the controllers and schedulers on the master.
- There is no one to recreate the pod and no one to schedule it on nodes.
- As we learned already, the master node hosts the control plane components, including the API controller, manager, scheduler and etcd server in a setup with an additional master node.
- Now we know that the API server is responsible for receiving requests and processing them or providing information about the cluster.
- So the API servers on all cluster nodes can be alive and running at the same time in an active active mode.
- So far in this course, we know that the kube control utility talks to the API server to get things done, and we point the kube control utility to reach the master node at port 643.
- That's where the API server listens.
- And this is configured in the kube config file.
- So it is better to have a load balancer of some kind configured in the front of the master nodes that split traffic between the API servers.
- So we then point the kube control utility to that load balancer.
- What about the scheduler and the controller manager.

## 5. Key Objects / Fields / Relationships
- So what happens when you lose the master node in your cluster?
- For example, a container or pod on the worker node crashes.
- Now, if that pod was part of a replica set, then the replication controller on the master needs to instruct the worker to load a new pod.
- But the master is not available and so are the controllers and schedulers on the master.
- There is no one to recreate the pod and no one to schedule it on nodes.
- Similarly, since the kube API server is not available, you cannot access the cluster externally through kube control tool or through API for management purposes, which is why you must consider multiple master nodes in a high availability configura...
- The master nodes.
- The worker nodes.
- The application, of course, which we already have multiple copies in the form of replica sets and services.
- We've been looking at a three node cluster with one master and two worker nodes throughout this course.

## 6. YAML Deep Dive
- So it is better to have a load balancer of some kind configured in the front of the master nodes that split traffic between the API servers.
- When a controller manager process is configured, you may specify the leader elect option, which is by default set to true.
- It holds the lock for the lease duration specified using the lease duration option, which is by default set to 15 seconds.
- And if you look into the API service configuration options, we have a set of options specifying where the etcd server is.
- This is why we specify a list of etcd servers in the kube API server configuration.
- What kind of workloads are you going to run on this cluster?
- What kind of applications are going to be hosted on the cluster?
- Depending on the kind of application, the resource requirements may vary.
- This table shows the size of the instances and their resource specifications for specific number of nodes.
- As a best practice, it is recommended to dedicate master nodes for control plane components only, especially in a production environment.

## 7. kubectl / command usage
- The scheduler follows a similar approach and has the same command line options.
- Run the etcd cuddle command and specify the key as name and value as John.
- To retrieve data, run the etcd cuddle git command with the key name and it returns the value.
- Only command.
- It's just a file that has all commands we will be using, and we can run this multiple times for each container.
- We create that using the IP link add command.
- Using the IP link, set command with an assigned IP address using the IP addr command, and add a route to the default gateway.
- Whenever a container is created, the container runtime looks at the CNI configuration passed as a command line argument when it was run, and identifies our scripts name.
- It then looks in the CNI bin directory to find our script, and then executes the script with the add command and the name and namespace ID of the container, and then our script takes care of the rest.
- So we can do this by running a kubectl get nodes and we can see there's two nodes, control-plane and node01.

## 8. Real-world scenarios
- We now look at high availability in Kubernetes.
- So what happens when you lose the master node in your cluster?
- For example, a container or pod on the worker node crashes.
- But the master is not available and so are the controllers and schedulers on the master.
- Similarly, since the kube API server is not available, you cannot access the cluster externally through kube control tool or through API for management purposes, which is why you must consider multiple master nodes in a high availability configura...
- A high availability configuration is where you have redundancy across every component in the cluster, so as to avoid a single point of failure.
- We've been looking at a three node cluster with one master and two worker nodes throughout this course.
- Now we know that the API server is responsible for receiving requests and processing them or providing information about the cluster.
- So the API servers on all cluster nodes can be alive and running at the same time in an active active mode.
- These are controllers that watch the state of the cluster and take actions.

## 9. Pitfalls and misunderstandings
- You don't have to memorize the numbers that we discussed as these are available in the documentation page.
- When the cluster is set up, we have three nodes that do not have a leader elected.
- Now that it is elected the leader, it sends out notification at regular intervals to other masters, informing them that it is continuing to assume the role of the leader in case the other nodes do not receive a notification from the leader at some...
- Now, you don't have to know any kind of complicated scripting.
- Don't focus on the options as they are similar to what we saw in our previous lectures.
- Of course, we don't want to do that, as in large environments where thousands of pods are created every minute.
- For now I do not anticipate any questions on operators itself in the exam.
- Now you don't want to build and run it each time, so you may package the custom controller in a Docker image and then choose to run it inside your Kubernetes cluster as a pod or a deployment.
- Now, in the exam, I don't expect them to ask a question about building a custom controller as it requires more coding knowledge.
- So I don't anticipate a question on this.

## 10. Troubleshooting angle
- A high availability configuration is where you have redundancy across every component in the cluster, so as to avoid a single point of failure.
- For example, the controller manager consists of controllers like the replication controller that is constantly watching the state of pots and taking necessary actions like creating a new pot when one fails, etc..
- That way, if one process fails, maybe because the first master crashes, then the second process can acquire the lock and become the leader.
- If one fails, there is no quorum, so rights won't be processed.
- Say for example, due to a disruption in the network, it fails and causes the network to partition.
- So Kubernetes operators do what a human operator typically would do to manage a specific application, such as installing it, maintaining it by taking backups, and restoring backups in case of disasters, uh, fixing any issues that may come across t...

## 11. CKA / CKAD relevance
- For example, a container or pod on the worker node crashes.
- Similarly, since the kube API server is not available, you cannot access the cluster externally through kube control tool or through API for management purposes, which is why you must consider multiple master nodes in a high availability configura...
- The application, of course, which we already have multiple copies in the form of replica sets and services.
- Running multiple instances of the same components?
- If multiple instances of these run in parallel, then they might duplicate actions resulting in more pots than actually needed.
- Now with Ha, we decided to configure multiple masters.
- A multi-node cluster with a single master and multiple worker nodes would help again.
- We look at more details about high availability setup with multiple master nodes later in this section.
- For high performance workloads, rely on SSD backed storage for multiple concurrent Current access.
- Consider network based storage for shared access to volumes across multiple pods.

## 12. Source Contributions
- Matched Global Concepts:
  - Configure High Availability (match score: 1, notes: 84)
  - Design a Kubernetes Cluster (match score: 1, notes: 63)
  - Deployment With kubeadm - Introduction (match score: 1, notes: 21)
  - ETCD in HA (match score: 1, notes: 134)
  - Pod Networking (match score: 1, notes: 96)
  - (2025 Updates) Operator Framework (match score: 1, notes: 32)
  - (2025 Updates) Custom Controllers (match score: 1, notes: 39)
  - Lab Solution - Explore Environment (optional) (match score: 1, notes: 100)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 07_Security: 71 note entries
  - certified-kubernetes-administrator-with-practice-tests / 09_Networking: 196 note entries
  - certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster: 281 note entries
  - certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_: 21 note entries
- Explicit Source Reference Samples:
  - section-maps/BATCH-010_section_concept_map.md | 243_Configure High Availability.extraction.md | Entry 1 | Type Concept
  - section-maps/BATCH-010_section_concept_map.md | 243_Configure High Availability.extraction.md | Entry 2 | Type Concept
  - section-maps/BATCH-010_section_concept_map.md | 243_Configure High Availability.extraction.md | Entry 3 | Type Concept
  - section-maps/BATCH-010_section_concept_map.md | 243_Configure High Availability.extraction.md | Entry 4 | Type Concept
  - section-maps/BATCH-010_section_concept_map.md | 243_Configure High Availability.extraction.md | Entry 5 | Type Exam Tip
  - section-maps/BATCH-010_section_concept_map.md | 243_Configure High Availability.extraction.md | Entry 6 | Type Implementation Step
  - section-maps/BATCH-010_section_concept_map.md | 243_Configure High Availability.extraction.md | Entry 7 | Type Architecture
  - section-maps/BATCH-010_section_concept_map.md | 243_Configure High Availability.extraction.md | Entry 8 | Type Implementation Step
  - section-maps/BATCH-010_section_concept_map.md | 243_Configure High Availability.extraction.md | Entry 9 | Type Exam Tip
  - section-maps/BATCH-010_section_concept_map.md | 243_Configure High Availability.extraction.md | Entry 10 | Type Troubleshooting
  - section-maps/BATCH-010_section_concept_map.md | 243_Configure High Availability.extraction.md | Entry 11 | Type Concept
  - section-maps/BATCH-010_section_concept_map.md | 243_Configure High Availability.extraction.md | Entry 12 | Type Concept
  - section-maps/BATCH-010_section_concept_map.md | 243_Configure High Availability.extraction.md | Entry 13 | Type Concept
  - section-maps/BATCH-010_section_concept_map.md | 243_Configure High Availability.extraction.md | Entry 14 | Type Exam Tip
  - section-maps/BATCH-010_section_concept_map.md | 243_Configure High Availability.extraction.md | Entry 15 | Type Concept
  - section-maps/BATCH-010_section_concept_map.md | 243_Configure High Availability.extraction.md | Entry 16 | Type Concept
  - section-maps/BATCH-010_section_concept_map.md | 243_Configure High Availability.extraction.md | Entry 17 | Type Concept
  - section-maps/BATCH-010_section_concept_map.md | 243_Configure High Availability.extraction.md | Entry 18 | Type Concept
  - section-maps/BATCH-010_section_concept_map.md | 243_Configure High Availability.extraction.md | Entry 19 | Type Architecture
  - section-maps/BATCH-010_section_concept_map.md | 243_Configure High Availability.extraction.md | Entry 20 | Type Concept

