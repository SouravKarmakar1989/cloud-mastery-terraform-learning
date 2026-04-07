# Normalized Concept: Kubernetes Mental Model

- Concept Key: kubernetes-mental-model
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 467

## 1. Definition
- -: Hello there.
- Before we begin, I wanna spend a minute on the Kubernetes series of courses.
- Kubernetes is one of the most trending technology in cloud computing as of today.
- It is supported on any cloud platform and supports hosting enhanced and complex applications on various kinds of architectures that make it a vast and complex technology.
- There are a set of prerequisite knowledge required such as containers, applications, yammel files, et cetera.
- A lot of topics to discuss, a lot of concepts to cover such as the architecture, networking, load balancing, a variety of monitoring tools, auto scaling, configuration, security storage, et cetera.
- There are students from different backgrounds such as the absolute beginners to Kubernetes or those with some experience looking for specialized knowledge in administration or those from an application development background.
- The Kubernetes for the Absolute Beginner's course, The Certified Kubernetes Administrators course, and The Certified Kubernetes Application Developers course.
- Let's look at what we cover in each of these courses.
- The Kubernetes for the Absolute Beginner's course helps a beginner having no prior experience with containers or container orchestration get started with the concepts of Kubernetes.

## 2. First-Principles Mental Model
- It is supported on any cloud platform and supports hosting enhanced and complex applications on various kinds of architectures that make it a vast and complex technology.
- A lot of topics to discuss, a lot of concepts to cover such as the architecture, networking, load balancing, a variety of monitoring tools, auto scaling, configuration, security storage, et cetera.
- Instead, we focus on a high level overview of Kubernetes, setting up a symbol lab environment to play with Kubernetes, learning the prerequisites required to understand and get started, understanding the various concepts to deploy an application s...
- The Kubernetes for Developers course is for application developers who are looking to learn how to design, build, and configure cloud native applications.
- All of these courses are filled with coding exercises and quizzes that will help you practice developing and deploying applications on Kubernetes.
- So the course begins with core concepts reviewing Kubernetes architecture, pods, and essential configurations to refresh and reinforce foundational knowledge.
- And next, we dive into configuration.
- We then dive into scheduling jobs and Cron Jobs for automated task management.
- Well, let's dive in and I'll see you in the first lecture. (ambient music) (animation clicking)
- Instead, every lab is created specifically for the topic you just learned, and you're asked questions to explore and identify information in the lab or do specific tasks.

## 3. Why This Exists
- A lot of topics to discuss, a lot of concepts to cover such as the architecture, networking, load balancing, a variety of monitoring tools, auto scaling, configuration, security storage, et cetera.
- There are students from different backgrounds such as the absolute beginners to Kubernetes or those with some experience looking for specialized knowledge in administration or those from an application development background.
- The Kubernetes for the Absolute Beginner's course helps a beginner having no prior experience with containers or container orchestration get started with the concepts of Kubernetes.
- Instead, we focus on a high level overview of Kubernetes, setting up a symbol lab environment to play with Kubernetes, learning the prerequisites required to understand and get started, understanding the various concepts to deploy an application s...
- This course is also suitable for a non-technical person trying to understand the basic concepts of Kubernetes just enough to get involved in discussions around technology.
- This course also helps you prepare for the certified Kubernetes administrator exam and gets you verified as a Kubernetes administrator.
- The Kubernetes for Developers course is for application developers who are looking to learn how to design, build, and configure cloud native applications.
- Now, you don't have to be an expert application developer for this course, and there's no real coding or application development involved in either this course or the certification itself.
- You only need to know the real basics of development on a platform like Python or Node.js.
- This course also helps you prepare for the certified Kubernetes application developer exam.

