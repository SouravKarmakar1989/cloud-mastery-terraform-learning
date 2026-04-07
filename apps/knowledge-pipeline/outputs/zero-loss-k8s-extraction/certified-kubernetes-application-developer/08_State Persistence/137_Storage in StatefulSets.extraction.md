# Extraction: certified-kubernetes-application-developer / 08_State Persistence / 137_Storage in StatefulSets

---

## Entry 1
Type: Concept  

Content:
Instructor: This lecture, we will talk about storage in stateful sets.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 137_Storage in StatefulSets
- File: 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
Before I begin, let me quickly recap what we know already about storage in Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 137_Storage in StatefulSets
- File: 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
It's only going to take a minute, so bear with me.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 137_Storage in StatefulSets
- File: 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
And I think this is important.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 137_Storage in StatefulSets
- File: 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
Earlier we discussed that with persistent volumes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 137_Storage in StatefulSets
- File: 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Implementation Step  

Content:
We create volume objects and Kubernetes which are then claimed by persistent volume claims and finally used in pod definition files within pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 137_Storage in StatefulSets
- File: 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
Now, that's a single persistent volume mapped to a single persistent volume claim to a single pod definition file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 137_Storage in StatefulSets
- File: 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Implementation Step  

Content:
Now with dynamic provisioning we then said with storage class definition we take out the manual creation of persistent volumes and use storage provisioners to automatically provision volume on cloud providers.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 137_Storage in StatefulSets
- File: 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Implementation Step  

Content:
Now the PV is created automatically.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 137_Storage in StatefulSets
- File: 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Implementation Step  

Content:
We still create a PVC manually and associate that to a pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 137_Storage in StatefulSets
- File: 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
Now this works just fine for a pod with a volume.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 137_Storage in StatefulSets
- File: 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Implementation Step  

Content:
How does that change with deployments or stateful sets?

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 137_Storage in StatefulSets
- File: 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Implementation Step  

Content:
With stateful sets, when you specify the same PVC under the pod definition, all pods created by that stateful set tries to use the same volume.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 137_Storage in StatefulSets
- File: 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Exam Tip  

Content:
Now, that is possible if that is what is desired as in you really want multiple pods or multiple instances of your application to share and access the same storage.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 137_Storage in StatefulSets
- File: 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Implementation Step  

Content:
That's how you would configure it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 137_Storage in StatefulSets
- File: 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Implementation Step  

Content:
And that also depends on the kind of volume created and the provision are used.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 137_Storage in StatefulSets
- File: 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Exam Tip  

Content:
Note that, not all storage types support that operation read or write from multiple instances at the same time.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 137_Storage in StatefulSets
- File: 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
Now, what if you want separate volumes for each pod?

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 137_Storage in StatefulSets
- File: 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
As in the My SQL replication use case that we have been talking about?

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 137_Storage in StatefulSets
- File: 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Warning/Pitfall  

Content:
The pods don't want to share data.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 137_Storage in StatefulSets
- File: 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
Instead, each pod needs its own local storage.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 137_Storage in StatefulSets
- File: 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
Each instance has its own database, and the replication of data between the databases is done at the database level.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 137_Storage in StatefulSets
- File: 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Implementation Step  

Content:
So then each pod needs a PVC for itself.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 137_Storage in StatefulSets
- File: 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
A PVC is bound to a pv, so each PVC needs a pv.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 137_Storage in StatefulSets
- File: 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Comparison  

Content:
And of course, these PVS can be created from a single or different storage classes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 137_Storage in StatefulSets
- File: 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Implementation Step  

Content:
So how do you automatically create a PVC for each part in a stateful set?

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 137_Storage in StatefulSets
- File: 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
You can achieve that using a volume claim template.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 137_Storage in StatefulSets
- File: 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Implementation Step  

Content:
A volume claim template is really a persistent volume claim but templateized, it just means instead of creating a PVC manually and then specifying it in the stateful set definition file you move the entire PVC definition into a section named volume claim templates under these stateful Set Specification.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 137_Storage in StatefulSets
- File: 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
Volume claim templates is an array.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 137_Storage in StatefulSets
- File: 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Exam Tip  

Content:
So you can specify multiple templates here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 137_Storage in StatefulSets
- File: 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
So how does it look now?

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 137_Storage in StatefulSets
- File: 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
We now have a stateful set with volume claim templates and a storage class definition with the right provisioner for gce.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 137_Storage in StatefulSets
- File: 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Implementation Step  

Content:
When the stateful set is created first it creates the first part, and during the creation of the pod, a PVC is created.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 137_Storage in StatefulSets
- File: 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Implementation Step  

Content:
The PVC is associated to a storage class so the storage class provisions a volume on GCP and then creates a PV and associates the PV with the volume and binds the PVC to the pv.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 137_Storage in StatefulSets
- File: 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Implementation Step  

Content:
Then the second part is created the second part creates a pvc.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 137_Storage in StatefulSets
- File: 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Implementation Step  

Content:
Then the stories, class provisions a new volume associates that to a PV and binds the PV to the PVC and so on, for the third part.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 137_Storage in StatefulSets
- File: 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Implementation Step  

Content:
What if one of these pods fail and is recreated or rescheduled onto a note?

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 137_Storage in StatefulSets
- File: 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Warning/Pitfall  

Content:
State full sets do not automatically delete the PVC or the associated volume to the pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 137_Storage in StatefulSets
- File: 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
Instead, it ensures that the pod is reattached to the same PVC that it was attached to before.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 137_Storage in StatefulSets
- File: 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
Thus, state stateful sets ensure stable storage for pots.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 137_Storage in StatefulSets
- File: 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
Well, that's it for now, and thank you so much for listening.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 137_Storage in StatefulSets
- File: 137_Storage in StatefulSets.txt
- Topic: Storage in StatefulSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
