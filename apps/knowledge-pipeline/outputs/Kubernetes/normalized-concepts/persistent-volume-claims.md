# Normalized Concept: Persistent Volume Claims

- Concept Key: persistent-volume-claims
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 1359

## 1. Definition
- Persistent volumes and persistent volume claims are two separate objects in the Kubernetes namespace.
- Every persistent volume claim is bound to a single persistent volume.
- During the binding process, Kubernetes tries to find a persistent volume that has sufficient capacity as requested by the claim and any other request.
- Properties such as access modes, volume modes, storage class, etc.
- Finally, note that a smaller claim may get bound to a larger volume if all the other criteria matches and there are no better options.
- There is a 1 to 1 relationship between claims and volumes, so no other claims can utilize the remaining capacity in the volume.
- If there are no volumes available, the persistent volume claim will remain in a pending state until newer volumes are made available to the cluster.
- Once newer volumes are available.
- The claim would automatically be bound to the newly available volume.
- We start with a blank template.

## 2. First-Principles Mental Model
- In the previous lecture, we created a persistent volume.
- Now we will try to create a persistent volume claim to make storage available to a pod.
- An administrator creates a set of persistent volumes, and a user creates persistent volume claims to use the storage.
- Once the persistent volume claims are created, Kubernetes binds the persistent volumes to claims based on the request and properties set on the volume.
- Let us now create a persistent volume claim.
- Create the claim using cube control.
- Create command to view the created claim.
- When the claim is created, Kubernetes looks at the volume created.
- The capacity requested is 500MB, but the volume is configured with one GB of storage.
- When we run the Get volumes command again, we see the claim is bound to the persistent volume we created.

## 3. Why This Exists
- Now we will try to create a persistent volume claim to make storage available to a pod.
- An administrator creates a set of persistent volumes, and a user creates persistent volume claims to use the storage.
- Once the persistent volume claims are created, Kubernetes binds the persistent volumes to claims based on the request and properties set on the volume.
- Every persistent volume claim is bound to a single persistent volume.
- During the binding process, Kubernetes tries to find a persistent volume that has sufficient capacity as requested by the claim and any other request.
- However, if there are multiple possible matches for a single claim and you would like to specifically use a particular volume, you could still use labels and selectors to bind to the right volumes.
- Finally, note that a smaller claim may get bound to a larger volume if all the other criteria matches and there are no better options.
- There is a 1 to 1 relationship between claims and volumes, so no other claims can utilize the remaining capacity in the volume.
- If there are no volumes available, the persistent volume claim will remain in a pending state until newer volumes are made available to the cluster.
- The claim would automatically be bound to the newly available volume.

## 4. Internal Working
- In the previous lecture, we created a persistent volume.
- Now we will try to create a persistent volume claim to make storage available to a pod.
- An administrator creates a set of persistent volumes, and a user creates persistent volume claims to use the storage.
- Once the persistent volume claims are created, Kubernetes binds the persistent volumes to claims based on the request and properties set on the volume.
- Let us now create a persistent volume claim.
- Create the claim using cube control.
- Create command to view the created claim.
- When the claim is created, Kubernetes looks at the volume created.
- The capacity requested is 500MB, but the volume is configured with one GB of storage.
- When we run the Get volumes command again, we see the claim is bound to the persistent volume we created.
- The modern approach is dynamic provisioning with a storage class and CSI drivers, which we will discuss next.
- When the claim is created, Kubernetes looks at the volume created previously.

## 5. Key Objects / Fields / Relationships
- In the previous lecture, we created a persistent volume.
- Now we will try to create a persistent volume claim to make storage available to a pod.
- Persistent volumes and persistent volume claims are two separate objects in the Kubernetes namespace.
- An administrator creates a set of persistent volumes, and a user creates persistent volume claims to use the storage.
- Once the persistent volume claims are created, Kubernetes binds the persistent volumes to claims based on the request and properties set on the volume.
- Every persistent volume claim is bound to a single persistent volume.
- During the binding process, Kubernetes tries to find a persistent volume that has sufficient capacity as requested by the claim and any other request.
- Properties such as access modes, volume modes, storage class, etc.
- However, if there are multiple possible matches for a single claim and you would like to specifically use a particular volume, you could still use labels and selectors to bind to the right volumes.
- Finally, note that a smaller claim may get bound to a larger volume if all the other criteria matches and there are no better options.

