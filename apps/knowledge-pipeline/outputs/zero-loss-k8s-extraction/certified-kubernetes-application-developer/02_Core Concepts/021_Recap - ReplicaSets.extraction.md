# Extraction: certified-kubernetes-application-developer / 02_Core Concepts / 021_Recap - ReplicaSets

---

## Entry 1
Type: Concept  

Content:
Controllers are the brain behind Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
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
They are the processes that monitor Kubernetes objects and respond accordingly.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 3
Type: Concept  

Content:
In this lecture, we will discuss about one controller in particular and that is the replication controller.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 4
Type: Concept  

Content:
So what is a replica and why do we need a replication controller?

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 5
Type: Implementation Step  

Content:
Let's go back to our first scenario where we had a single pod running our application.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 6
Type: Troubleshooting  

Content:
What if for some reason our application crashes and the pod fails, users will no longer be able to access our application?

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 7
Type: Concept  

Content:
To prevent users from losing access to our application, we would like to have more than one instance or pod running at the same time.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 8
Type: Troubleshooting  

Content:
That way, if one fails, we still have our application running on the other one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 9
Type: Exam Tip  

Content:
The replication controller helps us run multiple instances of a single pod in the Kubernetes cluster, After, thus providing high availability.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 10
Type: Concept  

Content:
So does that mean you can't use a replication controller if you plan to have a single pod?

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 11
Type: Concept  

Content:
No.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 12
Type: Troubleshooting  

Content:
Even if you have a single pod, the replication controller can help by automatically bringing up a new pod when the existing one fails.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
Thus, the replication controller ensures that the specified number of pods are running at all times, even if it's just 1 or 100.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 14
Type: Exam Tip  

Content:
Another reason we need replication controller is to create multiple pods to share the load across them.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 15
Type: Exam Tip  

Content:
For example, in this simple scenario, we have a single pod serving a set of users.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
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
When the number of users increased, we deploy additional pod to balance the load across the two pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 17
Type: Implementation Step  

Content:
If the demand further increases, and if we were to run out of resources on the first node, Snowed, we could deploy additional pods across the other nodes in the cluster.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 18
Type: Exam Tip  

Content:
As you can see, the replication controller spans across multiple nodes in the cluster.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 19
Type: Exam Tip  

Content:
It helps us balance the load across multiple pods on different nodes, as well as scale our application when the demand increases.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 20
Type: Concept  

Content:
It's important to note that there are two similar terms replication controller and replica set.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 21
Type: Concept  

Content:
Both have the same purpose, but they are not the same.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
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
Replication controller is the older technology that is being replaced by replica set.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 23
Type: Best Practice  

Content:
Replica set is the new recommended way to set up replication.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 24
Type: Concept  

Content:
However, whatever we discussed in the previous few slides remain applicable to both these technologies.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 25
Type: Comparison  

Content:
There are minor differences in the way each works, and we will look at that in a bit.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 26
Type: Concept  

Content:
As such, we will try to stick to replica sets in all of our demos and implementations going forward.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 27
Type: Implementation Step  

Content:
Let us now look at how we create a replication controller.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 28
Type: Concept  

Content:
As with the previous lecture, we start by creating a replication controller definition file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 29
Type: Concept  

Content:
We will name it rc dash definition dot YAML.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
As with any Kubernetes definition file, we have four sections the API, version, kind, metadata, and spec.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 31
Type: Concept  

Content:
The API version is specific to what we are creating.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 32
Type: Concept  

Content:
In this case, replication controller is supported in Kubernetes API version v1.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 33
Type: Concept  

Content:
So we will set it as v1.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 34
Type: Concept  

Content:
The kind as we know is replication controller.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 35
Type: Concept  

Content:
Under metadata we will add a name and we will call it Myapp dash RC.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 36
Type: Concept  

Content:
And we will also add a few labels app and type and assign values to them.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 37
Type: Implementation Step  

Content:
So far, it has been very similar to how we created a pod in the previous section.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 38
Type: Implementation Step  

Content:
The next is the most crucial part of the definition file, and that is the specification written as spec for any Kubernetes definition file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 39
Type: Concept  

Content:
The spec section defines what's inside the object we are creating.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 40
Type: Exam Tip  

Content:
In this case, we know that the replication controller creates multiple instances of a pod, but what pod?

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Implementation Step  

Content:
We create a template section under spec to provide a pod template to be used by the replication controller to create replicas.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 42
Type: Concept  

Content:
Now how do we define the pod template?

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 43
Type: Concept  

Content:
It's not that hard because we have already done that in the previous exercise.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 44
Type: Implementation Step  

Content:
Remember we created a Pod definition file in the previous exercise, we could reuse the contents of the file to populate the templates section.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Implementation Step  

