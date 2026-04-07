# Normalized Concept: Persistent Volumes

- Concept Key: persistent-volumes
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 1558

## 1. Definition
- -: Let us now review the lab on storage class.
- Let's do a queue code to get storage class.
- So we see one, we can also do a SC to the storage classes.
- So that's the short form.
- We see that there's just one storage class.
- So let's select one.
- How about now?
- How many storage classes exist in the cluster?
- So let's try it again.
- And we see that there are three setting things up.

## 2. First-Principles Mental Model
- So the first question is how many storage classes exist in the cluster?
- We just created a few more.
- So for this the volume binding mode is wait for first consumer.
- So we need to create a PVC with the name local PVC.
- So we're gonna create PVC.YAML with all that information.
- Let's create the PVC.
- Let's make sure it's created.
- Now what is the status of the newly created persistent volume claim?
- So then why is it that it was not created?
- And here we see that the reason is that it's waiting for first consumer, waiting for the first consumer to be created before binding.

## 3. Why This Exists
- Let's do a queue code to get storage class.
- So we see one, we can also do a SC to the storage classes.
- So that's the short form.
- So that's the provisioner.
- So that's the storage class that does not support dynamic volume provisioning.
- So that's local storage.
- So create a persistent volume claim by the name of local PVC that should bind to the volume local PV.
- So we need to create a PVC with the name local PVC.
- And if it is to bind to the PV they must have capacity, which is, yeah, 500 megabytes.
- So that's correct.

## 4. Internal Working
- So the first question is how many storage classes exist in the cluster?
- We just created a few more.
- So for this the volume binding mode is wait for first consumer.
- So we need to create a PVC with the name local PVC.
- So we're gonna create PVC.YAML with all that information.
- Let's create the PVC.
- Let's make sure it's created.
- Now what is the status of the newly created persistent volume claim?
- So then why is it that it was not created?
- And here we see that the reason is that it's waiting for first consumer, waiting for the first consumer to be created before binding.
- So as we discussed, the wait for first consumer means that it's not going to bind to a PV if it's not used.
- So the storage class called local storage makes use of volume binding mode set to wait for first consumer.

## 5. Key Objects / Fields / Relationships
- -: Let us now review the lab on storage class.
- So the first question is how many storage classes exist in the cluster?
- Let's do a queue code to get storage class.
- So we see one, we can also do a SC to the storage classes.
- We see that there's just one storage class.
- How many storage classes exist in the cluster?
- So what is the name of the storage class that does not support dynamic volume provisioning?
- So we know that the provisionary is what defines how the storage class volumes are provisioned.
- So the no provisioner is one that does not support dynamic volume provisioning.
- So that's the storage class that does not support dynamic volume provisioning.

## 6. YAML Deep Dive
- So we're gonna create PVC.YAML with all that information.
- We don't need to specify the volume mode for now.
- So the volume is on the spec level at the pod and the volume mount is inside the container.
- So if the question does not ask you to use a specific name, you can use any name.
- So create a new storage called storage class called delayed volume SC that makes use of the below specs provisioner and volume binding mode.
- So, we have deployed a pod, inspect the pod, and wait for it to start running.
- And we have to specify where it's gonna be mounted to.
- And then we have to specify where it's going to mount to it.
- So, under volume mounts we have the mount path and we're gonna specify the name of the volume and it's gonna mount that here.
- Okay, so, the next task is to create a persistent volume with the given specification.

## 7. kubectl / command usage
- So, for this, in order to view a file within the pod we'll do kubectl exec, and provide the pod name, and then the command.
- So, we'll do kubectl edit on web app.
- So, we're gonna do a kubectl replace force.
- Okay, now we're gonna do a kubectl create minus half bc.
- Lets do a kubectl get pv.
- So, let's see, kubectl get pv pv-log.
- Let's do that. kubectl pvc delete pvc claim log one.
- So, let's do a kubectl get pvc.
- Now for question one, you can see that it says that you are an administrator preparing your environment to deploy a Kubernetes cluster using kubeadm.
- To do this, what I always recommend is remembering that since we are in the process of creating a new cluster, using kubeadm, most likely to figure out where we would get the information to do this inside the documentation, which remember, you hav...

## 8. Real-world scenarios
- -: Let us now review the lab on storage class.
- So the first question is how many storage classes exist in the cluster?
- How many storage classes exist in the cluster?
- And here you have example of using a claim as volume.
- So that's the end of this lab.
- -: Okay, so let's go through the lab on persistent volumes and persistent volume claims.
- So, we have deployed a pod, inspect the pod, and wait for it to start running.
- So, the logs of the pod are now available on the host at this particular path.
- It is available.
- So, it's in an available state.

