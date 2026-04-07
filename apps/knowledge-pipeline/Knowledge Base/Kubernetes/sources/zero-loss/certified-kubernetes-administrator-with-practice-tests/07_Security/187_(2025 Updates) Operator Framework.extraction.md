# Extraction: certified-kubernetes-administrator-with-practice-tests / 07_Security / 187_(2025 Updates) Operator Framework

---

## Entry 1
Type: Concept  

Content:
Let's now look at the operator framework.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 187_(2025 Updates) Operator Framework
- File: 187_(2025 Updates) Operator Framework.txt
- Topic: (2025 Updates) Operator Framework
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
So we've talked about creating a custom resource definition or CRD and a custom controller that has the logic to work with that CRD.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 187_(2025 Updates) Operator Framework
- File: 187_(2025 Updates) Operator Framework.txt
- Topic: (2025 Updates) Operator Framework
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
And currently these are separate entities.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 187_(2025 Updates) Operator Framework
- File: 187_(2025 Updates) Operator Framework.txt
- Topic: (2025 Updates) Operator Framework
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Implementation Step  

Content:
And we have to manually create the CRD and the resources using the CRD.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 187_(2025 Updates) Operator Framework
- File: 187_(2025 Updates) Operator Framework.txt
- Topic: (2025 Updates) Operator Framework
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Implementation Step  

Content:
And then we deploy the controller as a pod or a deployment.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 187_(2025 Updates) Operator Framework
- File: 187_(2025 Updates) Operator Framework.txt
- Topic: (2025 Updates) Operator Framework
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Exam Tip  

Content:
However, these two entities can be packaged together to be deployed as a single entity using the operator framework.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 187_(2025 Updates) Operator Framework
- File: 187_(2025 Updates) Operator Framework.txt
- Topic: (2025 Updates) Operator Framework
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 7
Type: Implementation Step  

Content:
So by deploying the flight operator, it internally creates the custom resource definition and the resources, and also deploys the custom controller as a deployment.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 187_(2025 Updates) Operator Framework
- File: 187_(2025 Updates) Operator Framework.txt
- Topic: (2025 Updates) Operator Framework
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Implementation Step  

Content:
Now the operator framework does much more than just deploying these two components.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 187_(2025 Updates) Operator Framework
- File: 187_(2025 Updates) Operator Framework.txt
- Topic: (2025 Updates) Operator Framework
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
But let's look at a real life use case of an operator.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 187_(2025 Updates) Operator Framework
- File: 187_(2025 Updates) Operator Framework.txt
- Topic: (2025 Updates) Operator Framework
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Architecture  

Content:
And one of the most popular operator is the etcd operator.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 187_(2025 Updates) Operator Framework
- File: 187_(2025 Updates) Operator Framework.txt
- Topic: (2025 Updates) Operator Framework
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Architecture  

Content:
It is used to deploy and manage an etcd cluster within Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 187_(2025 Updates) Operator Framework
- File: 187_(2025 Updates) Operator Framework.txt
- Topic: (2025 Updates) Operator Framework
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Architecture  

Content:
So it has an etcd cluster, CRD, and a custom controller that watches for the etcd cluster resource and deploys etcd within the Kubernetes cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 187_(2025 Updates) Operator Framework
- File: 187_(2025 Updates) Operator Framework.txt
- Topic: (2025 Updates) Operator Framework
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Architecture  

Content:
However, it can do much more, such as take a backup of etcd cluster, as well as restore a backup to the etcd cluster by simply creating a CRD.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 187_(2025 Updates) Operator Framework
- File: 187_(2025 Updates) Operator Framework.txt
- Topic: (2025 Updates) Operator Framework
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
There are additional code in the operator named Backup and restore operators that are responsible for performing these additional tasks.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 187_(2025 Updates) Operator Framework
- File: 187_(2025 Updates) Operator Framework.txt
- Topic: (2025 Updates) Operator Framework
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 15
Type: Troubleshooting  