Content:
Move all the contents of the Pod definition file into the template section of the replication controller, except for the first few lines which are API, version and kind.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Best Practice  

Content:
Remember, whatever we move must be under the templates section, meaning this should be intended to the right and have more spaces before them than the template line itself.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 47
Type: Best Practice  

Content:
There should be children of the template section.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
Looking at our file now, we now have two metadata sections.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
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
One is for the replication controller and another for the pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 50
Type: Concept  

Content:
And we have two aspect sections, one for each.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
We have nested two definition files together, the replication controller being the parent and the pod definition being the child.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 52
Type: Concept  

Content:
Now there is something still missing.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 53
Type: Concept  

Content:
We haven't mentioned how many replicas we need in the replication controller for that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Concept  

Content:
Add another property to the spec called replicas and input the number of replicas you need under it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Concept  

Content:
Remember that the template and replicas are direct children of spec sections, so there are siblings and must be on the same vertical line, which means having equal number of spaces before them.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Implementation Step  

Content:
Once the file is ready, run the kubectl create command and input the file using the f parameter.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 57
Type: Implementation Step  

Content:
The replication controller is created when the replication controller is created.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 58
Type: Implementation Step  

Content:
It first creates the pods using the pod definition template as many as required, which is three in this case.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 59
Type: Implementation Step  

Content:
To view the list of created replication controllers, run the kubectl get replication controller command and you will see the replication Controller listed.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 60
Type: Concept  

Content:
We can also see the desired number of replicas or pods, the current number of replicas, and how many of them are ready in the output.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 61
Type: Implementation Step  

Content:
If you would like to see the pods that were created by the replication controller, run the kubectl get pods command and you will see three pods running.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 62
Type: Implementation Step  

Content:
Note that all of them are starting with the name of the replication controller, which is my app RC, indicating that they are all created automatically by the replication controller.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 63
Type: Concept  

Content:
What we just saw was the replication controller.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 64
Type: Concept  

Content:
Let us now look at replica set.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 65
Type: Concept  

Content:
It is very similar to replication controller as usual.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 66
Type: Implementation Step  

Content:
First we have API version kind metadata and spec.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 67
Type: Concept  

Content:
The API version though is a bit different.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 68
Type: Concept  

Content:
It is apps v1, which is different from what we had before.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Concept  

Content:
For replication controller which was just v1.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 70
Type: Troubleshooting  

Content:
If you get this wrong, you are likely to get an error that looks like this.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 71
Type: Concept  

Content:
It would say no match for kind replica set, because the specified Kubernetes API version has no support for replica set.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 72
Type: Concept  

Content:
The kind would be replica set and we add name and labels in the metadata.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 73
Type: Concept  

Content:
The specification section looks very similar to Replication Controller.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 74
Type: Concept  

Content:
It has a template section where we provide pod definition as before.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 75
Type: Concept  

Content:
So I'm going to copy contents over from pod definition file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 76
Type: Concept  

Content:
And we have number of replicas which is set to three.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 77
Type: Comparison  

Content:
However, there is one major difference between replication controller and replica set.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Concept  

Content:
Replica set requires a selector definition.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 79
Type: Concept  

Content:
The selector section helps the replica set identify what pods fall under it, but why would you have to specify what pods fall under it if we have provided the contents of the pod definition file itself in the template.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 80
Type: Implementation Step  

Content:
It's because replica set can also manage pods that were not created as part of the replica set creation.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 81
Type: Exam Tip  

Content:
Say for example, the reports created before the creation of the replica set that match labels specified in the selector.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Concept  

Content:
The replica set will also take those pods into consideration when creating the replicas.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 83
Type: Comparison  

Content:
I will elaborate this in the next slide, but before we get into that, I would like to mention that the selector is one of the major differences between replication controller and replica set.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 84
Type: Concept  

Content:
The selector is not a required field in case of a replication controller, but it is still available when you skip it, as we did in the previous slide, it assumes it to be the same as the labels provided in the Pod definition file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 85
Type: Concept  

Content:
In case of replica set, a user input is required for this property, and it has to be written in the form of match labels as shown here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 86
Type: Concept  

Content:
The match labels selector simply matches the labels specified under it to the labels on the pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 87
Type: Implementation Step  

Content:
The replica set selector also provides many other options for matching labels that were not available in a replication controller, and as always, to create a replica set, run the kubectl create command, providing the definition file as input, and to see the created replicas run the kubectl get replica set command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 88
Type: Concept  

Content:
To get list of pods, simply run the kube control get pods command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 89
Type: Concept  

Content:
So what is the deal with labels and selectors?

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 90
Type: Concept  