## 4. Internal Working
- It is supported on any cloud platform and supports hosting enhanced and complex applications on various kinds of architectures that make it a vast and complex technology.
- A lot of topics to discuss, a lot of concepts to cover such as the architecture, networking, load balancing, a variety of monitoring tools, auto scaling, configuration, security storage, et cetera.
- Instead, we focus on a high level overview of Kubernetes, setting up a symbol lab environment to play with Kubernetes, learning the prerequisites required to understand and get started, understanding the various concepts to deploy an application s...
- The Kubernetes for Developers course is for application developers who are looking to learn how to design, build, and configure cloud native applications.
- All of these courses are filled with coding exercises and quizzes that will help you practice developing and deploying applications on Kubernetes.
- So the course begins with core concepts reviewing Kubernetes architecture, pods, and essential configurations to refresh and reinforce foundational knowledge.
- And next, we dive into configuration.
- We then dive into scheduling jobs and Cron Jobs for automated task management.
- Well, let's dive in and I'll see you in the first lecture. (ambient music) (animation clicking)
- Instead, every lab is created specifically for the topic you just learned, and you're asked questions to explore and identify information in the lab or do specific tasks.
- In this lecture, we're going to see how to create your own image.
- Now, before that, why would you need to create your own image?

## 5. Key Objects / Fields / Relationships
- You only need to know the real basics of development on a platform like Python or Node.js.
- This course focuses on topics relevant for a developer such as ConfigMaps, secrets and service accounts, multi container pods, readiness and liveness probes, logging and monitoring, jobs, services, and networking.
- So the course begins with core concepts reviewing Kubernetes architecture, pods, and essential configurations to refresh and reinforce foundational knowledge.
- So that's mastering ConfigMaps, security context, resource requirements, secrets, and service accounts to manage app configurations securely and efficiently.
- The multi-container pods module covers multi-container patterns like ambassador, adapter, or sidecar, with examples to demonstrate each use case.
- In workloads and scheduling, we explore labels, selectors, rolling updates, and rollbacks.
- The networking module covers services and network policies to manage connectivity and security within clusters.
- Finally, we cover persistent storage with persistent volumes and claims to ensure data durability across containers.
- So jump right in and roll today, and I'll see you in class.
- It could either be because you cannot find a component or a service that you want to use as part of your application on Docker Hub already or you and your team decided that the application you're developing will be Dockerized for ease of shipping ...

## 6. YAML Deep Dive
- It is supported on any cloud platform and supports hosting enhanced and complex applications on various kinds of architectures that make it a vast and complex technology.
- There are students from different backgrounds such as the absolute beginners to Kubernetes or those with some experience looking for specialized knowledge in administration or those from an application development background.
- Covering all of these topics for all of these students in a single course is an impossible task, which is why we created a three course series so each course can target specific audience, topics, and certifications.
- This certification is a big step in your Kubernetes journey, especially if you are on your way to become a Kubestronaut.
- Instead, every lab is created specifically for the topic you just learned, and you're asked questions to explore and identify information in the lab or do specific tasks.
- Once done, build your image using the docker build command and specify the Docker File as input as well as a tag name for the image.
- To make it available on the public Docker Hub registry, run the docker push command and specify the name of the image you just created.
- Each of these instruct Docker to perform a specific action while creating the image.
- And finally, entry point allows us to specify a command that will be run when the image is run as a container.
- This is helpful especially when you update source code of your application, as it may change more frequently.

## 7. kubectl / command usage
- If I were to set it up manually, I would start with an operating system like Ubuntu, then update the source repositories using the APT command, then install dependencies using the APT command, then install Python dependencies using the pip command...
- Once done, build your image using the docker build command and specify the Docker File as input as well as a tag name for the image.
- To make it available on the public Docker Hub registry, run the docker push command and specify the name of the image you just created.
- The run instruction instructs Docker to run a particular command on those base images.
- So at this point, Docker runs the apt-get update command to fetch the updated packages and installs required dependencies on the image.
- And finally, entry point allows us to specify a command that will be run when the image is run as a container.
- You could see this information if you run the docker history command followed by the image name.
- When you run the docker build command, you could see the various steps involved and the result of each task.
- The new developers had to follow a large set of instructions and that run hundreds of commands to finally set up their environments.
- Our developers could now get started with a simple docker run command, irrespective of what the underlying operating system they run.

