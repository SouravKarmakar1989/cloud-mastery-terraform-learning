# Normalized Concept: Network Policies

- Concept Key: network-policies
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 1087

## 1. Definition
- In this lecture, we will take a look at network policies in more detail.
- So here we have the same web API and database pods that we discussed about in the previous lecture.
- Our goal is to protect the database pod so that it does not allow access from any other pod except the API pod, and only on port 3306.
- So let's assume that we are not concerned about the web pod or the API pod for those pods.
- We are okay for all traffic to go in and out from anywhere.
- However, we want to protect the database pod and only allow traffic from the API pod.
- So let's get the other things out of our way so we can focus exactly on the required tasks.
- As we discussed, by default, Kubernetes allows all traffic from all pods to all destinations.
- We will call it DB policy.
- And we do that using labels and selectors.

## 2. First-Principles Mental Model
- So first let's be very clear with our requirements.
- So as the first step, we want to block out everything going in and out of the database pod.
- So we create a network policy.
- And the first step is to associate this network policy with the pod that we want to protect.
- So that's what we are going to configure next.
- So when deciding on what type of rule is to be created, you only need to be concerned about the direction in which the request originates and which is denoted by the straight line here.
- The next step is to define the specifics of that policy.
- If it's ingress, we create a section called ingress.
- This would create a policy that would block all traffic to the DB pod, except for traffic from the API pod.
- And you must remember that you must have this label set on namespace first for this to work.

## 3. Why This Exists
- Our goal is to protect the database pod so that it does not allow access from any other pod except the API pod, and only on port 3306.
- We are okay for all traffic to go in and out from anywhere.
- However, we want to protect the database pod and only allow traffic from the API pod.
- So we don't need to worry about the web pod or its port, as we don't want to allow any traffic from any other sources other than the EPA poured, so let's get rid of that.
- We can also forget about the port on the API pod to which the web server connects, as we don't care about that either.
- As we discussed, by default, Kubernetes allows all traffic from all pods to all destinations.
- So as the first step, we want to block out everything going in and out of the database pod.
- And the first step is to associate this network policy with the pod that we want to protect.
- So we do that by adding a pod selector field with the match labels option and by specifying the label on the DB pod, which happens to be set to roll DB.
- However, we need the API pod to be able to query the database on port 3006.

## 4. Internal Working
- So first let's be very clear with our requirements.
- So as the first step, we want to block out everything going in and out of the database pod.
- So we create a network policy.
- And the first step is to associate this network policy with the pod that we want to protect.
- So that's what we are going to configure next.
- So when deciding on what type of rule is to be created, you only need to be concerned about the direction in which the request originates and which is denoted by the straight line here.
- The next step is to define the specifics of that policy.
- If it's ingress, we create a section called ingress.
- This would create a policy that would block all traffic to the DB pod, except for traffic from the API pod.
- And you must remember that you must have this label set on namespace first for this to work.
- Now, since this backup server is not deployed in our Kubernetes cluster, the pod selector and namespace selector fields that we use to define traffic from won't work because it's not a pod in the cluster.
- We could configure a network policy to allow traffic originating from certain IP addresses.

## 5. Key Objects / Fields / Relationships
- So here we have the same web API and database pods that we discussed about in the previous lecture.
- Our goal is to protect the database pod so that it does not allow access from any other pod except the API pod, and only on port 3306.
- So let's assume that we are not concerned about the web pod or the API pod for those pods.
- However, we want to protect the database pod and only allow traffic from the API pod.
- So we don't need to worry about the web pod or its port, as we don't want to allow any traffic from any other sources other than the EPA poured, so let's get rid of that.
- We can also forget about the port on the API pod to which the web server connects, as we don't care about that either.
- As we discussed, by default, Kubernetes allows all traffic from all pods to all destinations.
- So as the first step, we want to block out everything going in and out of the database pod.
- So we create a network policy.
- We will call it DB policy.

## 6. YAML Deep Dive
- So we do that by adding a pod selector field with the match labels option and by specifying the label on the DB pod, which happens to be set to roll DB.
- So you always look at this from the DB pod's perspective.
- From the DB pod's perspective, we want to allow incoming traffic from the API pod.
- The next step is to define the specifics of that policy.
- Within which we can specify multiple rules.
- In this case, all pods within the specified namespace will be allowed to reach the database pod, such as the web pod that we had earlier.
- IP block allows you to specify a range of IP addresses from which you could allow traffic to hit the database pod.
- The second rule is allowed, which is from any pod within the prod namespace that is, either from the pod web and of course, along with the backup server, as we have the IP block specification as well.
- And then we add a new egress section to define the specifics of the policy.
- So we specify 80 as the port.

## 7. kubectl / command usage
- So we could do a get, kubectl get network policies.
- You could also do, kubectl get net poll.
- So let's do a kubectl describe net poll Payroll Policy.
- So let's do kubectl describe net pol payroll policy.
- Create command to create the policy.
- But to do that we'll do a kubectl run, and then we'll provide the name which is gonna be Nginx, and then we'll pass in the image flag.
- Now, I do a kubectl, create namespace.
- So, do the kubectl, create command and we'll create a deployment, and we'll call this httpd-frontend as per the question.
- So, I'll say kubectl run messaging, we're gonna specify the image which is gonna be redis alpine.
- So, I'm gonna do a kubectl, get replica set.

