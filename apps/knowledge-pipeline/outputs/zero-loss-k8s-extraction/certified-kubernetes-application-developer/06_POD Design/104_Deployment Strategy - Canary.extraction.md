# Extraction: certified-kubernetes-application-developer / 06_POD Design / 104_Deployment Strategy - Canary

---

## Entry 1
Type: Concept  

Content:
-: Let's now look at canary updates in Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 104_Deployment Strategy - Canary
- File: 104_Deployment Strategy - Canary.txt
- Topic: Deployment Strategy - Canary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
In this strategy, we deploy the new version and route only a small percentage of traffic to it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 104_Deployment Strategy - Canary
- File: 104_Deployment Strategy - Canary.txt
- Topic: Deployment Strategy - Canary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
So the majority of traffic is being routed to the older version, but we have a small percentage routed to the new version.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 104_Deployment Strategy - Canary
- File: 104_Deployment Strategy - Canary.txt
- Topic: Deployment Strategy - Canary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Implementation Step  

Content:
At this point, we run tests, and if everything looks good, we upgrade the original deployment with the newer version of the application.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 104_Deployment Strategy - Canary
- File: 104_Deployment Strategy - Canary.txt
- Topic: Deployment Strategy - Canary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Exam Tip  

Content:
Say that could be done with a rolling upgrade strategy, for example, and then we get rid of the canary deployment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 104_Deployment Strategy - Canary
- File: 104_Deployment Strategy - Canary.txt
- Topic: Deployment Strategy - Canary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Implementation Step  

Content:
So let's look at how to implement these strategies using native Kubernetes primitives of deployments and services.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 104_Deployment Strategy - Canary
- File: 104_Deployment Strategy - Canary.txt
- Topic: Deployment Strategy - Canary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
So here's how it works.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 104_Deployment Strategy - Canary
- File: 104_Deployment Strategy - Canary.txt
- Topic: Deployment Strategy - Canary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Implementation Step  

Content:
So first, we have the original version of our application deployed as a deployment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 104_Deployment Strategy - Canary
- File: 104_Deployment Strategy - Canary.txt
- Topic: Deployment Strategy - Canary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Implementation Step  

Content:
We will call it the primary deployment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 104_Deployment Strategy - Canary
- File: 104_Deployment Strategy - Canary.txt
- Topic: Deployment Strategy - Canary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
As you can see, it has five pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 104_Deployment Strategy - Canary
- File: 104_Deployment Strategy - Canary.txt
- Topic: Deployment Strategy - Canary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Implementation Step  

Content:
Then we create a service to route traffic to it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 104_Deployment Strategy - Canary
- File: 104_Deployment Strategy - Canary.txt
- Topic: Deployment Strategy - Canary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Implementation Step  

Content:
Now, to associate the service to the pods in the deployment, so we set a label on the pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 104_Deployment Strategy - Canary
- File: 104_Deployment Strategy - Canary.txt
- Topic: Deployment Strategy - Canary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
We called it version, which is set to V1.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 104_Deployment Strategy - Canary
- File: 104_Deployment Strategy - Canary.txt
- Topic: Deployment Strategy - Canary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Implementation Step  

Content:
We then deploy a second deployment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 104_Deployment Strategy - Canary
- File: 104_Deployment Strategy - Canary.txt
- Topic: Deployment Strategy - Canary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
Let's call it Canary with the new version of the application.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 104_Deployment Strategy - Canary
- File: 104_Deployment Strategy - Canary.txt
- Topic: Deployment Strategy - Canary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
Now, as of now, all traffic is going to version one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 104_Deployment Strategy - Canary
- File: 104_Deployment Strategy - Canary.txt
- Topic: Deployment Strategy - Canary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Implementation Step  

Content:
With canary deployment, we want to achieve two things.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 104_Deployment Strategy - Canary
- File: 104_Deployment Strategy - Canary.txt
- Topic: Deployment Strategy - Canary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
We want the traffic to go to both versions at the same time.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 104_Deployment Strategy - Canary
- File: 104_Deployment Strategy - Canary.txt
- Topic: Deployment Strategy - Canary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
However, we only want to route a small percentage of traffic to version two, so how do we do that?

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 104_Deployment Strategy - Canary
- File: 104_Deployment Strategy - Canary.txt
- Topic: Deployment Strategy - Canary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
Let's try to solve each one of these problems one by one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 104_Deployment Strategy - Canary
- File: 104_Deployment Strategy - Canary.txt
- Topic: Deployment Strategy - Canary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Implementation Step  

Content:
So let's first see how we can route traffic from a single service to the pods in both the deployments at the same time?

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 104_Deployment Strategy - Canary
- File: 104_Deployment Strategy - Canary.txt
- Topic: Deployment Strategy - Canary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Implementation Step  

Content:
For this, we create a common label.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 104_Deployment Strategy - Canary
- File: 104_Deployment Strategy - Canary.txt
- Topic: Deployment Strategy - Canary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
Let's call it App, which is set to front end, and we update the selector label in the service to match this common label.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 104_Deployment Strategy - Canary
- File: 104_Deployment Strategy - Canary.txt
- Topic: Deployment Strategy - Canary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Implementation Step  

Content:
So that solves the first problem.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 104_Deployment Strategy - Canary
- File: 104_Deployment Strategy - Canary.txt
- Topic: Deployment Strategy - Canary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
We now have traffic going to both the versions of applications, but it's routing it equally.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 104_Deployment Strategy - Canary
- File: 104_Deployment Strategy - Canary.txt
- Topic: Deployment Strategy - Canary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Implementation Step  

