# Extraction: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional)

---

## Entry 1
Type: Concept  

Content:
Instructor: Okay, so let's go over the lab for practicing taints and tolerations.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
So let's start with the first question.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
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
How many nodes exist on the system?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
Including the control plane?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
So let's look at the number of nodes and we see that there are two nodes, control plane and node zero one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
So the answer is two.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Implementation Step  

Content:
Okay, so the next question is, do any taints exist on node zero one node?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
So for that we're gonna have to take a closer look at node zero one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
So we do a kubectl, describe node, node zero one and we see taints right here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
And we see that there are none.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
So there are no taints on this particular node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
So I'm gonna select, no.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
It's going to clear my screen.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Implementation Step  

Content:
Okay, so the next question is to create a taint on node zero one with key of spray value of martin and effect of NoSchedule.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Exam Tip  

Content:
So we're gonna continue with the, the silly example that we used in the lecture of the spray and martin, and mosquito and B.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Implementation Step  

Content:
So here the task is to create a taint.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
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
So we're gonna do kubectl taint and let's quickly look at the help.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 18
Type: Implementation Step  

Content:
So the command is kubectl taint, and then nodes then the name of the node, and then followed by these values, which are the key has to be spray, and then the value is martin.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Implementation Step  

Content:
And then the effect is NoSchedule.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
So let's do that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 21
Type: Implementation Step  

Content:
So it's kubectl paint, node, and it's node zero one, and then the key is spray and the value is obtain, and the effect is NoSchedule.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
Okay?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
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
Okay, let's confirm that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
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
So we have the spray equals martin and the NoSchedule effect, right?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
So that's, that's done.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
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
So we now have attained on node zero one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Implementation Step  

Content:
Now the goal is to create a new pod with the engine X image, and the pod name as mosquito, right?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Implementation Step  

Content:
So we're gonna do a kubectl run, and then, that's the pod name.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
Image equals engine X.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
Let's do...

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
Get pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Implementation Step  

Content:
And we see that, it's created.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
Ignore the, the, the status for now.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
Okay, so what is the state of the pod?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
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
So it seems to be in a pending state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
So select pending.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
Now why do you think the pod is in a pending state?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
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
Is it because image is not available?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 39
Type: Troubleshooting  

Content:
Is there an error?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
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
So let's see, let's do describe pod in the pod name.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
And here you'll see the, the reason why it's in a pending state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
It says that the pod didn't tolerate one node that had taint and spraying martin that the pod didn't tolerate.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
So basically the pod mosquito cannot tolerate the taint. martin, that's, that's the problem here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
So we're gonna select that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
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
Okay, so now we have to create another pod named B with the engine X image.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
Which has a toleration set to the taint martin.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Implementation Step  

Content:
So we're gonna do a kubectl, run command, to create a pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
The name is going to be B, and the image is going to be engine X.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
And basically, now we have to add toleration to it, but you cannot specify toleration in the command lane.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
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
So what we're gonna do is we're gonna do a, a dry run, equals client, to generate AMO file for this pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
So that's the AMO file and we're gonna redirect that to B.AMO.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Concept  

Content:
So we have this in, in B.AMO, we're going to edit B.AMO file, and we're going to add in tolerations.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Concept  

Content:
So add a section called tolerations.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
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
Now if you're not sure of the, the format check out the Kubernetes documentation pages, and search for chains tolerations.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Implementation Step  

Content:
And that's the first result.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
And these are, this is the command for taint, and this is, this is the format for tolerations.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Concept  

Content:
So dash key operator value and effect.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Concept  

Content:
So that's key.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Concept  

Content:
So key is going to be spray, operator, value, and effect.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Concept  

Content:
So the value is going to be seen, effect is going to be audio, finally we have operator just to be equal, operator set to equal.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
You save that...

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Implementation Step  

Content:
And let's create image.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Concept  

Content:
Okay, so it's now in a container creating state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
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
Let's watch the creation process and we can see that it's now in a running state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
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
So this part is now running.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Concept  

Content:
Okay, so that's, that's correct.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Concept  

Content:
Now noticed the B pod was scheduled on node zero one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Concept  

Content:
So let's see where it was scheduled.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Concept  

Content:
And we see the B pod is on node zero one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Concept  

Content:
So basically, now this B was able to tolerate the taint set on node zero one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Concept  

Content:
Now do you see any taints on control plane node?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
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
So let's look at the control plane node and let's look at taints.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Concept  

Content:
And we see that yes, there is a taint set on the control plane node and it's set to NoSchedule.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Concept  

Content:
That's the effect.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Concept  

Content:
So yes, it's set, it's set to NoSchedule.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Concept  

Content:
Okay, now remove the taint on control plane, which currently has the taint effect of NoSchedule.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Concept  

Content:
So we've got to remove that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 78
Type: Implementation Step  

Content:
So first let's get that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 79
Type: Concept  

Content:
So this is the taint, so let's copy that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Concept  

Content:
And the command to remove it is the same kubecolor taint.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 81
Type: Concept  

Content:
And you just specify the node, that's control point node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Concept  

Content:
Specify the 10 that we wanna remove and at the end you've got to put a dash or a minus for it to remove that 10.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Concept  

Content:
So it says it's untainted.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 84
Type: Concept  

Content:
So let's confirm that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 85
Type: Concept  

Content:
Go back to taints and see it's, nothing is set.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 86
Type: Concept  

Content:
Just click on check.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 87
Type: Concept  

Content:
Okay, so that's, that's done, and now we've got to check the status of the pods again.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 88
Type: Concept  

Content:
And we see that the, the pod mosquito, which earlier was in a pending state, is now in a running state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 89
Type: Concept  

Content:
So that's the state of, of the pod mosquito.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 90
Type: Implementation Step  

Content:
And then we have to...

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 91
Type: Concept  

Content:
Let's check at what, on what node is it placed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 92
Type: Concept  

Content:
So as you can see it's now placed on the control plane node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 93
Type: Implementation Step  

Content:
So earlier at, in the beginning, the control plane node has a taint set, set on it, and then we set a taint on node zero one, and then we created the mosquito pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 94
Type: Implementation Step  

Content:
And so it was not placed on any of the nodes because both of them had a taint then.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 95
Type: Implementation Step  

Content:
Then we created the B pod with the toleration on node zero one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 96
Type: Implementation Step  

Content:
So the B pod was able to be placed on node zero one and then we removed the taint on control plane.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 97
Type: Concept  

Content:
And without doing anything the not, the, the pod mosquito was automatically placed on control plane because it no longer has any kind of taint on it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 98
Type: Concept  

Content:
So it's, the answer to this is control plane.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 99
Type: Concept  

Content:
Okay, So that's the end of this lab.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 059_Lab Solution - Taints and Tolerations (Optional)
- File: 059_Lab Solution - Taints and Tolerations (Optional).txt
- Topic: Lab Solution - Taints and Tolerations (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---
