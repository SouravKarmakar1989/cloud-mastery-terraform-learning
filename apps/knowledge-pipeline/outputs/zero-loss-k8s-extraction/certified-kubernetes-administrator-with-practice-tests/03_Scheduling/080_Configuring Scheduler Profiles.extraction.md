# Extraction: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 080_Configuring Scheduler Profiles

---

## Entry 1
Type: Architecture  

Content:
Let us now look at what scheduler profiles are.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Architecture  

Content:
So let's first recap how the Kubernetes Scheduler works.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Exam Tip  

Content:
Using this simple example of scheduling a pod to one of these four nodes that you can see here that are part of the Kubernetes cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
So here we have our pod definition file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
And there's our pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
It is waiting to be scheduled on one of these four nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
Now it has a resource requirement of ten CPU.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
So it's only going to be scheduled on a node that has ten CPU remaining.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
And you can see the available CPU on all of these nodes that are listed here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
Now it is not alone.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
There are some other pods that are waiting to be scheduled as well.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Implementation Step  

Content:
So the first thing that happens is that when these pods are created, the pods end up in a scheduling queue.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
So this is where the pods wait to be scheduled.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
So at this stage, pods are sorted based on the priority defined on the pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
So in this case our pod has a high priority set.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Implementation Step  

Content:
So to set a priority you must first create a priority class that looks like this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Best Practice  

Content:
And you should set it a name and set it a priority value.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
In this case it's set to 1 million.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
So that's really high priority.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Implementation Step  

Content:
So this is how pods with higher priority gets to the beginning of the queue to be scheduled first.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
And so that sorting happens in this scheduling phase.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Implementation Step  

Content:
Then our pod enters the filter phase.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
This is where nodes that cannot run the pod are filtered out.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Warning/Pitfall  

Content:
So in our case the first two nodes do not have sufficient resources.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Warning/Pitfall  

Content:
So do not have ten CPU remaining.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
So they are filtered out.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Implementation Step  

Content:
The next phase is the scoring phase.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
So this is where nodes are scored with different weights from the two remaining nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Architecture  

Content:
The scheduler associates a score to each node based on the free space it will have after reserving the CPU required for that part.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Implementation Step  

Content:
So in this case the first one has two left and the second will have six left.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
So the second node gets a higher score.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
And so that's the node that gets picked up.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
And finally in the binding phase this is where the pod is finally bound to a node with the highest score.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
Now all of these operations are achieved with certain plugins.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Exam Tip  

Content:
For example while in the scheduling queue it's the priority sort plugin that sorts the pods in an order based on the priority configured on the pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
This is how pods with priority class gets higher priority over the other pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
When scheduling in the filtering stage, it's the Node Resources Fit plugin that identifies the nodes that has sufficient resources required by the pods, and filters out the nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
That doesn't.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Exam Tip  

Content:
Now, some other plugin examples that come into this particular stage are the node name plugin that checks if a pod has a node name mentioned in the pod spec, and filters out all the nodes that does not match this name.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Exam Tip  

Content:
Another example is the node unschedulable plugin, and that filters out nodes that has the Unschedulable flag set to true.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
So this is when you run the command on a node, which we will discuss later.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
But all the nodes that has unschedulable flags set to true.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
It's this particular plugin that makes sure that no pods are set on those nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
Now in the scoring phase again, the Node Resources Fit plugin associates a score to each node based on the resource available on it, and after the pod is allocated to it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Exam Tip  

Content:
So as you can see, a single plugin can be associated in multiple different phases.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Exam Tip  

Content:
Another example of a plugin in this stage would be the image locality plugin, that associates a high score to the nodes that already has the container image used by the pods among the different nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Warning/Pitfall  

Content:
Now note that at this phase, the plugins do not really reject the pod placement on a particular node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Exam Tip  

Content:
For example, in case of the image locality node, it ensures that pods are placed on a node that already has the image.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
But if there are no nodes available, it will anyway place the pod on a node that does not even have the image.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Concept  

Content:
So it's just a scoring that happens at this stage.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
And finally, in the binding phase, you have the default binder plugin that provides the binding mechanism.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Concept  

Content:
Now, the highly extensible nature of Kubernetes makes it possible for us to customize what plugins go where, and for us to write our own plugin and plug them in here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Concept  