## 8. Real-world scenarios
- Instead, we focus on a high level overview of Kubernetes, setting up a symbol lab environment to play with Kubernetes, learning the prerequisites required to understand and get started, understanding the various concepts to deploy an application s...
- The Kubernetes for Administrators course focuses on advanced topics on Kubernetes and in-depth discussions into the various concepts around deploying a high availability cluster for production use case, understanding more about scheduling, monitor...
- Now, you don't have to be an expert application developer for this course, and there's no real coding or application development involved in either this course or the certification itself.
- You only need to know the real basics of development on a platform like Python or Node.js.
- All of these courses are filled with coding exercises and quizzes that will help you practice developing and deploying applications on Kubernetes.
- The course starts with lectures that simplify Kubernetes development concepts through visuals and animations, followed by hands-on labs that bring these concepts to real life in a real Kubernetes environment.
- And our AI Assistant in labs acts as your personal guide, providing feedback, troubleshooting issues, and offering insights as you tackle each task.
- Our enhanced lab environments offer guided in-browser practice, so you'll tackle hands-on tasks with instant feedback to help you correct mistakes as you go.
- If you're stuck, hints and solutions are available to guide you through.
- The multi-container pods module covers multi-container patterns like ambassador, adapter, or sidecar, with examples to demonstrate each use case.

## 9. Pitfalls and misunderstandings
- As this is a beginner's course, we do not deep dive into technical details.
- Now, you don't have to be an expert application developer for this course, and there's no real coding or application development involved in either this course or the certification itself.
- Now, you don't have to take these courses in order.
- You don't have to have a high end system or access to cloud platforms or worry about cloud costs to gain practice.
- Our labs are unique, as in, we don't provide a blank environment and give you instructions to copy and paste.
- This way, rebuilding your image is faster and you don't have to wait for Docker to rebuild the entire image each time.
- And when they don't anymore, get rid of it easily without having to clean up too much. (gentle upbeat music)
- Now, you don't have to be an expert application developer for this course and there's no real coding or application development involved in either of this course or the certification itself.
- So what is an OS that do not share the same kernel as this windows?
- It is also important to note that Docker has less isolation as more resources are shared between the containers, like the kernel, whereas VMs have complete isolation from each other since VMs don't rely on the underlying OS or kernel.

## 10. Troubleshooting angle
- The Kubernetes for Administrators course focuses on advanced topics on Kubernetes and in-depth discussions into the various concepts around deploying a high availability cluster for production use case, understanding more about scheduling, monitor...
- And our AI Assistant in labs acts as your personal guide, providing feedback, troubleshooting issues, and offering insights as you tackle each task.
- We then cover probes, monitoring, logging, and debugging, key skills to keep applications healthy and resolve issues.
- All the layers built are cast, so the layered architecture helps you restart docker build from that particular step in case it fails.
- So in case a particular step was to fail, for example, in this case, step three failed, and you were to fix the issue and rerun docker build, it will reuse the previous layers from cache and continue to build the remaining layers.
- The Kubernetes for administrators course focuses on advanced topics on Kubernetes, and in-depth discussions into the various concepts around deploying a high-availability cluster for production use case, understanding more about scheduling, monito...
- We had a lot of issues developing this application stack with all these different components.
- First of all, their compatibility with the underlying OS was an issue.
- We've had issues where one service requires one version of a dependent library, whereas another service requires another version.
- This compatibility matrix issue is usually referred to as the matrix from hell.

## 11. CKA / CKAD relevance
- And there are two certifications in the mix as well, one for the administrators and another for the application developers.
- Covering all of these topics for all of these students in a single course is an impossible task, which is why we created a three course series so each course can target specific audience, topics, and certifications.
- This course also helps you prepare for the certified Kubernetes administrator exam and gets you verified as a Kubernetes administrator.
- This course also helps you prepare for the certified Kubernetes application developer exam.
- Welcome to the Certified Kubernetes Application Developer exam prep course.
- You'll also find quizzes and a supportive Discord channel for Q&amp;A and exam tips to keep you on track.
- Our course objectives are fully aligned with the Certified Kubernetes Application Developer exam curriculum, designed to equip you with skills needed for the exam as well as beyond.
- The multi-container pods module covers multi-container patterns like ambassador, adapter, or sidecar, with examples to demonstrate each use case.
- Now, like the CKAD exam itself, this course is hands-on, and you'll learn how to quickly reference the Kubernetes documentation pages, which is an essential skill for the test.
- This certification is a big step in your Kubernetes journey, especially if you are on your way to become a Kubestronaut.

