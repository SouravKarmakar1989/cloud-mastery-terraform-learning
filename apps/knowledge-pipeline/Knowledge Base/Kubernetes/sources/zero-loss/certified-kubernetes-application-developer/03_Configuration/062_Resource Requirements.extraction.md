# Extraction: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements

---

## Entry 1
Type: Concept  

Content:
Let's look at resource requirements.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
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
Let us start by looking at a three node Kubernetes cluster.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
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
Each node has a set of CPU and memory resources available.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
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
Now every pod requires a set of resources to run.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 5
Type: Exam Tip  

Content:
In this case, for example, this pod requires two CPUs and one memory unit.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
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
Now, whenever a pod is placed on a node, it consumes the resources available on that node.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 7
Type: Architecture  

Content:
Now, as we have discussed before, it is the Kubernetes Scheduler that decides which node a pod goes to.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 8
Type: Architecture  

Content:
The scheduler takes into consideration the amount of resources required by a pod and those available on the nodes, and identifies the best node to place a pod on.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 9
Type: Architecture  

Content:
In this case, the scheduler schedules a new pod on node two because there are sufficient resources available on that node.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
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
If nodes have no sufficient resources available.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 11
Type: Best Practice  

Content:
The scheduler avoids placing the pod on those nodes, and instead places the pod on one where sufficient resources are available, and if there is no sufficient resources available on any of the nodes, then the scheduler holds back, scheduling the pod and you will see the pod in a pending state.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
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
And if you look at the events using the kube control describe pod command, you will see there is an insufficient CPU.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
Now let us now focus on the resource requirements for each pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
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
So what are these blocks and what are their values.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
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
Now you can specify the amount of CPU and memory required for a pod when creating one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Exam Tip  

Content:
For example, it could be one CPU and one GB of memory and this is known as the resource request for a container.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 17
Type: Concept  

Content:
So the minimum amount of CPU or memory requested by the container.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 18
Type: Architecture  

Content:
So when the scheduler tries to place the pod on a node, it uses these numbers to identify a node which has sufficient amount of resources available.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 19
Type: Concept  

Content:
So to do this in the the sample pod definition file, all you need to do is add a section called resources under which add requests and specify the new values for memory and CPU usage.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
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
In this case, I set it to four GB of memory and two counts of CPU.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Architecture  

Content:
So when the scheduler gets a request to place this pod, it looks for a node that has this amount of resources available.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
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
And when the pod gets placed on a node, the pod gets a guaranteed amount of resources available for it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
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
So what does one count of CPU really mean?

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
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
Now you can specify any value as low as 0.1.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
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
So 0.1 CPU can also be expressed as 100 M, where M stands for milli, and you can go as low as one M, but not lower than that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
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
Uh, now one count of CPU is equivalent to one Vcpu so that's one vcpu in AWS.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
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
So if you're looking at the AWS cloud, or it could be referred to as one core in GCP or Azure or one hyper thread, um, on other other systems, and you could request a higher number of CPUs for the container provided your nodes are sufficiently funded.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Exam Tip  

Content:
In this example, I have set it to five.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 29
Type: Troubleshooting  

Content:
Now, similarly with memory, you could specify 256 mebibyte using the mi suffix, or specify the same value in memory like this.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
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
That's the um, the full number, the whole number, and or specify the same, uh, value in memory like this as m.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Troubleshooting  

Content:
So um, or use the suffix g for uh, gigabyte.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Comparison  

Content:
So note the difference between g and g.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
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
So g is gigabyte and it refers to 1000MB, whereas g refers to GB byte.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 34
Type: Concept  

Content:
And that that would be equivalent to 1024MB.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
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
So the same applies to megabyte and maybe byte in kilobyte and kibibyte.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 36
Type: Concept  

Content:
Now let's look at a container running on a node, and by default, a container has no limit to the resources it can consume on a node.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
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
So say a container that's part of a pod starts with one CPU.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
Um, on a node, it can go up and consume as much resources as it requires.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
And, and that suffocates the native processes on the node or other containers of resources.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
Um, however, you can set a limit for the resource usage on these pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 41
Type: Exam Tip  

Content:
For example, if you set a limit of one vcpu to um, the containers, a container will be limited to consume only one vcpu uh, from that node.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 42
Type: Concept  

Content:
So the same goes with memory.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
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
For example, you can set a limit of 512 megabyte on containers.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
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
Um, like this.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 45
Type: Concept  

Content:
Now you can specify the limits under the limits section.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 46
Type: Concept  

Content:
Under the resources section in your Pod definition file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 47
Type: Concept  

Content:
So here specify the new limits for memory and CPU.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 48
Type: Concept  

Content:
Like this.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 49
Type: Implementation Step  

Content:
Now when the pod is created, Kubernetes sets new limits for the container.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
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
And remember that the limits and requests are set for each container within a pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 51
Type: Exam Tip  

Content:
So if there are multiple containers, then each container can have a request or limit set for its own.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
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
So what happens when a pod tries to exceed resources beyond its specified limit?

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 53
Type: Concept  