Content:
And that is achieved with the help of what is called as extension points.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Concept  

Content:
So at each stage, there is an extension point to which a plugin can be plugged to.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Implementation Step  

Content:
In the scheduling queue, we have a short extension to which the Priority Sort plugin is plugged to, and then we have the filter extension, the the score and the bind extension to which each of these plugins that we just talked about are plugged two.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
As a matter of fact, there's more.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Concept  

Content:
So there are extensions before entering the filter phase called the Prefilter extension, and the and after the filter phase called post filter.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Implementation Step  

Content:
And then there are Pre-score before the score extension point and reserve after the extension point, the score extension point.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Implementation Step  

Content:
And then there is permit and pre bind before the bind and post bind after the binding phase.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Concept  

Content:
So there are so many options available.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
Basically you can get a custom code of your own to run anywhere in these points by just creating a plugin and plugging it into the respective kind of point that you want to plug into.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Concept  

Content:
And here is a little bit more details on some additional plugins that come by default that are associated with the different extension points.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Exam Tip  

Content:
As you can see, some of the plugins span across multiple extension points, and some of them are just within a specific extension point.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Concept  

Content:
So that's what scheduling plugins and extension points are.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Concept  

Content:
So the highly extensible nature of Kubernetes allows us to customize the way that these plugins are called and, and write our own scheduling plugin if needed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Operational Insight  

Content:
So having learned that, let's look at how we can change the default behavior of how these plugins are called and and and how we can get our own plugins in there if it's really needed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Architecture  

Content:
So taking a step back earlier, we talked about deploying three separate schedulers, each with a separate scheduler binary.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Architecture  

Content:
So we have the the default scheduler and then the my scheduler and then the my scheduler to.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Architecture  

Content:
Now all of these are three separate scheduler binaries that are run with a separate scheduler config file associated with each of them.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Exam Tip  

Content:
Now that's one way to deploy multiple schedulers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Concept  

Content:
Now the problem here is that since these are separate processes, there is an additional effort required to maintain these separate processes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Concept  

Content:
And also more importantly, since they are separate processes, they may run into race conditions while making scheduling decisions.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Exam Tip  

Content:
For example, one scheduler may schedule a workload on a node without knowing that there's another scheduler scheduling a workload on that same node at the same time.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Exam Tip  

Content:
So with the 1.18 release of Kubernetes, a feature to support multiple profiles in a single scheduler was introduced.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Exam Tip  

Content:
So now you can configure multiple profiles within a single scheduler in the scheduler configuration file by adding more entries to the list of profiles, and for each profile, specify a separate scheduler name.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Exam Tip  

Content:
So this creates a separate profile for each scheduler, which acts as a separate scheduler itself, except that now multiple schedulers are run in the same binary as opposed to creating separate binaries for each scheduler.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Architecture  

Content:
Now, how do you configure these different scheduler profiles to work differently?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Concept  

Content:
Because right now all of them just simply have different names.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Architecture  

Content:
So they're going to work just like the default scheduler.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Implementation Step  

Content:
How do you configure them to work differently?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 81
Type: Architecture  

Content:
Under each scheduler profile, we can configure the plugins the way we want to.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Exam Tip  

Content:
For example, for the scheduler two profile, I'm going to disable certain plugins like the Taint and Toleration plugin and enable my own custom plugins for the scheduler three profile.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Concept  

Content:
I'm going to disable all the Pre-score and score plugins, so this is how that's going to look.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 84
Type: Concept  

Content:
Under the plugins section, specify the extension point and enable or disable the plugins by name or pattern as shown in this case.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 85
Type: Concept  

Content:
So yeah, so that's about it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 86
Type: Exam Tip  

Content:
I hope that gives you an overview of how schedulers and scheduler profiles work, and how you can configure multiple scheduler profiles in Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 87
Type: Concept  

Content:
To read more about this, check out the Kubernetes enhancement proposal that introduced Multi Scheduling Profiles.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 88
Type: Concept  

Content:
It's the cap 1451 um that introduced the multi scheduling profiles and the article uh on scheduling framework.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 89
Type: Concept  

Content:
Well that's all for now.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 90
Type: Implementation Step  

Content:
I will see you in the next one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 080_Configuring Scheduler Profiles
- File: 080_Configuring Scheduler Profiles.txt
- Topic: Configuring Scheduler Profiles
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---
