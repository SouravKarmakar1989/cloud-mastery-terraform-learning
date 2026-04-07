# Normalized Concept: CSI

- Concept Key: csi
- Matched Global Concept Blocks: 2
- Source-backed Note Entries Used: 128

## 1. Definition
- Let us now look at the container storage interface.
- Similarly, as we saw in the networking lectures to extend support for different networking solutions, the container networking interface was introduced now.
- Any new networking vendors could simply develop their plugin based on the CNI standards and make their solution work with Kubernetes.
- You can now write your own drivers for your own storage to work with.
- Kubernetes.
- Portworx.
- Amazon EBS.
- Azure disk.
- Dell EMC Isilon Powermax.
- Unity.

## 2. First-Principles Mental Model
- In the past, Kubernetes used container D alone as the container runtime engine, and all the code to work with container D was embedded within the Kubernetes source code, with other container runtimes coming in, such as rocket and Cri-o.
- It was important to open up and extend support to work with different container runtimes, and not be dependent on the Kubernetes source code.
- And that's how Container Runtime Interface came to be.
- The container runtime interface is a standard that defines how an orchestration solution like Kubernetes would communicate with container runtimes like Docker.
- So in the future, if any new container runtime interface is developed, they can simply follow the CRI standards, and that new container runtime would work with Kubernetes without really having to work with Kubernetes team of developers, or touch t...
- I'll see you in the next lecture.
- In the previous lecture, we created a persistent volume.
- Now we will try to create a persistent volume claim to make storage available to a pod.
- An administrator creates a set of persistent volumes, and a user creates persistent volume claims to use the storage.
- Once the persistent volume claims are created, Kubernetes binds the persistent volumes to claims based on the request and properties set on the volume.

## 3. Why This Exists
- In the past, Kubernetes used container D alone as the container runtime engine, and all the code to work with container D was embedded within the Kubernetes source code, with other container runtimes coming in, such as rocket and Cri-o.
- It was important to open up and extend support to work with different container runtimes, and not be dependent on the Kubernetes source code.
- And that's how Container Runtime Interface came to be.
- So in the future, if any new container runtime interface is developed, they can simply follow the CRI standards, and that new container runtime would work with Kubernetes without really having to work with Kubernetes team of developers, or touch t...
- Similarly, as we saw in the networking lectures to extend support for different networking solutions, the container networking interface was introduced now.
- And as you can guess, the container storage interface was developed to support multiple storage solutions with CSI.
- You can now write your own drivers for your own storage to work with.
- It is meant to be a universal standard and if implemented, allows any container orchestration tool to work with any storage vendor with a supported plugin.
- Similarly, container orchestrator should call the delete volume RPC when a volume is to be deleted, and the storage driver should implement the code to decommission the volume from the array when that call is made.
- So that's about it for now.

## 4. Internal Working
- In the past, Kubernetes used container D alone as the container runtime engine, and all the code to work with container D was embedded within the Kubernetes source code, with other container runtimes coming in, such as rocket and Cri-o.
- It was important to open up and extend support to work with different container runtimes, and not be dependent on the Kubernetes source code.
- And that's how Container Runtime Interface came to be.
- The container runtime interface is a standard that defines how an orchestration solution like Kubernetes would communicate with container runtimes like Docker.
- So in the future, if any new container runtime interface is developed, they can simply follow the CRI standards, and that new container runtime would work with Kubernetes without really having to work with Kubernetes team of developers, or touch t...
- I'll see you in the next lecture.
- In the previous lecture, we created a persistent volume.
- Now we will try to create a persistent volume claim to make storage available to a pod.
- An administrator creates a set of persistent volumes, and a user creates persistent volume claims to use the storage.
- Once the persistent volume claims are created, Kubernetes binds the persistent volumes to claims based on the request and properties set on the volume.
- Let us now create a persistent volume claim.
- Create the claim using cube control.

## 5. Key Objects / Fields / Relationships
- For example, CSI says that when a pod is created and requires a volume, the container orchestrator in this case Kubernetes should call the create volume RPC and pass a set of details such as the volume name.
- The storage driver should implement this RPC and handle that request, and provision a new volume on the storage array and return the results of the operation.
- Similarly, container orchestrator should call the delete volume RPC when a volume is to be deleted, and the storage driver should implement the code to decommission the volume from the array when that call is made.
- In the previous lecture, we created a persistent volume.
- Now we will try to create a persistent volume claim to make storage available to a pod.
- Persistent volumes and persistent volume claims are two separate objects in the Kubernetes namespace.
- An administrator creates a set of persistent volumes, and a user creates persistent volume claims to use the storage.
- Once the persistent volume claims are created, Kubernetes binds the persistent volumes to claims based on the request and properties set on the volume.
- Every persistent volume claim is bound to a single persistent volume.
- During the binding process, Kubernetes tries to find a persistent volume that has sufficient capacity as requested by the claim and any other request.

