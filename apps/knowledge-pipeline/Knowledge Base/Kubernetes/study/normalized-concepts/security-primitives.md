# Normalized Concept: Security Primitives

- Concept Key: security-primitives
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 619

## 1. Definition
- -: Hello and welcome to this section on security in Kubernetes.
- My name is Mumshad Mannambeth, and we are going through the certified Kubernetes Administrators Course.
- In this section of the course, we will start with understanding the Kubernetes security primitives.
- How does someone gain access to the Kubernetes cluster?
- And how are their actions controlled, et cetera, at a high level?
- We will look at the default settings in the cluster and we practice viewing configurations of an existing cluster.
- We discuss about TLS certificates and how various components within the cluster are secured using TLS certificates.
- If you are a Kubernetes administrator and you set up a cluster on your own you are bound to face challenges related to certificates, which is why we discuss these from ground up, from the absolute basics.
- This is one of the sections that I spent a lot of time on.
- I wanted to simplify some of the core concepts around certificates, which is why I've added a number of prerequisite lectures for those who are new to this topic.

## 2. First-Principles Mental Model
- We then start with the various authentication mechanisms available.
- We then move on to authorization, where we look at the various authorization mechanisms and we focus specifically on role-based access controls.
- We then discussed how to secure images in your environment, followed by security contacts, and finally, network policies.
- Of course, all access to these hosts must be secured root access disabled, password based authentication disabled, and only SSH key based authentication to be made available.
- As we have seen already, the kube API server is at the center of all operations within Kubernetes.
- So that's the first line of defense.
- Controlling access to the API server itself.
- Who can access the API server is defined by the authentication mechanisms.
- There are different ways that you can authenticate to the API server certificates, or even a integration with external authentication providers like Ldap.
- Finally, for machines we create service accounts.

## 3. Why This Exists
- -: Hello and welcome to this section on security in Kubernetes.
- How does someone gain access to the Kubernetes cluster?
- If you are a Kubernetes administrator and you set up a cluster on your own you are bound to face challenges related to certificates, which is why we discuss these from ground up, from the absolute basics.
- I wanted to simplify some of the core concepts around certificates, which is why I've added a number of prerequisite lectures for those who are new to this topic.
- We sent out a poll while working on this section to understand your knowledge about TLS certificates, and most of you said you were absolute beginners, which is why we thought it would be good to explain some of these well.
- But you might have to be a bit patient with me on this.
- Our goal is to enable you to tackle any security related or certificate related issues by the end of this section.
- These prerequisite lectures may not be for everyone, so depending on your level of expertise with certificates, feel free to skip some of these lectures as required.
- We then move on to authorization, where we look at the various authorization mechanisms and we focus specifically on role-based access controls.
- We then discussed how to secure images in your environment, followed by security contacts, and finally, network policies.

## 4. Internal Working
- We then start with the various authentication mechanisms available.
- We then move on to authorization, where we look at the various authorization mechanisms and we focus specifically on role-based access controls.
- We then discussed how to secure images in your environment, followed by security contacts, and finally, network policies.
- Of course, all access to these hosts must be secured root access disabled, password based authentication disabled, and only SSH key based authentication to be made available.
- As we have seen already, the kube API server is at the center of all operations within Kubernetes.
- So that's the first line of defense.
- Controlling access to the API server itself.
- Who can access the API server is defined by the authentication mechanisms.
- There are different ways that you can authenticate to the API server certificates, or even a integration with external authentication providers like Ldap.
- Finally, for machines we create service accounts.
- All communication with the cluster between the various components such as the etcd cluster, the kube controller, manager, scheduler, API server, as well as those running on the worker nodes such as the Kubelet and kube proxy, is secured using TLS ...
- So that's the first line of defense controlling access to the API server itself.

