# Extraction: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 028_Lab Solution - ReplicaSets (optional)

---

## Entry 1
Type: Concept  

Content:
-: Okay, so, in this video we're gonna go over the solution for the lab on ReplicaSets.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
So, let's start with the first question.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Implementation Step  

Content:
So, the first question is, how many pods exist on the system?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
So, just like before, we are on the Kubectl get pods command and there are no pods at the moment, so select zero.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Implementation Step  

Content:
The next question is how many ReplicaSets exist on the system?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
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
So we run the Kubectl get ReplicaSet command and at zero.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Implementation Step  

Content:
So, some changes were made and let's check the ReplicaSet now and we see that there's one created.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
So, let's just select one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
Now the question is how many pods are desired in the new ReplicaSet?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
So we know that from the output, the desired number of pods in the ReplicaSet is number four, so let's select four.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Implementation Step  

Content:
Now, what is the image used to create the pods in the new ReplicaSet?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
So, we can find that out by looking at the ReplicaSet in a bit more detail.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
And for that we know we have to run the Kubectl describe command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
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
And we're gonna run describe ReplicaSet and then new ReplicaSet and hit the the tab key to auto complete the names of what you're looking for.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
So, in this output, we see the pod template and the image that's used, it's busy box 777.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
So, that's the question and here is the answer.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
So busy box 777.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
Now how many pods are ready in the new ReplicaSet?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
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
So, if you look at the output here, it says the number of pods that are ready are zero.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
You can also see the same kind of here, the pod status zero running.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
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
So, it is zero.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
Now, why do you think the pods are not ready?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
So, if you look at this, you have, so we'll need to look at one of these pods in a bit more detail.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Troubleshooting  

Content:
Of course it's obvious, but I mean, I just wanna show you, if you're not sure what the error is then you've got to look at one of these pods in a bit more detail.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
So, let's run the Kubectl describe command and look at any one of the pods in a bit more detail.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
And you see it's basically because it's failed to pull the image busy box 777 so the repository does not exist.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
So there's no image by the name busy box 777, that's a reason, so let's check that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
Now, the question is to delete any one of the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
Sorry, it's clear from the get pods command and we've got to delete any one of these pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
So, that's done.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
So, how many pods exist now?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
Let's run the get pods command again.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
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
Let me see that there's still four pods running.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
So, even though we deleted one the one that we deleted is not here, the one that starts with the WK, but there are still four pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Implementation Step  

Content:
So, that exercise was just to show that even if you delete a pod, pod of ReplicaSet, it's automatically going to recreate a new one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Implementation Step  

Content:
And if you look at the age here, you can see that the new one that was created was just 17 seconds ago as opposed to the other ones that have been running for three minutes or more.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
Okay, so why are there still four pods even after you deleted it?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
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
It's not because I didn't delete it properly, it's not because you cannot delete a pod from a ReplicaSet, it's because ReplicaSet ensures that the desired number of pods always run.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Implementation Step  

Content:
So, the next one is to create a ReplicaSet using the ReplicaSet definition file located at root.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
So let's look at where that is.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 41
Type: Troubleshooting  

Content:
So there's one here and there's an issue with the file, so we have to try and fix it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 42
Type: Implementation Step  

Content:
So, let's first try to create it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Implementation Step  

Content:
So Kubectl create this F partial root, ReplicaSet definition on that YAML.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Troubleshooting  

Content:
So the error is that it's unable to recognize this file, no matches for kind ReplicaSet in version V1.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
So, there's something wrong here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
Either the kind ReplicaSet is incorrect or the version we want is incorrect.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
So, let's look at the file and we see that the APA version is V1 and kind is ReplicaSet.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
And as we learned from the previous video, the APA version is incorrect.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 49
Type: Concept  

Content:
But if you're not sure what it is, one way to find that out is using the Kubectl explain command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
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
So run the Kubectl explain ReplicaSet command, sorry.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
And here you can see the version.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
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
So, the version is supposed to be apps/V1, so that's the problem.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Troubleshooting  

Content:
So let's go ahead and fix that apps/V1 and let's try and delete that again.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Implementation Step  

Content:
So, it is now being created.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Implementation Step  

Content:
Okay, so let's go to the next one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 56
Type: Troubleshooting  

Content:
So next task is to fix the issue in the second file and create the ReplicaSet.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
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
So let's try that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
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
Let's just first try to create it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
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
Okay, so it says there's an invalid value selector does not match template labels.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
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
So, let's take a look at the file here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
And we see the API version is apps/V1 which is correct, the kind is ReplicaSet, that also seems to be correct.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Implementation Step  

