# Normalized Concept: Cluster Maintenance

- Concept Key: cluster-maintenance
- Matched Global Concept Blocks: 6
- Source-backed Note Entries Used: 611

## 1. Definition
- -: Hello, this is (indistinct) and we are going through the certified Kubernetes Administrator's course.
- In this lecture, we discuss about cluster maintenance related topics.
- We start by looking at operating system upgrades.
- Once you learn the upgrade procedure, you are asked to upgrade a cluster by yourself.
- You will perform an end-to-end upgrade of a cluster yourself with live applications running on them.
- And finally, we look at some of the backup and restore methodologies.
- Well, fun stuff coming up.
- So let's get started.
- -: Hello everyone.
- The architecture, installation and maintenance section consists of 25% of the questions.

## 2. First-Principles Mental Model
- We see the implications of losing a node from the cluster or when you take a note out of the cluster on purpose like for applying patches or upgrades on the OS itself.
- We then look at the cluster upgrade process.
- So we look at that first.
- You will practice a disaster recovery scenario where you take a backup of the Kubernetes cluster then go through a simulated disaster and then you're asked to recover from that disaster and bring the cluster back to the previous state.
- The architecture, installation and maintenance section consists of 25% of the questions.
- There you have it, the first Lab has been loaded.
- And the very first question, is from the section architecture, install and maintenance.
- So for the first question, we have to set the context to cluster3.
- So before we begin, let me show you all the clusters that are currently configured.
- And to check all the clusters that are configured, you can use the command kubectl config get-clusters.

## 3. Why This Exists
- We see the implications of losing a node from the cluster or when you take a note out of the cluster on purpose like for applying patches or upgrades on the OS itself.
- But before we do that, we need to know a little bit about Kubernetes releases and versions and the best practices around upgrading, when to upgrade, what version to upgrade to, et cetera.
- Once you learn the upgrade procedure, you are asked to upgrade a cluster by yourself.
- You will practice a disaster recovery scenario where you take a backup of the Kubernetes cluster then go through a simulated disaster and then you're asked to recover from that disaster and bring the cluster back to the previous state.
- This is Vijin Palazhi from KodeKloud and welcome to the ultimate CKA mock exam series. (air whooshing) (gentle music) (air whooshing) Now before we begin, I wanted to talk to you about some of the prerequisites to consider before attempting this c...
- Now if this assumption is incorrect, I would highly recommend that you complete the CKA preparation course first and then come back to this series of Labs.
- Now this course consists of a series of comprehensive and challenging mock exams intended to give you more hands-on practice before you attend the actual exam. (upbeat music) And each test is quite unique as compared to the regular mock exams and ...
- Now each of the tests in this series respects the weightage of these individual knowledge areas to give you the experience of taking an actual exam. (upbeat music) And to take it up another notch, the questions that you get for this mock exam, inc...
- There are four clusters in total, some of which are dedicated to specific knowledge areas. (upbeat music) By default, the exam taker which is you, will be locked into what is known as the student-node.
- And from here, you'll be able to access all the other Kubernetes clusters and also be able to ssh your individual nodes of these clusters. (upbeat music) In total, there are 20 random questions generated for the entire Lab.

## 4. Internal Working
- We see the implications of losing a node from the cluster or when you take a note out of the cluster on purpose like for applying patches or upgrades on the OS itself.
- We then look at the cluster upgrade process.
- So we look at that first.
- You will practice a disaster recovery scenario where you take a backup of the Kubernetes cluster then go through a simulated disaster and then you're asked to recover from that disaster and bring the cluster back to the previous state.
- The architecture, installation and maintenance section consists of 25% of the questions.
- There you have it, the first Lab has been loaded.
- And the very first question, is from the section architecture, install and maintenance.
- So for the first question, we have to set the context to cluster3.
- So before we begin, let me show you all the clusters that are currently configured.
- And to check all the clusters that are configured, you can use the command kubectl config get-clusters.
- So let's attempt this question first.
- So as you can see, the first question was of weightage eight and belonged to the section architecture, install and maintenance.

