# Extraction: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 068_Lab Solution - Resource Limits

---

## Entry 1
Type: Concept  

Content:
Instructor: Okay.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
So, let's go over the labs on resource limits, resource requests and limits.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Implementation Step  

Content:
So, the first question is, a pod called rabbit is deployed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
Identify the CPU request requirements set on the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
So, let's do kubectl get pod, and see if there is a rabbit pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
So, let's do a kubectl describe pod rabbit.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
And, if you look at this section right here, we have limits, CPU limits and CPU requests.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
So, the CPU requests as requested here is one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
So, let's select one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Implementation Step  

Content:
Okay, the next task is to delete the rabbit pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
So, kubectl delete pod rabbit.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
Okay.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 13
Type: Implementation Step  

Content:
Okay, now another pod called elephant has been created.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
So, let's check that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Troubleshooting  

Content:
Yep, so we have a pod called elephant and it fails to get to a running state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
So, inspect this pod and identify the reason why it's not running.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
So, let's do a kubectl describe pod elephant.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
And, if you look at this section here, called Last State, it says, the reason is OOMKilled, right?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Troubleshooting  

Content:
So, that's, basically, that indicates that it's a memory issue.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
So, the reason is OOMKilled.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
So, let's select that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
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
So, the status OOMKilled indicates that it is failing because the pod ran out of memory.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
Identify the memory limit set on the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
So, the memory limit is, as you can see here, it's 10mi.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
Right?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
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
So, that's the memory limit set on this pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
So, the elephant pod runs a process that consumes 15 amount of memory.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Implementation Step  

Content:
So, increase the limit of the elephant pod to 20, and delete and recreate the pod if required.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
So, one thing we have to do is to change it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Implementation Step  

Content:
So, as you can see here, the command used to create this pod is, is the stress command, and it is stresses.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
So, it basically gets the pod to use 15 megabytes of memory, but the limit is 10.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
So, that's the reason why it's getting killed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
So, we've got to change this to 20.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
So, one of the ways to do that is to do a kubectl edit pod elephant.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
But the problem is, we might not be able to change the limit with an edit.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
So, we're going to, let's give it a shot anyway.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
So, let's give it 20 and save.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
And what this says is, that you cannot, basically, edit the limits set to a running pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
So, So, anyway, let's come out of it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
But, our changes are saved in this file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
So, that's a temporary file, right?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
So, let's check that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
And, if you look at the resource limits that we have set, so it's actually saved here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
Our change is saved here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Implementation Step  

Content:
So, what we could do is, we could just use this file to recreate the pod, right?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Implementation Step  

Content:
So, we can either delete the pod and then recreate it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Implementation Step  

Content:
Or, an easier way is to just use the kubectl replace command, and then use the force so it actually deletes the existing pod and recreates it, and give that file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Implementation Step  

Content:
Just change it here, kubectl replace force dash F, and then the file name.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Implementation Step  

Content:
So it, basically, deletes the elephant pod and then it replaces it, recreates it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Concept  

Content:
So, let's see the status now.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
And we see that it's in a running state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Concept  

Content:
Let's also verify... that, yep, the limit that we set is now reflecting.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Concept  

Content:
Okay?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
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
Yep.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
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
We've just checked and made sure that it's in a running state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Implementation Step  

Content:
And, the next task is to delete pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Concept  

Content:
And, we'll just give it a few seconds for the process to terminate.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Concept  

Content:
Okay?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
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
That's the end of this lab.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 068_Lab Solution - Resource Limits
- File: 068_Lab Solution - Resource Limits.txt
- Topic: Lab Solution - Resource Limits
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---
