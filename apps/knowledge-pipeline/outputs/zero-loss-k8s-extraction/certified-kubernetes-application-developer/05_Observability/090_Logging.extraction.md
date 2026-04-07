# Extraction: certified-kubernetes-application-developer / 05_Observability / 090_Logging

---

## Entry 1
Type: Concept  

Content:
In this lecture we will talk about various logging mechanisms in Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 090_Logging
- File: 090_Logging.txt
- Topic: Logging
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
Let us start with logging in Docker.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 090_Logging
- File: 090_Logging.txt
- Topic: Logging
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
I run a Docker container called Event Simulator, and all that it does is generate random events simulating a web server.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 090_Logging
- File: 090_Logging.txt
- Topic: Logging
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
These are events streamed to the standard output by the application.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 090_Logging
- File: 090_Logging.txt
- Topic: Logging
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
Now, if I were to run the Docker container in the background in a detached mode using the dash D option, I wouldn't see the logs.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 090_Logging
- File: 090_Logging.txt
- Topic: Logging
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
If I wanted to view the logs, I could use the docker logs command followed by the container id.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 090_Logging
- File: 090_Logging.txt
- Topic: Logging
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
The dash f option helps us see the live log trail.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 090_Logging
- File: 090_Logging.txt
- Topic: Logging
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
Now back to Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 090_Logging
- File: 090_Logging.txt
- Topic: Logging
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
We create a pod with the same Docker image using the Pod definition file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 090_Logging
- File: 090_Logging.txt
- Topic: Logging
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
Once the pod is running, we can view the logs using the kube control logs command with the pod name.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 090_Logging
- File: 090_Logging.txt
- Topic: Logging
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
Use the dash f option to stream the logs live.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 090_Logging
- File: 090_Logging.txt
- Topic: Logging
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
Just like the docker command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 090_Logging
- File: 090_Logging.txt
- Topic: Logging
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
Now these logs are specific to the container running inside the pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 090_Logging
- File: 090_Logging.txt
- Topic: Logging
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 14
Type: Exam Tip  

Content:
As we learned before, Kubernetes pods can have multiple Docker containers in them.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 090_Logging
- File: 090_Logging.txt
- Topic: Logging
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
In this case, I modify my Pod definition file to include an additional container called image processor.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 090_Logging
- File: 090_Logging.txt
- Topic: Logging
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
If you run the kube control logs command now with the pod name, which containers logs would it show?

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 090_Logging
- File: 090_Logging.txt
- Topic: Logging
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Exam Tip  

Content:
If there are multiple containers within a pod, you must specify the name of the container explicitly in the command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 090_Logging
- File: 090_Logging.txt
- Topic: Logging
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 18
Type: Concept  

Content:
Otherwise it would fail asking you to specify a name.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 090_Logging
- File: 090_Logging.txt
- Topic: Logging
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
In this case, I will specify the name of the first container event simulator, and that prints the relevant log messages.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 090_Logging
- File: 090_Logging.txt
- Topic: Logging
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
Now that is the simple logging functionality implemented within Kubernetes, and that is all that an application developer really needs to know to get started with Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 090_Logging
- File: 090_Logging.txt
- Topic: Logging
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Exam Tip  

Content:
And that is all you really need to know as part of the certification program.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 090_Logging
- File: 090_Logging.txt
- Topic: Logging
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
However, in the next lecture, we will see more about some advanced logging configuration and third party support for logging in Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 090_Logging
- File: 090_Logging.txt
- Topic: Logging
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
We also have a nice demo that shows how a popular logging framework is integrated with Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 090_Logging
- File: 090_Logging.txt
- Topic: Logging
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
Well, that's it for this lecture.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 090_Logging
- File: 090_Logging.txt
- Topic: Logging
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 25
Type: Concept  

Content:
Head over to the Coding exercises section and practice working with logs.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 090_Logging
- File: 090_Logging.txt
- Topic: Logging
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
Thank you.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 090_Logging
- File: 090_Logging.txt
- Topic: Logging
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---
