# Extraction: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes

---

## Entry 1
Type: Concept  

Content:
Let us now look at priority classes in Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
We know that Kubernetes runs different applications as pods with different priorities.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Exam Tip  

Content:
For example, the Kubernetes control plane components itself run as pods within the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
And we know that no matter what, those workloads need to always run.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
Similarly, we may have priority databases, critical applications running on the cluster as well as lower priority workloads like background jobs.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
Now, we need a way to make sure that higher priority workloads always get scheduled without being interrupted by lower priority workloads.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
This is where priority classes come in.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
Priority classes help us define priorities for different workloads, so that higher priority workloads always get priority over lower priority ones.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Architecture  

Content:
If a higher priority pod cannot be scheduled, the scheduler will try to terminate a lower priority workload to make that happen.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Implementation Step  

Content:
So priority classes are non namespaced objects, meaning they are not created within a specific namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
They are not attached to a specific namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Implementation Step  

Content:
So once they're created, they're available to be configured on any port in any namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
So how do you define priorities?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
We define priorities using a range of numbers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
So a priority can be defined as high as 1 billion and as low as -2 billion or around that number.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
A larger number indicates higher priority.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Implementation Step  

Content:
Now this range that I've just mentioned is for the applications and workloads that are deployed on the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Implementation Step  

Content:
So the positive 1 billion to -2 billion number is for the applications or workloads that are deployed as apps on the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
But there is a separate range that's dedicated for internal system critical parts such as the Kubernetes control plane components itself.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
So they always get the highest priority. and they have priorities up to 2 billion.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
So to list existing priority classes run the kubectl get priority class command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
And as you can see it currently lists the system cluster critical and system node critical classes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
And as you can rightly see the value of these are close to 2 billion or around that range.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Implementation Step  

Content:
Let us now see how we can create a new priority class.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Implementation Step  

Content:
So to create a new priority class, we create an object with the API version set to scheduling v1 kind set to priority class metadata with a name.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Implementation Step  

Content:
And then we define the value.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
So this is the number that we just spoke about.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
And finally we have the description.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
The description is an optional field.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Implementation Step  

Content:
Once this is created we associate this priority class to a pod by using the priority class name property inside the pod definition.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
Like this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 32
Type: Implementation Step  

Content:
When that pod is created, it is assumed to have this priority that is assigned to the priority class.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Warning/Pitfall  

Content:
Now, what if I don't specify a priority class name for a pod?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
By default it is assumed to have a priority value of zero.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Implementation Step  

Content:
However, if you'd like to modify that, you must create a new priority class and assign the global default property to true.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
So this is an optional field, but it can be used to define the default priority of all the pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
If there are no priority class name explicitly defined in that pod's configuration file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
So as such.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Exam Tip  

Content:
Also note that it can only be defined in a single priority class, so the global default property can only be defined in a single priority class because you cannot have multiple default values, right?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
So you cannot have more than one priority class with the global default property set to true.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
Now let us look at the effect of pod priority.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
So say there are two workloads with two priorities coming in to be scheduled a critical app with a higher priority of seven, and a jobs app with a lower priority of five.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Implementation Step  

Content:
Now, since the critical app is of higher priority, it gets, uh, placed first.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
And if there is still resources available.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
So what you see here are the available resources on the cluster or the consumption of the resources on the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
So there is still some more resources left.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
So the workload with the lower priority also gets placed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Implementation Step  

Content:
Uh next uh after the higher priority pod gets placed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
Now let's say we have a higher priority job that comes in with a priority of six.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Concept  

Content:
And there are no more resources available on the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
What happens?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Concept  

Content:
Do we evict existing workload or does it wait?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Concept  

Content:
What does it do?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Operational Insight  

Content:
Now that behavior is defined by the preemption policy defined in the priority class assigned to the new workload.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Concept  

Content:
If the preemption policy is not set, its default value is set to preempt a lower priority.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
This means that it would kill the existing lower priority job and take its place.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Warning/Pitfall  

Content:
But if you do not want it to kill or evict the existing workload, and instead wait for the cluster resources to free up, then you must set this preemption policy to never.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Concept  

Content:
So a preemption policy set to never makes the pods in that priority class non preempting, meaning that they cannot preempt other pods and it will wait to be scheduled in the scheduling queue.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Concept  

Content:
However, they will get a higher priority in scheduling over other lower priority pods that are also waiting to be scheduled.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Concept  

Content:
So there's the priority still applies only when it is going to be scheduled.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
But will it kill the existing preempt, or will it evict the existing workload or not?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Concept  

Content:
That is defined by the preemption policy.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Concept  

Content:
Well, that's it for this lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
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
Head over to the labs and practice what we just learned.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 075_Priority Classes
- File: 075_Priority Classes.txt
- Topic: Priority Classes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
