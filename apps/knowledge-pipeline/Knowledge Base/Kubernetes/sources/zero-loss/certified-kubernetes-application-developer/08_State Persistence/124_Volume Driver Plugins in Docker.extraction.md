# Extraction: certified-kubernetes-application-developer / 08_State Persistence / 124_Volume Driver Plugins in Docker

---

## Entry 1
Type: Concept  

Content:
Okay, so in the previous lecture we discussed about storage drivers.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 124_Volume Driver Plugins in Docker
- File: 124_Volume Driver Plugins in Docker.txt
- Topic: Volume Driver Plugins in Docker
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
Storage drivers help manage storage on images and containers.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 124_Volume Driver Plugins in Docker
- File: 124_Volume Driver Plugins in Docker.txt
- Topic: Volume Driver Plugins in Docker
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
We also briefly touched upon volumes in the previous lecture.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 124_Volume Driver Plugins in Docker
- File: 124_Volume Driver Plugins in Docker.txt
- Topic: Volume Driver Plugins in Docker
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
We learned that if you want to persist storage, you must create volumes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 124_Volume Driver Plugins in Docker
- File: 124_Volume Driver Plugins in Docker.txt
- Topic: Volume Driver Plugins in Docker
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
Remember that volumes are not handled by storage drivers.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 124_Volume Driver Plugins in Docker
- File: 124_Volume Driver Plugins in Docker.txt
- Topic: Volume Driver Plugins in Docker
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
Volumes are handled by volume driver plugins.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 124_Volume Driver Plugins in Docker
- File: 124_Volume Driver Plugins in Docker.txt
- Topic: Volume Driver Plugins in Docker
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
The default volume driver plugin is local.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 124_Volume Driver Plugins in Docker
- File: 124_Volume Driver Plugins in Docker.txt
- Topic: Volume Driver Plugins in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 8
Type: Implementation Step  

Content:
The local volume plugin helps create a volume on the Docker host and store its data under the var lib docker volumes directory.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 124_Volume Driver Plugins in Docker
- File: 124_Volume Driver Plugins in Docker.txt
- Topic: Volume Driver Plugins in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 9
Type: Comparison  

Content:
There are many other volume driver plugins that allow you to create a volume on third party solutions like Azure File Storage, convoy, DigitalOcean, Block Storage Locker, Google Compute, Persistent Disks, cluster, EFS, NetApp, Rex, Ray, Port Works, and VMware vSphere storage.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 124_Volume Driver Plugins in Docker
- File: 124_Volume Driver Plugins in Docker.txt
- Topic: Volume Driver Plugins in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
These are just a few of the many.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 124_Volume Driver Plugins in Docker
- File: 124_Volume Driver Plugins in Docker.txt
- Topic: Volume Driver Plugins in Docker
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
Some of these volume drivers support different storage providers.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 124_Volume Driver Plugins in Docker
- File: 124_Volume Driver Plugins in Docker.txt
- Topic: Volume Driver Plugins in Docker
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
For instance, Rex Ray storage driver can be used to provision storage on AWS, EBS, S3, EMC storage arrays like Isilon and Scaleio or Google Persistent Disk or OpenStack cinder.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 124_Volume Driver Plugins in Docker
- File: 124_Volume Driver Plugins in Docker.txt
- Topic: Volume Driver Plugins in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
When you run a Docker container, you can choose to use a specific volume driver, such as the Rex ray EBS to provision a volume from Amazon EBS.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 124_Volume Driver Plugins in Docker
- File: 124_Volume Driver Plugins in Docker.txt
- Topic: Volume Driver Plugins in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Implementation Step  

Content:
This will create a container and attach a volume from the AWS cloud.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 124_Volume Driver Plugins in Docker
- File: 124_Volume Driver Plugins in Docker.txt
- Topic: Volume Driver Plugins in Docker
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
When the container exits, your data is safe in the cloud.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 124_Volume Driver Plugins in Docker
- File: 124_Volume Driver Plugins in Docker.txt
- Topic: Volume Driver Plugins in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
In the upcoming lectures, we will see more about volumes in Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 124_Volume Driver Plugins in Docker
- File: 124_Volume Driver Plugins in Docker.txt
- Topic: Volume Driver Plugins in Docker
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---