Content:
Why do we label our pods and objects in Kubernetes?

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 91
Type: Concept  

Content:
Let us look at a simple scenario.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 92
Type: Implementation Step  

Content:
Say we deployed three instances of our front end web application has three parts.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 93
Type: Implementation Step  

Content:
We would like to create a replication controller or replica set to ensure that we have three active parts at any time.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 94
Type: Concept  

Content:
And yes, that is one of the use case of replica sets.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 95
Type: Exam Tip  

Content:
You can use it to monitor existing pods if you have them already created as it is in this example.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 96
Type: Implementation Step  

Content:
In case they were not created, the replica set will create them for you.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 97
Type: Implementation Step  

Content:
The role of the replica set is to monitor the pods and if any of them were to fail, deploy new ones.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 98
Type: Concept  

Content:
The replica set is in fact a process that monitors the pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 99
Type: Concept  

Content:
Now, how does the replica set know what pods to monitor?

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 100
Type: Concept  

Content:
There could be hundreds of other pods in the cluster running different applications.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 101
Type: Concept  

Content:
This is where labeling our pods during creation comes in handy.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 102
Type: Concept  

Content:
We could now provide these labels as a filter for replica set under the selector section, we use the Match labels filter and provide the same label that we used while creating the pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 103
Type: Concept  

Content:
This way, the replica set knows which pods to monitor.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 104
Type: Concept  

Content:
The same concept of labels and selectors is used in many other places throughout Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 105
Type: Concept  

Content:
Now let me ask you a question.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 106
Type: Concept  

Content:
Along the same lines, in the replica set specification section, we learned that there are three sections template, replicas, and selector.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 107
Type: Concept  

Content:
We need three replicas and we have updated our selector based on our discussion in the previous slide.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 108
Type: Implementation Step  

Content:
Say for instance, we have the same scenario as in the previous slide where we have three existing parts that were created already, and we need to create a replica set to monitor the pods to ensure there are a minimum of three running at all times.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 109
Type: Implementation Step  

Content:
When the replication controller is created, it is not going to deploy a new instance of Pod, as three of them with matching labels are already created in that case.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 110
Type: Concept  

Content:
Do we really need to provide a template session in the replica set specification?

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 111
Type: Implementation Step  

Content:
Since we are not expecting the Replicaset to create a new pod on deployment?

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 112
Type: Implementation Step  

Content:
Yes, we do, because in case one of the pods were to fail in the future, the replica set needs to create a new one to maintain the desired number of pods, and for the replica set to create a new pod, the template definition section is required.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 113
Type: Concept  

Content:
Let's now look at how we scale the replica set.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 114
Type: Concept  

Content:
Say we started with three replicas and the future.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 115
Type: Concept  

Content:
We decided to scale to six.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 116
Type: Concept  

Content:
How do we update our replica set to scale to six replicas?

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 117
Type: Exam Tip  

Content:
Well, there are multiple ways to do it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 118
Type: Implementation Step  

Content:
The first is to update the number of replicas in the definition file to six, then run the kubectl apply command to specify the same file using the f parameter, and that will update the replica set to have six replicas.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 119
Type: Concept  

Content:
The second way to do it is to run the kube control scale command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 120
Type: Concept  

Content:
Use the replicas parameter to provide the new number of replicas and specify the same file as input.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 121
Type: Concept  

Content:
You may either input the definition file or provide the replica set name in the type name format.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 122
Type: Concept  

Content:
However, remember that using the file name as input will not result in the number of replicas being updated automatically in the file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 123
Type: Concept  

Content:
In other words, the number of replicas in the replica set definition file will still be three, even though you scaled your replica set to have six replicas using the Kube control scale command and the file as input.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 124
Type: Concept  

Content:
There are also options available for automatically scaling the replica set based on load, but that is an advanced topic and we will discuss it at a later time.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 125
Type: Concept  

Content:
Let us now review the commands real quick.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 126
Type: Implementation Step  

Content:
The cube control create command as we know, is used to create a replica, set or basically any object in Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 127
Type: Concept  

Content:
Depending on the file we are providing as input, you must provide the input file using the dash f parameter.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 128
Type: Concept  

Content:
Use the cube control.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 129
Type: Implementation Step  

Content:
Get command to see list of replica sets created.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 130
Type: Implementation Step  

Content:
Use the cube control delete replica set command followed by the name of the replica set to delete the replica set, and then we have the cube control replace command to replace or update the replica set, and also the cube control scale command to scale replica set simply from the command line without having to modify the file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 131
Type: Concept  

Content:
That's it for this lecture.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 021_Recap - ReplicaSets
- File: 021_Recap - ReplicaSets.txt
- Topic: Recap - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---