Content:
The metadata is the name and then you have the spec section.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 63
Type: Concept  

Content:
So you have replicas, you have selector.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
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
So there is something wrong here, which is why it didn't work.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
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
Let's find that out.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 66
Type: Concept  

Content:
So here it says, invalid value selector does not match the template labels.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Troubleshooting  

Content:
So, basically the issue here is that you have the labels specified here called tier front end, and then the label for the pod that the ReplicaSet will create is engine X.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Best Practice  

Content:
So, these two should match, otherwise the ReplicaSet cannot basically manage the pods that it creates.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Best Practice  

Content:
So we've got to either change this to front end or change this to engine X but at the end, both of them should match.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Concept  

Content:
So, let's change this to engine X, save this file and run it again.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Implementation Step  

Content:
And that's now created.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 72
Type: Implementation Step  

Content:
Okay, let's go to the next one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 73
Type: Implementation Step  

Content:
Now, we've got to delete the two newly created ReplicaSets.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Implementation Step  

Content:
So, let's first look at the status right now.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Concept  

Content:
You can also run just RS instead of ReplicaSet, which is the short form.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Concept  

Content:
And now we've got delete both of these ReplicaSets.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Concept  

Content:
So, go to delete RS, ReplicaSet one and two.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Exam Tip  

Content:
You can also give multiple in the same command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
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
Okay, so that's done.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 80
Type: Troubleshooting  

Content:
Now, fix the original ReplicaSet to use the correct busy box image.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 81
Type: Implementation Step  

Content:
So, we know that the first one which is we not only have one, and we know that there are none of the pods are in a ready state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Troubleshooting  

Content:
And we also know that because A, the image name is incorrect, so we've got to know fix that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Implementation Step  

Content:
So for this, let's run the Kubectl edit command and edit the new replica step.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 84
Type: Concept  

Content:
And let's go into the container section and change the image name to just busy box and save that file and let's check status of pods now on the ReplicaSet, so it's still zero.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 85
Type: Implementation Step  

Content:
Let's just give it some time for it to delete the old pods and create new ones with the new image.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 86
Type: Concept  

Content:
Write RS.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 87
Type: Implementation Step  

Content:
Okay, so when you update a ReplicaSet, even though the image name is updated, the pods are not automatically recreated, right?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 88
Type: Implementation Step  

Content:
So you have to either delete and recreate the entire ReplicaSet or you have to delete all the pods so that the ReplicaSet creates new pods with the new image name.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 89
Type: Concept  

Content:
So, let's go back and let's look at pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 90
Type: Troubleshooting  

Content:
And you see there's all still in the error state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 91
Type: Concept  

Content:
So, we're just going to go through and delete them.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 92
Type: Concept  

Content:
We're gonna give the name of each one and we'll just wait all of them to be terminated.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 93
Type: Concept  

Content:
Let's run get pods again.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
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
Okay, it's in a creating state and it's in a running state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
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
Let's check the status of the ReplicaSet now and you can see that they're all in a ready state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 96
Type: Implementation Step  

Content:
Let's go to the next one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 97
Type: Concept  

Content:
Now we've got to scale the ReplicaSet to five pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
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
So let's run the Kubectl scale command and specify the number of replicas to five.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
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
Let's check the status and we can see that a new pod has been added.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 100
Type: Concept  

Content:
We can also do that using the edit command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 101
Type: Implementation Step  

Content:
So, we could do a Kubectl edit RS and specify the name of the ReplicaSet, and then go here and just change this number to the desired number and then save the file but we're not gonna do that right now.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 102
Type: Concept  

Content:
So that's done.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
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
And now the task is to scale the ReplicaSet down to two pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 104
Type: Concept  

Content:
So, this time, let's use the other approach.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 105
Type: Concept  

Content:
So let's edit new ReplicaSet.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 106
Type: Concept  

Content:
Go to the number here and set it to two.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 107
Type: Concept  

Content:
Let's check.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 108
Type: Concept  

Content:
Okay, so that's it for this lab.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 109
Type: Implementation Step  

Content:
And next we'll look at deployments.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 028_Lab Solution - ReplicaSets (optional)
- File: 028_Lab Solution - ReplicaSets (optional).txt
- Topic: Lab Solution - ReplicaSets (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---
