# Normalized Concept: Logging And Monitoring

- Concept Key: logging-and-monitoring
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 593

## 1. Definition
- -: Hello, and welcome to this section.
- In this section, we learn about observability in Kubernetes.
- We will discuss about readiness and liveness probes, logging and monitoring concepts.
- Let us start with readiness probes.
- We discuss about pod lifecycle in detail in another lecture, however, as a prerequisite for this lecture, we will quickly recap a few different stages in the life cycle of a pod.
- A pod has a pod status, and some conditions.
- The pod status tells us where the pod is in its lifecycle.
- This is when the scheduler tries to figure out where to place the pod.
- If the scheduler cannot find the node to place the pod, it remains in a pending state.
- To find out why it's stuck in a pending state, run the kubectl describe pod command and it will tell you exactly why.

## 2. First-Principles Mental Model
- When a pod is first created, it is in a pending state.
- This is when the scheduler tries to figure out where to place the pod.
- If the scheduler cannot find the node to place the pod, it remains in a pending state.
- Let's look at a simple scenario where you create a pod and expose it to external users using a service.
- By default, Kubernetes assumes that as soon as the container is created, it is ready to serve user traffic.
- In case of a web application, it could be when the API server is up and running.
- So you could run an HTTP test to see if the API server responds.
- So how do you configure that test?
- Now when the container is created, Kubernetes does not immediately set the ready condition on the container to true.
- Until then, the service does not forward any traffic to the pod as it sees that the pod is not ready.

## 3. Why This Exists
- -: Hello, and welcome to this section.
- This is when the scheduler tries to figure out where to place the pod.
- If the scheduler cannot find the node to place the pod, it remains in a pending state.
- To find out why it's stuck in a pending state, run the kubectl describe pod command and it will tell you exactly why.
- Once all the containers in a pod starts, it goes into a running state where it continues to be until the program completes successfully or is terminated.
- When a pod is scheduled on a node, the pod scheduled condition is set to true.
- When the pod is initialized, its value is set to true.
- When all the containers in the pod are ready, the container's ready condition is set to true.
- And finally, the pod itself is considered to be ready.
- To see the state of pod conditions, run the kubectl describe pod command and look for the conditions section.

## 4. Internal Working
- When a pod is first created, it is in a pending state.
- This is when the scheduler tries to figure out where to place the pod.
- If the scheduler cannot find the node to place the pod, it remains in a pending state.
- Let's look at a simple scenario where you create a pod and expose it to external users using a service.
- By default, Kubernetes assumes that as soon as the container is created, it is ready to serve user traffic.
- In case of a web application, it could be when the API server is up and running.
- So you could run an HTTP test to see if the API server responds.
- So how do you configure that test?
- Now when the container is created, Kubernetes does not immediately set the ready condition on the container to true.
- Until then, the service does not forward any traffic to the pod as it sees that the pod is not ready.
- There are different ways a probe can be configured.
- Say you were to add an additional pod and let's say the pod takes a minute to warm up, without the readiness probe configured correctly, the service would immediately start routing traffic to the new pod.

## 5. Key Objects / Fields / Relationships
- We discuss about pod lifecycle in detail in another lecture, however, as a prerequisite for this lecture, we will quickly recap a few different stages in the life cycle of a pod.
- A pod has a pod status, and some conditions.
- The pod status tells us where the pod is in its lifecycle.
- When a pod is first created, it is in a pending state.
- This is when the scheduler tries to figure out where to place the pod.
- If the scheduler cannot find the node to place the pod, it remains in a pending state.
- To find out why it's stuck in a pending state, run the kubectl describe pod command and it will tell you exactly why.
- Once the pod is scheduled, it goes into a container creating status where the images required for the application are pulled and the container starts.
- Once all the containers in a pod starts, it goes into a running state where it continues to be until the program completes successfully or is terminated.
- You can see the pod status in the output of the kubectl get pods command.

## 6. YAML Deep Dive
- The containers could be running different kinds of applications in them.
- You can set up different kinds of tests or probes, which is the appropriate term.
- Specify the port and the ready API.
- And for executing a command, specify the exec option with the command and options in an array format.
- If you'd like to specify how often to probe, you can do that using the period seconds option.
- This certification is a big step in your Kubernetes journey, especially if you are on your way to become a Kubestronaut.
- Instead, every lab is created specifically for the topic you just learned, and you're asked questions to explore and identify information in the lab or do specific tasks.
- It is supported on any cloud platform and supports hosting enhanced and complex applications on various kinds of architectures that make it a vast and complex technology.
- There are a set of prerequisite knowledge required, such as containers, applications, YAML files, et cetera.
- There are students from different backgrounds, such as the absolute beginners to Kubernetes or those with some experience looking for specialized knowledge in administration, or those from an application development background.

