# Extraction: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 025_Lab Solution - Pods (optional)

---

## Entry 1
Type: Concept  

Content:
-: Okay, so let's go over the solution for the labs on pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
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
So in this lab we're gonna get familiar with pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 3
Type: Implementation Step  

Content:
So the first question is how many pods exist on the system?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
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
Now, we know that we can get the information about pods using the kubectl get pods command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Warning/Pitfall  

Content:
That's what we learned, so we're gonna run the kubectl get pods command, and you can ignore this line here that says in the current default namespace, so we're gonna talk about namespaces in one of the upcoming lectures, so you don't have to worry about that for now.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
This is for those who already know what a namespace is.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 7
Type: Implementation Step  

Content:
If you know, then just make sure you're checking the number of pods in the current default namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
Okay, so when we're on the kubectl get pods command, we see the result is zero, there are no resources found.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
So we're gonna select zero here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 10
Type: Implementation Step  

Content:
Okay so the next is a task, so we've got to create a new pod with the Engine x image, so to create a pod, the easiest way is to run the kubectl run command, and we specify the image, so we have to specify a name and an image, so if you're not sure about the syntax, run the help command, and we see it's the name of the pod followed by the image, this format.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
So we're gonna run that, it's kubectl, run.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
And since the, there's no specification about the name of the pod, so we could basically name it anything.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
But the image name has to be an x.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Implementation Step  

Content:
Okay, so the pod is created.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
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
Okay, now how many pods are created now?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Implementation Step  

Content:
We've created a few more pods, so please check again.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 17
Type: Concept  

Content:
So let's run the kubectl get pods command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
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
Okay, so in addition to the Engine x pod that we created, there are a few other pods that were created by us basically, so there are in a total 1, 2, 3, 4 pods at the moment, so let's select four.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Implementation Step  

Content:
What is the image used to create the new pods?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 20
Type: Concept  

Content:
You must look at one of the new pods in detail to figure this out, so let's pick one of the pods, this one, and we know that to look at it in detail, we've got to run the kubectl describe command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
Okay, so now we have additional details about the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
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
So this is the name of the pod, and you have the start time, and a number of other details.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Implementation Step  

Content:
So the question is, what is the image used to create the new pods, so we know that this tells us the containers, and here you have the image and the image is BusyBox, so let's select BusyBox.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
Okay, now which nodes are these pods placed on?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
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
You must look at all the pods in detail to figure this out.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 26
Type: Concept  

Content:
So one way to do this is we've already run the kubectl describe pod command, and we can see that this is on node control plane, and we could actually run the the describe command against each pod, so that's one way to figure that out.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Implementation Step  

Content:
Another way, and an easier way, is to just run kubectl get pods command with the wide option, and here you get to see the node and it says control plane, so all of the new pods are created on the control plane node, select Control Plane.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
Okay, and how many containers are part of the pod, Web App?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Implementation Step  

Content:
So there's a new pod created, this one, get pods command to see Web App.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
Okay, so if, if you look at this column right here, it shows us the total number of containers part of the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
So this number right here is the total number of containers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 32
Type: Implementation Step  

Content:
So that's one way to figure that out or you could always run the describe command to see that in detail, so here you see containers and then you have one container here, that's Engine x and the other one right here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
So those are the two containers, so select two.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 34
Type: Best Practice  

Content:
Then you have what images are used in the new web app pod, you must look at all the pods in detail to figure this out, actually it should be, you must look at all the containers in detail.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
So here you have two containers and if you look at, if you look here, you see that the image for Engine x is Engine x and the one for Agent x is called Agent x.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
So there's Engine x and Agent x, those are the images used for those containers, so this one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
Okay, now what is a state of the container, Agent x in the pod, Web App, so if you look at the container here and you see there are, there is a state, and it is in a waiting state at the moment.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Troubleshooting  

Content:
So out of these, it's not running ready or success, it's actually error or waiting, so this is the state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Troubleshooting  

