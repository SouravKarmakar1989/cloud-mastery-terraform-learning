# Normalized Concept: Service Networking

- Concept Key: service-networking
- Matched Global Concept Blocks: 4
- Source-backed Note Entries Used: 342

## 1. Definition
- Not the pods or the services, but the nodes itself.
- So, what I'm gonna do is I'm gonna do a kubectl get nodes -o, and I'm gonna do wide.
- And I'm gonna look for the internal IP of my nodes.
- So, I'm on the control plane, so 192.16.10.10.
- And so now if I take a look at the interfaces on this node I could do an IP add.
- And we're gonna see all of the interfaces.
- And so, if we go down to ethernet zero or ethernet one, we wanna look for whichever interface has this IP address which is ethernet zero, which has 192.6.10.10.
- So, the subnet is going to be 192.168.10.0/24.
- 24 means that the last eight bits, so the last octet is going to be reserved for the host addresses.
- So we want 192.168...

## 2. First-Principles Mental Model
- Instructor: So, the first question it's asking us, "What network range are the nodes in the cluster a part of?" So, what this is asking us, what is the IP address of the nodes?
- What is the range of IP addresses configured for pods on this cluster?
- So first of all, we have to see what we're doing from a networking perspective.
- And so, I'm gonna just do a kubectl get all --all-namespaces just to see everything that's deployed.
- So, any pods that you deploy, they're gonna be part of this subnet here.
- Now, the next question is asking, "What is the IP range configured for the services within the cluster?" And to see the IP address range for services, what we wanna do is take a look at the configuration of the API server.
- So the API server, it's manifests are gonna be located in /etsy, I think it's kubernetes/manifests.
- Next question's asking us how many cube proxy pods are deployed in this cluster?
- We could see that we have two kube-proxy pods.
- What type of proxy is the kube-proxy configured to use?

## 3. Why This Exists
- And so, if we go down to ethernet zero or ethernet one, we wanna look for whichever interface has this IP address which is ethernet zero, which has 192.6.10.10.
- So, the subnet is going to be 192.168.10.0/24.
- 24 means that the last eight bits, so the last octet is going to be reserved for the host addresses.
- So that's what all of the nodes are gonna be using.
- So first of all, we have to see what we're doing from a networking perspective.
- And so, I'm gonna just do a kubectl get all --all-namespaces just to see everything that's deployed.
- So I'm actually gonna take a look at the logs of that pod to see if it's gonna give us some information about what IP addresses are gonna be used for the pods in our cluster.
- Now, the next question is asking, "What is the IP range configured for the services within the cluster?" And to see the IP address range for services, what we wanna do is take a look at the configuration of the API server.
- And we're gonna go to the top and there should be a certain flag that specifies the service range or the IP address range for the services.
- What type of proxy is the kube-proxy configured to use?

## 4. Internal Working
- Instructor: So, the first question it's asking us, "What network range are the nodes in the cluster a part of?" So, what this is asking us, what is the IP address of the nodes?
- What is the range of IP addresses configured for pods on this cluster?
- So first of all, we have to see what we're doing from a networking perspective.
- And so, I'm gonna just do a kubectl get all --all-namespaces just to see everything that's deployed.
- So, any pods that you deploy, they're gonna be part of this subnet here.
- Now, the next question is asking, "What is the IP range configured for the services within the cluster?" And to see the IP address range for services, what we wanna do is take a look at the configuration of the API server.
- So the API server, it's manifests are gonna be located in /etsy, I think it's kubernetes/manifests.
- Next question's asking us how many cube proxy pods are deployed in this cluster?
- We could see that we have two kube-proxy pods.
- What type of proxy is the kube-proxy configured to use?
- Well for this, well, let's take a look at the kube-proxy pods themselves and we'll see if the logs tell us anything.
- And finally, it's asking how does the Kubernetes cluster ensure that the kube-proxy pod runs on all nodes in the cluster?

