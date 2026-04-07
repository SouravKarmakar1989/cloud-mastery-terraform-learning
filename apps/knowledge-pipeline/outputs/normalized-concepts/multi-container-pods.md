# Normalized Concept: Multi Container Pods

- Concept Key: multi-container-pods
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 1122

## 1. Definition
- -: Kubernetes has gained tremendous popularity the past decade, with it being called the Linux of the future.
- The AI revolution rides entirely on Kubernetes.
- Everything you touch today with ChatGPT or OpenAI ultimately runs on Kubernetes.
- Now, with the AI revolution happening, demand for Kubernetes is expected to explode in the coming years.
- As per a past survey conducted by Indeed, Kubernetes had the fastest growth in job searches, over 173% from a year before.
- And so it is important for us to be prepared to establish credibility and value in the market.
- My name is Mumshad Mannambeth, and I'll be your instructor for this course. (uplifting music) This course will guide you through the essential skills and knowledge needed to develop and manage applications on Kubernetes.
- The course starts with lectures that simplify Kubernetes development concepts through visuals and animations, followed by hands-on labs that bring these concepts to real life in a real Kubernetes environment.
- So whether you're new to Kubernetes or need a refresher, we've got it covered with the foundational content and resources for Docker, Kubernetes, and even DevOps basics, if that's needed.
- Our enhanced lab environments offer guided in-browser practice, so you'll tackle hands-on tasks with instant feedback to help you correct mistakes as you go.

## 2. First-Principles Mental Model
- So the course begins with core concepts reviewing Kubernetes architecture, pods, and essential configurations to refresh and reinforce foundational knowledge.
- And next, we dive into configuration.
- We then dive into scheduling jobs and Cron Jobs for automated task management.
- Well, let's dive in and I'll see you in the first lecture. (ambient music) (animation clicking)
- Instead, every lab is created specifically for the topic you just learned, and you're asked questions to explore and identify information in the lab or do specific tasks.
- Next is the init containers or the init containers as it's called these days.
- This is used when there are initialization steps to be performed when a pod starts before the main application itself.
- The init container does its job and ends its job, and then the main application starts.
- A sidecar container is set up like an init container where the sidecar starts first, does its job, but instead of ending its run, it continues to run throughout the life cycle of the pod.
- This is useful when you have a log shipper of sorts that needs to be run, along with the main application that needs to start before the main app starts, but continue to run as long as the main app runs and then end after the main app ends.

## 3. Why This Exists
- Now, with the AI revolution happening, demand for Kubernetes is expected to explode in the coming years.
- And so it is important for us to be prepared to establish credibility and value in the market.
- Welcome to the Certified Kubernetes Application Developer exam prep course.
- My name is Mumshad Mannambeth, and I'll be your instructor for this course. (uplifting music) This course will guide you through the essential skills and knowledge needed to develop and manage applications on Kubernetes.
- The course starts with lectures that simplify Kubernetes development concepts through visuals and animations, followed by hands-on labs that bring these concepts to real life in a real Kubernetes environment.
- You'll also find quizzes and a supportive Discord channel for Q&amp;A and exam tips to keep you on track.
- So whether you're new to Kubernetes or need a refresher, we've got it covered with the foundational content and resources for Docker, Kubernetes, and even DevOps basics, if that's needed.
- Our course objectives are fully aligned with the Certified Kubernetes Application Developer exam curriculum, designed to equip you with skills needed for the exam as well as beyond.
- Our enhanced lab environments offer guided in-browser practice, so you'll tackle hands-on tasks with instant feedback to help you correct mistakes as you go.
- If you're stuck, hints and solutions are available to guide you through.

## 4. Internal Working
- So the course begins with core concepts reviewing Kubernetes architecture, pods, and essential configurations to refresh and reinforce foundational knowledge.
- And next, we dive into configuration.
- We then dive into scheduling jobs and Cron Jobs for automated task management.
- Well, let's dive in and I'll see you in the first lecture. (ambient music) (animation clicking)
- Instead, every lab is created specifically for the topic you just learned, and you're asked questions to explore and identify information in the lab or do specific tasks.
- Next is the init containers or the init containers as it's called these days.
- This is used when there are initialization steps to be performed when a pod starts before the main application itself.
- The init container does its job and ends its job, and then the main application starts.
- A sidecar container is set up like an init container where the sidecar starts first, does its job, but instead of ending its run, it continues to run throughout the life cycle of the pod.
- This is useful when you have a log shipper of sorts that needs to be run, along with the main application that needs to start before the main app starts, but continue to run as long as the main app runs and then end after the main app ends.
- The init container is differentiated well because we know that in in terms of the init container, it starts and then stops, and then the main app runs.
- However, the first and the last.

