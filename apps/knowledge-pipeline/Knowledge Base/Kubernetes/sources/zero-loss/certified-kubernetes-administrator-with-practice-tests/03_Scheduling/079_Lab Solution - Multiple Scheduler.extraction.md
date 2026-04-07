# Extraction: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler

---

## Entry 1
Type: Exam Tip  

Content:
-: Okay, so let's go over the practice test for multiple schedulers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Architecture  

Content:
For what is the name of the pod that deploys the default Kubernetes scheduler in this environment?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
Okay, so let's do a kubectl get pods command in the kube-system namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
So we're gonna look here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Architecture  

Content:
And we see the pod is kube scheduler-control plane.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
So let's select that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 7
Type: Architecture  

Content:
Now, what is the image used to deploy the Kubernetes scheduler?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Architecture  

Content:
Inspect the kube scheduler, pod and identify the image.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Architecture  

Content:
Let's do a kubectl describe pod scheduler.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Implementation Step  

Content:
And then specify the namespace as kube-system.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Architecture  

Content:
Okay, so here we have the image and that is case.gcr.io/kube-scheduler version 1.23.0 as of this recording.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
So I'm gonna select that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Architecture  

Content:
Okay, now we've already created the service account and cluster role binding that our custom scheduler will make use of.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Implementation Step  

Content:
So all of these are already created.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Architecture  

Content:
If we'd like to take a look, we can do a get service account my scheduler.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
Okay.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 17
Type: Architecture  

Content:
So we see the my scheduler service account and the kube-system namespace and similarly, there are cluster role bindings as well.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
So that's already done for us.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Warning/Pitfall  

Content:
So we don't have to worry about that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
Let's go forward.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Architecture  

Content:
And let's create a ConfigMap that the new scheduler will employ using the concept of ConfigMap as a volume.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Implementation Step  

Content:
So we have to create a ConfigMap with a name using the contents of the file, so there's already a file here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
And this is the configuration.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Architecture  

Content:
It will be passed through to the new scheduler that we're gonna create.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
So the file is there.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Implementation Step  

Content:
We just have to create a ConfigMap for it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Implementation Step  

Content:
So we'll do a kubectl create ConfigMap.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
And the name will be, let's copy and paste.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Implementation Step  

Content:
And it has to be created from file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
We use the form file as data path to the file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
And also specify the name system.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
This will be kube-system.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
There's no name.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
Okay.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 35
Type: Implementation Step  

Content:
Let's verify that it's created.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
It's in the kube-system namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Implementation Step  

Content:
Okay, so that's created.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 38
Type: Implementation Step  

Content:
Go next.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Architecture  

Content:
Deploy an additional scheduler to the cluster following the given specification.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Architecture  

Content:
Use the manifest file provided at root my scheduler.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
So there's already a file given for us.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
Let's add root.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Architecture  

Content:
My scheduler.yaml or just since we are already in that directory, you could just give the file name.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
And we see that most of the work is already done.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Warning/Pitfall  

Content:
The liveness probe, the readiness probe are all set so we don't really have to worry about that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Architecture  

Content:
And all we need to do is add this image that's given here and we have to use the same image that's used by the current scheduler.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Implementation Step  

Content:
So let's find that out first.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
Let's do a kubectl pods -a.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Architecture  

Content:
And this is current scheduler.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Concept  

Content:
So do a describe.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
And kube-system.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Concept  

Content:
And let's do it for the image.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Concept  

Content:
And let's get this image ID.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Concept  

Content:
And we're going to put that in in the file instead of this placeholder here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Concept  

Content:
Okay?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 56
Type: Implementation Step  

Content:
And if you look at the rest of the file, it already has the ConfigMap that we created.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Implementation Step  

Content:
If you scroll down, you'll see there is the ConfigMap that we created.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Implementation Step  

Content:
So that's already configured.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Concept  

Content:
And that basically passes through as a volume mount here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Concept  

Content:
We'll talk about ConfigMaps in the upcoming lectures, if you haven't already gone through that yet.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Implementation Step  

Content:
And we're going to create this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Implementation Step  

Content:
Let's verify that it's created.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Architecture  

Content:
In the kube-system namespace, we have my scheduler here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Concept  

Content:
Let's check.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
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
Okay, so that's done.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 66
Type: Implementation Step  

Content:
And the final step is to create a pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Architecture  

Content:
So there's already a pod definition file given and use it to create a pod with a new custom scheduler.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Concept  

Content:
So here we have the NGINX pod definition file and this is pretty straightforward.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Concept  

Content:
Just a NGINX pod with the NGINX image.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Architecture  

Content:
And what we need to do is specify the custom scheduler, which is basically my scheduler given here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Architecture  

Content:
So as we learned in the lecture, you have to add a new field here called scheduler name.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Architecture  

Content:
And then we specify the name of the scheduler we just created.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Concept  

Content:
Save that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 74
Type: Implementation Step  

Content:
And then we create a pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Concept  

Content:
And we make sure pod is running.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Concept  

Content:
Okay, so that's it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Concept  

Content:
And that's the end of this lab.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 079_Lab Solution - Multiple Scheduler
- File: 079_Lab Solution - Multiple Scheduler.txt
- Topic: Lab Solution - Multiple Scheduler
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---