Content:
Okay, now why do you think the container, Agent x in pod, Web App, is in an error or waiting state?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
So try to figure it out from the Events section of the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Troubleshooting  

Content:
So if you look at one of the section here, under state, you have the reason called as Error Image Pull, or if you just look at it below here in the Event section, you can see the error which is basically this one, it says, "Fail to pull image, Agent x," and, "at docker.io/library/agentx." So this image by the name Agent x does not exist.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
And that's basically the reason that it's failing.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
So the correct answer is a docker image with this name doesn't exist on Docker Hub.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 44
Type: Concept  

Content:
Okay, now what does the Ready column in the output of the kubectl get pods command indicate?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
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
So if you go up here, you have the output of the get pods command and here you see, you have one slash one here and then you have one slash two.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
So what does this mean, now we know that this is the total containers within the pod and this is basically, of course, the ones that are ready.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
So at the moment, there's only one ready out of the two, and we know that because this image does not exist, and of course, that's why that container isn't ready yet.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
So it's basically the total containers that are ready slash just the total containers within the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 49
Type: Implementation Step  

Content:
So that's total containers in the pod or a running containers in the pod slash total containers in the pod, so that's the correct answer, okay, so the next task is to delete the Web App.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Concept  

Content:
So let's run the kubectl delete command and delete the Web App pod, okay, that's deleted.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Implementation Step  

Content:
Let's go to the next one, create a new pod with the name Redis and with the image, Redis123.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Concept  

Content:
And the recommendation is to use a pod definition yaml file and the image name is wrong.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 53
Type: Concept  

Content:
Yeah, so the image name is wrong.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
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
So we could do this in two ways.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
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
So as we know, we could run the kubectl run command, and the name of the pod is Redis and the name of the image is Redis123.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Implementation Step  

Content:
You could basically just create it like this, but we just wanna get familiar with generating the yaml file and creating it with the pod definition file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Concept  

Content:
So let's use the dry-run option and output the, the commands in a yaml format.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Warning/Pitfall  

Content:
Okay, so, so this is basically command and it says, "The dry-run command is deprecated," and it's replaced with the dry-run equals client, So let's run that, okay, so this is the yaml file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Concept  

Content:
So let's direct it to a file, we'll call it Redis.yaml.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Concept  

Content:
So we have the yaml definition for that pod in this file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Implementation Step  

Content:
So we're now going to create the pod using kubectl create or apply command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Implementation Step  

Content:
So let's go with the create command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 63
Type: Implementation Step  

Content:
Okay, so it's created, let's verify that it's created.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Troubleshooting  

Content:
Okay, so it's created and it's in an error image pool state because we have the wrong image name, so that's fine.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Concept  

Content:
Let's click on Check, okay, successful.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Troubleshooting  

Content:
And the last question for this lab is to change the image on this pod to Redis to fix that error that we, you know, purposefully created, and to get the pod in a running state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Concept  

Content:
So again, there are two ways to do that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
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
You could run the kubectl edit command to edit the the pod, or since we already have the Redis file, we could just go in and change the file and update it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Concept  

Content:
So let's go and do that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 70
Type: Concept  

Content:
Okay, I've changed the image name.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 71
Type: Implementation Step  

Content:
I'm just going to apply the changes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
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
Okay, let's check, add it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Troubleshooting  

Content:
Now, we'll talk about this error message later when we talk about imperative commands and the declarative way that we apply.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Implementation Step  

Content:
But for now, let's stick to the basics, and then just make sure the change was successful, all right, so when I run the kubectl get pods command, we see that the pod is in a running state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Implementation Step  

Content:
So run check, all right, okay, so that's the end of the lab, let's hit the End Lab button, and I'll see you in the next one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 025_Lab Solution - Pods (optional)
- File: 025_Lab Solution - Pods (optional).txt
- Topic: Lab Solution - Pods (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
