# Extraction: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 289_Control Plane Failure

---

## Entry 1
Type: Troubleshooting  

Content:
In this lecture we will see different ways of troubleshooting control plane failures.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 289_Control Plane Failure
- File: 289_Control Plane Failure.txt
- Topic: Control Plane Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
We start by checking the status of the nodes in the cluster, see if they are all healthy, then check the status of the pods running on the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 289_Control Plane Failure
- File: 289_Control Plane Failure.txt
- Topic: Control Plane Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Architecture  

Content:
If we had control plane components deployed as pods in case of a cluster deployed with the kube ADM tool, then we can check to make sure that the pods in the kube system namespace are running, or else if the control plane components are deployed as services, as in our case, then check the status of the services such as the kube API server, the controller, manager and scheduler on the master nodes, and the Kubelet and kube proxy service on the worker nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 289_Control Plane Failure
- File: 289_Control Plane Failure.txt
- Topic: Control Plane Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Implementation Step  

Content:
Next, check the logs of the control plane components again, in case of kube adm, use the kube control logs command to view the logs of pods hosting the control plane components.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 289_Control Plane Failure
- File: 289_Control Plane Failure.txt
- Topic: Control Plane Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Implementation Step  

Content:
In case of services configured natively on the master nodes, view the service logs using the host's logging solution.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 289_Control Plane Failure
- File: 289_Control Plane Failure.txt
- Topic: Control Plane Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Architecture  

Content:
In our case, we could use the general control utility to view the kube API servers logs.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 289_Control Plane Failure
- File: 289_Control Plane Failure.txt
- Topic: Control Plane Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Best Practice  

Content:
This should be a good start.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 289_Control Plane Failure
- File: 289_Control Plane Failure.txt
- Topic: Control Plane Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Troubleshooting  

Content:
For more tips, refer to the Kubernetes documentation page for troubleshooting clusters.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 289_Control Plane Failure
- File: 289_Control Plane Failure.txt
- Topic: Control Plane Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Exam Tip  

Content:
This will help in the upcoming practice test as well as in the exam.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 289_Control Plane Failure
- File: 289_Control Plane Failure.txt
- Topic: Control Plane Failure
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
