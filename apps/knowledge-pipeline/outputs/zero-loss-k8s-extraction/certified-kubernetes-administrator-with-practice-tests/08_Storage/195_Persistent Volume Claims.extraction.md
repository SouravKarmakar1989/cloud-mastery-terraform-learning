# Extraction: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims

---

## Entry 1
Type: Implementation Step  

Content:
In the previous lecture, we created a persistent volume.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 195_Persistent Volume Claims
- File: 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 2
Type: Implementation Step  

Content:
Now we will try to create a persistent volume claim to make storage available to a pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 195_Persistent Volume Claims
- File: 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 3
Type: Concept  

Content:
Persistent volumes and persistent volume claims are two separate objects in the Kubernetes namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 195_Persistent Volume Claims
- File: 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 4
Type: Implementation Step  

Content:
An administrator creates a set of persistent volumes, and a user creates persistent volume claims to use the storage.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 195_Persistent Volume Claims
- File: 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 5
Type: Implementation Step  

Content:
Once the persistent volume claims are created, Kubernetes binds the persistent volumes to claims based on the request and properties set on the volume.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 195_Persistent Volume Claims
- File: 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 6
Type: Concept  

Content:
Every persistent volume claim is bound to a single persistent volume.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 195_Persistent Volume Claims
- File: 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 7
Type: Concept  

Content:
During the binding process, Kubernetes tries to find a persistent volume that has sufficient capacity as requested by the claim and any other request.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 195_Persistent Volume Claims
- File: 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 8
Type: Concept  

Content:
Properties such as access modes, volume modes, storage class, etc.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 195_Persistent Volume Claims
- File: 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 9
Type: Exam Tip  

Content:
However, if there are multiple possible matches for a single claim and you would like to specifically use a particular volume, you could still use labels and selectors to bind to the right volumes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 195_Persistent Volume Claims
- File: 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 10
Type: Concept  

Content:
Finally, note that a smaller claim may get bound to a larger volume if all the other criteria matches and there are no better options.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 195_Persistent Volume Claims
- File: 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 11
Type: Concept  

Content:
There is a 1 to 1 relationship between claims and volumes, so no other claims can utilize the remaining capacity in the volume.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 195_Persistent Volume Claims
- File: 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 12
Type: Concept  

Content:
If there are no volumes available, the persistent volume claim will remain in a pending state until newer volumes are made available to the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 195_Persistent Volume Claims
- File: 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 13
Type: Concept  

Content:
Once newer volumes are available.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 195_Persistent Volume Claims
- File: 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
The claim would automatically be bound to the newly available volume.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 195_Persistent Volume Claims
- File: 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Implementation Step  

Content:
Let us now create a persistent volume claim.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 195_Persistent Volume Claims
- File: 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 16
Type: Concept  

Content:
We start with a blank template.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 195_Persistent Volume Claims
- File: 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
Set the API version to v1 and kind to persistent volume claim.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 195_Persistent Volume Claims
- File: 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
We will name it my claim.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 195_Persistent Volume Claims
- File: 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
Under specification, set the access modes to read.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 195_Persistent Volume Claims
- File: 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
Write once and set resources to request the storage of 500MB.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 195_Persistent Volume Claims
- File: 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Implementation Step  

Content:
Create the claim using cube control.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 195_Persistent Volume Claims
- File: 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 22
Type: Implementation Step  

Content:
Create command to view the created claim.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 195_Persistent Volume Claims
- File: 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 23
Type: Concept  

Content:
Run the cube control.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 195_Persistent Volume Claims
- File: 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 24
Type: Concept  

Content:
Get persistent volume claim command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 195_Persistent Volume Claims
- File: 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 25
Type: Concept  

Content:
We see the claim in a pending state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 195_Persistent Volume Claims
- File: 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 26
Type: Implementation Step  

Content:
When the claim is created, Kubernetes looks at the volume created.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 195_Persistent Volume Claims
- File: 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
Previously.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 195_Persistent Volume Claims
- File: 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
The access modes match.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 195_Persistent Volume Claims
- File: 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 29
Type: Implementation Step  

Content:
The capacity requested is 500MB, but the volume is configured with one GB of storage.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 195_Persistent Volume Claims
- File: 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 30
Type: Concept  

Content:
Since there are no other volumes available, the persistent volume claim is bound to the persistent volume.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 195_Persistent Volume Claims
- File: 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 31
Type: Implementation Step  

Content:
When we run the Get volumes command again, we see the claim is bound to the persistent volume we created.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 195_Persistent Volume Claims
- File: 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 32
Type: Concept  

Content:
Perfect.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 195_Persistent Volume Claims
- File: 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 33
Type: Concept  

Content:
To delete a PVC we run the kubectl delete persistent volume claim command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 195_Persistent Volume Claims
- File: 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 34
Type: Concept  

Content:
But what happens to the underlying persistent volume when the claim is deleted?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 195_Persistent Volume Claims
- File: 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 35
Type: Concept  

Content:
You can choose what is to happen to the volume.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 195_Persistent Volume Claims
- File: 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 36
Type: Concept  

Content:
By default, it is set to retain meaning the persistent volume will remain until it is manually deleted by the administrator.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 195_Persistent Volume Claims
- File: 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 37
Type: Concept  

Content:
It is not available for reuse by any other claims.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 195_Persistent Volume Claims
- File: 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
Or it can be deleted automatically this way, as soon as the claim is deleted, the volume will be deleted as well, or a third option is to recycle.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 195_Persistent Volume Claims
- File: 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
In this case, the data in the volume will be scrubbed before making it available to other claims.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 195_Persistent Volume Claims
- File: 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 40
Type: Warning/Pitfall  

Content:
However, note that this is an older option and is deprecated now because the Recycle controller originally did a best effort wipe by launching a tiny recycler pod that mounted the volume and ran a shell command like rm rf Scrub star to clear files.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 195_Persistent Volume Claims
- File: 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 41
Type: Concept  

Content:
It basically tried to do the admins manual cleanup for you with a simple file level delete.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 195_Persistent Volume Claims
- File: 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 42
Type: Concept  

Content:
But this isn't sufficient in practice.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 195_Persistent Volume Claims
- File: 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 43
Type: Concept  

Content:
It didn't guarantee secure erasure, didn't handle snapshots, or provide provider metadata, and only worked for certain entry volume plugins on cloud or block backends like EBS, Google Cloud, Azure Disk, or network storage like NFS or Sis drivers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 195_Persistent Volume Claims
- File: 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
Proper cleanup can involve unmount, detach, file system, reformat, snapshot, retain policy handling, encryption, key rotation, or provider level delete calls.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 195_Persistent Volume Claims
- File: 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
A plain rm rf leaves a inode metadata and may fail under permissions.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 195_Persistent Volume Claims
- File: 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 46
Type: Concept  

Content:
Because of these portability and security gaps, Kubernetes moved to a newer model.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 195_Persistent Volume Claims
- File: 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 47
Type: Implementation Step  

Content:
The modern approach is dynamic provisioning with a storage class and CSI drivers, which we will discuss next.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 195_Persistent Volume Claims
- File: 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 48
Type: Concept  

Content:
Well, that's it for this lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 195_Persistent Volume Claims
- File: 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 49
Type: Troubleshooting  

Content:
Head over to the labs and practice configuring and troubleshooting persistent volumes and volume claims in Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 195_Persistent Volume Claims
- File: 195_Persistent Volume Claims.txt
- Topic: Persistent Volume Claims
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---
