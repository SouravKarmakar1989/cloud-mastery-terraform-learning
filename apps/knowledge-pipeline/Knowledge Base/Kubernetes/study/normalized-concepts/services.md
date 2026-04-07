# Normalized Concept: Services

- Concept Key: services
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 882

## 1. Definition
- Before we head into understanding pods, we would like to assume that the following have been set up already.
- At this point, we assume that the application is already developed and built into Docker images, and it is available on Docker repository like Docker Hub, so Kubernetes can pull it down.
- We also assume that the Kubernetes cluster has already been set up and is working.
- This could be a single node setup or a multi-node setup.
- Doesn't matter.
- All the services need to be in a running state.
- The containers are encapsulated into a Kubernetes object known as pods.
- A pod is a single instance of an application.
- Here we see the simplest of simplest cases, where you have a single node Kubernetes cluster with a single instance of your application running in a single Docker container encapsulated in a pod.
- What if the number of users accessing your application increase and you need to scale your application?

## 2. First-Principles Mental Model
- As we discussed before with Kubernetes, our ultimate aim is to deploy our application in the form of containers on a set of machines that are configured as worker nodes in a cluster.
- However, Kubernetes does not deploy containers directly on the worker nodes.
- A pod is the smallest object that you can create in Kubernetes.
- We create new pod altogether with a new instance of the same application.
- Well, then you can always deploy additional pods on a new node in the cluster.
- To scale up, you create new pods, and to scale down you delete existing pods.
- As we discussed in the previous slide, if our intention was to scale our application, then we would need to create additional pods.
- In that case, you can have both of these containers part of the same pod, so that when a new application container is created.
- The helper is also created and when it dies, the helper also dies.
- The first time I learned these concepts, we could take another shot at understanding pods from a different angle.

## 3. Why This Exists
- Before we head into understanding pods, we would like to assume that the following have been set up already.
- All the services need to be in a running state.
- As we discussed before with Kubernetes, our ultimate aim is to deploy our application in the form of containers on a set of machines that are configured as worker nodes in a cluster.
- What if the number of users accessing your application increase and you need to scale your application?
- You need to add additional instances of your web application to share the load.
- You will have a new node added to the cluster to expand the cluster's physical capacity.
- So what I'm trying to illustrate in this slide is that pods usually have a 1 to 1 relationship, with containers running your application.
- To scale up, you create new pods, and to scale down you delete existing pods.
- You do not add additional containers to an existing pod to scale your application.
- For now, we are only trying to understand the basic concepts.

## 4. Internal Working
- As we discussed before with Kubernetes, our ultimate aim is to deploy our application in the form of containers on a set of machines that are configured as worker nodes in a cluster.
- However, Kubernetes does not deploy containers directly on the worker nodes.
- A pod is the smallest object that you can create in Kubernetes.
- We create new pod altogether with a new instance of the same application.
- Well, then you can always deploy additional pods on a new node in the cluster.
- To scale up, you create new pods, and to scale down you delete existing pods.
- As we discussed in the previous slide, if our intention was to scale our application, then we would need to create additional pods.
- In that case, you can have both of these containers part of the same pod, so that when a new application container is created.
- The helper is also created and when it dies, the helper also dies.
- The first time I learned these concepts, we could take another shot at understanding pods from a different angle.
- Let's assume we were developing a process or a script to deploy our application on a Docker host.
- Then we would first simply deploy our application using a simple Docker run Python app command.

## 5. Key Objects / Fields / Relationships
- Before we head into understanding pods, we would like to assume that the following have been set up already.
- This could be a single node setup or a multi-node setup.
- All the services need to be in a running state.
- As we discussed before with Kubernetes, our ultimate aim is to deploy our application in the form of containers on a set of machines that are configured as worker nodes in a cluster.
- However, Kubernetes does not deploy containers directly on the worker nodes.
- The containers are encapsulated into a Kubernetes object known as pods.
- A pod is a single instance of an application.
- A pod is the smallest object that you can create in Kubernetes.
- Here we see the simplest of simplest cases, where you have a single node Kubernetes cluster with a single instance of your application running in a single Docker container encapsulated in a pod.
- Do we bring up new container instance within the same pod?

