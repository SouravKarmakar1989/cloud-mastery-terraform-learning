# Extraction: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 025_Solution _ Pods with YAML Lab

---

## Entry 1
Type: Concept  

Content:
Okay.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
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
So let's go over the solution for the labs on pot.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
So in this lab, we're going to get familiar with pods.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Implementation Step  

Content:
So the first question is how many parts exist on the system?

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
Now we know that we can get the information about parts using the Q get parts command.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
That's what we learn.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
So we're going to run the parts command and you can ignore this line here that says in the current default namespace.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
So we're going to talk about namespaces in one of the upcoming lectures.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Warning/Pitfall  

Content:
So you don't have to worry about that for now.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
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
This is for those who already know what a namespace is.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 11
Type: Implementation Step  

Content:
If you know, then just make sure you're checking the number of parts in the current default namespace.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
So when we run the Q code will get parts command.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
We see the result is zero.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
There are no resources found.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 15
Type: Concept  

Content:
So we're going to select zero here.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Implementation Step  

Content:
So the next is a task.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Implementation Step  

Content:
So we've got to create a new pod with the next image.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Implementation Step  

Content:
So to create a pod.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
The easiest way is to run the cattle run command and we specify the image.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
So we have to specify a name and an image.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 21
Type: Concept  

Content:
So if you're not sure about the syntax, run the help command and we see.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
It's the name of the party, followed by the image that's from it.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
So we're going to run that.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
Let's kepco run.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
And since the there's no specification about the name of the pot, so we could basically name it anything.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Implementation Step  

Content:
But the image name has to be the next.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Implementation Step  

Content:
So the body's is created.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
Now.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 29
Type: Implementation Step  

Content:
How many pods are created now?

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Implementation Step  

Content:
We've created a few more pods, so please check again.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 31
Type: Concept  

Content:
So let's run pods.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
Command.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
Okay.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 34
Type: Implementation Step  

Content:
So in addition to the engine export that we created, there are a few other parts that were created.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
By us, basically.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
So there are in a total one, two, three, four pots at the moment.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
So let's select for.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Implementation Step  

Content:
What is the image used to create the new pods?

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
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
You must look at one of the new pods in detail to figure this out.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
So let's pick one of the pods.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
This one.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
And when you know that, to look at it in detail, we've got to run the queue to describe that.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
So now we have additional details about the pod.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
So this is the name of the pod.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
And you have the start time and a number of other details.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Implementation Step  

Content:
So the question is, what is the image used to create the new pods?

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 47
Type: Concept  

Content:
So we know that this tells us the containers.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 48
Type: Concept  

Content:
And here you have the image and the image is busy box.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
So I select this box.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Concept  

Content:
Okay.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 51
Type: Concept  

Content:
Now, which nodes are these pods placed on?

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Concept  

Content:
You must look at all the pods in detail to figure this out.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
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
So one way to do this is we've already run the described pod command and we can see that this is on node control plane and we could actually run the the described command against each pod.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Concept  

Content:
So that's one way to figure that out.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 55
Type: Concept  

Content:
Another way and an easier way to just run queue to get pods command with the white option.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
And here you get to see the node and it's a control plane.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Implementation Step  

Content:
So all of the new parts are created on the controlled payload select control plane.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Concept  

Content:
Okay.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 59
Type: Concept  

Content:
And how many containers are part of the pod web app?

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Implementation Step  

Content:
So there's a new pod created with this one.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
It pods command to see web app.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Concept  

Content:
So if if you look at this column right here, it shows us the total number of containers part of the pot.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Concept  

Content:
So this number right here is the total number of containers.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 64
Type: Concept  

Content:
So that's one way to figure that out or to always run the describe command.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Concept  

Content:
To see that in detail.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Implementation Step  

Content:
So here you see containers and then you have one container here that's engine X and the other one right here.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Concept  

Content:
So those are the two containers you select to.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Implementation Step  

Content:
Then you have what images are used in the new web app Pod.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 69
Type: Concept  

Content:
You must look at all the parts in detail to figure this out.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Best Practice  

Content:
Actually it should be.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Concept  

Content:
You must look at all the containers in detail.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Concept  

Content:
So here you have two containers and.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Concept  

Content:
If you look at if you look here, you see that the image for engine X is engine X and the one for Agent X is called Agent X.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Concept  

Content:
So there's engine X and Agent X.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 75
Type: Concept  

Content:
Those are the images used for those containers.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 76
Type: Concept  

Content:
So this one.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Concept  

Content:
Now what is the state of the container?

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Concept  

Content:
Agent X the pod web app.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Concept  

Content:
So if you look at the container here and you see there are there is a state.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Concept  

Content:
And it is in a waiting state at the moment.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 81
Type: Concept  

Content:
So out of these, it's not running ready or success.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Troubleshooting  

Content:
It's actually error or waiting.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Concept  

Content:
So this is the state.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 84
Type: Concept  

Content:
Okay.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 85
Type: Troubleshooting  

Content:
Now, why do you think the container age index import is in an error or rating state?

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 86
Type: Concept  

Content:
So try to figure it out from the events section of the pot.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 87
Type: Concept  

Content:
So if you look at.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 88
Type: Troubleshooting  

Content:
One of the section here under state you have the reason we call this error image pool.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 89
Type: Concept  

Content:
Or if you just.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 90
Type: Troubleshooting  

Content:
Look at it below here in the event section, you can see the error.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 91
Type: Concept  

Content:
Just basically this one it says fail to pull image agent x.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 92
Type: Concept  

Content:
And.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 93
Type: Concept  

Content:
At IO slash library slash agent X.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 94
Type: Concept  

Content:
So this image by the name Agent X does not exist.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 95
Type: Concept  

