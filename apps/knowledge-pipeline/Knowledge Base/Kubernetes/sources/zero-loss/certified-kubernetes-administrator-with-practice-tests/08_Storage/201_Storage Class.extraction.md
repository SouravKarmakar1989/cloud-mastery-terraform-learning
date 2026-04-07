# Extraction: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 201_Storage Class

---

## Entry 1
Type: Concept  

Content:
In this lecture we will look at storage classes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 201_Storage Class
- File: 201_Storage Class.txt
- Topic: Storage Class
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 2
Type: Comparison  

Content:
In the previous lectures, we discussed about how to create PVS and then create PVCs to claim that storage and then use the PVCs in the Pod definition files as volumes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 201_Storage Class
- File: 201_Storage Class.txt
- Topic: Storage Class
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
In this case, we create a PV from a Google Cloud Persistent disk.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 201_Storage Class
- File: 201_Storage Class.txt
- Topic: Storage Class
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Implementation Step  

Content:
The problem here is that before this PV is created, you must have created the disk on Google Cloud.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 201_Storage Class
- File: 201_Storage Class.txt
- Topic: Storage Class
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
Every time an application requires storage, you have to first manually provision the disk on Google Cloud and then manually create a persistent volume definition file using the same name as that of the disk that you created.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 201_Storage Class
- File: 201_Storage Class.txt
- Topic: Storage Class
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
That's called static provisioning volumes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 201_Storage Class
- File: 201_Storage Class.txt
- Topic: Storage Class
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
It would have been nice if the volume gets provisioned automatically when the application requires it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 201_Storage Class
- File: 201_Storage Class.txt
- Topic: Storage Class
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
And that's where storage classes come in.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 201_Storage Class
- File: 201_Storage Class.txt
- Topic: Storage Class
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
With storage classes, you can define a provisioner, such as Google Storage, that can automatically provision storage on Google Cloud and attach that to pods when a claim is made.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 201_Storage Class
- File: 201_Storage Class.txt
- Topic: Storage Class
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
That's called dynamic provisioning of volumes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 201_Storage Class
- File: 201_Storage Class.txt
- Topic: Storage Class
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
You do that by creating a storage class object with the API version set to storage.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 201_Storage Class
- File: 201_Storage Class.txt
- Topic: Storage Class
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
IO v1.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 201_Storage Class
- File: 201_Storage Class.txt
- Topic: Storage Class
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
Specify a name and use provisioner as Kubernetes.io slash GCE.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 201_Storage Class
- File: 201_Storage Class.txt
- Topic: Storage Class
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
So going back to our original state where we have a pod using a PVC for storage and the PVC is bound to a PV, we now have a storage class.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 201_Storage Class
- File: 201_Storage Class.txt
- Topic: Storage Class
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 15
Type: Implementation Step  

Content:
So we no longer need the PVC definition because the PV and any associated storage is going to be created automatically when the storage class is created for the PVC to use the storage class we defined, we specify the storage class name in the PVC definition.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 201_Storage Class
- File: 201_Storage Class.txt
- Topic: Storage Class
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
That's how the PVC knows which storage class to use.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 201_Storage Class
- File: 201_Storage Class.txt
- Topic: Storage Class
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 17
Type: Implementation Step  

Content:
Next time a PVC is created, the storage class associated with it uses the defined provisioner to provision a new disk with the required size on GCP, and then creates a persistent volume and then binds the PVC to that volume.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 201_Storage Class
- File: 201_Storage Class.txt
- Topic: Storage Class
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
So remember that it still creates a PVC.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 201_Storage Class
- File: 201_Storage Class.txt
- Topic: Storage Class
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 19
Type: Warning/Pitfall  

Content:
It's just that you don't have to manually create PVC anymore.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 201_Storage Class
- File: 201_Storage Class.txt
- Topic: Storage Class
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 20
Type: Implementation Step  

Content:
It's created automatically by the storage class.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 201_Storage Class
- File: 201_Storage Class.txt
- Topic: Storage Class
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
We used the GCE provisioner to create a volume on GCP.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 201_Storage Class
- File: 201_Storage Class.txt
- Topic: Storage Class
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
There are many other provisioners as well, such as for AWS, EBS, Azure File, Azure Disk, CIFs, Portworx, Scaleio, and so on.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 201_Storage Class
- File: 201_Storage Class.txt
- Topic: Storage Class
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
With each of these provisioners, you can pass in additional parameters such as the type of disk to provision the replication type, etc. these parameters are very specific to the provisioner that you're using for Google Persistent Disk.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 201_Storage Class
- File: 201_Storage Class.txt
- Topic: Storage Class
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
You can specify the type which could be standard or SSD.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 201_Storage Class
- File: 201_Storage Class.txt
- Topic: Storage Class
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
You can specify the replication mode which could be none or regional PD.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 201_Storage Class
- File: 201_Storage Class.txt
- Topic: Storage Class
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
So you see you can create different storage classes, each using different types of disks.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 201_Storage Class
- File: 201_Storage Class.txt
- Topic: Storage Class
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 27
Type: Exam Tip  

Content:
For example, a silver storage class with the standard disks, a gold class with SSD drives, and a platinum class with SSD drives and replication.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 201_Storage Class
- File: 201_Storage Class.txt
- Topic: Storage Class
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 28
Type: Concept  

Content:
And that's why it's called storage class.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 201_Storage Class
- File: 201_Storage Class.txt
- Topic: Storage Class
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
You can create different classes of service next time you create a PVC.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 201_Storage Class
- File: 201_Storage Class.txt
- Topic: Storage Class
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
You can simply specify the class of storage you need for your volumes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 08_Storage
- Lecture: 201_Storage Class
- File: 201_Storage Class.txt
- Topic: Storage Class
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
