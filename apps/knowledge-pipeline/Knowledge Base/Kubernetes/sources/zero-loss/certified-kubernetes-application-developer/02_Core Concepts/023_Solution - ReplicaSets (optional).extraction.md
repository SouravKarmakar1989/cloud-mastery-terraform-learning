# Extraction: certified-kubernetes-application-developer / 02_Core Concepts / 023_Solution - ReplicaSets (optional)

---

## Entry 1
Type: Concept  

Content:
Instructor: Okay, so in this video we're gonna go over the solution for the lab on ReplicaSets.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
So let's start with the first question.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 3
Type: Implementation Step  

Content:
So the first question is, how many pods exist on the system?

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
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
So just like before we run the kubectl get pods command and there are no pods at the moment, so select zero.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Implementation Step  

Content:
The next question is how many ReplicaSets exist on the system?

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
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
So we run the kubectl get replica set command and it's zero.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Implementation Step  

Content:
Okay, so some changes were made and let's check the ReplicaSet now and we see that there's one created.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
So let's just select one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 9
Type: Concept  

Content:
Okay, now the question is how many pods are desired in the new ReplicaSet?

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
So we know that from the output, the desired number of pods in the ReplicaSet is number four.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
So let's select four.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 12
Type: Implementation Step  

Content:
And what is the image use to create the pods in the new ReplicaSet?

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
So we can find that out by looking at the ReplicaSet in a bit more detail.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
And for that we know we have to run the kubectl describe command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
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
And we're gonna run describe ReplicaSet and then new ReplicaSet.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
And hit the tab key to auto complete the names of what you're looking for.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
Okay, so in this output we see the pod template and the image that's used.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
It's BusyBox 777.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
So that's the question.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
And here is the answer.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
So BusyBox 777.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
Now how many pods are ready in the new ReplicaSet?

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
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
So if you look at the output here, it says the number of pods that are ready are zero.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
You can also see the same kind of here, the pod status zero running.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
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
So it is zero.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 26
Type: Concept  

Content:
Now why do you think the pods are not ready?

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
So if you look at this, you have...

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
So we'll need to look at one of these pods in a bit more detail.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Troubleshooting  

Content:
Of course it's obvious, but I just wanna show you if you're not sure what the error is then you've got to look at one of these pods in a bit more detail.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
So let's run the kubectl describe command and look at any one of the pods in a bit more detail.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
And you see it's basically because it's failed to pull the image BusyBox 777, right?

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
So the repository does not exist.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 33
Type: Concept  

Content:
So there's no image by the name BusyBox 777.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
That's the reason so let's check that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
Now the question is to delete any one of the pod, sorry let's clear from the get pods command and we've got to delete any one of these pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
Okay, so that's done.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
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
So how many pods exist now?

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
Let's run the get pods command again.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
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
And we see that there's still four pods running, right?

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
So even though we deleted one, the one that we deleted is not here, the one that starts with the wk, but there are still four pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Implementation Step  

Content:
So that exercise was just to show that even if you delete a pod part of ReplicaSet it's automatically going to recreate a new one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Implementation Step  

Content:
And if you look at the age here you can see that the new one that was created was just 17 seconds ago as opposed to the other ones that have been running for three minutes or more.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
Okay, so why are there still four pods even after you deleted it?

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
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
It's not because I didn't delete it properly.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 45
Type: Concept  

Content:
It's not because you cannot delete a pod from a ReplicaSet.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
It's because ReplicaSet ensures that the desired number of pods always run.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Implementation Step  

Content:
Okay, so the next one is to create a ReplicaSet set using the ReplicaSet definition file located at root.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
So let's look at where that is.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 49
Type: Troubleshooting  

Content:
So there's one here and there's an issue with the file so we have to try and fix it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Implementation Step  

Content:
So let's first try to create it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Implementation Step  

Content:
So kubectle create and here's F/root.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Concept  

Content:
ReplicaSet definition.yaml.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Troubleshooting  

Content:
Okay, so the error is that it's unable to recognize this file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Concept  

Content:
No matches for kind ReplicaSet in version v1.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Concept  

Content:
So there's something wrong here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 56
Type: Concept  

Content:
Either the kind ReplicaSet is incorrect or the version v1 is incorrect.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Concept  

Content:
So let's look at the file and we see that the API version is v1 and kind is ReplicaSet.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Concept  

Content:
And as we learned from the previous video the API version is incorrect.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Concept  

Content:
But if you're not sure what it is, one way to find that out is using the kubectl explain command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
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
So run the kubectl explain ReplicaSet command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
Sorry.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
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
And here you can see the version.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
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
So the version is supposed to be apps/v1, right?

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Concept  

Content:
So that's the problem.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 65
Type: Troubleshooting  

Content:
So let's go ahead and fix that. apps/v1.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Concept  

Content:
And let's try and delete that again.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Implementation Step  

Content:
Okay, so it has now being created.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Implementation Step  

Content:
Okay, so let's go to the next one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 69
Type: Troubleshooting  

Content:
So next task is to fix the issue in the second file and create the ReplicaSet.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
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
So let's try that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 71
Type: Implementation Step  

