# Extraction: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional)

---

## Entry 1
Type: Concept  

Content:
-: Okay, so let's go over the lab for practicing taints and tolerations.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
So let's start with the first question, how many nodes exist on the system, including the control plane?

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
So let's look at the number of nodes. and we see that there are two nodes, control plane and node 01, so the answer is two.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Implementation Step  

Content:
Okay, so the next question is, do any taints exist on node 01 node?

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
So for that we're gonna have to take a closer look at node 01.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
So we do a kubectl describe node, node 01, and we see taints right here and we see that there are none, so there are no taints on this particular node.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
So I'm gonna select no going to clear my screen.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Implementation Step  

Content:
Okay, so the next question is to create a taint on node 01, with key of spray value of morteen, and effect of node schedule.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Exam Tip  

Content:
So we're gonna continue with the, the silly example that we used in the lecture of the spray and morteen and mosquito and bee.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Implementation Step  

Content:
So here the task is to create a taint.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
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
So we're gonna do kubectl taint and let's quickly look at the help.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 12
Type: Implementation Step  

Content:
So the command is kubectl of taint, and then nodes, then the name of the node, and then followed by these values, which are, the key has to be spray, and then the value is morteen, and then the effect is no schedule.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
So let's do that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 14
Type: Implementation Step  

Content:
So it's kubectl taint, node, and it's node 01, and then the key is spray, and the value is morteen, and the effect is no schedule.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
Okay, let's confirm that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
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
So we have the spray equals morteen, and the no schedule effect, right.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
So that's done.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 18
Type: Concept  

Content:
So we now have a taint on node 01.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Implementation Step  

Content:
Now the goal is to create a new pod with the nginx image and the pod name as mosquito, right?

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Implementation Step  

Content:
So we're gonna do a kubectl run and then that's a pod name, and image equals nginx.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Implementation Step  

Content:
Let's do get pods, and we see that it's created.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
Ignore the status for now.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
Okay, so what is the state of the pod?

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
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
So it seems to be in a pending state, so select pending.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
Now why do you think the pod is in a pending state?

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
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
Is it because image is not available?

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 27
Type: Troubleshooting  

Content:
Is there an error?

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
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
So let's see, let's do a describe pod, and the pod name.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
And here you'll see the reason why it's in a pending state. it says that the pod didn't tolerate one node that had taint and spray morteen that the pod didn't tolerate.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
So basically the pod mosquito cannot tolerate the taint morteen, that's a problem here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
So we're gonna select that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
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
Okay, so now we have to create another pod named bee, with the nginx image, which has a toleration set to the taint morteen.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Implementation Step  

Content:
So we're gonna do kubectl run command to create a pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
The name is going to be bee, and the image is going to be nginx.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
And basically, now we have to add toleration to it, but you cannot specify toleration in the command lane.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
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
So what we're gonna do is we're going do a dry run, equals client to generate a yamo file for this pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
So that's the yamo file and we're gonna redirect that to bee.yamo.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
So we have this in bee.yamo, we're going to edit bee.yamo file and we're going to add in tolerations.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
So add a section called tolerations.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 40
Type: Implementation Step  

Content:
Now if you're not sure of the format check out the Kubernetes documentation pages and search for chains tolerations, and that's the first result.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
And so these are, this is the command for taint, and this is the format for tolerations.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
So dash key operator value and effect, so that's key, so key is going to be spray, operator value and effect.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
So the value is going to be in effect that's going to be schedule, finally we have operator set be equal.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Implementation Step  

Content:
Operator set to equal, you save that, and let's create image.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
Okay, so it's now in a container creating state.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
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
Let's watch the creation process and we can see that it's now in a running state.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
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
So this pod is now running.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
Okay, so that's correct.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
Now notice the bee pod was scheduled on node 01, so let's see where it was scheduled.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Concept  

Content:
And we see the bee pod is on node 01.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
So basically now this bee was able to tolerate the taint set on node 01.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Concept  

Content:
Now do you see any taints on control plane node?

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
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
So let's look at the control plane node, and let's look at taints, and we see that yes, there is a taint set on the control plane node and it's set to no schedule, that's the effect.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Concept  

Content:
So yes, it's set, it's set to no schedule.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Concept  

Content:
Okay, now remove the taint on control plane, which currently has the taint effect of no schedule.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
So we've got to remove that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 57
Type: Implementation Step  

Content:
So first let's get that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 58
Type: Concept  

Content:
So this is the taint, so let's copy that, and the command to remove is the same, kubectl taint, and we just, that's by the node, that's control plane node, specify the taint that we want to remove, and at the end you've got to put a dash or a minus for it to remove that taint.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Concept  

Content:
So it says it's untainted, so let's confirm that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Concept  

Content:
Go back to taints, I see, that nothing is set.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
Let's click on check.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 62
Type: Concept  

Content:
Okay, so that's done.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
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
And now we've got to check the status of the pods again.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Concept  

Content:
And we see that the pod mosquito, which earlier was in a pending state, is now in a running state.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Concept  

Content:
So that's the state of the pod mosquito.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Implementation Step  

Content:
And then we have to, let's check on what node it is placed so as you can see it's now placed on the control plane node.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Implementation Step  

Content:
So earlier in the beginning the control plane node has a taint set on it, and then we set a taint on node 01 and then we created the mosquito pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Implementation Step  

Content:
And so it was not placed on any of the nodes because both of them had a taint then.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 69
Type: Implementation Step  

Content:
Then we created the bee pod with the toleration on node 01, so the bee pod was able to be placed on node 01, and then we removed the taint on control plane.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Concept  

Content:
And without doing anything the pod mosquito was automatically placed on control plane because it no longer has any kind of taint on it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Concept  

Content:
So it's, the answer to this is control plane.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
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
Okay, so that's the end of this lab.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 071_Solution - Taints and Tolerations (Optional)
- File: 071_Solution - Taints and Tolerations (Optional).txt
- Topic: Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---