## 6. YAML Deep Dive
- Note that CSI is not a Kubernetes specific standard.
- So here's what the CSI kind of looks like.
- And the specification details exactly what parameters should be sent by the caller, what should be received by the solution, and what error codes should be exchanged.
- If you're interested, you can view all these details in the CSI specification on GitHub at this URL.
- However, if there are multiple possible matches for a single claim and you would like to specifically use a particular volume, you could still use labels and selectors to bind to the right volumes.
- Set the API version to v1 and kind to persistent volume claim.
- Under specification, set the access modes to read.
- It didn't guarantee secure erasure, didn't handle snapshots, or provide provider metadata, and only worked for certain entry volume plugins on cloud or block backends like EBS, Google Cloud, Azure Disk, or network storage like NFS or Sis drivers.
- A plain rm rf leaves a inode metadata and may fail under permissions.
- We start with a blank template, set the API version to v1, and kind to persistent volume claim.

## 7. kubectl / command usage
- Create command to view the created claim.
- Get persistent volume claim command.
- When we run the Get volumes command again, we see the claim is bound to the persistent volume we created.
- To delete a PVC we run the kubectl delete persistent volume claim command.
- However, note that this is an older option and is deprecated now because the Recycle controller originally did a best effort wipe by launching a tiny recycler pod that mounted the volume and ran a shell command like rm rf Scrub star to clear files.

## 8. Real-world scenarios
- So in the future, if any new container runtime interface is developed, they can simply follow the CRI standards, and that new container runtime would work with Kubernetes without really having to work with Kubernetes team of developers, or touch t...
- For example, CSI says that when a pod is created and requires a volume, the container orchestrator in this case Kubernetes should call the create volume RPC and pass a set of details such as the volume name.
- Now we will try to create a persistent volume claim to make storage available to a pod.
- However, if there are multiple possible matches for a single claim and you would like to specifically use a particular volume, you could still use labels and selectors to bind to the right volumes.
- If there are no volumes available, the persistent volume claim will remain in a pending state until newer volumes are made available to the cluster.
- Once newer volumes are available.
- The claim would automatically be bound to the newly available volume.
- Since there are no other volumes available, the persistent volume claim is bound to the persistent volume.
- It is not available for reuse by any other claims.
- In this case, the data in the volume will be scrubbed before making it available to other claims.

## 9. Pitfalls and misunderstandings
- However, note that this is an older option and is deprecated now because the Recycle controller originally did a best effort wipe by launching a tiny recycler pod that mounted the volume and ran a shell command like rm rf Scrub star to clear files.

## 10. Troubleshooting angle
- And the specification details exactly what parameters should be sent by the caller, what should be received by the solution, and what error codes should be exchanged.
- Head over to the labs and practice configuring and troubleshooting persistent volumes and volume claims in Kubernetes.

## 11. CKA / CKAD relevance
- And as you can guess, the container storage interface was developed to support multiple storage solutions with CSI.
- However, if there are multiple possible matches for a single claim and you would like to specifically use a particular volume, you could still use labels and selectors to bind to the right volumes.

## 12. Source Contributions
- Matched Global Concepts:
  - Container Storage Interface (match score: 2, notes: 33)
  - Persistent Volume Claims (match score: 1, notes: 95)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 08_Storage: 82 note entries
  - certified-kubernetes-application-developer / 08_State Persistence: 46 note entries
- Explicit Source Reference Samples:
  - ../../../../build/intermediate/section-maps/BATCH-008_section_concept_map.md | 192_Container Storage Interface.extraction.md | Entry 1 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-008_section_concept_map.md | 192_Container Storage Interface.extraction.md | Entry 2 | Type Operational Insight
  - ../../../../build/intermediate/section-maps/BATCH-008_section_concept_map.md | 192_Container Storage Interface.extraction.md | Entry 3 | Type Operational Insight
  - ../../../../build/intermediate/section-maps/BATCH-008_section_concept_map.md | 192_Container Storage Interface.extraction.md | Entry 4 | Type Operational Insight
  - ../../../../build/intermediate/section-maps/BATCH-008_section_concept_map.md | 192_Container Storage Interface.extraction.md | Entry 5 | Type Operational Insight
  - ../../../../build/intermediate/section-maps/BATCH-008_section_concept_map.md | 192_Container Storage Interface.extraction.md | Entry 6 | Type Operational Insight
  - ../../../../build/intermediate/section-maps/BATCH-008_section_concept_map.md | 192_Container Storage Interface.extraction.md | Entry 7 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-008_section_concept_map.md | 192_Container Storage Interface.extraction.md | Entry 8 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-008_section_concept_map.md | 192_Container Storage Interface.extraction.md | Entry 9 | Type Exam Tip
  - ../../../../build/intermediate/section-maps/BATCH-008_section_concept_map.md | 192_Container Storage Interface.extraction.md | Entry 10 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-008_section_concept_map.md | 192_Container Storage Interface.extraction.md | Entry 11 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-008_section_concept_map.md | 192_Container Storage Interface.extraction.md | Entry 12 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-008_section_concept_map.md | 192_Container Storage Interface.extraction.md | Entry 13 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-008_section_concept_map.md | 192_Container Storage Interface.extraction.md | Entry 14 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-008_section_concept_map.md | 192_Container Storage Interface.extraction.md | Entry 15 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-008_section_concept_map.md | 192_Container Storage Interface.extraction.md | Entry 16 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-008_section_concept_map.md | 192_Container Storage Interface.extraction.md | Entry 17 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-008_section_concept_map.md | 192_Container Storage Interface.extraction.md | Entry 18 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-008_section_concept_map.md | 192_Container Storage Interface.extraction.md | Entry 19 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-008_section_concept_map.md | 192_Container Storage Interface.extraction.md | Entry 20 | Type Concept