## 5. Key Objects / Fields / Relationships
- We see the implications of losing a node from the cluster or when you take a note out of the cluster on purpose like for applying patches or upgrades on the OS itself.
- Service networking is 20%, storage is another 10% and finally, the biggest section of them all is troubleshooting, which accounts for 30% of the questions.
- There are four clusters in total, some of which are dedicated to specific knowledge areas. (upbeat music) By default, the exam taker which is you, will be locked into what is known as the student-node.
- And from here, you'll be able to access all the other Kubernetes clusters and also be able to ssh your individual nodes of these clusters. (upbeat music) In total, there are 20 random questions generated for the entire Lab.
- And if you remember, it accounts for 25% of the questions.
- As you can see, we are currently on the student-node.
- So as you can see, cluster1 which has got two worker nodes, which is cluster1-node01 and node02.
- So I'm going to copy this text here and paste it in the student-node.
- So remember, student-node itself is just a client where you'll find that you log in, if you open a new terminal, you'll also log into student-node.
- And if I run the same command as before, you'll see that this is a single-node cluster with just one control plane.

## 6. YAML Deep Dive
- Now each of the tests in this series respects the weightage of these individual knowledge areas to give you the experience of taking an actual exam. (upbeat music) And to take it up another notch, the questions that you get for this mock exam, inc...
- There are four clusters in total, some of which are dedicated to specific knowledge areas. (upbeat music) By default, the exam taker which is you, will be locked into what is known as the student-node.
- But if you want to access any of these control planes specifically, you'll have to make use of the ssh command.
- So let me get it in a YAML format, so that we can see the data.
- Ingress is implemented by Kubernetes in kind of the same way you first deploy a supported solution, which happens to be any of these listed here, and then specify a set of rules to configure ingress.
- This is a special build of index.
- Built specifically to be used as an ingress controller in Kubernetes, so it has its own set of requirements within the image.
- The nginx service requires these to read the configuration data within the pod, and finally specify the ports used by the ingress controller, which happens to be 80 and 443.
- In this case, ingress dot YAML.
- As with any other object, we have API version kind metadata and spec.

## 7. kubectl / command usage
- And to check all the clusters that are configured, you can use the command kubectl config get-clusters.
- But if you want to access any of these control planes specifically, you'll have to make use of the ssh command.
- And if I run the same command as before, you'll see that this is a single-node cluster with just one control plane.
- So I'm going to type kubectl get secrets -n.
- So you must pass that as the command to start with nginx controller service.
- Create the ingress resource by running the kubectl create command.
- View the created ingress by running the kubectl get ingress command.
- Create the ingress resource using the kubectl create command.
- Once created, view additional details about the ingress resource by running the kubectl describe ingress command.
- Now if you look closely in the output of this command, you see that there is something about a default backend. end.

## 8. Real-world scenarios
- In this lecture, we discuss about cluster maintenance related topics.
- We see the implications of losing a node from the cluster or when you take a note out of the cluster on purpose like for applying patches or upgrades on the OS itself.
- We then look at the cluster upgrade process.
- But before we do that, we need to know a little bit about Kubernetes releases and versions and the best practices around upgrading, when to upgrade, what version to upgrade to, et cetera.
- Once you learn the upgrade procedure, you are asked to upgrade a cluster by yourself.
- You will perform an end-to-end upgrade of a cluster yourself with live applications running on them.
- You will practice a disaster recovery scenario where you take a backup of the Kubernetes cluster then go through a simulated disaster and then you're asked to recover from that disaster and bring the cluster back to the previous state.
- Now since you're watching this video, I'm assuming that your CKA exam is right around the corner and that you have already completed, the CKA preparation course with the included mock exams and the Lightning Labs.
- Now if this assumption is incorrect, I would highly recommend that you complete the CKA preparation course first and then come back to this series of Labs.
- Now this course consists of a series of comprehensive and challenging mock exams intended to give you more hands-on practice before you attend the actual exam. (upbeat music) And each test is quite unique as compared to the regular mock exams and ...