Content:
In case of the CPU, the system throttles the CPU so that it does not go beyond the specified limit.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
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
A container cannot use more CPU resources than its limit.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
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
However, this is not the case with memory.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
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
A container can use more memory resources than its limit, so if a pod tries to consume more memory than its limit constantly.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 57
Type: Troubleshooting  

Content:
The pod will be terminated and you'll see that the pod terminated with an error in the logs or in the output of the describe command when you run it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Concept  

Content:
So that's what is Om refers to out of memory kill.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
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
So now that we have learned what resource requests are and what limits are and how they function, and what happens when a particular container or pod hits the limits of that were defined.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Concept  

Content:
Let's see what the default configuration is right?

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
So by default Kubernetes does not have a CPU or memory request or limit set.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
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
So this means that any pod can consume as much resources as required on any node, and suffocate other pods or processes that are running on the node of resources.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 63
Type: Concept  

Content:
So this is very, very important to note.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
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
So let's just look at how CPU requests and limits work.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 65
Type: Concept  

Content:
Let's say there are two pods competing for CPU resources on the cluster.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 66
Type: Concept  

Content:
And when I say pod, I mean a container within a pod, right?

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Concept  

Content:
So just keep that in mind.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 68
Type: Concept  

Content:
So without a resource or a limit set, one pod can consume all the CPU resources on the node and prevent the second part of required resources.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 69
Type: Concept  

Content:
So of course this is not ideal.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 70
Type: Concept  

Content:
Now let's look at another case where we have no request specified.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 71
Type: Concept  

Content:
But we do have limits specified.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 72
Type: Concept  

Content:
In this case, Kubernetes automatically sets requests to the same as limits.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 73
Type: Exam Tip  

Content:
For example, requests and limits are assumed to be three in this case, and each pod is guaranteed three vCPUs and no more than that as limits are also set to the same.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Implementation Step  

Content:
The next one is where requests and limits are set.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 75
Type: Concept  

Content:
In this case, each pod gets a guaranteed number of CPU requests, which is one vcpu and can go up to the limits that is defined, which is three vcpu, but not more.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 76
Type: Concept  

Content:
So this might look to be the most ideal scenario.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 77
Type: Warning/Pitfall  

Content:
However, the issue is that if Pod one needs more CPU cycles for some reason and pod two isn't really consuming that many CPU cycles, then we don't want to limit pod one of CPU, right?

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 78
Type: Concept  

Content:
So we'd like to allow pod one to use the available CPU cycles, as long as pod two doesn't, um, really need it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Implementation Step  

Content:
So if there are sufficient CPU cycles available on the system, then why not let the pods use them?

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 80
Type: Concept  

Content:
Right?

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 81
Type: Warning/Pitfall  

Content:
So we don't want to unnecessarily limit resources of CPU cycles.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 82
Type: Concept  

Content:
So, uh, that's uh, that is not really the ideal scenario.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 83
Type: Concept  

Content:
And that's where the last, um, scenario comes in.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 84
Type: Concept  

Content:
So setting requests but no limits in this case because requests are set each pod is guaranteed one vcpu.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 85
Type: Concept  

Content:
However, because limits are not set when available, any pod can consume as many CPU cycles as available.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 86
Type: Implementation Step  

Content:
But at any point in time, If pod two is, uh, requires additional, uh, CPU cycles or whatever it is it has requested, then it will be guaranteed its requested CPU cycle.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 87
Type: Concept  

Content:
So this is the most ideal setup.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 88
Type: Concept  

Content:
Of course, there are cases where you absolutely may want to limit a pod of resources, and in that case you may set limits.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 89
Type: Exam Tip  

Content:
For example, a good use case for setting limits is our labs themselves, where, um, all the labs that you've been, you guys have been going through and accessing, um, as part of this course, they are hosted as containers, um, on a cluster.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 90
Type: Concept  

Content:
Right.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
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
And since it's made accessible to public and um, users, uh, can run any kind of workload that they want, we set limits to prevent the user from misusing the infrastructure to, let's say, perform Bitcoin mining or, um, other resource consuming activities.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 92
Type: Concept  

Content:
So that works for us in that case.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 93
Type: Warning/Pitfall  

Content:
But in your case, if you don't want to restrict your application to consume additional CPU, uh, if needed, then you could consider not setting limits.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 94
Type: Concept  

Content:
But remember, if you were to do that, you need to make sure that all the pods have some request set, because that's the only way a pod will have resources guaranteed when there are no limits set for other pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 95
Type: Concept  

Content:
Right.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
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
So if there is any pod that has no request set and and there are no limits set for all the all the other pods, then it's possible that any pod could consume all the memory, all the CPU that's available on the node, and starve the pod that has no request defined.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 97
Type: Concept  

Content:
So just make sure that you have set requests for all the nodes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 98
Type: Concept  

Content:
So a couple of things to note.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 99
Type: Exam Tip  

Content:
The requests and limits may be different for each pod, but for the sake of simplicity we are assuming that it's the same for, um, both, uh, pods in these examples that I'm sharing here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 100
Type: Concept  