## 6. YAML Deep Dive
- However, if there are multiple possible matches for a single claim and you would like to specifically use a particular volume, you could still use labels and selectors to bind to the right volumes.
- Set the API version to v1 and kind to persistent volume claim.
- Under specification, set the access modes to read.
- It didn't guarantee secure erasure, didn't handle snapshots, or provide provider metadata, and only worked for certain entry volume plugins on cloud or block backends like EBS, Google Cloud, Azure Disk, or network storage like NFS or Sis drivers.
- A plain rm rf leaves a inode metadata and may fail under permissions.
- We start with a blank template, set the API version to v1, and kind to persistent volume claim.
- We will name it my claim under specification.
- It didn't guarantee secure erasure, didn't handle snapshots, or provide provider metadata, and only worked for certain entry volume plugins on cloud or block backends like EBS, Google Cloud PD, Azure Disk, or an network storage like NFS or Sis dri...
- So we're gonna create PVC.YAML with all that information.
- We don't need to specify the volume mode for now.

## 7. kubectl / command usage
- Create command to view the created claim.
- Get persistent volume claim command.
- When we run the Get volumes command again, we see the claim is bound to the persistent volume we created.
- To delete a PVC we run the kubectl delete persistent volume claim command.
- However, note that this is an older option and is deprecated now because the Recycle controller originally did a best effort wipe by launching a tiny recycler pod that mounted the volume and ran a shell command like rm rf Scrub star to clear files.
- So, for this, in order to view a file within the pod we'll do kubectl exec, and provide the pod name, and then the command.
- So, we'll do kubectl edit on web app.
- So, we're gonna do a kubectl replace force.
- Okay, now we're gonna do a kubectl create minus half bc.
- Lets do a kubectl get pv.

## 8. Real-world scenarios
- Now we will try to create a persistent volume claim to make storage available to a pod.
- However, if there are multiple possible matches for a single claim and you would like to specifically use a particular volume, you could still use labels and selectors to bind to the right volumes.
- If there are no volumes available, the persistent volume claim will remain in a pending state until newer volumes are made available to the cluster.
- Once newer volumes are available.
- The claim would automatically be bound to the newly available volume.
- Since there are no other volumes available, the persistent volume claim is bound to the persistent volume.
- It is not available for reuse by any other claims.
- In this case, the data in the volume will be scrubbed before making it available to other claims.
- But this isn't sufficient in practice.
- Head over to the labs and practice configuring and troubleshooting persistent volumes and volume claims in Kubernetes.

## 9. Pitfalls and misunderstandings
- However, note that this is an older option and is deprecated now because the Recycle controller originally did a best effort wipe by launching a tiny recycler pod that mounted the volume and ran a shell command like rm rf Scrub star to clear files.
- We don't need the the selectors.
- We don't need to specify the volume mode for now.
- We don't need volume mode.
- So, we don't need the advanced selectors.
- We don't need a volume mode, and the storage is gonna be 50 Mi.
- So, we don't need these lines.
- We don't need volume mode, we have access mode.
- We don't have, we don't need a volume mode and the storage is gonna be 50 mi.
- And we have claim name, so we don't need these lines.

## 10. Troubleshooting angle
- Head over to the labs and practice configuring and troubleshooting persistent volumes and volume claims in Kubernetes.
- Okay, make sure to fix the format.
- And you could see that it deleted the old one, but then we got an error.
- So this error is expected and I recommend you read this error 'cause it tells us everything we need to know.
- So what is the issue?
- And now if we do kubectl apply question5-pod.yaml, we can see it's created, we'll do kubectl get pod -n low- priority and we can see it's running with no issues.
- All right, so it says that we've deployed a new pod called np-test-1 and a service called np-test-services, incoming connections to the service are not working, troubleshoot and fix it.
- And it tells us basically what we need to do to fix it, which is create a network policy by the name of ingress-nptest that allows incoming connections to this service over port 80.
- So we've now successfully fixed the issue.
- Okay, so for this question it says that there's a kubeconfig file called super.kubeconfig in the following location and it says there's something wrong with this con configuration, troubleshoot and fix it.

## 11. CKA / CKAD relevance
- However, if there are multiple possible matches for a single claim and you would like to specifically use a particular volume, you could still use labels and selectors to bind to the right volumes.
- And here you have example of using a claim as volume.
- Now, that is possible if that is what is desired as in you really want multiple pods or multiple instances of your application to share and access the same storage.
- Note that, not all storage types support that operation read or write from multiple instances at the same time.
- So you can specify multiple templates here.
- Instructor: In this video we're gonna walk through these solutions for all of the questions in mock exam three.
- To do this, what I always recommend is remembering that since we are in the process of creating a new cluster, using kubeadm, most likely to figure out where we would get the information to do this inside the documentation, which remember, you hav...
- And one little tip, I always recommend that you guys copy anytime it gives you a name, whether it's a name for a pod or a deployment, always copy it from the instructions because when you go to take the exam and it performs validation, it's going ...
- It's going to give us an example configuration.
- But you could, for these mock exams or for the actual exam, you can always just do kubectl, get deployment -o yaml, print it out and make whatever changes and then apply that.

