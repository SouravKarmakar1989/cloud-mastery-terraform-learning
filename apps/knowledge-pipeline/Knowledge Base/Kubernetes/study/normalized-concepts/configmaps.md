# Normalized Concept: Configmaps

- Concept Key: configmaps
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 572

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
- So how do we create a role?
- So we create a role definition file with the API version set to Rbac, dot authorization, dot k.io v1, and kind set to role.
- And then we specify rules.
- The actions that they can take are list, get, create, and delete.
- Similarly, to allow the developers to create config maps, we add another rule to create config map.

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
- So how do we create a role?
- So we create a role definition file with the API version set to Rbac, dot authorization, dot k.io v1, and kind set to role.
- And then we specify rules.
- The actions that they can take are list, get, create, and delete.
- Similarly, to allow the developers to create config maps, we add another rule to create config map.
- Create the rule using the cube control.
- Create rule command.

## 5. Key Objects / Fields / Relationships
- So the course begins with core concepts reviewing Kubernetes architecture, pods, and essential configurations to refresh and reinforce foundational knowledge.
- So that's mastering ConfigMaps, security context, resource requirements, secrets, and service accounts to manage app configurations securely and efficiently.
- The multi-container pods module covers multi-container patterns like ambassador, adapter, or sidecar, with examples to demonstrate each use case.
- In workloads and scheduling, we explore labels, selectors, rolling updates, and rollbacks.
- The networking module covers services and network policies to manage connectivity and security within clusters.
- Finally, we cover persistent storage with persistent volumes and claims to ensure data durability across containers.
- So jump right in and roll today, and I'll see you in class.
- In this lecture, we look at role based access controls in much more detail.
- So how do we create a role?
- We do that by creating a role object.

## 6. YAML Deep Dive
- This certification is a big step in your Kubernetes journey, especially if you are on your way to become a Kubestronaut.
- Instead, every lab is created specifically for the topic you just learned, and you're asked questions to explore and identify information in the lab or do specific tasks.
- So we create a role definition file with the API version set to Rbac, dot authorization, dot k.io v1, and kind set to role.
- And then we specify rules.
- For any other group, you specify the group name.
- The kind is rule binding.
- The subjects is where we specify the user details.
- If you want to limit the dev users access within a different namespace, then specify the namespace within the metadata of the definition file while creating them.
- The dev user has access to creating pods, though you can also specify the namespace in the command like this.
- You can go one level down and allow access to specific resources alone.

## 7. kubectl / command usage
- Create rule command.
- Create the rule binding using the cube control create command.
- Command to list role bindings from the Kube control.
- Get role bindings command to view more details about the role.
- When the kube control describe role developer command, here you see the details about the resources and permissions for each resource.
- Similarly, to view details about role bindings, run the kube control describe role bindings command.
- Can I command and check if you can say create deployments or say delete nodes?
- Instead, you can use the same command with the as user option.
- The dev user has access to creating pods, though you can also specify the namespace in the command like this.
- So you have to authenticate to the API using your certificate files by passing them in the command line like this.

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
- You don't have to authenticate as the user to test it.
- That way you don't have to specify those in the curl command.
- And so, we don't actually have to run another command.
- It's saying that we need to delete and recreate the pod and only make the necessary changes, and to make sure that we don't modify the name of the pod.
- I'm gonna copy this just to make sure I don't make a mistake.
- And I'm gonna copy this, as well, just so I don't make a mistake.
- If you do not wish to create a config map definition file, you could simply use the cube control, create Configmap command and specify the required arguments.
- If you do not wish to create a config map definition file, you could simply use the cube control create config map command and specify the required arguments.

## 10. Troubleshooting angle
- And our AI Assistant in labs acts as your personal guide, providing feedback, troubleshooting issues, and offering insights as you tackle each task.
- We then cover probes, monitoring, logging, and debugging, key skills to keep applications healthy and resolve issues.
- So head over to the coding exercises section and practice viewing, configuring and troubleshooting environment variables on a live Kubernetes environment.