## 12. Source Contributions
- Matched Global Concepts:
  - The Kubernetes Trilogy (match score: 3, notes: 27)
  - Introduction (match score: 2, notes: 55)
  - Define, build and modify container images (match score: 2, notes: 55)
  - Kubernetes Series of Courses (match score: 2, notes: 29)
  - Containers Overview (match score: 2, notes: 117)
  - Core Concepts - Section Introduction (match score: 2, notes: 5)
  - Cluster Architecture (match score: 2, notes: 82)
  - Solution - Services (optional) (match score: 1, notes: 97)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 01_Introduction: 27 note entries
  - certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts: 87 note entries
  - certified-kubernetes-application-developer / 01_Introduction: 59 note entries
  - certified-kubernetes-application-developer / 02_Core Concepts: 97 note entries
  - certified-kubernetes-application-developer / 03_Configuration: 55 note entries
  - learn-kubernetes / 01_Introduction: 25 note entries
  - learn-kubernetes / 02_Kubernetes Overview: 117 note entries
- Explicit Source Reference Samples:
  - ../../../../build/intermediate/section-maps/BATCH-001_section_concept_map.md | 004_The Kubernetes Trilogy.extraction.md | Entry 1 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-001_section_concept_map.md | 004_The Kubernetes Trilogy.extraction.md | Entry 2 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-001_section_concept_map.md | 004_The Kubernetes Trilogy.extraction.md | Entry 3 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-001_section_concept_map.md | 004_The Kubernetes Trilogy.extraction.md | Entry 4 | Type Architecture
  - ../../../../build/intermediate/section-maps/BATCH-001_section_concept_map.md | 004_The Kubernetes Trilogy.extraction.md | Entry 5 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-001_section_concept_map.md | 004_The Kubernetes Trilogy.extraction.md | Entry 6 | Type Architecture
  - ../../../../build/intermediate/section-maps/BATCH-001_section_concept_map.md | 004_The Kubernetes Trilogy.extraction.md | Entry 7 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-001_section_concept_map.md | 004_The Kubernetes Trilogy.extraction.md | Entry 8 | Type Exam Tip
  - ../../../../build/intermediate/section-maps/BATCH-001_section_concept_map.md | 004_The Kubernetes Trilogy.extraction.md | Entry 9 | Type Exam Tip
  - ../../../../build/intermediate/section-maps/BATCH-001_section_concept_map.md | 004_The Kubernetes Trilogy.extraction.md | Entry 10 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-001_section_concept_map.md | 004_The Kubernetes Trilogy.extraction.md | Entry 11 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-001_section_concept_map.md | 004_The Kubernetes Trilogy.extraction.md | Entry 12 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-001_section_concept_map.md | 004_The Kubernetes Trilogy.extraction.md | Entry 13 | Type Warning/Pitfall
  - ../../../../build/intermediate/section-maps/BATCH-001_section_concept_map.md | 004_The Kubernetes Trilogy.extraction.md | Entry 14 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-001_section_concept_map.md | 004_The Kubernetes Trilogy.extraction.md | Entry 15 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-001_section_concept_map.md | 004_The Kubernetes Trilogy.extraction.md | Entry 16 | Type Troubleshooting
  - ../../../../build/intermediate/section-maps/BATCH-001_section_concept_map.md | 004_The Kubernetes Trilogy.extraction.md | Entry 17 | Type Exam Tip
  - ../../../../build/intermediate/section-maps/BATCH-001_section_concept_map.md | 004_The Kubernetes Trilogy.extraction.md | Entry 18 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-001_section_concept_map.md | 004_The Kubernetes Trilogy.extraction.md | Entry 19 | Type Warning/Pitfall
  - ../../../../build/intermediate/section-maps/BATCH-001_section_concept_map.md | 004_The Kubernetes Trilogy.extraction.md | Entry 20 | Type Concept