## 5. Key Objects / Fields / Relationships
- So the course begins with core concepts reviewing Kubernetes architecture, pods, and essential configurations to refresh and reinforce foundational knowledge.
- So that's mastering ConfigMaps, security context, resource requirements, secrets, and service accounts to manage app configurations securely and efficiently.
- The multi-container pods module covers multi-container patterns like ambassador, adapter, or sidecar, with examples to demonstrate each use case.
- In workloads and scheduling, we explore labels, selectors, rolling updates, and rollbacks.
- The networking module covers services and network policies to manage connectivity and security within clusters.
- Finally, we cover persistent storage with persistent volumes and claims to ensure data durability across containers.
- So jump right in and roll today, and I'll see you in class.
- Let us now look at the different multi-container pods design patterns.
- So there are different patterns for multi-container pods.
- It's as simple as two containers running in a pod.

## 6. YAML Deep Dive
- This certification is a big step in your Kubernetes journey, especially if you are on your way to become a Kubestronaut.
- Instead, every lab is created specifically for the topic you just learned, and you're asked questions to explore and identify information in the lab or do specific tasks.
- So why are there two if they kind of serve the same purpose?
- However, the Sidecar Containers option provides the ability to specify an order of startup and then continue to run throughout the pod lifecycle.
- In this case you can see that the container section is an array and it has two elements in the array two containers specified in the array.
- Now remember the container section under the spec section in a Pod definition file is an array.
- And it says that we have to create a storage class named local SC with the following specifications and set it as the default storage class.
- And it's got the following specifications.
- And I'll just say question two dot YAML.
- It doesn't say it has to be anything specifically.

## 7. kubectl / command usage
- So under that we have the name and image and command as we do for the main container.
- And it should run the following command to simulate writing logs.
- And then we have to add a sidecar container name log agent that also uses the BusyBox image and runs the command that's listed here.
- And then what this should do is basically run this command.
- So we have to change the command of the container.
- So that will overwrite the default command of the BusyBox container or the image.
- And then it's going to run this command.
- And then the command that should run.
- So I'll do a kubectl get deploy dash n ingress dash s.
- And we'll do a kubectl get ingress class.

## 8. Real-world scenarios
- The course starts with lectures that simplify Kubernetes development concepts through visuals and animations, followed by hands-on labs that bring these concepts to real life in a real Kubernetes environment.
- And our AI Assistant in labs acts as your personal guide, providing feedback, troubleshooting issues, and offering insights as you tackle each task.
- Our enhanced lab environments offer guided in-browser practice, so you'll tackle hands-on tasks with instant feedback to help you correct mistakes as you go.
- If you're stuck, hints and solutions are available to guide you through.
- The multi-container pods module covers multi-container patterns like ambassador, adapter, or sidecar, with examples to demonstrate each use case.
- In workloads and scheduling, we explore labels, selectors, rolling updates, and rollbacks.
- The networking module covers services and network policies to manage connectivity and security within clusters.
- Kubernetes is the go to platform for hosting production grade applications.
- On labs, we have coding exercises where you will practice solving Kubernetes, coding challenges in a live Kubernetes environment, right in your browser.
- You don't have to have a high end system or access to cloud platforms or worry about cloud costs to gain practice.

## 9. Pitfalls and misunderstandings
- You don't have to have a high end system or access to cloud platforms or worry about cloud costs to gain practice.
- Our labs are unique, as in, we don't provide a blank environment and give you instructions to copy and paste.
- You don't want to merge and bloat the code of the two services, as each of them target different features, and you still like them to be developed and deployed separately.
- This way you do not have to establish volume sharing or services between the pods to enable communication between them.
- You don't want to merge and bloat the code of the two services, as each of them target different features and you still like them to be developed and deployed separately, you only need the two functionality to work together.
- We don't need that.
- And let me just copy the whole thing and just delete what I don't need.
- But since this is a scratch data and we don't actually need the data to persist, we just need it to be available during the lifetime of the pod.
- And I don't know why it always moves over I don't want it to do that.
- Now we don't need to do this because this is the default one.

## 10. Troubleshooting angle
- And our AI Assistant in labs acts as your personal guide, providing feedback, troubleshooting issues, and offering insights as you tackle each task.
- We then cover probes, monitoring, logging, and debugging, key skills to keep applications healthy and resolve issues.
- Let's apply this and hope there's no errors.
- You got to use a path type prefix route request center path slash.
- You can see it's going to use path type prefix.
- It's going to be under TLS issue a certificate.
- And it looks like there's an error.
- Make sure that it's recreated restarted automatically in case of failures.
- The Kubernetes for administrators course focuses on advanced topics on Kubernetes, and in-depth discussions into the various concepts around deploying a high-availability cluster for production use case, understanding more about scheduling, monito...

