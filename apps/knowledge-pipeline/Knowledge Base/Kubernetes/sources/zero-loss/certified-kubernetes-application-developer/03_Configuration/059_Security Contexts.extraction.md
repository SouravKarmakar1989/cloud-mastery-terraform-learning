# Extraction: certified-kubernetes-application-developer / 03_Configuration / 059_Security Contexts

---

## Entry 1
Type: Implementation Step  

Content:
As we saw in the previous lecture, when you run a Docker container, you have the option to define a set of security standards, such as the ID of the user used to run the container, the Linux capabilities that can be added or removed from the container, etc. these can be configured in Kubernetes as well as you know already in Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 059_Security Contexts
- File: 059_Security Contexts.txt
- Topic: Security Contexts
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
Containers are encapsulated in pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 059_Security Contexts
- File: 059_Security Contexts.txt
- Topic: Security Contexts
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
You may choose to configure the security settings at a container level or at a pod level.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 059_Security Contexts
- File: 059_Security Contexts.txt
- Topic: Security Contexts
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
If you configure it at a pod level, the settings will carry over to all containers within the pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 059_Security Contexts
- File: 059_Security Contexts.txt
- Topic: Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Implementation Step  

Content:
If you configure it at both the pod and the container, the settings on the container will override the settings on the pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 059_Security Contexts
- File: 059_Security Contexts.txt
- Topic: Security Contexts
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
Let us start with pod definition file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 059_Security Contexts
- File: 059_Security Contexts.txt
- Topic: Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Implementation Step  

Content:
This pod runs an ubuntu image with the sleep command to configure security context on the container.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 059_Security Contexts
- File: 059_Security Contexts.txt
- Topic: Security Contexts
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
Add a field called Security context under the spec section of the pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 059_Security Contexts
- File: 059_Security Contexts.txt
- Topic: Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
Use the run as user option to set the user ID for the pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 059_Security Contexts
- File: 059_Security Contexts.txt
- Topic: Security Contexts
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
To set the same configuration on the container level.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 059_Security Contexts
- File: 059_Security Contexts.txt
- Topic: Security Contexts
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
Move the whole section under the container specification like this to add capabilities.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 059_Security Contexts
- File: 059_Security Contexts.txt
- Topic: Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
Use the capabilities option and specify a list of capabilities to add to the pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 059_Security Contexts
- File: 059_Security Contexts.txt
- Topic: Security Contexts
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
Well, that's all on security contexts in Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 059_Security Contexts
- File: 059_Security Contexts.txt
- Topic: Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 14
Type: Troubleshooting  

Content:
Head over to the Coding Exercises section and practice viewing, configuring, and troubleshooting issues related to security contexts in Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 059_Security Contexts
- File: 059_Security Contexts.txt
- Topic: Security Contexts
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
That's it for now and I will see you in the next lecture.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 059_Security Contexts
- File: 059_Security Contexts.txt
- Topic: Security Contexts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---
