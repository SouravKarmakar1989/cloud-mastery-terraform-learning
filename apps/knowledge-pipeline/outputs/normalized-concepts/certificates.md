# Normalized Concept: Certificates

- Concept Key: certificates
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 1252

## 1. Definition
- In this lecture we will talk about etcd in a high availability setup.
- Well one portion of that deals with configuring etcd in a Ha mode.
- So in this lecture we will discuss about etcd in Ha mode.
- So in the beginning of this course we took a quick look at etcd.
- We will now recap real quick and more importantly focus on the cluster configuration on etcd.
- So let's recap real quick and look at the number of nodes in the cluster, what raft protocol is, etc..
- So what is STD?
- It's a distributed, reliable key value store that is simple, secure and fast.
- So let's break it up.
- Traditionally, data was organized and stored in tables like this.

## 2. First-Principles Mental Model
- In this lecture we will talk about etcd in a high availability setup.
- So this is really a prerequisite lecture for the next lecture where we talk about configuring Kubernetes in a highly available mode.
- Well one portion of that deals with configuring etcd in a Ha mode.
- So in this lecture we will discuss about etcd in Ha mode.
- So in the beginning of this course we took a quick look at etcd.
- We will now recap real quick and more importantly focus on the cluster configuration on etcd.
- So that's what etcd is and how you quickly get started with it.
- We also said that etcd is distributed.
- We had etcd on a single server but it's a database and maybe storing critical data.
- Now you have three servers, all running etcd and all maintaining an identical copy of the database.

## 3. Why This Exists
- For example, to store details about a number of individuals.
- These files can be in any format or structure, and changes to one file does not affect the others.
- So that's what etcd is and how you quickly get started with it.
- And that is what we're going to focus in this lecture.
- So it is possible to have your data store across multiple servers.
- You can write to any instance and read your data from any instance.
- For example, I have writes coming in for the name set to John on one and with the name Joe on the other.
- If the rights came in through any of the other follower nodes, then they forward the rights to the leader internally and then the leader processes the rights again.
- When the rights are processed, the leader ensures that copies of the rights are distributed to other instances in the cluster.
- The first one to finish the timer sends out a request to the other nodes requesting permission to be the leader.

## 4. Internal Working
- In this lecture we will talk about etcd in a high availability setup.
- So this is really a prerequisite lecture for the next lecture where we talk about configuring Kubernetes in a highly available mode.
- Well one portion of that deals with configuring etcd in a Ha mode.
- So in this lecture we will discuss about etcd in Ha mode.
- So in the beginning of this course we took a quick look at etcd.
- We will now recap real quick and more importantly focus on the cluster configuration on etcd.
- So that's what etcd is and how you quickly get started with it.
- We also said that etcd is distributed.
- We had etcd on a single server but it's a database and maybe storing critical data.
- Now you have three servers, all running etcd and all maintaining an identical copy of the database.
- Etcd ensures that the same consistent copy of the data is available on all instances at the same time.
- Etcd does not process the writes on each node.

## 5. Key Objects / Fields / Relationships
- So let's recap real quick and look at the number of nodes in the cluster, what raft protocol is, etc..
- But how does it ensure the data on all the nodes are consistent?
- So how does it do that with reads is easy since the same data is available across all nodes.
- You can easily read it from any node, but that is not the case with writes.
- Of course, we cannot have two different data on two different nodes.
- Etcd does not process the writes on each node.
- The two nodes elect a leader among them.
- Of the total instances, one node becomes the leader and the other node becomes the followers.
- If the rights came in through the leader node, then the leader processes the right.
- The leader makes sure that the other nodes are sent a copy of the data.

