# Extraction: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 193_Volumes

---

## Entry 1
Type: Concept  

Content:
Before we head into persistent volumes, let us start with volumes in Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 193_Volumes
- File: 193_Volumes.txt
- Topic: Volumes
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
Let us look at volumes in Docker first.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 193_Volumes
- File: 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 3
Type: Command  

Command:
```bash
Docker containers are meant to be transient in nature, which means they are meant to last only for a short period of time.
```

Explanation:
- Command preserved exactly as transcript evidence.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 193_Volumes
- File: 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 4
Type: Concept  

Content:
They are called upon when required to process data and destroyed once finished.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 193_Volumes
- File: 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 5
Type: Concept  

Content:
The same is true for the data within the container.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 193_Volumes
- File: 193_Volumes.txt
- Topic: Volumes
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
The data is destroyed along with the container.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 193_Volumes
- File: 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
To persist data processed by the containers, we attach a volume to the containers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 193_Volumes
- File: 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Implementation Step  

Content:
When they are created.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 193_Volumes
- File: 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
The data processed by the container is now placed in this volume, thereby retaining it permanently.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 193_Volumes
- File: 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
Even if the container is deleted, the data generated or processed by it remains.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 193_Volumes
- File: 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
So how does that work in the Kubernetes world?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 193_Volumes
- File: 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 12
Type: Implementation Step  

Content:
Just as in Docker, the pods created in Kubernetes are transient in nature.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 193_Volumes
- File: 193_Volumes.txt
- Topic: Volumes
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
When a pod is created to process data and then deleted the data processed by it gets deleted as well.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 193_Volumes
- File: 193_Volumes.txt
- Topic: Volumes
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
For this, we attach a volume to the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 193_Volumes
- File: 193_Volumes.txt
- Topic: Volumes
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
The data generated by the pod is now stored in the volume, and even after the pod is deleted, the data remains.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 193_Volumes
- File: 193_Volumes.txt
- Topic: Volumes
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
Let's look at a simple implementation of volumes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 193_Volumes
- File: 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 17
Type: Concept  

Content:
We have a single node Kubernetes cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 193_Volumes
- File: 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 18
Type: Implementation Step  

Content:
We create a simple pod that generates a random number between 1 and 100, and writes that to a file at slash opt out.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 193_Volumes
- File: 193_Volumes.txt
- Topic: Volumes
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
It then gets deleted along with the random number.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 193_Volumes
- File: 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Implementation Step  

Content:
To retain the number generated by the pod, we create a volume, and a volume needs a storage.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 193_Volumes
- File: 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Implementation Step  

Content:
When you create a volume, you can choose to configure its storage in different ways.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 193_Volumes
- File: 193_Volumes.txt
- Topic: Volumes
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
We will look at the various options in a bit, but for now we will simply configure it to use a directory on the host.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 193_Volumes
- File: 193_Volumes.txt
- Topic: Volumes
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
In this case, I specify a path forward slash data on the host.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 193_Volumes
- File: 193_Volumes.txt
- Topic: Volumes
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
This way any files created in the volume would be stored in the directory data on my node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 193_Volumes
- File: 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 25
Type: Implementation Step  

Content:
Once the volume is created to access it from a container, we mount the volume to a directory inside the container.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 193_Volumes
- File: 193_Volumes.txt
- Topic: Volumes
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
We use the volume mounts field in each container to mount the data volume to the directory.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 193_Volumes
- File: 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
Slash opt within the container.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 193_Volumes
- File: 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
The random number will now be written to opt mount inside the container, which happens to be on the data volume, which is in fact the data directory on the host.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 193_Volumes
- File: 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
When the pod gets deleted, the file with the random number still lives on the host.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 193_Volumes
- File: 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 30
Type: Implementation Step  

Content:
Let's take a step back and look at the volume storage options.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 193_Volumes
- File: 193_Volumes.txt
- Topic: Volumes
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
We just used the host path option to configure a directory on the host as storage space for the volume.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 193_Volumes
- File: 193_Volumes.txt
- Topic: Volumes
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
Now that works fine on a single node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 193_Volumes
- File: 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 33
Type: Best Practice  

Content:
However, it is not recommended for use in a multi node cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 193_Volumes
- File: 193_Volumes.txt
- Topic: Volumes
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
This is because the pods would use the slash data directory on all the nodes and expect all of them to be the same and have the same data.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 193_Volumes
- File: 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
Since they are on different servers, they are in fact not the same.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 193_Volumes
- File: 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Implementation Step  

Content:
Unless you configure some kind of external replicated cluster storage solution.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 193_Volumes
- File: 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
Kubernetes supports several types of different storage solutions such as NFS cluster, NFS, Flocker, Fibre Channel, Cephfs, Scaleio, or public cloud solutions like AWS, EBS, Azure Disk or File or Google's Persistent Disk.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 193_Volumes
- File: 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Exam Tip  

Content:
For example, to configure an AWS Elastic Block Store volume as the storage option for the volume, we replace Hostpath field of the volume with the AWS Elastic Block Store field, along with the volume, ID and filesystem type.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 193_Volumes
- File: 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
The volume storage will now be on AWS EBS.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 193_Volumes
- File: 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 40
Type: Concept  

Content:
Well, that's it about volumes in Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 193_Volumes
- File: 193_Volumes.txt
- Topic: Volumes
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
We will now head over to discuss persistent volumes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 193_Volumes
- File: 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 42
Type: Implementation Step  

Content:
Next.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 193_Volumes
- File: 193_Volumes.txt
- Topic: Volumes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---