## 6. YAML Deep Dive
- A single pod can have multiple containers, except for the fact that they're usually not multiple containers of the same kind.
- But sometimes you might have a scenario where you have a helper container that might be doing some kind of supporting task for our web application, such as processing a user entered data, processing a file uploaded by the user, etc. and you want t...
- For that you need to specify the image name using the image parameter.
- In this lecture we will talk about creating a pod using a YAML based configuration file.
- In the previous lecture we learned about YAML files in general.
- Now we will learn how to develop YAML files specifically for Kubernetes.
- Kubernetes uses YAML files as inputs for the creation of objects such as pods, replicas, deployments, services, etc. all of these follow a similar structure.
- A Kubernetes definition file always contains four top level fields the API version, kind, metadata, and spec.
- Next is the kind.
- The kind refers to the type of object we are trying to create, which in this case happens to be a pod.

## 7. kubectl / command usage
- Then we would first simply deploy our application using a simple Docker run Python app command.
- When the load increases, we deploy more instances of our application by running the Docker run commands many more times.
- Earlier we learned about the Kube control run command.
- What this command really does is it deploys a Docker container by creating a pod.
- The Kube control get pods command helps us see the list of pods in our cluster.
- Once the file is created, run the command kubectl create dash f followed by the file name, which is pod definition dot YAML and Kubernetes creates the pod.
- Use the kubectl get pods command to see a list of pods available.
- To see detailed information about the pod, run the kubectl describe pod command.
- If you're learning Kubernetes, you can run commands here and interact with the system and perform your tasks.
- One is this terminal on the right where you'll be working, and you'll run commands to view and configure the Kubernetes cluster.

## 8. Real-world scenarios
- At this point, we assume that the application is already developed and built into Docker images, and it is available on Docker repository like Docker Hub, so Kubernetes can pull it down.
- We also assume that the Kubernetes cluster has already been set up and is working.
- As we discussed before with Kubernetes, our ultimate aim is to deploy our application in the form of containers on a set of machines that are configured as worker nodes in a cluster.
- However, Kubernetes does not deploy containers directly on the worker nodes.
- Here we see the simplest of simplest cases, where you have a single node Kubernetes cluster with a single instance of your application running in a single Docker container encapsulated in a pod.
- Well, then you can always deploy additional pods on a new node in the cluster.
- You will have a new node added to the cluster to expand the cluster's physical capacity.
- Let's assume we were developing a process or a script to deploy our application on a Docker host.
- Then we would first simply deploy our application using a simple Docker run Python app command.
- When the load increases, we deploy more instances of our application by running the Docker run commands many more times.

## 9. Pitfalls and misunderstandings
- You do not add additional containers to an existing pod to scale your application.
- Now, don't be too worried about the exam interface itself.
- Don't stress too much about it.
- If you if you don't know anything you have, you must go through the documentation pages and try to find the answers.
- As this is a beginner's course, we do not deep dive into technical details.
- Now, you don't have to be an expert application developer for this course and there's no real coding or application development involved in either of this course or the certification itself.
- Now, you don't have to take these courses in order.
- So for this, if you don't remember how to create a storageclass off the top of your head, we can always just go to the documentation and just search for storageclass.
- I mean it's set to false so it doesn't matter, but we don't really need this configuration.
- We don't need that.

## 10. Troubleshooting angle
- The Kubernetes for administrators course focuses on advanced topics on Kubernetes, and in-depth discussions into the various concepts around deploying a high-availability cluster for production use case, understanding more about scheduling, monito...
- And you could see that it deleted the old one, but then we got an error.
- So this error is expected and I recommend you read this error 'cause it tells us everything we need to know.
- So what is the issue?
- And now if we do kubectl apply question5-pod.yaml, we can see it's created, we'll do kubectl get pod -n low- priority and we can see it's running with no issues.
- All right, so it says that we've deployed a new pod called np-test-1 and a service called np-test-services, incoming connections to the service are not working, troubleshoot and fix it.
- And it tells us basically what we need to do to fix it, which is create a network policy by the name of ingress-nptest that allows incoming connections to this service over port 80.
- So we've now successfully fixed the issue.
- Okay, so for this question it says that there's a kubeconfig file called super.kubeconfig in the following location and it says there's something wrong with this con configuration, troubleshoot and fix it.
- Whenever there's a question where it says there's an issue and we need to fix it, always verify the issue first.