## 6. YAML Deep Dive
- When your data gets complex, you typically end up transacting in data formats like JSON or YAML.
- Run the etcd cuddle command and specify the key as name and value as John.
- Ingress is implemented by Kubernetes in kind of the same way you first deploy a supported solution, which happens to be any of these listed here, and then specify a set of rules to configure ingress.
- This is a special build of index.
- Built specifically to be used as an ingress controller in Kubernetes, so it has its own set of requirements within the image.
- The nginx service requires these to read the configuration data within the pod, and finally specify the ports used by the ingress controller, which happens to be 80 and 443.
- In this case, ingress dot YAML.
- As with any other object, we have API version kind metadata and spec.
- IO v1 kind is ingress.
- We will name it ingress where and under spec we have default backend.

## 7. kubectl / command usage
- Run the etcd cuddle command and specify the key as name and value as John.
- To retrieve data, run the etcd cuddle git command with the key name and it returns the value.
- Only command.
- So you must pass that as the command to start with nginx controller service.
- Create the ingress resource by running the kubectl create command.
- View the created ingress by running the kubectl get ingress command.
- Create the ingress resource using the kubectl create command.
- Once created, view additional details about the ingress resource by running the kubectl describe ingress command.
- Now if you look closely in the output of this command, you see that there is something about a default backend. end.
- But I'm going to copy this command, and we're going to paste it on all of our, um, all of our nodes because we're going to need cube ADM installed on all three of them.

## 8. Real-world scenarios
- In this lecture we will talk about etcd in a high availability setup.
- So this is really a prerequisite lecture for the next lecture where we talk about configuring Kubernetes in a highly available mode.
- We will now recap real quick and more importantly focus on the cluster configuration on etcd.
- So let's recap real quick and look at the number of nodes in the cluster, what raft protocol is, etc..
- For example, to store details about a number of individuals.
- Etcd ensures that the same consistent copy of the data is available on all instances at the same time.
- So how does it do that with reads is easy since the same data is available across all nodes.
- For example, I have writes coming in for the name set to John on one and with the name Joe on the other.
- When the rights are processed, the leader ensures that copies of the rights are distributed to other instances in the cluster.
- Thus, a right is only considered complete if the leader gets consent from the other members in the cluster.

## 9. Pitfalls and misunderstandings
- When the cluster is set up, we have three nodes that do not have a leader elected.
- Now that it is elected the leader, it sends out notification at regular intervals to other masters, informing them that it is continuing to assume the role of the leader in case the other nodes do not receive a notification from the leader at some...
- For example, we do not want the users to have to type in the IP address every time.
- Now, you don't want your users to have to remember port number either.
- But now you don't want your developers to implement it in their applications, as they would do it in different ways, and it's an additional burden for them to develop additional code to handle that.
- As I mentioned, you do not have an ingress controller on Kubernetes by default, so you must deploy one.
- So if it's a single backend then you don't really have any rules.
- Now back in your application, say a user visits the URL, my online store or com slash listen or slash eat and you don't have an audio streaming or a food delivery service.
- We don't technically need cube CTL and Cubelet at the moment.
- So we're going to just not pass in that file because we don't need to change anything.

## 10. Troubleshooting angle
- If one fails, there is no quorum, so rights won't be processed.
- Say for example, due to a disruption in the network, it fails and causes the network to partition.
- And finally, anything other than the ones listed here will go to the fourth rule that will simply show a 404 not found error page.
- You can do this by configuring a default back end service to display this 404 not found error page.
- In the earlier lectures, when we discussed about certificates, we discussed that the Cubelets should be part of the system nodes group and have a name prefixed with system node.
- In the earlier lectures, when we discussed about certificates, we discussed that the Cubelets should be part of the system nodes group and have a name prefixed with system node, so any requests coming from a user with the name system node and part...
- Practice working with Kubeconfig files and troubleshooting issues.
- Okay, so it looks like there is an error.

