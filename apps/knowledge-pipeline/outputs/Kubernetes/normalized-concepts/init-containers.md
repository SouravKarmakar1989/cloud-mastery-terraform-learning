# Normalized Concept: Init Containers

- Concept Key: init-containers
- Matched Global Concept Blocks: 6
- Source-backed Note Entries Used: 775

## 1. Definition
- Let us now look at in-place resizing of pods.
- So before we talk about Vertical Pod autoscaler, I thought it would be a good idea to talk about in-place resize of pod resources.
- So what does that mean?
- So any resource, any changes to the resource definitions on pod.
- Uh ah.
- Does not happen in place.
- Which means the pod needs to be killed.
- Now we know that this can be disruptive, especially for stateful workloads.
- So uh, there is an improvement that is being worked upon called as in-place update of Pod resources.
- This is a feature that is currently in alpha as of Kubernetes release 1.27, and is not enabled by default, and when it goes to the beta or stable stage in the future, it will become enabled by default.

## 2. First-Principles Mental Model
- Now as of this recording, which is Kubernetes version 1.32 has has released, if you change resource requirements of a pod in a deployment, the default behavior is to delete the existing pod and then spin up a new pod with the new changes.
- And the new pod with the new resource definitions need to be created.
- So that's the default behavior.
- And once this is enabled, the Pod definition supports a set of resize policy parameters, which we will look at next.
- And the next we make a change to a resource such as updating the CPU to one, and you can see that the pod does not need to be killed.
- So in the next video we'll talk about Vertical Pod Autoscaler, but let's also look at some of the limitations.
- For the first question, it's asking us to identify the pod that has an Init container configured.
- So I'm gonna do Kubectl describe, and then pod and then this is going to describe all the pods.
- The first container, which is gonna be the red.
- And then finally, if we get down to the blue pod, we do in fact see that there's an Init container for the blue pod.

## 3. Why This Exists
- So before we talk about Vertical Pod autoscaler, I thought it would be a good idea to talk about in-place resize of pod resources.
- Now as of this recording, which is Kubernetes version 1.32 has has released, if you change resource requirements of a pod in a deployment, the default behavior is to delete the existing pod and then spin up a new pod with the new changes.
- So any resource, any changes to the resource definitions on pod.
- Which means the pod needs to be killed.
- And the new pod with the new resource definitions need to be created.
- So that's the default behavior.
- This is a feature that is currently in alpha as of Kubernetes release 1.27, and is not enabled by default, and when it goes to the beta or stable stage in the future, it will become enabled by default.
- You just have to enable it.
- So to enable this feature, you must set the feature flag called in-place pod vertical scaling to true.
- So the new resize policy options allow you to specify a restart policy for each resource.

## 4. Internal Working
- Now as of this recording, which is Kubernetes version 1.32 has has released, if you change resource requirements of a pod in a deployment, the default behavior is to delete the existing pod and then spin up a new pod with the new changes.
- And the new pod with the new resource definitions need to be created.
- So that's the default behavior.
- And once this is enabled, the Pod definition supports a set of resize policy parameters, which we will look at next.
- And the next we make a change to a resource such as updating the CPU to one, and you can see that the pod does not need to be killed.
- So in the next video we'll talk about Vertical Pod Autoscaler, but let's also look at some of the limitations.
- For the first question, it's asking us to identify the pod that has an Init container configured.
- So I'm gonna do Kubectl describe, and then pod and then this is going to describe all the pods.
- The first container, which is gonna be the red.
- And then finally, if we get down to the blue pod, we do in fact see that there's an Init container for the blue pod.
- The next question is asking why is the Init container in a terminated state?
- So a new app named purple was created, and we have to figure out how many Init containers does it have.

## 5. Key Objects / Fields / Relationships
- Let us now look at in-place resizing of pods.
- So before we talk about Vertical Pod autoscaler, I thought it would be a good idea to talk about in-place resize of pod resources.
- Now as of this recording, which is Kubernetes version 1.32 has has released, if you change resource requirements of a pod in a deployment, the default behavior is to delete the existing pod and then spin up a new pod with the new changes.
- So any resource, any changes to the resource definitions on pod.
- Which means the pod needs to be killed.
- And the new pod with the new resource definitions need to be created.
- So uh, there is an improvement that is being worked upon called as in-place update of Pod resources.
- So to enable this feature, you must set the feature flag called in-place pod vertical scaling to true.
- And once this is enabled, the Pod definition supports a set of resize policy parameters, which we will look at next.
- So the new resize policy options allow you to specify a restart policy for each resource.

