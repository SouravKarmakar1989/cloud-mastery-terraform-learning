# Normalized Concept: Security Contexts

- Concept Key: security-contexts
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 670

## 1. Definition
- Containers are encapsulated in pods.
- Let us start with a pod definition file.
- Add a field called Security Context under the specs section of the pod.
- Use the run as user option to set the user ID for the pod.
- To set the same configuration on the container level.
- Move the whole section under the container specification like this.
- To add capabilities.
- Use the capabilities option and specify a list of capabilities to add to the pod.
- Well, that's all on security contexts in Kubernetes.
- Let us start with pod definition file.

## 2. First-Principles Mental Model
- As we saw in the previous lecture, when you run a Docker container, you have the option to define a set of security standards, such as the ID of the user used to run the container, the Linux capabilities that can be added or removed from the conta...
- You may choose to configure the security settings at a container level or at a pod level.
- If you configure it at a pod level, the settings will carry over to all the containers within the pod.
- If you configure it at both the pod and the container, the settings on the container will override the settings on the pod.
- This pod runs an ubuntu image with the sleep command to configure security context on the container.
- That's it for now and I will see you in the next lecture.
- If you configure it at a pod level, the settings will carry over to all containers within the pod.
- Instructor: So for the first question it's asking is what is the user used to execute the sleep process within the ubuntu-sleeper pod?
- We can see the pod ubuntu-sleeper so I'll do kubectl exec ubuntu-sleeper, and then we'll do the two dashes and now we enter in the command we wanna run, so we just do whoami.
- The next question is asking us to edit the pod ubuntu-sleeper to run the sleep process with the user ID of 1010.

## 3. Why This Exists
- As we saw in the previous lecture, when you run a Docker container, you have the option to define a set of security standards, such as the ID of the user used to run the container, the Linux capabilities that can be added or removed from the conta...
- You may choose to configure the security settings at a container level or at a pod level.
- If you configure it at a pod level, the settings will carry over to all the containers within the pod.
- This pod runs an ubuntu image with the sleep command to configure security context on the container.
- Use the run as user option to set the user ID for the pod.
- To set the same configuration on the container level.
- To add capabilities.
- Use the capabilities option and specify a list of capabilities to add to the pod.
- Head over to the Coding Exercises section and practice viewing, configuring, and troubleshooting issues related to security contexts in Kubernetes.
- If you configure it at a pod level, the settings will carry over to all containers within the pod.

## 4. Internal Working
- As we saw in the previous lecture, when you run a Docker container, you have the option to define a set of security standards, such as the ID of the user used to run the container, the Linux capabilities that can be added or removed from the conta...
- You may choose to configure the security settings at a container level or at a pod level.
- If you configure it at a pod level, the settings will carry over to all the containers within the pod.
- If you configure it at both the pod and the container, the settings on the container will override the settings on the pod.
- This pod runs an ubuntu image with the sleep command to configure security context on the container.
- That's it for now and I will see you in the next lecture.
- If you configure it at a pod level, the settings will carry over to all containers within the pod.
- Instructor: So for the first question it's asking is what is the user used to execute the sleep process within the ubuntu-sleeper pod?
- We can see the pod ubuntu-sleeper so I'll do kubectl exec ubuntu-sleeper, and then we'll do the two dashes and now we enter in the command we wanna run, so we just do whoami.
- The next question is asking us to edit the pod ubuntu-sleeper to run the sleep process with the user ID of 1010.
- So to do this, I'm gonna first get the configuration of the current pod because it's saying "Only make the necessary changes." So I'll do kubectl get pod ubuntu-sleeper and I'll do -o yaml and we'll pipe this out to a file.
- Okay, so here we'll go under security context and we just have to add one line in and we just have to say run as user, and then we provide the idea of the user, which could be 1010.

## 5. Key Objects / Fields / Relationships
- Containers are encapsulated in pods.
- You may choose to configure the security settings at a container level or at a pod level.
- If you configure it at a pod level, the settings will carry over to all the containers within the pod.
- If you configure it at both the pod and the container, the settings on the container will override the settings on the pod.
- Let us start with a pod definition file.
- This pod runs an ubuntu image with the sleep command to configure security context on the container.
- Add a field called Security Context under the specs section of the pod.
- Use the run as user option to set the user ID for the pod.
- Use the capabilities option and specify a list of capabilities to add to the pod.
- If you configure it at a pod level, the settings will carry over to all containers within the pod.

## 6. YAML Deep Dive
- Add a field called Security Context under the specs section of the pod.
- Move the whole section under the container specification like this.
- Use the capabilities option and specify a list of capabilities to add to the pod.
- Add a field called Security context under the spec section of the pod.
- Move the whole section under the container specification like this to add capabilities.
- So to do this, I'm gonna first get the configuration of the current pod because it's saying "Only make the necessary changes." So I'll do kubectl get pod ubuntu-sleeper and I'll do -o yaml and we'll pipe this out to a file.
- The next question is saying a pod definition file named multi-pod.yaml is given.
- So this is going to be more specific and it's gonna override the pod context.
- Now, if you do not want the process within the container to run as the root user, you may set the user using the user option within the docker run command and specify the new user ID.
- We can now run this image without specifying the user id, and the process will be run with the user id 1000.