## 11. CKA / CKAD relevance
- Welcome to the Certified Kubernetes Application Developer exam prep course.
- You'll also find quizzes and a supportive Discord channel for Q&amp;A and exam tips to keep you on track.
- Our course objectives are fully aligned with the Certified Kubernetes Application Developer exam curriculum, designed to equip you with skills needed for the exam as well as beyond.
- The multi-container pods module covers multi-container patterns like ambassador, adapter, or sidecar, with examples to demonstrate each use case.
- Now, like the CKAD exam itself, this course is hands-on, and you'll learn how to quickly reference the Kubernetes documentation pages, which is an essential skill for the test.
- This certification is a big step in your Kubernetes journey, especially if you are on your way to become a Kubestronaut.
- We can add multiple rules for a single role like this.
- For example, say you have five pods in namespace.
- The Kubernetes API is grouped into multiple such groups based on their purpose, such as one for APIs, one for health, one for metrics and logs, etc. the version API is for viewing the version of the cluster.
- The Kubernetes API is grouped into multiple such groups based on their purpose, such as one for APIs, one for health, one for metrics and logs, etc. the version API is for viewing the version of the cluster as we just saw.

## 12. Source Contributions
- Matched Global Concepts:
  - Introduction (match score: 2, notes: 55)
  - Role Based Access Controls (match score: 2, notes: 114)
  - API Groups (match score: 2, notes: 106)
  - Solution_ ConfigMaps (Optional) (match score: 2, notes: 104)
  - ConfigMaps (match score: 2, notes: 53)
  - Environment Variables (match score: 2, notes: 10)
  - Configuring ConfigMaps in Applications (match score: 2, notes: 53)
  - Lab Solution - Multiple Scheduler (match score: 2, notes: 77)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 03_Scheduling: 77 note entries
  - certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management: 53 note entries
  - certified-kubernetes-administrator-with-practice-tests / 07_Security: 111 note entries
  - certified-kubernetes-application-developer / 01_Introduction: 30 note entries
  - certified-kubernetes-application-developer / 03_Configuration: 167 note entries
  - certified-kubernetes-application-developer / 09_Security: 109 note entries
  - learn-kubernetes / 01_Introduction: 25 note entries
- Explicit Source Reference Samples:
  - ../../../../build/intermediate/section-maps/BATCH-018_section_concept_map.md | 001_Introduction.extraction.md | Entry 1 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-018_section_concept_map.md | 001_Introduction.extraction.md | Entry 2 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-018_section_concept_map.md | 001_Introduction.extraction.md | Entry 3 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-018_section_concept_map.md | 001_Introduction.extraction.md | Entry 4 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-018_section_concept_map.md | 001_Introduction.extraction.md | Entry 5 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-018_section_concept_map.md | 001_Introduction.extraction.md | Entry 6 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-018_section_concept_map.md | 001_Introduction.extraction.md | Entry 7 | Type Exam Tip
  - ../../../../build/intermediate/section-maps/BATCH-018_section_concept_map.md | 001_Introduction.extraction.md | Entry 8 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-018_section_concept_map.md | 001_Introduction.extraction.md | Entry 9 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-018_section_concept_map.md | 001_Introduction.extraction.md | Entry 10 | Type Troubleshooting
  - ../../../../build/intermediate/section-maps/BATCH-018_section_concept_map.md | 001_Introduction.extraction.md | Entry 11 | Type Exam Tip
  - ../../../../build/intermediate/section-maps/BATCH-018_section_concept_map.md | 001_Introduction.extraction.md | Entry 12 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-018_section_concept_map.md | 001_Introduction.extraction.md | Entry 13 | Type Exam Tip
  - ../../../../build/intermediate/section-maps/BATCH-018_section_concept_map.md | 001_Introduction.extraction.md | Entry 14 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-018_section_concept_map.md | 001_Introduction.extraction.md | Entry 15 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-018_section_concept_map.md | 001_Introduction.extraction.md | Entry 16 | Type Architecture
  - ../../../../build/intermediate/section-maps/BATCH-018_section_concept_map.md | 001_Introduction.extraction.md | Entry 17 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-018_section_concept_map.md | 001_Introduction.extraction.md | Entry 18 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-018_section_concept_map.md | 001_Introduction.extraction.md | Entry 19 | Type Exam Tip
  - ../../../../build/intermediate/section-maps/BATCH-018_section_concept_map.md | 001_Introduction.extraction.md | Entry 20 | Type Troubleshooting