Content:
Right.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
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
But you can have absolutely different requests or limit set for containers for each containers within each pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 102
Type: Concept  

Content:
So also note that these recommendations are just for CPU.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 103
Type: Implementation Step  

Content:
So um, let's look at how it works for memory next.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 104
Type: Concept  

Content:
So it's kind of similar.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 105
Type: Concept  

Content:
So if you look at the memory let's say there are two.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 106
Type: Implementation Step  

Content:
In the first case there are two pods competing for memory resources on the cluster.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 107
Type: Concept  

Content:
And without a resource or limit set, one pod can consume all the memory resources on the node and prevent the second pod of required resources.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 108
Type: Concept  

Content:
So this is not ideal.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 109
Type: Concept  

Content:
Now let's look at the case where we have no requests specified.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 110
Type: Concept  

Content:
But we do have limits specified.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 111
Type: Concept  

Content:
And in this case Kubernetes automatically sets requests to the same as limits.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 112
Type: Exam Tip  

Content:
So for example requests and limits are assumed to be three gigabytes in this case.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 113
Type: Concept  

Content:
And each pod is guaranteed three gigabytes and no more as limits is also the same.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 114
Type: Implementation Step  

Content:
The next one is where requests and limits are set.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 115
Type: Concept  

Content:
In this case, each pod gets a guaranteed amount of memory, which is one GB byte and can go up to the limits defined, which is three gigabytes but not more.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 116
Type: Concept  

Content:
And the last one is setting requests, but no limits.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 117
Type: Concept  

Content:
In this case, because requests are set, each pod is guaranteed one GB byte.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 118
Type: Concept  

Content:
However, because limits are not set when available, any pod can consume as much memory as available, and if part two requests more memory to free up part one, the only option available is to kill it now because unlike CPU, we cannot throttle memory.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 119
Type: Concept  

Content:
Once memory is assigned to a part, the only way to retrieve it is to kill the pod and free up all the memory that are used by it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 120
Type: Implementation Step  

Content:
Okay, so now, as we discussed before, by default Kubernetes does not have resource requests or limits configured for pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 121
Type: Implementation Step  

Content:
But then how do we ensure that every pod created has some defaults?

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 122
Type: Concept  

Content:
Um, set.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 123
Type: Concept  

Content:
Now this is possible with limit ranges.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 124
Type: Implementation Step  

Content:
So limit ranges can help you define default values to be set for containers in pods that are created without a request or limit specified in the Pod definition files.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 125
Type: Concept  

Content:
This is applicable at the namespace level.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 126
Type: Concept  

Content:
So remember that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 127
Type: Concept  

Content:
And this is an object.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 128
Type: Implementation Step  

Content:
So you create a definition file with the API version set to v1 kind set to limit range.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 129
Type: Concept  

Content:
And we'll give it a name CPU resource constrained.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 130
Type: Implementation Step  

Content:
We then set the default limit to 500.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 131
Type: Concept  

Content:
M default request to the same as well.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 132
Type: Concept  

Content:
Um, we will also specify a max CPU as one and a minimum as 100 M, so the max refers to the maximum limit that can be set on a container in a pod, and minimum refers to the minimum request a container in a pod can make.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 133
Type: Exam Tip  

Content:
So these are of course some example values, not a recommendation or anything.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 134
Type: Concept  

Content:
So you must set whatever is best for your applications.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 135
Type: Concept  

Content:
Um so the same goes for memory.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 136
Type: Concept  

Content:
Uh, use memory instead of CPU and specify the defaults and max and min values in this in this form.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 137
Type: Implementation Step  

Content:
And note that these limits are enforced when a pod is created.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 138
Type: Implementation Step  

Content:
So if you create or change a limit range it does not affect existing pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 139
Type: Implementation Step  

Content:
It will only affect newer pods that are created after the limit range is created or updated.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 140
Type: Implementation Step  

Content:
And finally, is there any way to restrict the total amount of resources that can be consumed by applications deployed in a Kubernetes cluster.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 141
Type: Best Practice  

Content:
For example, if we had to say that all the pods together shouldn't consume more than this much of CPU or memory.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 142
Type: Implementation Step  

Content:
What we could do is create quotas at a namespace level.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 143
Type: Implementation Step  

Content:
So a resource quota is a namespace level object that can be created to set hard limits for requests and limits.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 144
Type: Exam Tip  

Content:
In this example, this resource limits the total requested CPU and the current namespace to four and memory to four gigabyte.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 145
Type: Concept  

Content:
And it defines a maximum limit of CPU consumed by all the parts together to be ten and memory to be um, ten gigabyte as well.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 146
Type: Concept  

Content:
Right.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 147
Type: Concept  

Content:
So that's um, that's another option, uh, that can be explored.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 148
Type: Concept  

Content:
Well, uh, that's all for now.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 149
Type: Implementation Step  

Content:
Uh, refer to these pages on the Kubernetes documentation site for more information, and head over to the labs, and I'll see you in the next one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 062_Resource Requirements
- File: 062_Resource Requirements.txt
- Topic: Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---