## 6. YAML Deep Dive
- Now we know that this can be disruptive, especially for stateful workloads.
- So the new resize policy options allow you to specify a restart policy for each resource.
- I'm gonna do dash O yaml, and then save this to a file.
- I'll just call this red.yaml.
- And once that's complete, let's open up our red.yaml.
- So I'll go under these spec, and I'll add an Init containers.
- Let's do a Kubectl apply-F red.yaml.
- We're gonna copy the config to an orange.yaml.
- Then we'll go into the orange.yaml, and let's fix up the command so that there isn't too many Es.
- And then let's do a Kubectl apply-F orange.yaml.

## 7. kubectl / command usage
- So if I do a Kubectl get pods, we should see that we have three different pods, red, green, blue.
- And to see which one has an Init container, we're gonna have to do a Kubectl describe.
- So I'm gonna do Kubectl describe, and then pod and then this is going to describe all the pods.
- Well, we don't have to run any other commands.
- So I do Kubectl describe pod purple.
- To get the state of the pod, just take a look at the output of the described pod command, and you can see there's a status section right here and that's going to be pending.
- So the first Init container is going to deploy a Busybox image, and all it's going to do is it's going to run a sleep command.
- So what this command tells it to do is just sit there and wait 600 seconds and then close when it's done.
- And then after this container's done, then we'll go to the next Init container and you can see it's the same image with the same command.
- So I'm gonna do a Kubectl get pod, and then we're gonna grab the red pod.

## 8. Real-world scenarios
- Now as of this recording, which is Kubernetes version 1.32 has has released, if you change resource requirements of a pod in a deployment, the default behavior is to delete the existing pod and then spin up a new pod with the new changes.
- So it is still available with the features that are part of the Kubernetes cluster.
- In this example, we have defined that a change in CPU resource will not require the pod to be restarted, and a change in memory will require a restart of the pod.
- So that explains how we can resize a CPU or memory resource assigned to a container without really restarting it.
- This is meant to be released as a beta feature, and in the future will be available as a stable feature.
- So now remember that we're still talking about manually scaling a pod, so we're not really talking about Vertical Pod Autoscaler yet.
- -: In this video, I'm gonna walk you through these solutions for the Init container lab.
- So I'll select pending, and it's asking how long after the creation of the pod will the application come up and be available to users.
- So this container will not get deployed until the Init container's complete.
- So the first Init container is going to deploy a Busybox image, and all it's going to do is it's going to run a sleep command.

## 9. Pitfalls and misunderstandings
- Well, we don't have to run any other commands.
- So under events, I don't really see anything interesting other than we can see that it's restarting.
- And if you don't specify any pod name, it's going to list the description of all the pods.
- So the process do not crash, the process cannot start, now the process completed successfully and that's why it has exit code zero here.
- You don't have to provide step-by-step instructions.
- Now, these commands help in quickly creating or modifying objects as we don't have to deal with YAML files.
- So the pod should be called mc-pod, which we have, we don't really need a label because it doesn't really say anything about labels.
- So what I'm gonna do is, I'm gonna copy this and then I'm going to copy that and then, I can go to that file it told us, which is /root/vpa-crds.txt, we'll paste it in, and we don't need this information so it just wants the name so I'm just gonna...
- So we don't need to add anything else and we can just run this as is.
- So if you don't know how to create a persistent volume off the top of your head, remember you always have access to the documentation.

## 10. Troubleshooting angle
- And it's saying that there's a new application orange that was deployed and there's something wrong with it, identify and fix the issue.
- So no issue there.
- However, if we go up to the Init container, I do see one minor issue.
- So let's update this configuration and see if that fixes it.
- Then we'll go into the orange.yaml, and let's fix up the command so that there isn't too many Es.
- Then let's run the validation just to see if the issue is fixed, and it looks like we're successful.
- Now a new application orange is deployed, there is something wrong with it, identify and fix the issue and once fixed, wait for the application to run before checking the solution.
- And you see that the state is terminated, but this time the reason is error as opposed to completed as it is before.
- So, and it's just, it just keeps restarting until you know, until it's fixed.
- So let's go ahead and fix that.

## 11. CKA / CKAD relevance
- In this example, we have defined that a change in CPU resource will not require the pod to be restarted, and a change in memory will require a restart of the pod.
- So you can have multiple Init containers change like this if required.
- So yeah, it's a silly use case but it's just a very simple example to help you understand how the Init containers work.
- Towards the end of this lecture, we will talk about some tips that you can use in the exam.
- In the Infrastructure as Code world, an example of an imperative approach of provisioning infrastructure would be a set of instructions written step by step, such as provisioning a VM named a web server, installing the Nginx software on it, editin...
- And these are helpful during the certification exams.
- If there are multiple object configuration files as you would usually, then you may specify a directory as the path instead of a single file.
- For now, let me give you some tips as part of the exam.
- So from an exam perspective, you could use the imperative approach to save time as much as possible.
- For example, if a question is to just create a pod or a deployment with a given image, then one of these imperative commands can help you achieve that quickly.