Content:
Let's just first try to create it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
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
Okay, so it says there's an invalid value selector does not match template labels.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 73
Type: Concept  

Content:
So let's take a look at the file here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Concept  

Content:
And we see the API version is app/v1 which is correct.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Concept  

Content:
The kind is ReplicaSet.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Concept  

Content:
That also seems to be correct.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 77
Type: Concept  

Content:
The metadata is the name.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Implementation Step  

Content:
And then you have the spec section.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Concept  

Content:
So you have replicas, you have selector.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 80
Type: Concept  

Content:
So there is something wrong here, which is why it didn't work.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 81
Type: Concept  

Content:
Let's find that out.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 82
Type: Concept  

Content:
So here it says invalid value selector does not match the template labels.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Troubleshooting  

Content:
So basically the issue here is that you have the labels specified here called tier front end, and then the label for the pod that the ReplicaSet will create is nginx.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 84
Type: Best Practice  

Content:
So these two should match otherwise the ReplicaSet cannot basically manage the pods that it creates.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 85
Type: Concept  

Content:
So you've got to either change this to front end or change this to nginx.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 86
Type: Best Practice  

Content:
But at the end both of them should match.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 87
Type: Concept  

Content:
So let's change this to nginx.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 88
Type: Concept  

Content:
Save this file and run it again.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 89
Type: Implementation Step  

Content:
And that's now created.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 90
Type: Implementation Step  

Content:
Okay, let's go to the next one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 91
Type: Implementation Step  

Content:
Now we've got to delete the new two newly created ReplicaSets.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 92
Type: Implementation Step  

Content:
So let's first look at the status right now.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 93
Type: Concept  

Content:
You can also run just RS instead of ReplicaSet which is the short form.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 94
Type: Concept  

Content:
And now we've got to delete both of these ReplicaSets.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 95
Type: Concept  

Content:
So kubectl delete RS ReplicaSet 1 and 2.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 96
Type: Exam Tip  

Content:
You can also give multiple in the same command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
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
Okay, so that's done.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 98
Type: Troubleshooting  

Content:
Now fix the original ReplicaSet to use the correct BusyBox image.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 99
Type: Implementation Step  

Content:
So we know that the first one, which is we now only have one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 100
Type: Concept  

Content:
And we know that there are none of the pods are in a ready state.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 101
Type: Concept  

Content:
And we also know that because the image name is incorrect.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 102
Type: Troubleshooting  

Content:
So we've got to now fix that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 103
Type: Concept  

Content:
So for this, let's run the kubectl edit command and edit the new ReplicaSet.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 104
Type: Concept  

Content:
And let's go into the container section and change the image name to just BusyBox and save that file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 105
Type: Concept  

Content:
And let's check status of pods now in the ReplicaSet.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 106
Type: Concept  

Content:
So it's still zero.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 107
Type: Implementation Step  

Content:
Let's just give it some time for it to delete the old pods and create new ones with the new image.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
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
Right, RS.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 109
Type: Implementation Step  

Content:
Okay, so when you update a ReplicaSet even though the image name is updated the pods are not automatically recreated, right?

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 110
Type: Implementation Step  

Content:
So you have to either delete and recreate the entire ReplicaSet or you have to delete all the pods so that the ReplicaSet creates new pods with the new image name.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
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
So let's go back and let's look at pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 112
Type: Troubleshooting  

Content:
And you see there's all still in the error state.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
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
So we're just going to go through and delete them.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 114
Type: Concept  

Content:
We're gonna give the name for each one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 115
Type: Concept  

Content:
And we'll just wait all of them to be terminated.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 116
Type: Concept  

Content:
Let's run get pods again.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
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
Okay, it's in a creating state and it's in a running state.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 118
Type: Concept  

Content:
Let's check the status of the ReplicaSet now.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 119
Type: Concept  

Content:
And you can see that they're all in a ready state.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 120
Type: Implementation Step  

Content:
Okay, let's go to the next one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
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
Now we've got to scale the ReplicaSet to five pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
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
So let's run the kubectl scale command and specify the number of replicas to five.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
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
Let's check the status and we can see that a new pod has been added.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 124
Type: Concept  

Content:
We can also do that using the edit command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 125
Type: Implementation Step  

Content:
So we could do a kubectl edit RS and specify the name of the ReplicaSet and then go here and just change this number to the desired number and then save the file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 126
Type: Concept  

Content:
But we're not gonna do that right now.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 127
Type: Concept  

Content:
Okay, so that's done.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 128
Type: Concept  

Content:
And now the task is to scale the ReplicaSet down to two pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
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
So this time, let's use the other approach.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 130
Type: Concept  

Content:
So let's edit the ReplicaSet.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 131
Type: Concept  

Content:
Go to the number here, set it to two.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 132
Type: Concept  

Content:
Okay, let's check.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 133
Type: Concept  

Content:
Okay, so that's it for this lab.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 134
Type: Implementation Step  

Content:
And next we'll look at deployments.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 023_Solution - ReplicaSets (optional)
- File: 023_Solution - ReplicaSets (optional).txt
- Topic: Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---