Content:
And that's basically the reason that is failing.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 96
Type: Concept  

Content:
So the correct answer is a Docker image with this name doesn't exist on Docker Hub.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 97
Type: Implementation Step  

Content:
Now what is the ready column in the output of the cubicle will get part command indicate so if you go up here we have the output of the get pass command and here you see have 1/1 here and then you have 1/2.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 98
Type: Concept  

Content:
So what does this mean?

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 99
Type: Concept  

Content:
Now we know that this is the total containers within the pod and this is basically, of course, the ones that are ready.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 100
Type: Concept  

Content:
So at the moment, there's only one ready out of the two.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 101
Type: Concept  

Content:
And we know that because this image does not exist.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 102
Type: Concept  

Content:
And of course, that's why that container isn't ready yet.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 103
Type: Concept  

Content:
So it's basically the total containers that are ready slash just the total containers within the pod.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
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
So that's total containers in the pod or running containers in the pod slash total containers in the pod.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 105
Type: Concept  

Content:
So that's the correct answer.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 106
Type: Implementation Step  

Content:
So the next task is to delete the web app.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 107
Type: Concept  

Content:
So let's run the typical delete command.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 108
Type: Concept  

Content:
And.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 109
Type: Concept  

Content:
Delete the web app pod.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 110
Type: Concept  

Content:
Okay.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 111
Type: Concept  

Content:
That's deleted.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 112
Type: Implementation Step  

Content:
Let's go to the next one and create a new pod with the name lettuce and with the image.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 113
Type: Concept  

Content:
Red is one, two, three.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 114
Type: Concept  

Content:
And the recommendation is to use a pod definition yaml file and the image name is wrong.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 115
Type: Concept  

Content:
So the image name is wrong.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 116
Type: Concept  

Content:
So we could do this in two ways.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 117
Type: Concept  

Content:
So as we know, we could run the cuttle run command and the name of the pod is Redis is the name of the image is.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 118
Type: Concept  

Content:
With this one, two, three.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 119
Type: Implementation Step  

Content:
You can basically just create it like this.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 120
Type: Concept  

Content:
But we just want to get familiar with generating the ML file and creating it with the definition file.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 121
Type: Concept  

Content:
So let's use the dry run option.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 122
Type: Concept  

Content:
And.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 123
Type: Concept  

Content:
Output.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 124
Type: Concept  

Content:
The.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 125
Type: Concept  

Content:
The command in a format.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 126
Type: Concept  

Content:
Okay.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 127
Type: Concept  

Content:
So.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 128
Type: Concept  

Content:
So this is basically.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 129
Type: Warning/Pitfall  

Content:
And it says dry run command is deprecated and is replaced with the dry run equals client.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 130
Type: Concept  

Content:
So let's run that.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
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
Okay.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 132
Type: Concept  

Content:
So this is the file.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 133
Type: Concept  

Content:
So let's direct it to a file.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 134
Type: Concept  

Content:
We call it where this?

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 135
Type: Concept  

Content:
But Yamal.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 136
Type: Concept  

Content:
So we have the annual definition for that pod in this file.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 137
Type: Implementation Step  

Content:
So we're now going to create.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 138
Type: Implementation Step  

Content:
The pod using the cube color create.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 139
Type: Implementation Step  

Content:
Or apply command.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 140
Type: Concept  

Content:
So let's.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 141
Type: Concept  

Content:
So with the command.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 142
Type: Implementation Step  

Content:
So it's created.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 143
Type: Concept  

Content:
Let's verify.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 144
Type: Implementation Step  

Content:
That it's created.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 145
Type: Concept  

Content:
Okay.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 146
Type: Troubleshooting  

Content:
So it's graded and it's in an error image pool state because we have the wrong image name.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 147
Type: Concept  

Content:
So that's fine.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 148
Type: Concept  

Content:
Let's click on check.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 149
Type: Concept  

Content:
Okay.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 150
Type: Concept  

Content:
Successful.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 151
Type: Troubleshooting  

Content:
And the last question for this lab is to change the image on this pod, to read this, to fix that error that we purposefully create, and to get the pod in a running state.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 152
Type: Concept  

Content:
So there are two ways to do that.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 153
Type: Concept  

Content:
You could run the shuttle.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 154
Type: Concept  

Content:
And it's command.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 155
Type: Concept  

Content:
To edit the pod or since we already have.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 156
Type: Concept  

Content:
There are this file, you could just go in and change the file.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 157
Type: Concept  

Content:
So let's go and do that.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 158
Type: Concept  

Content:
Okay.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 159
Type: Concept  

Content:
I've changed.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 160
Type: Concept  

Content:
The image name.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 161
Type: Implementation Step  

Content:
I'm just going to apply.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 162
Type: Concept  

Content:
The changes.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 163
Type: Concept  

Content:
Okay.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 164
Type: Concept  

Content:
Let's check at it.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 165
Type: Troubleshooting  

Content:
Now we'll talk about this error message later when we talk about imperative commands and the declarative way that we apply.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 166
Type: Concept  

Content:
But for now, let's stick to the basics.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 167
Type: Concept  

Content:
Let's just make sure the change was successful.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 168
Type: Concept  

Content:
So when I run the QR code will get port command.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 169
Type: Concept  

Content:
We see that the port is in a running state.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 170
Type: Concept  

Content:
Toronto.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 171
Type: Concept  

Content:
All right.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 172
Type: Concept  

Content:
So that's the end of the lab.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 173
Type: Implementation Step  

Content:
Let's hit the lab button and I'll see you in the next one.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 025_Solution _ Pods with YAML Lab
- File: 025_Solution _ Pods with YAML Lab.txt
- Topic: Solution _ Pods with YAML Lab
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
