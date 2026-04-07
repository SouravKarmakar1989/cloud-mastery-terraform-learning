# Extraction: learn-kubernetes / 02_Kubernetes Overview / 009_A note on Docker deprecation

---

## Entry 1
Type: Warning/Pitfall  

Content:
Every time we mention about Docker in this course, one of the common questions we get is why are we still talking about Docker if it's deprecated?

Source:
- Course: learn-kubernetes
- Module: 02_Kubernetes Overview
- Lecture: 009_A note on Docker deprecation
- File: 009_A note on Docker deprecation.txt
- Topic: A note on Docker deprecation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 2
Type: Concept  

Content:
And I realized that there's some confusion about the Docker deprecation among students, and I just wanted to take a minute to try and help clear that confusion.

Source:
- Course: learn-kubernetes
- Module: 02_Kubernetes Overview
- Lecture: 009_A note on Docker deprecation
- File: 009_A note on Docker deprecation.txt
- Topic: A note on Docker deprecation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 3
Type: Operational Insight  

Content:
So as we discussed before, Docker was the original and only supported container runtime for Kubernetes, and to make Kubernetes open to other runtimes, we had the container runtime interface introduced.

Source:
- Course: learn-kubernetes
- Module: 02_Kubernetes Overview
- Lecture: 009_A note on Docker deprecation
- File: 009_A note on Docker deprecation.txt
- Topic: A note on Docker deprecation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 4
Type: Exam Tip  

Content:
So Docker consisted of multiple tools put together like Docker CLI, the API, the build tools that help build images.

Source:
- Course: learn-kubernetes
- Module: 02_Kubernetes Overview
- Lecture: 009_A note on Docker deprecation
- File: 009_A note on Docker deprecation.txt
- Topic: A note on Docker deprecation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 5
Type: Operational Insight  

Content:
There was support for volumes, auth, security and finally also the container runtime called Runc and the daemon that managed the runtime called the container.

Source:
- Course: learn-kubernetes
- Module: 02_Kubernetes Overview
- Lecture: 009_A note on Docker deprecation
- File: 009_A note on Docker deprecation.txt
- Topic: A note on Docker deprecation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 6
Type: Concept  

Content:
So container D is the CLI compatible and can and that's the component that can work directly with Kubernetes.

Source:
- Course: learn-kubernetes
- Module: 02_Kubernetes Overview
- Lecture: 009_A note on Docker deprecation
- File: 009_A note on Docker deprecation.txt
- Topic: A note on Docker deprecation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Operational Insight  

Content:
And as all of the other runtimes.

Source:
- Course: learn-kubernetes
- Module: 02_Kubernetes Overview
- Lecture: 009_A note on Docker deprecation
- File: 009_A note on Docker deprecation.txt
- Topic: A note on Docker deprecation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 8
Type: Operational Insight  

Content:
So container D can be used as a runtime on its own separate from Docker.

Source:
- Course: learn-kubernetes
- Module: 02_Kubernetes Overview
- Lecture: 009_A note on Docker deprecation
- File: 009_A note on Docker deprecation.txt
- Topic: A note on Docker deprecation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 9
Type: Concept  

Content:
So once this change was made, Kubernetes no longer needed.

Source:
- Course: learn-kubernetes
- Module: 02_Kubernetes Overview
- Lecture: 009_A note on Docker deprecation
- File: 009_A note on Docker deprecation.txt
- Topic: A note on Docker deprecation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 10
Type: Concept  

Content:
The other tools that Docker supported like Docker CLI or the API, or build volumes or etc. as they were all taken care of of by Kubernetes itself.

Source:
- Course: learn-kubernetes
- Module: 02_Kubernetes Overview
- Lecture: 009_A note on Docker deprecation
- File: 009_A note on Docker deprecation.txt
- Topic: A note on Docker deprecation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 11
Type: Concept  

Content:
And so Kubernetes was able to deprecate the support for Docker.

Source:
- Course: learn-kubernetes
- Module: 02_Kubernetes Overview
- Lecture: 009_A note on Docker deprecation
- File: 009_A note on Docker deprecation.txt
- Topic: A note on Docker deprecation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 12
Type: Concept  

Content:
Now that doesn't mean that Docker is entirely gone.

Source:
- Course: learn-kubernetes
- Module: 02_Kubernetes Overview
- Lecture: 009_A note on Docker deprecation
- File: 009_A note on Docker deprecation.txt
- Topic: A note on Docker deprecation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 13
Type: Concept  

Content:
So Docker is still the most popular container solution out there and used by many in their day to day development and build processes.

Source:
- Course: learn-kubernetes
- Module: 02_Kubernetes Overview
- Lecture: 009_A note on Docker deprecation
- File: 009_A note on Docker deprecation.txt
- Topic: A note on Docker deprecation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 14
Type: Operational Insight  

Content:
It's just that Kubernetes no longer required Docker as the runtime now.

Source:
- Course: learn-kubernetes
- Module: 02_Kubernetes Overview
- Lecture: 009_A note on Docker deprecation
- File: 009_A note on Docker deprecation.txt
- Topic: A note on Docker deprecation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Exam Tip  

Content:
So going forward in this course, every time we talk about containers, we use Docker as an example.

Source:
- Course: learn-kubernetes
- Module: 02_Kubernetes Overview
- Lecture: 009_A note on Docker deprecation
- File: 009_A note on Docker deprecation.txt
- Topic: A note on Docker deprecation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 16
Type: Implementation Step  

Content:
And that's absolutely fine because sometimes we learn how things work in containers first before looking at how it is done in container orchestration world of Kubernetes.

Source:
- Course: learn-kubernetes
- Module: 02_Kubernetes Overview
- Lecture: 009_A note on Docker deprecation
- File: 009_A note on Docker deprecation.txt
- Topic: A note on Docker deprecation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 17
Type: Exam Tip  

Content:
So and in those cases it is okay to use Docker as an example.

Source:
- Course: learn-kubernetes
- Module: 02_Kubernetes Overview
- Lecture: 009_A note on Docker deprecation
- File: 009_A note on Docker deprecation.txt
- Topic: A note on Docker deprecation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 18
Type: Warning/Pitfall  

Content:
And if you don't happen to have Docker on your machine or are only using container D, then you can still work with the same examples by replacing the docker command with the node control command, or most of the time.

Source:
- Course: learn-kubernetes
- Module: 02_Kubernetes Overview
- Lecture: 009_A note on Docker deprecation
- File: 009_A note on Docker deprecation.txt
- Topic: A note on Docker deprecation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
So I just wanted to throw that out there before we proceed.

Source:
- Course: learn-kubernetes
- Module: 02_Kubernetes Overview
- Lecture: 009_A note on Docker deprecation
- File: 009_A note on Docker deprecation.txt
- Topic: A note on Docker deprecation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---