## 11. CKA / CKAD relevance
- Welcome to the Certified Kubernetes Application Developer exam prep course.
- You'll also find quizzes and a supportive Discord channel for Q&amp;A and exam tips to keep you on track.
- Our course objectives are fully aligned with the Certified Kubernetes Application Developer exam curriculum, designed to equip you with skills needed for the exam as well as beyond.
- The multi-container pods module covers multi-container patterns like ambassador, adapter, or sidecar, with examples to demonstrate each use case.
- Now, like the CKAD exam itself, this course is hands-on, and you'll learn how to quickly reference the Kubernetes documentation pages, which is an essential skill for the test.
- This certification is a big step in your Kubernetes journey, especially if you are on your way to become a Kubestronaut.
- For example, this could be an init container that waits for a database to be ready before starting the main application.
- So you could define multiple init containers too, so that they can be run sequentially.
- For example, you could have another init container defined as a second item in the list, in this case.
- So here's a more realistic example using the elastic search and Kibana stack.

## 12. Source Contributions
- Matched Global Concepts:
  - Introduction (match score: 4, notes: 55)
  - Multi container Pods Design Pattern (match score: 3, notes: 128)
  - Multi Container Pods (match score: 2, notes: 38)
  - Mock Exam - 2 - Solution _ (Optional) (match score: 1, notes: 624)
  - Kubernetes Series of Courses (match score: 1, notes: 29)
  - Solution_ Security Contexts (match score: 1, notes: 43)
  - Lab Solution - Security Contexts (match score: 1, notes: 51)
  - Pods (match score: 1, notes: 154)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts: 77 note entries
  - certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management: 84 note entries
  - certified-kubernetes-administrator-with-practice-tests / 07_Security: 51 note entries
  - certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams: 624 note entries
  - certified-kubernetes-application-developer / 01_Introduction: 59 note entries
  - certified-kubernetes-application-developer / 03_Configuration: 43 note entries
  - certified-kubernetes-application-developer / 04_Multi-Container Pods: 82 note entries
  - learn-kubernetes / 01_Introduction: 25 note entries
  - learn-kubernetes / 03_Kubernetes Concepts: 77 note entries
- Explicit Source Reference Samples:
  - section-maps/BATCH-018_section_concept_map.md | 001_Introduction.extraction.md | Entry 1 | Type Concept
  - section-maps/BATCH-018_section_concept_map.md | 001_Introduction.extraction.md | Entry 2 | Type Concept
  - section-maps/BATCH-018_section_concept_map.md | 001_Introduction.extraction.md | Entry 3 | Type Concept
  - section-maps/BATCH-018_section_concept_map.md | 001_Introduction.extraction.md | Entry 4 | Type Concept
  - section-maps/BATCH-018_section_concept_map.md | 001_Introduction.extraction.md | Entry 5 | Type Concept
  - section-maps/BATCH-018_section_concept_map.md | 001_Introduction.extraction.md | Entry 6 | Type Concept
  - section-maps/BATCH-018_section_concept_map.md | 001_Introduction.extraction.md | Entry 7 | Type Exam Tip
  - section-maps/BATCH-018_section_concept_map.md | 001_Introduction.extraction.md | Entry 8 | Type Concept
  - section-maps/BATCH-018_section_concept_map.md | 001_Introduction.extraction.md | Entry 9 | Type Concept
  - section-maps/BATCH-018_section_concept_map.md | 001_Introduction.extraction.md | Entry 10 | Type Troubleshooting
  - section-maps/BATCH-018_section_concept_map.md | 001_Introduction.extraction.md | Entry 11 | Type Exam Tip
  - section-maps/BATCH-018_section_concept_map.md | 001_Introduction.extraction.md | Entry 12 | Type Concept
  - section-maps/BATCH-018_section_concept_map.md | 001_Introduction.extraction.md | Entry 13 | Type Exam Tip
  - section-maps/BATCH-018_section_concept_map.md | 001_Introduction.extraction.md | Entry 14 | Type Concept
  - section-maps/BATCH-018_section_concept_map.md | 001_Introduction.extraction.md | Entry 15 | Type Concept
  - section-maps/BATCH-018_section_concept_map.md | 001_Introduction.extraction.md | Entry 16 | Type Architecture
  - section-maps/BATCH-018_section_concept_map.md | 001_Introduction.extraction.md | Entry 17 | Type Implementation Step
  - section-maps/BATCH-018_section_concept_map.md | 001_Introduction.extraction.md | Entry 18 | Type Concept
  - section-maps/BATCH-018_section_concept_map.md | 001_Introduction.extraction.md | Entry 19 | Type Exam Tip
  - section-maps/BATCH-018_section_concept_map.md | 001_Introduction.extraction.md | Entry 20 | Type Troubleshooting

