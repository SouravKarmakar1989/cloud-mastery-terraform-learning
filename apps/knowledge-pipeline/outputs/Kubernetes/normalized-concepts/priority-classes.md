# Normalized Concept: Priority Classes

- Concept Key: priority-classes
- Matched Global Concept Blocks: 3
- Source-backed Note Entries Used: 639

## 1. Definition
- Let us now look at priority classes in Kubernetes.
- We know that Kubernetes runs different applications as pods with different priorities.
- And we know that no matter what, those workloads need to always run.
- Similarly, we may have priority databases, critical applications running on the cluster as well as lower priority workloads like background jobs.
- Now, we need a way to make sure that higher priority workloads always get scheduled without being interrupted by lower priority workloads.
- This is where priority classes come in.
- Priority classes help us define priorities for different workloads, so that higher priority workloads always get priority over lower priority ones.
- If a higher priority pod cannot be scheduled, the scheduler will try to terminate a lower priority workload to make that happen.
- They are not attached to a specific namespace.
- So how do you define priorities?

## 2. First-Principles Mental Model
- If a higher priority pod cannot be scheduled, the scheduler will try to terminate a lower priority workload to make that happen.
- So priority classes are non namespaced objects, meaning they are not created within a specific namespace.
- So once they're created, they're available to be configured on any port in any namespace.
- Now this range that I've just mentioned is for the applications and workloads that are deployed on the cluster.
- So the positive 1 billion to -2 billion number is for the applications or workloads that are deployed as apps on the cluster.
- Let us now see how we can create a new priority class.
- So to create a new priority class, we create an object with the API version set to scheduling v1 kind set to priority class metadata with a name.
- And then we define the value.
- Once this is created we associate this priority class to a pod by using the priority class name property inside the pod definition.
- When that pod is created, it is assumed to have this priority that is assigned to the priority class.

## 3. Why This Exists
- And we know that no matter what, those workloads need to always run.
- Now, we need a way to make sure that higher priority workloads always get scheduled without being interrupted by lower priority workloads.
- Priority classes help us define priorities for different workloads, so that higher priority workloads always get priority over lower priority ones.
- If a higher priority pod cannot be scheduled, the scheduler will try to terminate a lower priority workload to make that happen.
- They are not attached to a specific namespace.
- So once they're created, they're available to be configured on any port in any namespace.
- So they always get the highest priority. and they have priorities up to 2 billion.
- So to list existing priority classes run the kubectl get priority class command.
- And as you can rightly see the value of these are close to 2 billion or around that range.
- So to create a new priority class, we create an object with the API version set to scheduling v1 kind set to priority class metadata with a name.

## 4. Internal Working
- If a higher priority pod cannot be scheduled, the scheduler will try to terminate a lower priority workload to make that happen.
- So priority classes are non namespaced objects, meaning they are not created within a specific namespace.
- So once they're created, they're available to be configured on any port in any namespace.
- Now this range that I've just mentioned is for the applications and workloads that are deployed on the cluster.
- So the positive 1 billion to -2 billion number is for the applications or workloads that are deployed as apps on the cluster.
- Let us now see how we can create a new priority class.
- So to create a new priority class, we create an object with the API version set to scheduling v1 kind set to priority class metadata with a name.
- And then we define the value.
- Once this is created we associate this priority class to a pod by using the priority class name property inside the pod definition.
- When that pod is created, it is assumed to have this priority that is assigned to the priority class.
- However, if you'd like to modify that, you must create a new priority class and assign the global default property to true.
- Now, since the critical app is of higher priority, it gets, uh, placed first.

## 5. Key Objects / Fields / Relationships
- Let us now look at priority classes in Kubernetes.
- We know that Kubernetes runs different applications as pods with different priorities.
- For example, the Kubernetes control plane components itself run as pods within the cluster.
- This is where priority classes come in.
- Priority classes help us define priorities for different workloads, so that higher priority workloads always get priority over lower priority ones.
- If a higher priority pod cannot be scheduled, the scheduler will try to terminate a lower priority workload to make that happen.
- So priority classes are non namespaced objects, meaning they are not created within a specific namespace.
- They are not attached to a specific namespace.
- So once they're created, they're available to be configured on any port in any namespace.
- So to list existing priority classes run the kubectl get priority class command.