## 8. Real-world scenarios
- And we do that using labels and selectors.
- So we do that by adding a pod selector field with the match labels option and by specifying the label on the DB pod, which happens to be set to roll DB.
- And here we would use a port selector and provide the labels of the API pod like this.
- Now, what if there are multiple API pods in the cluster with the same labels, but in different namespaces.
- And we have the API pod with the same labels in each of these environments.
- The current policy would allow any pod in any namespace with matching labels to reach the database pod.
- Under this, we use match labels again to provide a label set on the namespace.
- And you must remember that you must have this label set on namespace first for this to work.
- Say we have a backup server somewhere outside of the Kubernetes cluster, and we want to allow the server to connect to the database pod.
- Now, since this backup server is not deployed in our Kubernetes cluster, the pod selector and namespace selector fields that we use to define traffic from won't work because it's not a pod in the cluster.

## 9. Pitfalls and misunderstandings
- So we don't need to worry about the web pod or its port, as we don't want to allow any traffic from any other sources other than the EPA poured, so let's get rid of that.
- We can also forget about the port on the API pod to which the web server connects, as we don't care about that either.
- We don't need a separate rule for that.
- And you don't need to worry about the response, which is denoted by a solid line here.
- So we don't need to worry about the web pod on or its port, as we don't want to allow any traffic from any other sources other than the API port.
- And you don't need to worry about the response, which is denoted by solid line here.
- Seems to be an image, so, we do not have the alias set, the alias.
- So we do not have the alias set.
- The response back to the user, denoted by the dotted lines, do not really matter.
- What if we do not want the front end web server to be able to communicate with the database server directly?

## 10. Troubleshooting angle
- I'm gonna fix that.
- You will not get an error message saying the network solution does not support network policies.
- A replica set with the name of rs-d333393 is created, how are the pods are not coming up, identify and fix this issue, and ensure that the replica set has four in a ready state.
- So, this is most likely what's causing this issue.
- The first time you try to execute your work, it fails.
- You read the error message and realize that you had made a mistake, like a typo.
- So you go back and fix it and run it again.
- This time you get an error message, but you're not able to make any sense out of it.
- Now I know that urge to troubleshoot and fix issues, but this is not the right time for it.
- Leave it to the end and do all the troubleshooting you want, after you have attempted all the questions.

## 11. CKA / CKAD relevance
- Within which we can specify multiple rules.
- Now, what if there are multiple API pods in the cluster with the same labels, but in different namespaces.
- In this example, under the from section we have two elements.
- So say for example instead of the backup server initiating a backup, say we have an agent on the DB pod that pushes backup to the backup server.
- If it's ingress, we create a section called ingress within which we can specify multiple rules.
- Before we begin, we will start with a simple example of a traffic flowing through a web app and database server.
- For example, for a web server, the incoming traffic from the users is an ingress traffic and the outgoing request to the app server is egress traffic and that is denoted by the straight arrow.
- For example, in this network solution, all pods are on a virtual private network that spans across the nodes in the Kubernetes cluster, and they can all by default reach each other using the IPS or pod names or services Cells configured for that p...
- Say for example, your security teams and audits require you to prevent that from happening.
- We will start with a simple example of a traffic flowing through a web app and database server.

## 12. Source Contributions
- Matched Global Concepts:
  - Developing network policies (match score: 2, notes: 223)
  - Lab Solution - Network Policies (optional) (match score: 2, notes: 149)
  - Solution - Network Policies (optional) (match score: 2, notes: 161)
  - Network Policies (match score: 2, notes: 69)
  - Network Policy (match score: 2, notes: 66)
  - Mock Exam -1 (Solution) (match score: 1, notes: 175)
  - Time Management (match score: 1, notes: 63)
  - Solution_ Lightning Lab1 (match score: 1, notes: 181)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 07_Security: 329 note entries
  - certified-kubernetes-application-developer / 07_Services & Networking: 339 note entries
  - certified-kubernetes-application-developer / 13_Certification Tips: 63 note entries
  - certified-kubernetes-application-developer / 14_Lightning Labs: 181 note entries
  - certified-kubernetes-application-developer / 15_Mock Exams: 175 note entries
- Explicit Source Reference Samples:
  - section-maps/BATCH-007_section_concept_map.md | 180_Developing network policies.extraction.md | Entry 1 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 180_Developing network policies.extraction.md | Entry 2 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 180_Developing network policies.extraction.md | Entry 3 | Type Implementation Step
  - section-maps/BATCH-007_section_concept_map.md | 180_Developing network policies.extraction.md | Entry 4 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 180_Developing network policies.extraction.md | Entry 5 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 180_Developing network policies.extraction.md | Entry 6 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 180_Developing network policies.extraction.md | Entry 7 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 180_Developing network policies.extraction.md | Entry 8 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 180_Developing network policies.extraction.md | Entry 9 | Type Warning/Pitfall
  - section-maps/BATCH-007_section_concept_map.md | 180_Developing network policies.extraction.md | Entry 10 | Type Warning/Pitfall
  - section-maps/BATCH-007_section_concept_map.md | 180_Developing network policies.extraction.md | Entry 11 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 180_Developing network policies.extraction.md | Entry 12 | Type Implementation Step
  - section-maps/BATCH-007_section_concept_map.md | 180_Developing network policies.extraction.md | Entry 13 | Type Implementation Step
  - section-maps/BATCH-007_section_concept_map.md | 180_Developing network policies.extraction.md | Entry 14 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 180_Developing network policies.extraction.md | Entry 15 | Type Implementation Step
  - section-maps/BATCH-007_section_concept_map.md | 180_Developing network policies.extraction.md | Entry 16 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 180_Developing network policies.extraction.md | Entry 17 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 180_Developing network policies.extraction.md | Entry 18 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 180_Developing network policies.extraction.md | Entry 19 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 180_Developing network policies.extraction.md | Entry 20 | Type Implementation Step