## 9. Pitfalls and misunderstandings
- And by default, if you do not set any context, you should be accessing the cluster1.
- For example, we do not want the users to have to type in the IP address every time.
- Now, you don't want your users to have to remember port number either.
- But now you don't want your developers to implement it in their applications, as they would do it in different ways, and it's an additional burden for them to develop additional code to handle that.
- As I mentioned, you do not have an ingress controller on Kubernetes by default, so you must deploy one.
- So if it's a single backend then you don't really have any rules.
- Now back in your application, say a user visits the URL, my online store or com slash listen or slash eat and you don't have an audio streaming or a food delivery service.
- However, you do not for sure know if a node is going to be back online in five minutes.
- Now remember, the pods that were moved to the other nodes don't automatically fall back.

## 10. Troubleshooting angle
- Service networking is 20%, storage is another 10% and finally, the biggest section of them all is troubleshooting, which accounts for 30% of the questions.
- Now the sixth question as you can see, is from the troubleshooting section.
- And finally, anything other than the ones listed here will go to the fourth rule that will simply show a 404 not found error page.
- You can do this by configuring a default back end service to display this 404 not found error page.

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
  - Cluster Maintenance - Section Introduction (match score: 2, notes: 13)
  - What's Next_ (match score: 1, notes: 118)
  - Ingress Networking (match score: 1, notes: 192)
  - Choosing Kubernetes Infrastructure (match score: 1, notes: 56)
  - OS Upgrades (match score: 1, notes: 40)
  - Ingress (match score: 1, notes: 192)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance: 53 note entries
  - certified-kubernetes-administrator-with-practice-tests / 09_Networking: 192 note entries
  - certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster: 56 note entries
  - certified-kubernetes-administrator-with-practice-tests / 18_Bonus Section: 88 note entries
  - certified-kubernetes-application-developer / 07_Services & Networking: 192 note entries
  - certified-kubernetes-application-developer / 15_Mock Exams: 30 note entries
- Explicit Source Reference Samples:
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 130_Cluster Maintenance - Section Introduction.extraction.md | Entry 1 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 130_Cluster Maintenance - Section Introduction.extraction.md | Entry 2 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 130_Cluster Maintenance - Section Introduction.extraction.md | Entry 3 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 130_Cluster Maintenance - Section Introduction.extraction.md | Entry 4 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 130_Cluster Maintenance - Section Introduction.extraction.md | Entry 5 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 130_Cluster Maintenance - Section Introduction.extraction.md | Entry 6 | Type Best Practice
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 130_Cluster Maintenance - Section Introduction.extraction.md | Entry 7 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 130_Cluster Maintenance - Section Introduction.extraction.md | Entry 8 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 130_Cluster Maintenance - Section Introduction.extraction.md | Entry 9 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 130_Cluster Maintenance - Section Introduction.extraction.md | Entry 10 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 130_Cluster Maintenance - Section Introduction.extraction.md | Entry 11 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 130_Cluster Maintenance - Section Introduction.extraction.md | Entry 12 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 130_Cluster Maintenance - Section Introduction.extraction.md | Entry 13 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-017_section_concept_map.md | 313_What's Next_.extraction.md | Entry 1 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-017_section_concept_map.md | 313_What's Next_.extraction.md | Entry 2 | Type Exam Tip
  - ../../../../build/intermediate/section-maps/BATCH-017_section_concept_map.md | 313_What's Next_.extraction.md | Entry 3 | Type Exam Tip
  - ../../../../build/intermediate/section-maps/BATCH-017_section_concept_map.md | 313_What's Next_.extraction.md | Entry 4 | Type Exam Tip
  - ../../../../build/intermediate/section-maps/BATCH-017_section_concept_map.md | 313_What's Next_.extraction.md | Entry 5 | Type Exam Tip
  - ../../../../build/intermediate/section-maps/BATCH-017_section_concept_map.md | 313_What's Next_.extraction.md | Entry 6 | Type Architecture
  - ../../../../build/intermediate/section-maps/BATCH-017_section_concept_map.md | 313_What's Next_.extraction.md | Entry 7 | Type Concept