## 7. kubectl / command usage
- This pod runs an ubuntu image with the sleep command to configure security context on the container.
- So if you ever wanna see what user you're logged into as on a Linux machine, you can run the command whoami.
- So all we need to do is run that command inside the container.
- So we'll do kubectl get pod.
- We can see the pod ubuntu-sleeper so I'll do kubectl exec ubuntu-sleeper, and then we'll do the two dashes and now we enter in the command we wanna run, so we just do whoami.
- So to do this, I'm gonna first get the configuration of the current pod because it's saying "Only make the necessary changes." So I'll do kubectl get pod ubuntu-sleeper and I'll do -o yaml and we'll pipe this out to a file.
- So we will save the configuration then I'm gonna do a kubectl delete pod, so I'm gonna delete the current pod.
- I'll do a --force just so it deletes it a little bit quicker.
- And then now we can apply the configuration that we just created, and I'm gonna do a kubectl get pod just to make sure that it's up and running and it's running.
- We'll then do a kubectl delete pod and then we'll do an apply.

## 8. Real-world scenarios
- Head over to the Coding Exercises section and practice viewing, configuring, and troubleshooting issues related to security contexts in Kubernetes.
- And I realized I misspelled this, and now we'll open up that file.
- It doesn't really matter where but I'll just go right here, and we'll add a security context line.
- For example, we will use the default ubuntu image and set the user id to 1000 using the user instruction.
- So the root user within the container isn't really like the root user on the host.
- You can now control and limit what capabilities are made available to a user.
- If you wish to override this behavior and provide additional privileges than what is available, use the cap add option in the docker run command.
- And I realized I misspelled this.
- So we're gonna go under the container that we're interested in and I'm just gonna go, it doesn't really matter where, but I'll just go right here and we'll add a security context line.
- For the first question, we have to deploy a pod with this specific name using the Nginx Alpine image.

## 9. Pitfalls and misunderstandings
- Now, if you do not want the process within the container to run as the root user, you may set the user using the user option within the docker run command and specify the new user ID.
- By default, Docker runs a container with a limited set of capabilities, and so the processes running within the container do not have the privileges to say, reboot the host or perform operations that can disrupt the host or other containers runnin...
- And so if we just take a look events wise, I don't think we see anything interesting here.
- So we'll do a kubectl, create, config map, and I'm just gonna copy the name, so I don't mistype anything.
- Now, we don't want to have to specify the cube config file option, on each command.
- So, going forward, we don't have to...

## 10. Troubleshooting angle
- Head over to the Coding Exercises section and practice viewing, configuring, and troubleshooting issues related to security contexts in Kubernetes.
- A replica set with the name of rs-d333393 is created, how are the pods are not coming up, identify and fix this issue, and ensure that the replica set has four in a ready state.
- So, this is most likely what's causing this issue.
- However, something seems to be wrong, identify and fix the issue.
- So that's fixed.
- Identify and fix the issue.

## 11. CKA / CKAD relevance
- So this pod is created with multiple containers and security context defined at the pod and container level.
- For example, we will use the default ubuntu image and set the user id to 1000 using the user instruction.
- -: In this video, I'm gonna walk you through these solutions for the mock exam one.
- So, there's gonna be a section here under storage persistent volume, which gonna give us an example.
- And we're gonna take a look at an example and just copy this.
- And here we have an example config.
- And that's going to wrap up the mock exam one.

## 12. Source Contributions
- Matched Global Concepts:
  - Security Contexts (match score: 2, notes: 31)
  - Solution_ Security Contexts (match score: 2, notes: 43)
  - Pre-requisite - Security in Docker (match score: 2, notes: 99)
  - Lab Solution - Security Contexts (match score: 2, notes: 51)
  - Mock Exam -1 (Solution) (match score: 1, notes: 175)
  - Solution KubeConfig (match score: 1, notes: 103)
  - Solution_ Validating and Mutating Admission Controllers (match score: 1, notes: 67)
  - Lab Solution - KubeConfig (match score: 1, notes: 101)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 07_Security: 217 note entries
  - certified-kubernetes-application-developer / 03_Configuration: 108 note entries
  - certified-kubernetes-application-developer / 09_Security: 170 note entries
  - certified-kubernetes-application-developer / 15_Mock Exams: 175 note entries
- Explicit Source Reference Samples:
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 176_Security Contexts.extraction.md | Entry 1 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 176_Security Contexts.extraction.md | Entry 2 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 176_Security Contexts.extraction.md | Entry 3 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 176_Security Contexts.extraction.md | Entry 4 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 176_Security Contexts.extraction.md | Entry 5 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 176_Security Contexts.extraction.md | Entry 6 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 176_Security Contexts.extraction.md | Entry 7 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 176_Security Contexts.extraction.md | Entry 8 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 176_Security Contexts.extraction.md | Entry 9 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 176_Security Contexts.extraction.md | Entry 10 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 176_Security Contexts.extraction.md | Entry 11 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 176_Security Contexts.extraction.md | Entry 12 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 176_Security Contexts.extraction.md | Entry 13 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 176_Security Contexts.extraction.md | Entry 14 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 176_Security Contexts.extraction.md | Entry 15 | Type Troubleshooting
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 176_Security Contexts.extraction.md | Entry 16 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-020_section_concept_map.md | 059_Security Contexts.extraction.md | Entry 1 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-020_section_concept_map.md | 059_Security Contexts.extraction.md | Entry 2 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-020_section_concept_map.md | 059_Security Contexts.extraction.md | Entry 3 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-020_section_concept_map.md | 059_Security Contexts.extraction.md | Entry 4 | Type Implementation Step

