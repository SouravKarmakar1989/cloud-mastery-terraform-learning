# Normalized Concept: Storage

- Concept Key: storage
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 785

## 1. Definition
- Let us now look at storage in Kubernetes to understand storage in container orchestration tools like Kubernetes.
- When it comes to storage in Docker, there are two concepts you must know about storage drivers and volume driver plugins.
- In the upcoming video, we will discuss about storage drivers.
- It's something that we've discussed in the Docker course, so if you have gone through that already, feel free to skip this video or you may choose to stay and refresh your memory.
- Once done, we will talk about volume drivers.
- Before we head into understanding pods, we would like to assume that the following have been set up already.
- At this point, we assume that the application is already developed and built into Docker images, and it is available on Docker repository like Docker Hub, so Kubernetes can pull it down.
- We also assume that the Kubernetes cluster has already been set up and is working.
- This could be a single node setup or a multi-node setup.
- Doesn't matter.

## 2. First-Principles Mental Model
- It is important to first understand how storage works with containers.
- Understanding how storage works with Docker first and getting all the basics right will later make it so much easier to understand how it works in Kubernetes.
- As we discussed before with Kubernetes, our ultimate aim is to deploy our application in the form of containers on a set of machines that are configured as worker nodes in a cluster.
- However, Kubernetes does not deploy containers directly on the worker nodes.
- A pod is the smallest object that you can create in Kubernetes.
- We create new pod altogether with a new instance of the same application.
- Well, then you can always deploy additional pods on a new node in the cluster.
- To scale up, you create new pods, and to scale down you delete existing pods.
- As we discussed in the previous slide, if our intention was to scale our application, then we would need to create additional pods.
- In that case, you can have both of these containers part of the same pod, so that when a new application container is created.

## 3. Why This Exists
- Let us now look at storage in Kubernetes to understand storage in container orchestration tools like Kubernetes.
- It is important to first understand how storage works with containers.
- Understanding how storage works with Docker first and getting all the basics right will later make it so much easier to understand how it works in Kubernetes.
- When it comes to storage in Docker, there are two concepts you must know about storage drivers and volume driver plugins.
- It's something that we've discussed in the Docker course, so if you have gone through that already, feel free to skip this video or you may choose to stay and refresh your memory.
- Before we head into understanding pods, we would like to assume that the following have been set up already.
- All the services need to be in a running state.
- As we discussed before with Kubernetes, our ultimate aim is to deploy our application in the form of containers on a set of machines that are configured as worker nodes in a cluster.
- What if the number of users accessing your application increase and you need to scale your application?
- You need to add additional instances of your web application to share the load.

## 4. Internal Working
- It is important to first understand how storage works with containers.
- Understanding how storage works with Docker first and getting all the basics right will later make it so much easier to understand how it works in Kubernetes.
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

## 5. Key Objects / Fields / Relationships
- When it comes to storage in Docker, there are two concepts you must know about storage drivers and volume driver plugins.
- Once done, we will talk about volume drivers.
- Before we head into understanding pods, we would like to assume that the following have been set up already.
- This could be a single node setup or a multi-node setup.
- All the services need to be in a running state.
- As we discussed before with Kubernetes, our ultimate aim is to deploy our application in the form of containers on a set of machines that are configured as worker nodes in a cluster.
- However, Kubernetes does not deploy containers directly on the worker nodes.
- The containers are encapsulated into a Kubernetes object known as pods.
- A pod is a single instance of an application.
- A pod is the smallest object that you can create in Kubernetes.

## 6. YAML Deep Dive
- A single pod can have multiple containers, except for the fact that they're usually not multiple containers of the same kind.
- But sometimes you might have a scenario where you have a helper container that might be doing some kind of supporting task for our web application, such as processing a user entered data, processing a file uploaded by the user, etc. and you want t...
- For that you need to specify the image name using the image parameter.
- It is supported on any cloud platform and supports hosting enhanced and complex applications on various kinds of architectures that make it a vast and complex technology.
- There are a set of prerequisite knowledge required, such as containers, applications, YAML files, et cetera.
- There are students from different backgrounds, such as the absolute beginners to Kubernetes or those with some experience looking for specialized knowledge in administration, or those from an application development background.
- Covering all of these topics for all of these students in a single course is an impossible task, which is why we created a three-course series so each course can target specific audience, topics and certifications.
- Specify a name and use provisioner as kubernetes.io/pd.
- So we no longer need the PV definition because the PV and any associated storage is going to be created automatically when the storage class is created for the PVC to use the storage class we defined, we specify the storage class name in the PVC d...
- You can specify the type which could be standard or SSD.

## 7. kubectl / command usage
- Then we would first simply deploy our application using a simple Docker run Python app command.
- When the load increases, we deploy more instances of our application by running the Docker run commands many more times.
- Earlier we learned about the Kube control run command.
- What this command really does is it deploys a Docker container by creating a pod.
- The Kube control get pods command helps us see the list of pods in our cluster.
- So, for this, in order to view a file within the pod we'll do kubectl exec, and provide the pod name, and then the command.
- So, we'll do kubectl edit on web app.
- So, we're gonna do a kubectl replace force.
- Okay, now we're gonna do a kubectl create minus half bc.
- Lets do a kubectl get pv.

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
- As this is a beginner's course, we do not deep dive into technical details.
- Now, you don't have to be an expert application developer for this course and there's no real coding or application development involved in either of this course or the certification itself.
- Now, you don't have to take these courses in order.
- It's just that you don't have to manually create PVC anymore.
- We don't need volume mode.
- So, we don't need the advanced selectors.
- We don't need a volume mode, and the storage is gonna be 50 Mi.
- So, we don't need these lines.
- You don't have to have a high end system or access to cloud platforms or worry about cloud costs to gain practice.