## 11. CKA / CKAD relevance
- A single pod can have multiple containers, except for the fact that they're usually not multiple containers of the same kind.
- Say for example, there are hundreds of pods running a front end application and hundreds of pods running a backend application or a database.
- The reason this property is a list is because the pods can have multiple containers within them, as we learned in the lecture earlier.
- Remember, in the certification test, you must use one of the editors that come within the provided exam environment, so you must practice working with VI editors.
- We also have some scenario based multiple choice questions, so you won't have these in the actual certification exam.
- Now remember that this is not a replica of the actual Kubernetes certification exam, so the interface and your experience in the actual exam is going to be slightly different than this.
- This is a custom solution we built to help you practice for it, and to test your skills and to guide you and to prepare you for the actual exam.
- And remember, this is a temporary environment and is only available for one hour depending on the mock exam or your particular lab environment, after which it is deleted so your work will not be saved.
- And there are two certifications in the mix as well.
- Covering all of these topics for all of these students in a single course is an impossible task, which is why we created a three-course series so each course can target specific audience, topics and certifications.

## 12. Source Contributions
- Matched Global Concepts:
  - Recap - Pods (match score: 2, notes: 81)
  - Recap - Pods with YAML (match score: 2, notes: 65)
  - Introduction to Kubernetes Practice Test (match score: 2, notes: 51)
  - Kubernetes Series of Courses (match score: 2, notes: 29)
  - Mock Exam - 3 - Solution _ (Optional) (match score: 2, notes: 485)
  - Conclusion (match score: 2, notes: 45)
  - Introduction (match score: 2, notes: 55)
  - Recap - Namespaces (match score: 2, notes: 71)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams: 485 note entries
  - certified-kubernetes-administrator-with-practice-tests / 18_Bonus Section: 31 note entries
  - certified-kubernetes-application-developer / 01_Introduction: 59 note entries
  - certified-kubernetes-application-developer / 02_Core Concepts: 268 note entries
  - learn-kubernetes / 01_Introduction: 25 note entries
  - learn-kubernetes / 10_Conclusion: 14 note entries
- Explicit Source Reference Samples:
  - ../../../../build/intermediate/section-maps/BATCH-019_section_concept_map.md | 010_Recap - Pods.extraction.md | Entry 1 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-019_section_concept_map.md | 010_Recap - Pods.extraction.md | Entry 2 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-019_section_concept_map.md | 010_Recap - Pods.extraction.md | Entry 3 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-019_section_concept_map.md | 010_Recap - Pods.extraction.md | Entry 4 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-019_section_concept_map.md | 010_Recap - Pods.extraction.md | Entry 5 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-019_section_concept_map.md | 010_Recap - Pods.extraction.md | Entry 6 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-019_section_concept_map.md | 010_Recap - Pods.extraction.md | Entry 7 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-019_section_concept_map.md | 010_Recap - Pods.extraction.md | Entry 8 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-019_section_concept_map.md | 010_Recap - Pods.extraction.md | Entry 9 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-019_section_concept_map.md | 010_Recap - Pods.extraction.md | Entry 10 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-019_section_concept_map.md | 010_Recap - Pods.extraction.md | Entry 11 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-019_section_concept_map.md | 010_Recap - Pods.extraction.md | Entry 12 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-019_section_concept_map.md | 010_Recap - Pods.extraction.md | Entry 13 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-019_section_concept_map.md | 010_Recap - Pods.extraction.md | Entry 14 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-019_section_concept_map.md | 010_Recap - Pods.extraction.md | Entry 15 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-019_section_concept_map.md | 010_Recap - Pods.extraction.md | Entry 16 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-019_section_concept_map.md | 010_Recap - Pods.extraction.md | Entry 17 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-019_section_concept_map.md | 010_Recap - Pods.extraction.md | Entry 18 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-019_section_concept_map.md | 010_Recap - Pods.extraction.md | Entry 19 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-019_section_concept_map.md | 010_Recap - Pods.extraction.md | Entry 20 | Type Concept