## 11. CKA / CKAD relevance
- For example, to store details about a number of individuals.
- So it is possible to have your data store across multiple servers.
- For example, I have writes coming in for the name set to John on one and with the name Joe on the other.
- For example, a random timer is kicked off on the three managers.
- Going back to our previous example, where a right comes in, it is processed by the leader and is replicated to other nodes in the cluster.
- Say for example, a new raid comes in, but one of the node is not responding, and hence the leader is only able to write to two nodes in the cluster.
- For example, in this case of three nodes, the majority is two.
- In this example, a port of 30080 is allocated for the service.
- For example, a video streaming service.
- Out of these, GCE and nginx are currently being supported and maintained by the Kubernetes project, and in this lecture we will use nginx as an example.

## 12. Source Contributions
- Matched Global Concepts:
  - ETCD in HA (match score: 2, notes: 134)
  - Ingress (match score: 2, notes: 192)
  - Demo - Deployment with Kubeadm (match score: 2, notes: 364)
  - Deployment With kubeadm - Introduction (match score: 2, notes: 21)
  - Authorization (match score: 2, notes: 143)
  - KubeConfig (match score: 2, notes: 180)
  - Lab Solution - Certificates API (match score: 2, notes: 112)
  - API Groups (match score: 2, notes: 106)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 07_Security: 326 note entries
  - certified-kubernetes-administrator-with-practice-tests / 09_Networking: 192 note entries
  - certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster: 134 note entries
  - certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_: 385 note entries
  - certified-kubernetes-application-developer / 09_Security: 215 note entries
- Explicit Source Reference Samples:
  - section-maps/BATCH-010_section_concept_map.md | 244_ETCD in HA.extraction.md | Entry 1 | Type Architecture
  - section-maps/BATCH-010_section_concept_map.md | 244_ETCD in HA.extraction.md | Entry 2 | Type Implementation Step
  - section-maps/BATCH-010_section_concept_map.md | 244_ETCD in HA.extraction.md | Entry 3 | Type Architecture
  - section-maps/BATCH-010_section_concept_map.md | 244_ETCD in HA.extraction.md | Entry 4 | Type Architecture
  - section-maps/BATCH-010_section_concept_map.md | 244_ETCD in HA.extraction.md | Entry 5 | Type Architecture
  - section-maps/BATCH-010_section_concept_map.md | 244_ETCD in HA.extraction.md | Entry 6 | Type Architecture
  - section-maps/BATCH-010_section_concept_map.md | 244_ETCD in HA.extraction.md | Entry 7 | Type Concept
  - section-maps/BATCH-010_section_concept_map.md | 244_ETCD in HA.extraction.md | Entry 8 | Type Concept
  - section-maps/BATCH-010_section_concept_map.md | 244_ETCD in HA.extraction.md | Entry 9 | Type Concept
  - section-maps/BATCH-010_section_concept_map.md | 244_ETCD in HA.extraction.md | Entry 10 | Type Concept
  - section-maps/BATCH-010_section_concept_map.md | 244_ETCD in HA.extraction.md | Entry 11 | Type Concept
  - section-maps/BATCH-010_section_concept_map.md | 244_ETCD in HA.extraction.md | Entry 12 | Type Exam Tip
  - section-maps/BATCH-010_section_concept_map.md | 244_ETCD in HA.extraction.md | Entry 13 | Type Concept
  - section-maps/BATCH-010_section_concept_map.md | 244_ETCD in HA.extraction.md | Entry 14 | Type Concept
  - section-maps/BATCH-010_section_concept_map.md | 244_ETCD in HA.extraction.md | Entry 15 | Type Concept
  - section-maps/BATCH-010_section_concept_map.md | 244_ETCD in HA.extraction.md | Entry 16 | Type Concept
  - section-maps/BATCH-010_section_concept_map.md | 244_ETCD in HA.extraction.md | Entry 17 | Type Concept
  - section-maps/BATCH-010_section_concept_map.md | 244_ETCD in HA.extraction.md | Entry 18 | Type Concept
  - section-maps/BATCH-010_section_concept_map.md | 244_ETCD in HA.extraction.md | Entry 19 | Type Architecture
  - section-maps/BATCH-010_section_concept_map.md | 244_ETCD in HA.extraction.md | Entry 20 | Type Architecture