## 9. Pitfalls and misunderstandings
- We don't need the the selectors.
- We don't need to specify the volume mode for now.
- We don't need volume mode.
- So, we don't need the advanced selectors.
- We don't need a volume mode, and the storage is gonna be 50 Mi.
- So, we don't need these lines.
- So for this, if you don't remember how to create a storageclass off the top of your head, we can always just go to the documentation and just search for storageclass.
- I mean it's set to false so it doesn't matter, but we don't really need this configuration.
- We don't need that.
- Now I don't know how to do that off the top of my head, so it's always best to just consult the documentation.

## 10. Troubleshooting angle
- Okay, make sure to fix the format.
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
- And here you have example of using a claim as volume.
- Instructor: In this video we're gonna walk through these solutions for all of the questions in mock exam three.
- To do this, what I always recommend is remembering that since we are in the process of creating a new cluster, using kubeadm, most likely to figure out where we would get the information to do this inside the documentation, which remember, you hav...
- And one little tip, I always recommend that you guys copy anytime it gives you a name, whether it's a name for a pod or a deployment, always copy it from the instructions because when you go to take the exam and it performs validation, it's going ...
- It's going to give us an example configuration.
- But you could, for these mock exams or for the actual exam, you can always just do kubectl, get deployment -o yaml, print it out and make whatever changes and then apply that.
- So we can get an example one.
- CKA/super.kubeconfig.
- So you wanna make sure you know where in the documentation you can get an example configuration so that you could just copy and paste it.
- And that's going to wrap up this mock exam.

## 12. Source Contributions
- Matched Global Concepts:
  - Lab Solution - Storage Class (match score: 3, notes: 125)
  - Solution - Persistent Volume and Persistent Volume Claims (Optional) (match score: 3, notes: 201)
  - Mock Exam - 3 - Solution _ (Optional) (match score: 3, notes: 485)
  - Lab Solution - Persistent Volumes and Persistent Volume Claims (match score: 3, notes: 186)
  - Persistent Volume Claims (match score: 3, notes: 95)
  - Persistent Volumes (match score: 3, notes: 59)
  - Solution - Mock Exam -1 (Optional) (match score: 3, notes: 344)
  - Time Management (match score: 3, notes: 63)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 08_Storage: 390 note entries
  - certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams: 829 note entries
  - certified-kubernetes-application-developer / 08_State Persistence: 276 note entries
  - certified-kubernetes-application-developer / 13_Certification Tips: 63 note entries
- Explicit Source Reference Samples:
  - ../../../../build/intermediate/section-maps/BATCH-008_section_concept_map.md | 203_Lab Solution - Storage Class.extraction.md | Entry 1 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-008_section_concept_map.md | 203_Lab Solution - Storage Class.extraction.md | Entry 2 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-008_section_concept_map.md | 203_Lab Solution - Storage Class.extraction.md | Entry 3 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-008_section_concept_map.md | 203_Lab Solution - Storage Class.extraction.md | Entry 4 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-008_section_concept_map.md | 203_Lab Solution - Storage Class.extraction.md | Entry 5 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-008_section_concept_map.md | 203_Lab Solution - Storage Class.extraction.md | Entry 6 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-008_section_concept_map.md | 203_Lab Solution - Storage Class.extraction.md | Entry 7 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-008_section_concept_map.md | 203_Lab Solution - Storage Class.extraction.md | Entry 8 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-008_section_concept_map.md | 203_Lab Solution - Storage Class.extraction.md | Entry 9 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-008_section_concept_map.md | 203_Lab Solution - Storage Class.extraction.md | Entry 10 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-008_section_concept_map.md | 203_Lab Solution - Storage Class.extraction.md | Entry 11 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-008_section_concept_map.md | 203_Lab Solution - Storage Class.extraction.md | Entry 12 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-008_section_concept_map.md | 203_Lab Solution - Storage Class.extraction.md | Entry 13 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-008_section_concept_map.md | 203_Lab Solution - Storage Class.extraction.md | Entry 14 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-008_section_concept_map.md | 203_Lab Solution - Storage Class.extraction.md | Entry 15 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-008_section_concept_map.md | 203_Lab Solution - Storage Class.extraction.md | Entry 16 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-008_section_concept_map.md | 203_Lab Solution - Storage Class.extraction.md | Entry 17 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-008_section_concept_map.md | 203_Lab Solution - Storage Class.extraction.md | Entry 18 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-008_section_concept_map.md | 203_Lab Solution - Storage Class.extraction.md | Entry 19 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-008_section_concept_map.md | 203_Lab Solution - Storage Class.extraction.md | Entry 20 | Type Concept