## 5. Key Objects / Fields / Relationships
- We discuss about TLS certificates and how various components within the cluster are secured using TLS certificates.
- If you are a Kubernetes administrator and you set up a cluster on your own you are bound to face challenges related to certificates, which is why we discuss these from ground up, from the absolute basics.
- I wanted to simplify some of the core concepts around certificates, which is why I've added a number of prerequisite lectures for those who are new to this topic.
- We sent out a poll while working on this section to understand your knowledge about TLS certificates, and most of you said you were absolute beginners, which is why we thought it would be good to explain some of these well.
- Especially since there are so many certificates used within the cluster between various components and it can be quite confusing for a beginner.
- Our goal is to enable you to tackle any security related or certificate related issues by the end of this section.
- These prerequisite lectures may not be for everyone, so depending on your level of expertise with certificates, feel free to skip some of these lectures as required.
- We then move on to authorization, where we look at the various authorization mechanisms and we focus specifically on role-based access controls.
- As we have seen already, the kube API server is at the center of all operations within Kubernetes.
- We interact with it through the kube control utility or by accessing the API directly.

## 6. YAML Deep Dive
- Especially since there are so many certificates used within the cluster between various components and it can be quite confusing for a beginner.
- We then move on to authorization, where we look at the various authorization mechanisms and we focus specifically on role-based access controls.
- Authorization is implemented using role based access controls, where users are associated to groups with specific permissions.
- This is a special course to gain hands-on experience in a real exam-like environment.
- If you're planning for the CKS Kubernetes Security Specialist certification exam, then check out the CKS course on KodeKloud.
- But don't worry, use the coupon code UDEMY10 to get a special extra discount where you purchase your subscription.
- So once again, use that coupon code UDEMY10 to get a special extra discount when you purchase your KodeKloud subscription.
- Now each of the tests in this series respects the weightage of these individual knowledge areas to give you the experience of taking an actual exam. (upbeat music) And to take it up another notch, the questions that you get for this mock exam, inc...
- There are four clusters in total, some of which are dedicated to specific knowledge areas. (upbeat music) By default, the exam taker which is you, will be locked into what is known as the student-node.
- But if you want to access any of these control planes specifically, you'll have to make use of the ssh command.

## 7. kubectl / command usage
- We also spent some time on working with kube control commands and Kubernetes definition files.
- And to check all the clusters that are configured, you can use the command kubectl config get-clusters.
- But if you want to access any of these control planes specifically, you'll have to make use of the ssh command.
- And if I run the same command as before, you'll see that this is a single-node cluster with just one control plane.
- So I'm going to type kubectl get secrets -n.
- So you must pass that as the command to start with nginx controller service.
- Create the ingress resource by running the kubectl create command.
- View the created ingress by running the kubectl get ingress command.
- Create the ingress resource using the kubectl create command.
- Once created, view additional details about the ingress resource by running the kubectl describe ingress command.

## 8. Real-world scenarios
- How does someone gain access to the Kubernetes cluster?
- We then start with the various authentication mechanisms available.
- We will look at the default settings in the cluster and we practice viewing configurations of an existing cluster.
- We discuss about TLS certificates and how various components within the cluster are secured using TLS certificates.
- If you are a Kubernetes administrator and you set up a cluster on your own you are bound to face challenges related to certificates, which is why we discuss these from ground up, from the absolute basics.
- Especially since there are so many certificates used within the cluster between various components and it can be quite confusing for a beginner.
- These lectures and the practice tests associated with them should help bridge that gap.
- So a lot of lectures and practice tests coming up.
- Kubernetes being the go to platform for hosting production grid applications.
- At a high level, before diving deeper into those in the upcoming lectures, let's begin with the hosts that formed the cluster itself.

## 9. Pitfalls and misunderstandings
- Don't forget to tag us in your posts so we can celebrate your accomplishments with you and the rest of our community.
- But don't worry, use the coupon code UDEMY10 to get a special extra discount where you purchase your subscription.
- And by default, if you do not set any context, you should be accessing the cluster1.
- You don't have to have a high end system or access to cloud platforms or worry about cloud costs to gain practice.
- Our labs are unique, as in, we don't provide a blank environment and give you instructions to copy and paste.
- As this is a beginner's course, we do not deep dive into technical details.
- Now, you don't have to be an expert application developer for this course and there's no real coding or application development involved in either of this course or the certification itself.
- Now, you don't have to take these courses in order.
- For example, we do not want the users to have to type in the IP address every time.
- Now, you don't want your users to have to remember port number either.