## 6. YAML Deep Dive
- So priority classes are non namespaced objects, meaning they are not created within a specific namespace.
- They are not attached to a specific namespace.
- So to create a new priority class, we create an object with the API version set to scheduling v1 kind set to priority class metadata with a name.
- Now, what if I don't specify a priority class name for a pod?
- So we could do this either using the imperative command like kubectl create, or we can create a YAML file.
- I'm gonna just create a file and I'll just call this one question2.yaml and let's create the spec for a pod.
- So here we get the API version set to V1, the kind set to pod metadata.
- And then for the spec, we'll do containers and we will have a...
- Okay, and so that's how you assign a specific service account to a pod.
- But you could, for these mock exams or for the actual exam, you can always just do kubectl, get deployment -o yaml, print it out and make whatever changes and then apply that.

## 7. kubectl / command usage
- So to list existing priority classes run the kubectl get priority class command.
- Now for question one, you can see that it says that you are an administrator preparing your environment to deploy a Kubernetes cluster using kubeadm.
- To do this, what I always recommend is remembering that since we are in the process of creating a new cluster, using kubeadm, most likely to figure out where we would get the information to do this inside the documentation, which remember, you hav...
- Let's go ahead and search kubeadm, and there's going to be a guide on how to create a cluster with kubeadm.
- So to get there you go, under Production environment, installing Kubernetes deployment tools, boots driving a cluster, and then creating a cluster with kubeadm.
- So I'm gonna do copy this command, which is, this is going to enable it by modifying this k8s.com file and essentially enabling it in the file and then applying the CCTL params without reboot, which is by running this command.
- So we have the command for enabling IP forwarding.
- So we can then copy these commands and then we can just paste it into our terminal and that's going to enable those two features or functionalities on our server.
- So to create a service account, it's a very simple command.
- If I do kubectl get surface account, we should see the pvviewer.

## 8. Real-world scenarios
- For example, the Kubernetes control plane components itself run as pods within the cluster.
- Similarly, we may have priority databases, critical applications running on the cluster as well as lower priority workloads like background jobs.
- So once they're created, they're available to be configured on any port in any namespace.
- Now this range that I've just mentioned is for the applications and workloads that are deployed on the cluster.
- So the positive 1 billion to -2 billion number is for the applications or workloads that are deployed as apps on the cluster.
- And as you can see it currently lists the system cluster critical and system node critical classes.
- And if there is still resources available.
- So what you see here are the available resources on the cluster or the consumption of the resources on the cluster.
- And there are no more resources available on the cluster.
- But if you do not want it to kill or evict the existing workload, and instead wait for the cluster resources to free up, then you must set this preemption policy to never.

## 9. Pitfalls and misunderstandings
- Now, what if I don't specify a priority class name for a pod?
- But if you do not want it to kill or evict the existing workload, and instead wait for the cluster resources to free up, then you must set this preemption policy to never.
- So for this, if you don't remember how to create a storageclass off the top of your head, we can always just go to the documentation and just search for storageclass.
- I mean it's set to false so it doesn't matter, but we don't really need this configuration.
- We don't need that.
- Now I don't know how to do that off the top of my head, so it's always best to just consult the documentation.
- It's not gonna really make a difference 'cause the instructions don't say anything specifically about that, but we'll just say, "This is a lower priority class." So we can then save that.
- So we don't need anything that's egress related.
- So for this one I'm going to actually just create a YAML file 'cause I don't really know how to pass those flags in on the imperative command.
- It's telling us to inspect both the pvc and the pv and identify why the pvc is not being bound and to fix the issue so that the pvc successfully binds to the pv, do not modify the pv resource.