## 5. Key Objects / Fields / Relationships
- Instructor: So, the first question it's asking us, "What network range are the nodes in the cluster a part of?" So, what this is asking us, what is the IP address of the nodes?
- Not the pods or the services, but the nodes itself.
- So, what I'm gonna do is I'm gonna do a kubectl get nodes -o, and I'm gonna do wide.
- And I'm gonna look for the internal IP of my nodes.
- And so now if I take a look at the interfaces on this node I could do an IP add.
- So that's what all of the nodes are gonna be using.
- What is the range of IP addresses configured for pods on this cluster?
- And so, I'm gonna just do a kubectl get all --all-namespaces just to see everything that's deployed.
- And if we look at the kube system namespace, we could see that we have a weave pod.
- So I'm actually gonna take a look at the logs of that pod to see if it's gonna give us some information about what IP addresses are gonna be used for the pods in our cluster.

## 6. YAML Deep Dive
- So first of all, we have to see what we're doing from a networking perspective.
- And I'm just gonna start at the top and just kind of scroll my way down until I see a log message that tells us what subnet's gonna use.
- So the API server, it's manifests are gonna be located in /etsy, I think it's kubernetes/manifests.
- And we're gonna go to the top and there should be a certain flag that specifies the service range or the IP address range for the services.
- Now each of the tests in this series respects the weightage of these individual knowledge areas to give you the experience of taking an actual exam. (upbeat music) And to take it up another notch, the questions that you get for this mock exam, inc...
- There are four clusters in total, some of which are dedicated to specific knowledge areas. (upbeat music) By default, the exam taker which is you, will be locked into what is known as the student-node.
- But if you want to access any of these control planes specifically, you'll have to make use of the ssh command.
- So let me get it in a YAML format, so that we can see the data.
- And finally, you go through a practice test where you look at an existing cluster and are asked to identify various details with respect to these components in the cluster.
- We have two kinds of shapes in this example cargo ships that does the actual work of carrying containers across the sea, and control ships that are responsible for monitoring and managing the cargo ships.

## 7. kubectl / command usage
- So, what I'm gonna do is I'm gonna do a kubectl get nodes -o, and I'm gonna do wide.
- And so, I'm gonna just do a kubectl get all --all-namespaces just to see everything that's deployed.
- So, I'll do a kubectl logs.
- So, I'm gonna do a kubectl get pods -n kube-system.
- So, I'll do kubectl logs, and I'll grab one of these pods.
- So, I'm gonna do a kubectl get all -- all-namespaces and I'm just gonna look for anything with kube-proxy.
- And to check all the clusters that are configured, you can use the command kubectl config get-clusters.
- But if you want to access any of these control planes specifically, you'll have to make use of the ssh command.
- And if I run the same command as before, you'll see that this is a single-node cluster with just one control plane.
- So I'm going to type kubectl get secrets -n.

## 8. Real-world scenarios
- Instructor: So, the first question it's asking us, "What network range are the nodes in the cluster a part of?" So, what this is asking us, what is the IP address of the nodes?
- What is the range of IP addresses configured for pods on this cluster?
- And so, I'm gonna just do a kubectl get all --all-namespaces just to see everything that's deployed.
- So I'm actually gonna take a look at the logs of that pod to see if it's gonna give us some information about what IP addresses are gonna be used for the pods in our cluster.
- So, any pods that you deploy, they're gonna be part of this subnet here.
- Now, the next question is asking, "What is the IP range configured for the services within the cluster?" And to see the IP address range for services, what we wanna do is take a look at the configuration of the API server.
- And here we go, service-cluster-ip-range which is 10.96.0.0/12.
- Next question's asking us how many cube proxy pods are deployed in this cluster?
- And finally, it's asking how does the Kubernetes cluster ensure that the kube-proxy pod runs on all nodes in the cluster?
- Now, just knowing based off of this question, you know, what is the methodology that we use to normally deploy on every single node in a cluster?

## 9. Pitfalls and misunderstandings
- And by default, if you do not set any context, you should be accessing the cluster1.
- As a matter of fact, they don't exist at all.
- If you don't see these entries, you must also check the verbosity level of the process as well.

