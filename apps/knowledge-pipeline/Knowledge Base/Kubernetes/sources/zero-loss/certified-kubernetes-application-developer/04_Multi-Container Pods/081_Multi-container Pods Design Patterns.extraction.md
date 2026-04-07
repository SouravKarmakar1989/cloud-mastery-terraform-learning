# Extraction: certified-kubernetes-application-developer / 04_Multi-Container Pods / 081_Multi-container Pods Design Patterns

---

## Entry 1
Type: Concept  

Content:
Let us now look at the different multi-container pods design patterns.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
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
So there are different patterns for multi-container pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
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
What we just saw was the co-located containers.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
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
This is the original form of Multi-container.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
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
It's as simple as two containers running in a pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
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
Both the containers are meant to continue to run throughout the entire pod lifecycle.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
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
These are usually used when two services are dependent on each other.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
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
Next is the init containers or the init containers as it's called these days.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
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
This is used when there are initialization steps to be performed when a pod starts before the main application itself.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 10
Type: Exam Tip  

Content:
For example, this could be an init container that waits for a database to be ready before starting the main application.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
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
The init container does its job and ends its job, and then the main application starts.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
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
The third type is known as the sidecar container.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
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
A sidecar container is set up like an init container where the sidecar starts first, does its job, but instead of ending its run, it continues to run throughout the life cycle of the pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
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
The main application starts after the sidecar container starts.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
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
This is useful when you have a log shipper of sorts that needs to be run, along with the main application that needs to start before the main app starts, but continue to run as long as the main app runs and then end after the main app ends.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
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
So these are the three.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
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
The init container is differentiated well because we know that the in in terms of the init container, it starts and then stops, and then the main app runs.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Implementation Step  

Content:
However the first and the last.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
So the co-located containers and the sidecar containers can be a bit confusing.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
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
So why are there two if they kind of serve the same purpose?

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 21
Type: Concept  

Content:
Right.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 22
Type: Concept  

Content:
In both of those cases, you can see that the pods are running throughout the lifecycle. cycle.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 23
Type: Comparison  

Content:
So then what's the difference between the first and the last?

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 24
Type: Comparison  

Content:
So the main difference is that with the co-located containers, the first one, there is no ability to define which container starts first and the order of that startup.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
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
So both of those containers are defined as and as elements in an in an array there is no differentiation between them.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
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
So it all starts together.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
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
And there is no guarantee that one would start before the other.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
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
So if that's not a real requirement for your use case, you may use that option.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
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
However, the Sidecar Containers option provides the ability to specify an order of startup and then continue to run throughout the pod lifecycle.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 30
Type: Concept  

Content:
So we'll see how to do that in the upcoming slides.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
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
So let's start with the first one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
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
So here we have the pod definition file for the original uh, the co-located containers.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 33
Type: Concept  

Content:
In this case you can see that the container section is an array and it has two elements in the array two containers specified in the array.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 34
Type: Implementation Step  

Content:
So when the pod is created, both of them start.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 35
Type: Concept  

Content:
There's no particular order in which they start and they continue to run.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 36
Type: Implementation Step  

Content:
Next we have the regular init containers.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 37
Type: Concept  

Content:
So this is where instead of adding another container as the second item in the containers list, we define a separate property altogether called init containers.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 38
Type: Concept  

Content:
And under that we follow the same pattern as we do for containers.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 39
Type: Concept  

Content:
So under that we have the name and image and command as we do for the main container.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
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
This init container by default runs at the start and ends its run.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 41
Type: Implementation Step  

Content:
In this case, once the wait for db to start script ends, then the main container starts.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 42
Type: Exam Tip  

Content:
So you could define multiple init containers too, so that they can be run sequentially.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 43
Type: Exam Tip  

Content:
For example, you could have another init container defined as a second item in the list, in this case.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 44
Type: Concept  

Content:
The second item is called an API checker and it waits for another API to be started.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 45
Type: Implementation Step  

Content:
So what happens is first the checker script runs that container, runs and ends, and it ends that run.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 46
Type: Implementation Step  

Content:
And then the second container init container starts, the API checker starts and then it ends its run.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 47
Type: Implementation Step  

Content:
And then the main application starts.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 48
Type: Implementation Step  

Content:
And then it continues to run until the end of the pod lifecycle.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 49
Type: Concept  

Content:
So that's how you can define an order of startup for the init containers.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 50
Type: Concept  

Content:
Now the third pattern is the sidecar containers.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 51
Type: Concept  

Content:
So this is where we still use the init container approach.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 52
Type: Concept  

Content:
So as you can see the code is still there.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 53
Type: Implementation Step  

Content:
Um and this ensures that the init container starts first.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 54
Type: Concept  

Content:
And once they're ready the main app starts.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 55
Type: Concept  

Content:
However the init container continues to run as it has a restart policy set to always.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 56
Type: Concept  

Content:
So this will also ensure the init container is terminated after the main application stops.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 57
Type: Concept  

Content:
That way the log shipper can catch the startup and termination logs of the main container.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 58
Type: Exam Tip  

Content:
So here's a more realistic example using the elastic search and Kibana stack.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 59
Type: Concept  

Content:
So this is a log collection aggregation framework.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 60
Type: Concept  

Content:
And where the elastic search is itself is a component that captures the logs from different endpoints, different applications.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 61
Type: Concept  

Content:
And Kibana is a visualizer that visualizes the logs, which is what which is a dashboard that users or administrators look at.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 62
Type: Concept  

Content:
So in this case, what we do is along with the app, we add a sidecar called Filebeat, which comes along with Elasticsearch.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 63
Type: Implementation Step  

Content:
And that starts before the main app starts, so that it can capture the startup logs of the application, and then ends after the main app ends, so that it can capture any termination logs in case the in case the application ended due to any bugs, the termination log needs to be captured so that can be diagnosed and that is achieved using a sidecar container.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 64
Type: Concept  

Content:
Well, that's all for this lecture.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 081_Multi-container Pods Design Patterns
- File: 081_Multi-container Pods Design Patterns.txt
- Topic: Multi-container Pods Design Patterns
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---