## 10. Troubleshooting angle
- And you could see that it deleted the old one, but then we got an error.
- So this error is expected and I recommend you read this error 'cause it tells us everything we need to know.
- So what is the issue?
- And now if we do kubectl apply question5-pod.yaml, we can see it's created, we'll do kubectl get pod -n low- priority and we can see it's running with no issues.
- All right, so it says that we've deployed a new pod called np-test-1 and a service called np-test-services, incoming connections to the service are not working, troubleshoot and fix it.
- And it tells us basically what we need to do to fix it, which is create a network policy by the name of ingress-nptest that allows incoming connections to this service over port 80.
- So we've now successfully fixed the issue.
- Okay, so for this question it says that there's a kubeconfig file called super.kubeconfig in the following location and it says there's something wrong with this con configuration, troubleshoot and fix it.
- Whenever there's a question where it says there's an issue and we need to fix it, always verify the issue first.
- Okay, and when I run this, let's see what error it does, unhandled error couldn't get current server API group list.

## 11. CKA / CKAD relevance
- For example, the Kubernetes control plane components itself run as pods within the cluster.
- Also note that it can only be defined in a single priority class, so the global default property can only be defined in a single priority class because you cannot have multiple default values, right?
- Instructor: In this video we're gonna walk through these solutions for all of the questions in mock exam three.
- To do this, what I always recommend is remembering that since we are in the process of creating a new cluster, using kubeadm, most likely to figure out where we would get the information to do this inside the documentation, which remember, you hav...
- And one little tip, I always recommend that you guys copy anytime it gives you a name, whether it's a name for a pod or a deployment, always copy it from the instructions because when you go to take the exam and it performs validation, it's going ...
- It's going to give us an example configuration.
- But you could, for these mock exams or for the actual exam, you can always just do kubectl, get deployment -o yaml, print it out and make whatever changes and then apply that.
- So we can get an example one.
- CKA/super.kubeconfig.
- So you wanna make sure you know where in the documentation you can get an example configuration so that you could just copy and paste it.

## 12. Source Contributions
- Matched Global Concepts:
  - Priority Classes (match score: 2, notes: 64)
  - Mock Exam - 3 - Solution _ (Optional) (match score: 1, notes: 485)
  - Configuring Scheduler Profiles (match score: 1, notes: 90)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 03_Scheduling: 154 note entries
  - certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams: 485 note entries
- Explicit Source Reference Samples:
  - section-maps/BATCH-003_section_concept_map.md | 075_Priority Classes.extraction.md | Entry 1 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 075_Priority Classes.extraction.md | Entry 2 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 075_Priority Classes.extraction.md | Entry 3 | Type Exam Tip
  - section-maps/BATCH-003_section_concept_map.md | 075_Priority Classes.extraction.md | Entry 4 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 075_Priority Classes.extraction.md | Entry 5 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 075_Priority Classes.extraction.md | Entry 6 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 075_Priority Classes.extraction.md | Entry 7 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 075_Priority Classes.extraction.md | Entry 8 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 075_Priority Classes.extraction.md | Entry 9 | Type Architecture
  - section-maps/BATCH-003_section_concept_map.md | 075_Priority Classes.extraction.md | Entry 10 | Type Implementation Step
  - section-maps/BATCH-003_section_concept_map.md | 075_Priority Classes.extraction.md | Entry 11 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 075_Priority Classes.extraction.md | Entry 12 | Type Implementation Step
  - section-maps/BATCH-003_section_concept_map.md | 075_Priority Classes.extraction.md | Entry 13 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 075_Priority Classes.extraction.md | Entry 14 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 075_Priority Classes.extraction.md | Entry 15 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 075_Priority Classes.extraction.md | Entry 16 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 075_Priority Classes.extraction.md | Entry 17 | Type Implementation Step
  - section-maps/BATCH-003_section_concept_map.md | 075_Priority Classes.extraction.md | Entry 18 | Type Implementation Step
  - section-maps/BATCH-003_section_concept_map.md | 075_Priority Classes.extraction.md | Entry 19 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 075_Priority Classes.extraction.md | Entry 20 | Type Concept

