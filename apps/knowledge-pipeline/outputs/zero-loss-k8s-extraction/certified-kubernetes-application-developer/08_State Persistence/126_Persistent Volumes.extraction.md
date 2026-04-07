# Extraction: certified-kubernetes-application-developer / 08_State Persistence / 126_Persistent Volumes

---

## Entry 1
Type: Concept  

Content:
In the last lecture, we learned about volumes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 126_Persistent Volumes
- File: 126_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 2
Type: Concept  

Content:
Now we will discuss persistent volumes in Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 126_Persistent Volumes
- File: 126_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 3
Type: Implementation Step  

Content:
When we created volumes in the previous section, we configured volumes within the pod definition file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 126_Persistent Volumes
- File: 126_Persistent Volumes.txt
- Topic: Persistent Volumes
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
So every configuration information required to configure storage for the volume goes within the pod definition file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 126_Persistent Volumes
- File: 126_Persistent Volumes.txt
- Topic: Persistent Volumes
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
Now when you have a large environment with a lot of users deploying a lot of pods, the users would have to configure storage every time.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 126_Persistent Volumes
- File: 126_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 6
Type: Implementation Step  

Content:
For each pod, whatever storage solution is used, the users who deploys the pods would have to configure that on all pod definition files in his environment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 126_Persistent Volumes
- File: 126_Persistent Volumes.txt
- Topic: Persistent Volumes
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
Every time a change is to be made, the user would have to make them on all of his pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 126_Persistent Volumes
- File: 126_Persistent Volumes.txt
- Topic: Persistent Volumes
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
Instead, you would like to manage storage more centrally.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 126_Persistent Volumes
- File: 126_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 9
Type: Implementation Step  

Content:
You would like it to be configured in a way that an administrator can create a large pool of storage, and then have users carve out pieces from it as required.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 126_Persistent Volumes
- File: 126_Persistent Volumes.txt
- Topic: Persistent Volumes
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
That is where persistent volumes can help us.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 126_Persistent Volumes
- File: 126_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 11
Type: Implementation Step  

Content:
A persistent volume is a cluster wide pool of storage volumes configured by an administrator, to be used by users deploying applications on the cluster.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 126_Persistent Volumes
- File: 126_Persistent Volumes.txt
- Topic: Persistent Volumes
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
The users can now select storage from this pool using persistent volume claims.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 126_Persistent Volumes
- File: 126_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 13
Type: Implementation Step  

Content:
Let us now create a persistent volume.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 126_Persistent Volumes
- File: 126_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 14
Type: Concept  

Content:
We start with the base template and update the API version.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 126_Persistent Volumes
- File: 126_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 15
Type: Concept  

Content:
Set the kind to persistent volume and name it PV Vol one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 126_Persistent Volumes
- File: 126_Persistent Volumes.txt
- Topic: Persistent Volumes
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
Under the specs section, specify the access modes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 126_Persistent Volumes
- File: 126_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 17
Type: Best Practice  

Content:
Access mode defines how a volume should be mounted on the hosts, whether in a read only mode or read write mode, etc. the supported values are read only, read write once or read write.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 126_Persistent Volumes
- File: 126_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
Mini mode.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 126_Persistent Volumes
- File: 126_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 19
Type: Implementation Step  

Content:
Next is the capacity.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 126_Persistent Volumes
- File: 126_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 20
Type: Concept  

Content:
Specify the amount of storage to be reserved for this persistent volume, which is set to one GB here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 126_Persistent Volumes
- File: 126_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 21
Type: Implementation Step  

Content:
Next comes the volume type.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 126_Persistent Volumes
- File: 126_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 22
Type: Concept  

Content:
We will start with the host path option that uses storage from the node's local directory.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 126_Persistent Volumes
- File: 126_Persistent Volumes.txt
- Topic: Persistent Volumes
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
Remember, this option is not to be used in a production environment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 126_Persistent Volumes
- File: 126_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 24
Type: Implementation Step  

Content:
To create the volume, run kube control, create command and to list the created volume from the kube control.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 126_Persistent Volumes
- File: 126_Persistent Volumes.txt
- Topic: Persistent Volumes
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
Get persistent volume command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 126_Persistent Volumes
- File: 126_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 26
Type: Concept  

Content:
Replace the host path option with one of the supported storage solutions.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 126_Persistent Volumes
- File: 126_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 27
Type: Concept  

Content:
As we saw in the previous lecture like AWS Elastic Block Store, etc..

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 126_Persistent Volumes
- File: 126_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
Well, that's it on persistent volumes in this lecture.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 126_Persistent Volumes
- File: 126_Persistent Volumes.txt
- Topic: Persistent Volumes
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
In the next lecture, we will look at how we use persistent volume claims to claim the volume configured with persistent volumes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 126_Persistent Volumes
- File: 126_Persistent Volumes.txt
- Topic: Persistent Volumes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---