Content:
So Kubernetes operators do what a human operator typically would do to manage a specific application, such as installing it, maintaining it by taking backups, and restoring backups in case of disasters, uh, fixing any issues that may come across the application, etc..

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 187_(2025 Updates) Operator Framework
- File: 187_(2025 Updates) Operator Framework.txt
- Topic: (2025 Updates) Operator Framework
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
All operators are available at the operator hub.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 187_(2025 Updates) Operator Framework
- File: 187_(2025 Updates) Operator Framework.txt
- Topic: (2025 Updates) Operator Framework
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 17
Type: Architecture  

Content:
You can find operators for many of the popular applications like etcd, MySQL, Prometheus.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 187_(2025 Updates) Operator Framework
- File: 187_(2025 Updates) Operator Framework.txt
- Topic: (2025 Updates) Operator Framework
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
Grafana.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 187_(2025 Updates) Operator Framework
- File: 187_(2025 Updates) Operator Framework.txt
- Topic: (2025 Updates) Operator Framework
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
Argo CD.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 187_(2025 Updates) Operator Framework
- File: 187_(2025 Updates) Operator Framework.txt
- Topic: (2025 Updates) Operator Framework
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
Istio.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 187_(2025 Updates) Operator Framework
- File: 187_(2025 Updates) Operator Framework.txt
- Topic: (2025 Updates) Operator Framework
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
Select any operator to view additional details and the installation instructions are available on clicking the install button.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 187_(2025 Updates) Operator Framework
- File: 187_(2025 Updates) Operator Framework.txt
- Topic: (2025 Updates) Operator Framework
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Implementation Step  

Content:
Deploying an application is as easy as following the three steps.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 187_(2025 Updates) Operator Framework
- File: 187_(2025 Updates) Operator Framework.txt
- Topic: (2025 Updates) Operator Framework
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 23
Type: Implementation Step  

Content:
That's first, installing the Operator Lifecycle manager and then installing the operator itself.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 187_(2025 Updates) Operator Framework
- File: 187_(2025 Updates) Operator Framework.txt
- Topic: (2025 Updates) Operator Framework
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
And that's about it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 187_(2025 Updates) Operator Framework
- File: 187_(2025 Updates) Operator Framework.txt
- Topic: (2025 Updates) Operator Framework
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
That's a high level overview of operators.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 187_(2025 Updates) Operator Framework
- File: 187_(2025 Updates) Operator Framework.txt
- Topic: (2025 Updates) Operator Framework
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
Now diving deep into operators require its own mini course.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 187_(2025 Updates) Operator Framework
- File: 187_(2025 Updates) Operator Framework.txt
- Topic: (2025 Updates) Operator Framework
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
And we will have that at some point in the future.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 187_(2025 Updates) Operator Framework
- File: 187_(2025 Updates) Operator Framework.txt
- Topic: (2025 Updates) Operator Framework
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Warning/Pitfall  

Content:
For now I do not anticipate any questions on operators itself in the exam.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 187_(2025 Updates) Operator Framework
- File: 187_(2025 Updates) Operator Framework.txt
- Topic: (2025 Updates) Operator Framework
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
Um, I think uh, the curriculum mentions mostly about crds.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 187_(2025 Updates) Operator Framework
- File: 187_(2025 Updates) Operator Framework.txt
- Topic: (2025 Updates) Operator Framework
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
So this lecture on operators is just an add on, right?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 187_(2025 Updates) Operator Framework
- File: 187_(2025 Updates) Operator Framework.txt
- Topic: (2025 Updates) Operator Framework
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
So thank you so much.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 187_(2025 Updates) Operator Framework
- File: 187_(2025 Updates) Operator Framework.txt
- Topic: (2025 Updates) Operator Framework
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Implementation Step  

Content:
And, um, I'll see you in the next one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 187_(2025 Updates) Operator Framework
- File: 187_(2025 Updates) Operator Framework.txt
- Topic: (2025 Updates) Operator Framework
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
