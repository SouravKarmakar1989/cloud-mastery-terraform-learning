# Extraction: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 292_Worker Node Failure

---

## Entry 1
Type: Troubleshooting  

Content:
In this lecture we will see different ways of troubleshooting worker node failures.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 292_Worker Node Failure
- File: 292_Worker Node Failure.txt
- Topic: Worker Node Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
Again, we start by checking the status of the nodes in the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 292_Worker Node Failure
- File: 292_Worker Node Failure.txt
- Topic: Worker Node Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
Are they reported as ready or not ready?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 292_Worker Node Failure
- File: 292_Worker Node Failure.txt
- Topic: Worker Node Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
If they're reported as not ready, check details about the nodes using the cube control.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 292_Worker Node Failure
- File: 292_Worker Node Failure.txt
- Topic: Worker Node Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
Describe node command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 292_Worker Node Failure
- File: 292_Worker Node Failure.txt
- Topic: Worker Node Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
Each node has a set of conditions that can point us in a direction as to why a node might have failed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 292_Worker Node Failure
- File: 292_Worker Node Failure.txt
- Topic: Worker Node Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
Depending on the status, there are either set to true or false or unknown.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 292_Worker Node Failure
- File: 292_Worker Node Failure.txt
- Topic: Worker Node Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
When the node is out of disk space, the out of disk flag is set to true.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 292_Worker Node Failure
- File: 292_Worker Node Failure.txt
- Topic: Worker Node Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
When a node is out of memory, the memory pressure flag is set to true.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 292_Worker Node Failure
- File: 292_Worker Node Failure.txt
- Topic: Worker Node Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
When the disk capacity is low, the disk pressure flag is set to true.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 292_Worker Node Failure
- File: 292_Worker Node Failure.txt
- Topic: Worker Node Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
Similarly, when there are too many processes, the pressure flag is set to true.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 292_Worker Node Failure
- File: 292_Worker Node Failure.txt
- Topic: Worker Node Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
And finally, if the node as a whole is healthy, the ready flag is set to true.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 292_Worker Node Failure
- File: 292_Worker Node Failure.txt
- Topic: Worker Node Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
When a worker node stops communicating with the master, maybe due to a crash, these statuses are set to unknown.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 292_Worker Node Failure
- File: 292_Worker Node Failure.txt
- Topic: Worker Node Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
This can indicate a possible loss of a node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 292_Worker Node Failure
- File: 292_Worker Node Failure.txt
- Topic: Worker Node Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
Check the last heartbeat time field to find out the time when the node might have crashed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 292_Worker Node Failure
- File: 292_Worker Node Failure.txt
- Topic: Worker Node Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
In such cases, proceed to checking the status of the node itself.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 292_Worker Node Failure
- File: 292_Worker Node Failure.txt
- Topic: Worker Node Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
If the node is online at all or is crashed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 292_Worker Node Failure
- File: 292_Worker Node Failure.txt
- Topic: Worker Node Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
If it's crashed, bring it back up.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 292_Worker Node Failure
- File: 292_Worker Node Failure.txt
- Topic: Worker Node Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
Check for possible CPU, memory and disk space on the nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 292_Worker Node Failure
- File: 292_Worker Node Failure.txt
- Topic: Worker Node Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Architecture  

Content:
Check the status of the kubelet.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 292_Worker Node Failure
- File: 292_Worker Node Failure.txt
- Topic: Worker Node Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Troubleshooting  

Content:
Check the Cubelet logs for possible issues.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 292_Worker Node Failure
- File: 292_Worker Node Failure.txt
- Topic: Worker Node Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Troubleshooting  

Content:
Check the Kubelet certificates, ensure they're not expired and they are part of the right group, and that the certificates are issued by the right CA.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 292_Worker Node Failure
- File: 292_Worker Node Failure.txt
- Topic: Worker Node Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
Well, that's it for this lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 292_Worker Node Failure
- File: 292_Worker Node Failure.txt
- Topic: Worker Node Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 24
Type: Troubleshooting  

Content:
Head over to the practice test and practice fixing broken clusters.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 292_Worker Node Failure
- File: 292_Worker Node Failure.txt
- Topic: Worker Node Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