## 12. Source Contributions
- Matched Global Concepts:
  - Persistent Volume Claims (match score: 3, notes: 95)
  - Lab Solution - Storage Class (match score: 3, notes: 125)
  - Solution - Persistent Volume and Persistent Volume Claims (Optional) (match score: 3, notes: 201)
  - Lab Solution - Persistent Volumes and Persistent Volume Claims (match score: 3, notes: 186)
  - Storage in StatefulSets (match score: 3, notes: 41)
  - Mock Exam - 3 - Solution _ (Optional) (match score: 2, notes: 485)
  - Helm - Introduction (match score: 2, notes: 112)
  - Lab Solution - Cluster Roles (match score: 2, notes: 114)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 07_Security: 114 note entries
  - certified-kubernetes-administrator-with-practice-tests / 08_Storage: 360 note entries
  - certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics: 49 note entries
  - certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams: 485 note entries
  - certified-kubernetes-application-developer / 08_State Persistence: 288 note entries
  - certified-kubernetes-application-developer / 10_Helm Fundamentals: 63 note entries
- Explicit Source Reference Samples:
  - section-maps/BATCH-008_section_concept_map.md | 195_Persistent Volume Claims.extraction.md | Entry 1 | Type Implementation Step
  - section-maps/BATCH-008_section_concept_map.md | 195_Persistent Volume Claims.extraction.md | Entry 2 | Type Implementation Step
  - section-maps/BATCH-008_section_concept_map.md | 195_Persistent Volume Claims.extraction.md | Entry 3 | Type Concept
  - section-maps/BATCH-008_section_concept_map.md | 195_Persistent Volume Claims.extraction.md | Entry 4 | Type Implementation Step
  - section-maps/BATCH-008_section_concept_map.md | 195_Persistent Volume Claims.extraction.md | Entry 5 | Type Implementation Step
  - section-maps/BATCH-008_section_concept_map.md | 195_Persistent Volume Claims.extraction.md | Entry 6 | Type Concept
  - section-maps/BATCH-008_section_concept_map.md | 195_Persistent Volume Claims.extraction.md | Entry 7 | Type Concept
  - section-maps/BATCH-008_section_concept_map.md | 195_Persistent Volume Claims.extraction.md | Entry 8 | Type Concept
  - section-maps/BATCH-008_section_concept_map.md | 195_Persistent Volume Claims.extraction.md | Entry 9 | Type Exam Tip
  - section-maps/BATCH-008_section_concept_map.md | 195_Persistent Volume Claims.extraction.md | Entry 10 | Type Concept
  - section-maps/BATCH-008_section_concept_map.md | 195_Persistent Volume Claims.extraction.md | Entry 11 | Type Concept
  - section-maps/BATCH-008_section_concept_map.md | 195_Persistent Volume Claims.extraction.md | Entry 12 | Type Concept
  - section-maps/BATCH-008_section_concept_map.md | 195_Persistent Volume Claims.extraction.md | Entry 13 | Type Concept
  - section-maps/BATCH-008_section_concept_map.md | 195_Persistent Volume Claims.extraction.md | Entry 14 | Type Concept
  - section-maps/BATCH-008_section_concept_map.md | 195_Persistent Volume Claims.extraction.md | Entry 15 | Type Implementation Step
  - section-maps/BATCH-008_section_concept_map.md | 195_Persistent Volume Claims.extraction.md | Entry 16 | Type Concept
  - section-maps/BATCH-008_section_concept_map.md | 195_Persistent Volume Claims.extraction.md | Entry 17 | Type Concept
  - section-maps/BATCH-008_section_concept_map.md | 195_Persistent Volume Claims.extraction.md | Entry 18 | Type Concept
  - section-maps/BATCH-008_section_concept_map.md | 195_Persistent Volume Claims.extraction.md | Entry 19 | Type Concept
  - section-maps/BATCH-008_section_concept_map.md | 195_Persistent Volume Claims.extraction.md | Entry 20 | Type Concept