Content:
That's 50% to each deployment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 104_Deployment Strategy - Canary
- File: 104_Deployment Strategy - Canary.txt
- Topic: Deployment Strategy - Canary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Implementation Step  

Content:
So how do we reduce the traffic to the canary deployment?

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 104_Deployment Strategy - Canary
- File: 104_Deployment Strategy - Canary.txt
- Topic: Deployment Strategy - Canary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Implementation Step  

Content:
We only want a small percentage of traffic to go to the canary deployment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 104_Deployment Strategy - Canary
- File: 104_Deployment Strategy - Canary.txt
- Topic: Deployment Strategy - Canary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Implementation Step  

Content:
We can do that by simply reducing the number of pods in the canary deployment to the minimum possible, in this case one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 104_Deployment Strategy - Canary
- File: 104_Deployment Strategy - Canary.txt
- Topic: Deployment Strategy - Canary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Implementation Step  

Content:
So since a service distributes traffic between all pods equally, together, the pods in the primary deployment gets 83% of traffic, and the single pod in the canary deployment gets 17% of traffic.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 104_Deployment Strategy - Canary
- File: 104_Deployment Strategy - Canary.txt
- Topic: Deployment Strategy - Canary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Implementation Step  

Content:
Now, once tests are performed and we're confident with the new version, we can now upgrade the version of pods in the primary deployment and delete the canary deployment altogether.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 104_Deployment Strategy - Canary
- File: 104_Deployment Strategy - Canary.txt
- Topic: Deployment Strategy - Canary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Implementation Step  

Content:
So one of the caveats of performing a canary update this way with just Kubernetes deployments and services is that we have limited control over the split of traffic between each deployment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 104_Deployment Strategy - Canary
- File: 104_Deployment Strategy - Canary.txt
- Topic: Deployment Strategy - Canary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Implementation Step  

Content:
The traffic split is always going to be governed by the number of pods present in each deployment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 104_Deployment Strategy - Canary
- File: 104_Deployment Strategy - Canary.txt
- Topic: Deployment Strategy - Canary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Exam Tip  

Content:
So for example, we cannot say route just 1% of traffic to the canary deployment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 104_Deployment Strategy - Canary
- File: 104_Deployment Strategy - Canary.txt
- Topic: Deployment Strategy - Canary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
For that, we would need at least 100 pods altogether, and that's why service meshes like Istio comes with better control.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 104_Deployment Strategy - Canary
- File: 104_Deployment Strategy - Canary.txt
- Topic: Deployment Strategy - Canary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Implementation Step  

Content:
With Istio, you can define the exact percentage of traffic to be distributed between each deployment, and it's not really dependent upon the number of pods in a deployment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 104_Deployment Strategy - Canary
- File: 104_Deployment Strategy - Canary.txt
- Topic: Deployment Strategy - Canary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Implementation Step  

Content:
Let's say if you have just one pod in each deployment, you can still route 1% of traffic to one deployment and 99% to the other.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 104_Deployment Strategy - Canary
- File: 104_Deployment Strategy - Canary.txt
- Topic: Deployment Strategy - Canary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
So we discuss that in more detail in our course on service mesh with Istio.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 104_Deployment Strategy - Canary
- File: 104_Deployment Strategy - Canary.txt
- Topic: Deployment Strategy - Canary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Exam Tip  

Content:
So let's see this with some code examples.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 104_Deployment Strategy - Canary
- File: 104_Deployment Strategy - Canary.txt
- Topic: Deployment Strategy - Canary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Implementation Step  

Content:
With canary deployment, as before, you deploy the application as a deployment, so let's call it MyApp-Primary, and we create a service with the selector set to label app and value front end.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 104_Deployment Strategy - Canary
- File: 104_Deployment Strategy - Canary.txt
- Topic: Deployment Strategy - Canary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Implementation Step  

Content:
The new version is deployed as a separate deployment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 104_Deployment Strategy - Canary
- File: 104_Deployment Strategy - Canary.txt
- Topic: Deployment Strategy - Canary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Implementation Step  

Content:
Let's call it MyApp-Canary, and this deployment uses the newer image, version 2.0.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 104_Deployment Strategy - Canary
- File: 104_Deployment Strategy - Canary.txt
- Topic: Deployment Strategy - Canary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Implementation Step  

Content:
To start with, we only want to send a small percentage of traffic to it, so we deploy a single container only, and so we set the replicas count to one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 104_Deployment Strategy - Canary
- File: 104_Deployment Strategy - Canary.txt
- Topic: Deployment Strategy - Canary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Implementation Step  

Content:
We need to route the traffic from the same service to both the deployments, and for this, we make sure that we use the same labels and selector combination under the pod spec labels to match what is already in the service definition.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 104_Deployment Strategy - Canary
- File: 104_Deployment Strategy - Canary.txt
- Topic: Deployment Strategy - Canary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Implementation Step  

Content:
So the label app is set to front end in both the deployments, and that routes traffic to both the deployments.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 104_Deployment Strategy - Canary
- File: 104_Deployment Strategy - Canary.txt
- Topic: Deployment Strategy - Canary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
Well, that's it for this lecture.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 104_Deployment Strategy - Canary
- File: 104_Deployment Strategy - Canary.txt
- Topic: Deployment Strategy - Canary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 47
Type: Implementation Step  

Content:
Head over to the practice labs, and get your hands dirty, and I'll see you in the next one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 104_Deployment Strategy - Canary
- File: 104_Deployment Strategy - Canary.txt
- Topic: Deployment Strategy - Canary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