## 10. Troubleshooting angle
- The Kubernetes for administrators course focuses on advanced topics on Kubernetes, and in-depth discussions into the various concepts around deploying a high-availability cluster for production use case, understanding more about scheduling, monito...
- And our AI Assistant in labs acts as your personal guide, providing feedback, troubleshooting issues, and offering insights as you tackle each task.
- We then cover probes, monitoring, logging, and debugging, key skills to keep applications healthy and resolve issues.
- Okay, so for question six, a new application origin is deployed and there's something wrong with it, identify and fix the issue.
- So everything else kind of seems normal and then we have our init container and our init container, we could see that state is terminated and reason is error.
- This got terminated due to an error.
- And so as you probably expected, this is the issue with the typo, it should just be two e's.
- So let's go ahead and fix that.
- Then I'm gonna open question6.yaml and we're going to fix this.
- So we have now successfully finished fixing the orange pod, it's now up and running.

## 11. CKA / CKAD relevance
- A single pod can have multiple containers, except for the fact that they're usually not multiple containers of the same kind.
- And there are two certifications in the mix as well.
- Covering all of these topics for all of these students in a single course is an impossible task, which is why we created a three-course series so each course can target specific audience, topics and certifications.
- This course also helps you prepare for the certified Kubernetes administrator exam and get you verified as a Kubernetes administrator.
- This course also helps you prepare for the certified Kubernetes application developer exam.
- For example, a silver storage class with the standard disks, a gold class with SSD drives, and a platinum class with SSD drives and replication.
- For example, to configure an AWS Elastic Block Store volume as the storage option for the volume, we replace Hostpath field of the volume with the AWS Elastic Block Store field.
- Welcome to the Certified Kubernetes Application Developer exam prep course.
- You'll also find quizzes and a supportive Discord channel for Q&amp;A and exam tips to keep you on track.
- Our course objectives are fully aligned with the Certified Kubernetes Application Developer exam curriculum, designed to equip you with skills needed for the exam as well as beyond.

## 12. Source Contributions
- Matched Global Concepts:
  - Introduction to Docker Storage (match score: 1, notes: 7)
  - Recap - Pods (match score: 1, notes: 81)
  - Kubernetes Series of Courses (match score: 1, notes: 29)
  - Storage Classes (match score: 1, notes: 27)
  - Solution - Persistent Volume and Persistent Volume Claims (Optional) (match score: 1, notes: 201)
  - Volumes in Kubernetes (match score: 1, notes: 41)
  - Introduction (match score: 1, notes: 55)
  - Solution - Mock Exam -1 (Optional) (match score: 1, notes: 344)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams: 344 note entries
  - certified-kubernetes-application-developer / 01_Introduction: 59 note entries
  - certified-kubernetes-application-developer / 02_Core Concepts: 81 note entries
  - certified-kubernetes-application-developer / 08_State Persistence: 276 note entries
  - learn-kubernetes / 01_Introduction: 25 note entries
- Explicit Source Reference Samples:
  - section-maps/BATCH-025_section_concept_map.md | 122_Introduction to Docker Storage.extraction.md | Entry 1 | Type Concept
  - section-maps/BATCH-025_section_concept_map.md | 122_Introduction to Docker Storage.extraction.md | Entry 2 | Type Implementation Step
  - section-maps/BATCH-025_section_concept_map.md | 122_Introduction to Docker Storage.extraction.md | Entry 3 | Type Implementation Step
  - section-maps/BATCH-025_section_concept_map.md | 122_Introduction to Docker Storage.extraction.md | Entry 4 | Type Concept
  - section-maps/BATCH-025_section_concept_map.md | 122_Introduction to Docker Storage.extraction.md | Entry 5 | Type Concept
  - section-maps/BATCH-025_section_concept_map.md | 122_Introduction to Docker Storage.extraction.md | Entry 6 | Type Concept
  - section-maps/BATCH-025_section_concept_map.md | 122_Introduction to Docker Storage.extraction.md | Entry 7 | Type Concept
  - section-maps/BATCH-019_section_concept_map.md | 010_Recap - Pods.extraction.md | Entry 1 | Type Concept
  - section-maps/BATCH-019_section_concept_map.md | 010_Recap - Pods.extraction.md | Entry 2 | Type Concept
  - section-maps/BATCH-019_section_concept_map.md | 010_Recap - Pods.extraction.md | Entry 3 | Type Concept
  - section-maps/BATCH-019_section_concept_map.md | 010_Recap - Pods.extraction.md | Entry 4 | Type Concept
  - section-maps/BATCH-019_section_concept_map.md | 010_Recap - Pods.extraction.md | Entry 5 | Type Concept
  - section-maps/BATCH-019_section_concept_map.md | 010_Recap - Pods.extraction.md | Entry 6 | Type Concept
  - section-maps/BATCH-019_section_concept_map.md | 010_Recap - Pods.extraction.md | Entry 7 | Type Implementation Step
  - section-maps/BATCH-019_section_concept_map.md | 010_Recap - Pods.extraction.md | Entry 8 | Type Implementation Step
  - section-maps/BATCH-019_section_concept_map.md | 010_Recap - Pods.extraction.md | Entry 9 | Type Concept
  - section-maps/BATCH-019_section_concept_map.md | 010_Recap - Pods.extraction.md | Entry 10 | Type Concept
  - section-maps/BATCH-019_section_concept_map.md | 010_Recap - Pods.extraction.md | Entry 11 | Type Implementation Step
  - section-maps/BATCH-019_section_concept_map.md | 010_Recap - Pods.extraction.md | Entry 12 | Type Concept
  - section-maps/BATCH-019_section_concept_map.md | 010_Recap - Pods.extraction.md | Entry 13 | Type Concept