## 7. kubectl / command usage
- To find out why it's stuck in a pending state, run the kubectl describe pod command and it will tell you exactly why.
- You can see the pod status in the output of the kubectl get pods command.
- To see the state of pod conditions, run the kubectl describe pod command and look for the conditions section.
- You can also see the ready state of the pod in the output of the kubectl get pods command.
- Or you may simply execute a command within the container to run a custom script that would exit successfully if the application is ready.
- And for executing a command, specify the exec option with the command and options in an array format.
- Next, check the logs of the control plane components again, in case of kube adm, use the kube control logs command to view the logs of pods hosting the control plane components.
- So I'll do a kustomize build k8s, and that's going to look for the root kustomization.yaml file.
- I'm gonna go back to the terminal and we're gonna run the same command.
- And to check all the clusters that are configured, you can use the command kubectl config get-clusters.

## 8. Real-world scenarios
- What does that really mean?
- Say you have a replica set or deployment with multiple pods and a service serving traffic to all the pods.
- Head over and practice what you learned in the coding exercises section.
- The course starts with lectures that simplify Kubernetes development concepts through visuals and animations, followed by hands-on labs that bring these concepts to real life in a real Kubernetes environment.
- And our AI Assistant in labs acts as your personal guide, providing feedback, troubleshooting issues, and offering insights as you tackle each task.
- Our enhanced lab environments offer guided in-browser practice, so you'll tackle hands-on tasks with instant feedback to help you correct mistakes as you go.
- If you're stuck, hints and solutions are available to guide you through.
- The multi-container pods module covers multi-container patterns like ambassador, adapter, or sidecar, with examples to demonstrate each use case.
- In workloads and scheduling, we explore labels, selectors, rolling updates, and rollbacks.
- The networking module covers services and network policies to manage connectivity and security within clusters.

## 9. Pitfalls and misunderstandings
- You don't have to have a high end system or access to cloud platforms or worry about cloud costs to gain practice.
- Our labs are unique, as in, we don't provide a blank environment and give you instructions to copy and paste.
- As this is a beginner's course, we do not deep dive into technical details.
- Now, you don't have to be an expert application developer for this course and there's no real coding or application development involved in either of this course or the certification itself.
- Now, you don't have to take these courses in order.
- Now, you don't have to be an expert application developer for this course, and there's no real coding or application development involved in either this course or the certification itself.
- Oh, okay, I've realized I wanna put a dash actually so that the words don't get jammed together.
- So in this case, maybe you don't wanna apply it globally because maybe there's some other features that also use a Mongo database, and we don't wanna actually change those.
- Remember, don't look at the name.
- Remember, don't look at the name, the name of the container doesn't matter.

## 10. Troubleshooting angle
- If you'd like to make more attempts, use the failure threshold option.
- And our AI Assistant in labs acts as your personal guide, providing feedback, troubleshooting issues, and offering insights as you tackle each task.
- We then cover probes, monitoring, logging, and debugging, key skills to keep applications healthy and resolve issues.
- The Kubernetes for administrators course focuses on advanced topics on Kubernetes, and in-depth discussions into the various concepts around deploying a high-availability cluster for production use case, understanding more about scheduling, monito...
- The Kubernetes for Administrators course focuses on advanced topics on Kubernetes and in-depth discussions into the various concepts around deploying a high availability cluster for production use case, understanding more about scheduling, monitor...
- In this lecture we will see different ways of troubleshooting control plane failures.
- For more tips, refer to the Kubernetes documentation page for troubleshooting clusters.
- So maybe, we'll, this will be our debugging environment.
- So for the db side of things, we can see that the namespace was set to debugging.
- For api, we should see that the namespace was set to debugging, so it looks like it was successfully applied to everything.