## 12. Source Contributions
- Matched Global Concepts:
  - (2025 Updates) In-Place Resize of Pods_ (match score: 2, notes: 36)
  - Solution â€“ Init Containers (Optional) (match score: 2, notes: 85)
  - Lab Solution - Init Containers (Optional) (match score: 2, notes: 88)
  - Imperative vs Declarative (match score: 2, notes: 94)
  - Multi container Pods Design Pattern (match score: 2, notes: 128)
  - Solution - Mock Exam -1 (Optional) (match score: 1, notes: 344)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts: 94 note entries
  - certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management: 188 note entries
  - certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams: 344 note entries
  - certified-kubernetes-application-developer / 04_Multi-Container Pods: 149 note entries
- Explicit Source Reference Samples:
  - section-maps/BATCH-005_section_concept_map.md | 126_(2025 Updates) In-Place Resize of Pods_.extraction.md | Entry 1 | Type Concept
  - section-maps/BATCH-005_section_concept_map.md | 126_(2025 Updates) In-Place Resize of Pods_.extraction.md | Entry 2 | Type Concept
  - section-maps/BATCH-005_section_concept_map.md | 126_(2025 Updates) In-Place Resize of Pods_.extraction.md | Entry 3 | Type Concept
  - section-maps/BATCH-005_section_concept_map.md | 126_(2025 Updates) In-Place Resize of Pods_.extraction.md | Entry 4 | Type Implementation Step
  - section-maps/BATCH-005_section_concept_map.md | 126_(2025 Updates) In-Place Resize of Pods_.extraction.md | Entry 5 | Type Concept
  - section-maps/BATCH-005_section_concept_map.md | 126_(2025 Updates) In-Place Resize of Pods_.extraction.md | Entry 6 | Type Concept
  - section-maps/BATCH-005_section_concept_map.md | 126_(2025 Updates) In-Place Resize of Pods_.extraction.md | Entry 7 | Type Concept
  - section-maps/BATCH-005_section_concept_map.md | 126_(2025 Updates) In-Place Resize of Pods_.extraction.md | Entry 8 | Type Concept
  - section-maps/BATCH-005_section_concept_map.md | 126_(2025 Updates) In-Place Resize of Pods_.extraction.md | Entry 9 | Type Implementation Step
  - section-maps/BATCH-005_section_concept_map.md | 126_(2025 Updates) In-Place Resize of Pods_.extraction.md | Entry 10 | Type Operational Insight
  - section-maps/BATCH-005_section_concept_map.md | 126_(2025 Updates) In-Place Resize of Pods_.extraction.md | Entry 11 | Type Concept
  - section-maps/BATCH-005_section_concept_map.md | 126_(2025 Updates) In-Place Resize of Pods_.extraction.md | Entry 12 | Type Concept
  - section-maps/BATCH-005_section_concept_map.md | 126_(2025 Updates) In-Place Resize of Pods_.extraction.md | Entry 13 | Type Concept
  - section-maps/BATCH-005_section_concept_map.md | 126_(2025 Updates) In-Place Resize of Pods_.extraction.md | Entry 14 | Type Concept
  - section-maps/BATCH-005_section_concept_map.md | 126_(2025 Updates) In-Place Resize of Pods_.extraction.md | Entry 15 | Type Concept
  - section-maps/BATCH-005_section_concept_map.md | 126_(2025 Updates) In-Place Resize of Pods_.extraction.md | Entry 16 | Type Concept
  - section-maps/BATCH-005_section_concept_map.md | 126_(2025 Updates) In-Place Resize of Pods_.extraction.md | Entry 17 | Type Concept
  - section-maps/BATCH-005_section_concept_map.md | 126_(2025 Updates) In-Place Resize of Pods_.extraction.md | Entry 18 | Type Implementation Step
  - section-maps/BATCH-005_section_concept_map.md | 126_(2025 Updates) In-Place Resize of Pods_.extraction.md | Entry 19 | Type Concept
  - section-maps/BATCH-005_section_concept_map.md | 126_(2025 Updates) In-Place Resize of Pods_.extraction.md | Entry 20 | Type Exam Tip