## 10. Troubleshooting angle
- Service networking is 20%, storage is another 10% and finally, the biggest section of them all is troubleshooting, which accounts for 30% of the questions.
- Now the sixth question as you can see, is from the troubleshooting section.
- For example, the operations team takes care of ship handling, traffic control, etc. they deal with issues related to damages, the routes the different ships take, etc. the cargo team takes care of containers when containers are damaged or destroyed.

## 11. CKA / CKAD relevance
- This is Vijin Palazhi from KodeKloud and welcome to the ultimate CKA mock exam series. (air whooshing) (gentle music) (air whooshing) Now before we begin, I wanted to talk to you about some of the prerequisites to consider before attempting this c...
- Now since you're watching this video, I'm assuming that your CKA exam is right around the corner and that you have already completed, the CKA preparation course with the included mock exams and the Lightning Labs.
- Now if this assumption is incorrect, I would highly recommend that you complete the CKA preparation course first and then come back to this series of Labs.
- Now this course consists of a series of comprehensive and challenging mock exams intended to give you more hands-on practice before you attend the actual exam. (upbeat music) And each test is quite unique as compared to the regular mock exams and ...
- Now each of the tests in this series respects the weightage of these individual knowledge areas to give you the experience of taking an actual exam. (upbeat music) And to take it up another notch, the questions that you get for this mock exam, inc...
- There are four clusters in total, some of which are dedicated to specific knowledge areas. (upbeat music) By default, the exam taker which is you, will be locked into what is known as the student-node.
- And as I mentioned earlier, these are randomized across the knowledge areas or sections and you'll have in total, two hours to complete this exam. (air whooshing) At the end of the exam, the results will be auto-validated and you'll be presented w...
- Let's now jump right in and go over one of these tests ourselves. (air whooshing) All right, so let's now start and take one of the mock exam test that's included in this course.
- And here, you can see that we have in total 10 mock exams.
- And for this demonstration, let's make use of CKA Mock Exam 1.

## 12. Source Contributions
- Matched Global Concepts:
  - Lab Solution - Service Networking (optional) (match score: 2, notes: 53)
  - What's Next_ (match score: 2, notes: 118)
  - Cluster Architecture (match score: 2, notes: 82)
  - Service Networking (match score: 2, notes: 89)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts: 82 note entries
  - certified-kubernetes-administrator-with-practice-tests / 09_Networking: 142 note entries
  - certified-kubernetes-administrator-with-practice-tests / 18_Bonus Section: 88 note entries
  - certified-kubernetes-application-developer / 15_Mock Exams: 30 note entries
- Explicit Source Reference Samples:
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 226_Lab Solution - Service Networking (optional).extraction.md | Entry 1 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 226_Lab Solution - Service Networking (optional).extraction.md | Entry 2 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 226_Lab Solution - Service Networking (optional).extraction.md | Entry 3 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 226_Lab Solution - Service Networking (optional).extraction.md | Entry 4 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 226_Lab Solution - Service Networking (optional).extraction.md | Entry 5 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 226_Lab Solution - Service Networking (optional).extraction.md | Entry 6 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 226_Lab Solution - Service Networking (optional).extraction.md | Entry 7 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 226_Lab Solution - Service Networking (optional).extraction.md | Entry 8 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 226_Lab Solution - Service Networking (optional).extraction.md | Entry 9 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 226_Lab Solution - Service Networking (optional).extraction.md | Entry 10 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 226_Lab Solution - Service Networking (optional).extraction.md | Entry 11 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 226_Lab Solution - Service Networking (optional).extraction.md | Entry 12 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 226_Lab Solution - Service Networking (optional).extraction.md | Entry 13 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 226_Lab Solution - Service Networking (optional).extraction.md | Entry 14 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 226_Lab Solution - Service Networking (optional).extraction.md | Entry 15 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 226_Lab Solution - Service Networking (optional).extraction.md | Entry 16 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 226_Lab Solution - Service Networking (optional).extraction.md | Entry 17 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 226_Lab Solution - Service Networking (optional).extraction.md | Entry 18 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 226_Lab Solution - Service Networking (optional).extraction.md | Entry 19 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 226_Lab Solution - Service Networking (optional).extraction.md | Entry 20 | Type Concept