## 11. CKA / CKAD relevance
- We know that a pod has multiple containers.
- Say you have a replica set or deployment with multiple pods and a service serving traffic to all the pods.
- Welcome to the Certified Kubernetes Application Developer exam prep course.
- You'll also find quizzes and a supportive Discord channel for Q&amp;A and exam tips to keep you on track.
- Our course objectives are fully aligned with the Certified Kubernetes Application Developer exam curriculum, designed to equip you with skills needed for the exam as well as beyond.
- The multi-container pods module covers multi-container patterns like ambassador, adapter, or sidecar, with examples to demonstrate each use case.
- Now, like the CKAD exam itself, this course is hands-on, and you'll learn how to quickly reference the Kubernetes documentation pages, which is an essential skill for the test.
- This certification is a big step in your Kubernetes journey, especially if you are on your way to become a Kubestronaut.
- And there are two certifications in the mix as well.
- Covering all of these topics for all of these students in a single course is an impossible task, which is why we created a three-course series so each course can target specific audience, topics and certifications.

## 12. Source Contributions
- Matched Global Concepts:
  - Readiness and Liveness Probes (match score: 3, notes: 78)
  - Introduction (match score: 2, notes: 55)
  - Kubernetes Series of Courses (match score: 2, notes: 29)
  - The Kubernetes Trilogy (match score: 2, notes: 27)
  - Logging and Monitoring - Section Introduction (match score: 2, notes: 6)
  - Control Plane Failure (match score: 1, notes: 9)
  - Transformers Demo (match score: 1, notes: 271)
  - What's Next_ (match score: 1, notes: 118)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 01_Introduction: 27 note entries
  - certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring: 6 note entries
  - certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics: 140 note entries
  - certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting: 9 note entries
  - certified-kubernetes-administrator-with-practice-tests / 18_Bonus Section: 88 note entries
  - certified-kubernetes-application-developer / 01_Introduction: 59 note entries
  - certified-kubernetes-application-developer / 05_Observability: 78 note entries
  - certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics: 131 note entries
  - certified-kubernetes-application-developer / 15_Mock Exams: 30 note entries
  - learn-kubernetes / 01_Introduction: 25 note entries
- Explicit Source Reference Samples:
  - ../../../../build/intermediate/section-maps/BATCH-022_section_concept_map.md | 086_Readiness and Liveness Probes.extraction.md | Entry 1 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-022_section_concept_map.md | 086_Readiness and Liveness Probes.extraction.md | Entry 2 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-022_section_concept_map.md | 086_Readiness and Liveness Probes.extraction.md | Entry 3 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-022_section_concept_map.md | 086_Readiness and Liveness Probes.extraction.md | Entry 4 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-022_section_concept_map.md | 086_Readiness and Liveness Probes.extraction.md | Entry 5 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-022_section_concept_map.md | 086_Readiness and Liveness Probes.extraction.md | Entry 6 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-022_section_concept_map.md | 086_Readiness and Liveness Probes.extraction.md | Entry 7 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-022_section_concept_map.md | 086_Readiness and Liveness Probes.extraction.md | Entry 8 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-022_section_concept_map.md | 086_Readiness and Liveness Probes.extraction.md | Entry 9 | Type Architecture
  - ../../../../build/intermediate/section-maps/BATCH-022_section_concept_map.md | 086_Readiness and Liveness Probes.extraction.md | Entry 10 | Type Architecture
  - ../../../../build/intermediate/section-maps/BATCH-022_section_concept_map.md | 086_Readiness and Liveness Probes.extraction.md | Entry 11 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-022_section_concept_map.md | 086_Readiness and Liveness Probes.extraction.md | Entry 12 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-022_section_concept_map.md | 086_Readiness and Liveness Probes.extraction.md | Entry 13 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-022_section_concept_map.md | 086_Readiness and Liveness Probes.extraction.md | Entry 14 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-022_section_concept_map.md | 086_Readiness and Liveness Probes.extraction.md | Entry 15 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-022_section_concept_map.md | 086_Readiness and Liveness Probes.extraction.md | Entry 16 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-022_section_concept_map.md | 086_Readiness and Liveness Probes.extraction.md | Entry 17 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-022_section_concept_map.md | 086_Readiness and Liveness Probes.extraction.md | Entry 18 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-022_section_concept_map.md | 086_Readiness and Liveness Probes.extraction.md | Entry 19 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-022_section_concept_map.md | 086_Readiness and Liveness Probes.extraction.md | Entry 20 | Type Concept