## 10. Troubleshooting angle
- Our goal is to enable you to tackle any security related or certificate related issues by the end of this section.
- Service networking is 20%, storage is another 10% and finally, the biggest section of them all is troubleshooting, which accounts for 30% of the questions.
- Now the sixth question as you can see, is from the troubleshooting section.
- And our AI Assistant in labs acts as your personal guide, providing feedback, troubleshooting issues, and offering insights as you tackle each task.
- We then cover probes, monitoring, logging, and debugging, key skills to keep applications healthy and resolve issues.
- The Kubernetes for administrators course focuses on advanced topics on Kubernetes, and in-depth discussions into the various concepts around deploying a high-availability cluster for production use case, understanding more about scheduling, monito...
- And finally, anything other than the ones listed here will go to the fourth rule that will simply show a 404 not found error page.
- You can do this by configuring a default back end service to display this 404 not found error page.

## 11. CKA / CKAD relevance
- As you prepare for your exams, I wanna wish you all the best.
- If you're looking to gain more practice before attending the CKA exam, check out the ultimate CKA mock exam series that we have recently released on KodeKloud.
- This is a special course to gain hands-on experience in a real exam-like environment.
- This is a perfect addition to the mock exams that you already have in this course.
- This series replicates the exam environment closely with multiple clusters and patterns of questions.
- If you're planning for the CKS Kubernetes Security Specialist certification exam, then check out the CKS course on KodeKloud.
- We cover all the topics needed to help you clear your CKS certification exam, and of course, along with hands-on labs and mock exams.
- And we also have the KCNA, the Kubernetes and Cloud-Native Associate entry Level certification exam prep course.
- And our cloud learning paths help you learn the basics of popular cloud platforms and prepare you for certifications, and then deep dive into each of the services offered on the cloud platforms with a hands-on approach.
- Well, all the best for your exams.

## 12. Source Contributions
- Matched Global Concepts:
  - Security - Section Introduction (match score: 2, notes: 21)
  - Kubernetes Security Primitives (match score: 2, notes: 63)
  - Conclusion (match score: 1, notes: 45)
  - What's Next_ (match score: 1, notes: 118)
  - Introduction (match score: 1, notes: 55)
  - Kubernetes Series of Courses (match score: 1, notes: 29)
  - Ingress (match score: 1, notes: 192)
  - Pod Networking (match score: 1, notes: 96)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 07_Security: 53 note entries
  - certified-kubernetes-administrator-with-practice-tests / 09_Networking: 288 note entries
  - certified-kubernetes-administrator-with-practice-tests / 18_Bonus Section: 119 note entries
  - certified-kubernetes-application-developer / 01_Introduction: 59 note entries
  - certified-kubernetes-application-developer / 09_Security: 31 note entries
  - certified-kubernetes-application-developer / 15_Mock Exams: 30 note entries
  - learn-kubernetes / 01_Introduction: 25 note entries
  - learn-kubernetes / 10_Conclusion: 14 note entries
- Explicit Source Reference Samples:
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 143_Security - Section Introduction.extraction.md | Entry 1 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 143_Security - Section Introduction.extraction.md | Entry 2 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 143_Security - Section Introduction.extraction.md | Entry 3 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 143_Security - Section Introduction.extraction.md | Entry 4 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 143_Security - Section Introduction.extraction.md | Entry 5 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 143_Security - Section Introduction.extraction.md | Entry 6 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 143_Security - Section Introduction.extraction.md | Entry 7 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 143_Security - Section Introduction.extraction.md | Entry 8 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 143_Security - Section Introduction.extraction.md | Entry 9 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 143_Security - Section Introduction.extraction.md | Entry 10 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 143_Security - Section Introduction.extraction.md | Entry 11 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 143_Security - Section Introduction.extraction.md | Entry 12 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 143_Security - Section Introduction.extraction.md | Entry 13 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 143_Security - Section Introduction.extraction.md | Entry 14 | Type Best Practice
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 143_Security - Section Introduction.extraction.md | Entry 15 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 143_Security - Section Introduction.extraction.md | Entry 16 | Type Troubleshooting
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 143_Security - Section Introduction.extraction.md | Entry 17 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 143_Security - Section Introduction.extraction.md | Entry 18 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 143_Security - Section Introduction.extraction.md | Entry 19 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 143_Security - Section Introduction.extraction.md | Entry 20 | Type Concept

