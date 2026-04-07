# Extraction: certified-kubernetes-application-developer / 06_POD Design / 106_Solution_ Deployment strategies

---

## Entry 1
Type: Implementation Step  

Content:
-: In this video, I'm gonna go over the solutions for the deployment strategy lab.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 106_Solution_ Deployment strategies
- File: 106_Solution_ Deployment strategies.txt
- Topic: Solution_ Deployment strategies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
For the first question, it says, a deployment has been created in the default namespace.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 106_Solution_ Deployment strategies
- File: 106_Solution_ Deployment strategies.txt
- Topic: Solution_ Deployment strategies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Implementation Step  

Content:
We need to figure out what is the deployment strategy used for this deployment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 106_Solution_ Deployment strategies
- File: 106_Solution_ Deployment strategies.txt
- Topic: Solution_ Deployment strategies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Implementation Step  

Content:
So we'll do a kubectl get deployments, and here we have one deployment called frontend.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 106_Solution_ Deployment strategies
- File: 106_Solution_ Deployment strategies.txt
- Topic: Solution_ Deployment strategies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Implementation Step  

Content:
So I'm gonna do a kubectl describe frontend deployment frontend.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 106_Solution_ Deployment strategies
- File: 106_Solution_ Deployment strategies.txt
- Topic: Solution_ Deployment strategies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
And if we go up to strategy type, we can see that it is a rolling update strategy.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 106_Solution_ Deployment strategies
- File: 106_Solution_ Deployment strategies.txt
- Topic: Solution_ Deployment strategies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Implementation Step  

Content:
The deployment called frontend app is exposed on the node port via service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 106_Solution_ Deployment strategies
- File: 106_Solution_ Deployment strategies.txt
- Topic: Solution_ Deployment strategies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
Identify the name of the service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 106_Solution_ Deployment strategies
- File: 106_Solution_ Deployment strategies.txt
- Topic: Solution_ Deployment strategies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
We do a kubectl get service, we can see that we have the frontend-service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 106_Solution_ Deployment strategies
- File: 106_Solution_ Deployment strategies.txt
- Topic: Solution_ Deployment strategies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
And if you wanna just double check and verify that this is the right service, we could do a kubectl describe service, and we could just make sure that the labels or the selectors are a match up.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 106_Solution_ Deployment strategies
- File: 106_Solution_ Deployment strategies.txt
- Topic: Solution_ Deployment strategies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
So here we are using a selector called app=frontend.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 106_Solution_ Deployment strategies
- File: 106_Solution_ Deployment strategies.txt
- Topic: Solution_ Deployment strategies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Implementation Step  

Content:
And if we go back to the deployment, we could see for the pod template, we have a label of app=frontend.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 106_Solution_ Deployment strategies
- File: 106_Solution_ Deployment strategies.txt
- Topic: Solution_ Deployment strategies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
So the answer to this question, is gonna be frontend-service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 106_Solution_ Deployment strategies
- File: 106_Solution_ Deployment strategies.txt
- Topic: Solution_ Deployment strategies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Implementation Step  

Content:
For the next question, it's asking, "What is the selector used by this service?" We already saw that it's going to be app=frontend.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 106_Solution_ Deployment strategies
- File: 106_Solution_ Deployment strategies.txt
- Topic: Solution_ Deployment strategies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Implementation Step  

Content:
Next question is just telling us to take a look at the web application by clicking on the web app button right here, and that's gonna be the application.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 106_Solution_ Deployment strategies
- File: 106_Solution_ Deployment strategies.txt
- Topic: Solution_ Deployment strategies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Implementation Step  

Content:
The next question, "I need deployment called frontend-v2 has been created in the default namespace using the image listed below.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 106_Solution_ Deployment strategies
- File: 106_Solution_ Deployment strategies.txt
- Topic: Solution_ Deployment strategies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Implementation Step  

Content:
And this deployment will be used to test a newer version of the same app.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 106_Solution_ Deployment strategies
- File: 106_Solution_ Deployment strategies.txt
- Topic: Solution_ Deployment strategies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Implementation Step  

Content:
Configure the deployment in such a way that the service called frontend-service routes less than 20% of the traffic to the new deployment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 106_Solution_ Deployment strategies
- File: 106_Solution_ Deployment strategies.txt
- Topic: Solution_ Deployment strategies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Warning/Pitfall  

Content:
Do not increase the replicas of the frontend deployment." So if we do a kubectl get deployments, we can see that the frontend, the original version one has five pods, and then frontend v2 has two pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 106_Solution_ Deployment strategies
- File: 106_Solution_ Deployment strategies.txt
- Topic: Solution_ Deployment strategies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
And if we go back to the service, you can see that we're using the selector app=frontend.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 106_Solution_ Deployment strategies
- File: 106_Solution_ Deployment strategies.txt
- Topic: Solution_ Deployment strategies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
So let's take a look at the selector used on the frontend-v2. (mouse clicks) And we can see that it's also using app=frontend.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 106_Solution_ Deployment strategies
- File: 106_Solution_ Deployment strategies.txt
- Topic: Solution_ Deployment strategies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
And so that means it's traffic's gonna get load balanced across both of these right now.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 106_Solution_ Deployment strategies
- File: 106_Solution_ Deployment strategies.txt
- Topic: Solution_ Deployment strategies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
And so there's five here and there's two here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 106_Solution_ Deployment strategies
- File: 106_Solution_ Deployment strategies.txt
- Topic: Solution_ Deployment strategies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
And so what that means is, to see how much or what percent of the traffic is going to frontend v2, is just gonna be two outta seven, which roughly equals 28%.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 106_Solution_ Deployment strategies
- File: 106_Solution_ Deployment strategies.txt
- Topic: Solution_ Deployment strategies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
So to get that down below 20%, we're gonna just remove the number of pods down to one, or the number of replicas sets down to one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 106_Solution_ Deployment strategies
- File: 106_Solution_ Deployment strategies.txt
- Topic: Solution_ Deployment strategies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Implementation Step  

Content:
And so to reduce the replica sets down to one, we're gonna run the command, "kubectl scale deployment -: -replicas=1" and then we're gonna call, frontend-v2.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 106_Solution_ Deployment strategies
- File: 106_Solution_ Deployment strategies.txt
- Topic: Solution_ Deployment strategies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Best Practice  

Content:
So that's gonna scale it down, if I do a kubectl get deployments now, we should see only one pod for frontend v2 and that's gonna be a one out of six now.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 106_Solution_ Deployment strategies
- File: 106_Solution_ Deployment strategies.txt
- Topic: Solution_ Deployment strategies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Best Practice  

Content:
And that should be less than 20%.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 106_Solution_ Deployment strategies
- File: 106_Solution_ Deployment strategies.txt
- Topic: Solution_ Deployment strategies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
So let's check this.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 106_Solution_ Deployment strategies
- File: 106_Solution_ Deployment strategies.txt
- Topic: Solution_ Deployment strategies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
All right, so let's check out the app now.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 106_Solution_ Deployment strategies
- File: 106_Solution_ Deployment strategies.txt
- Topic: Solution_ Deployment strategies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
So if we open this up in a new tab, you can see right now it's still v1, but remember less than 20% of the traffic will get hashed to v2.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 106_Solution_ Deployment strategies
- File: 106_Solution_ Deployment strategies.txt
- Topic: Solution_ Deployment strategies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
So we just have to keep refreshing a couple times, until we get to v2.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 106_Solution_ Deployment strategies
- File: 106_Solution_ Deployment strategies.txt
- Topic: Solution_ Deployment strategies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
There we go, and I went right past it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 106_Solution_ Deployment strategies
- File: 106_Solution_ Deployment strategies.txt
- Topic: Solution_ Deployment strategies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
And so we can see it's about, a little bit less than 20%.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 106_Solution_ Deployment strategies
- File: 106_Solution_ Deployment strategies.txt
- Topic: Solution_ Deployment strategies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
And so this is just saying, that we've now established that the new version two of the applications working expected.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 106_Solution_ Deployment strategies
- File: 106_Solution_ Deployment strategies.txt
- Topic: Solution_ Deployment strategies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
And so now we wanna safely redirect all users to version two.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 106_Solution_ Deployment strategies
- File: 106_Solution_ Deployment strategies.txt
- Topic: Solution_ Deployment strategies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
And to do that, we need to scale down version one down to zero replicas, and scale up version two to five replicas.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 106_Solution_ Deployment strategies
- File: 106_Solution_ Deployment strategies.txt
- Topic: Solution_ Deployment strategies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
So we can run the same command, basically.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 106_Solution_ Deployment strategies
- File: 106_Solution_ Deployment strategies.txt
- Topic: Solution_ Deployment strategies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Implementation Step  

Content:
This is just gonna be frontend and so we call version one, and then we're gonna set the replicas to zero.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 106_Solution_ Deployment strategies
- File: 106_Solution_ Deployment strategies.txt
- Topic: Solution_ Deployment strategies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Implementation Step  

Content:
And then this time we're gonna call v2 and set the replicas to five.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 106_Solution_ Deployment strategies
- File: 106_Solution_ Deployment strategies.txt
- Topic: Solution_ Deployment strategies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
This is gonna force all traffic to go to just v2.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 106_Solution_ Deployment strategies
- File: 106_Solution_ Deployment strategies.txt
- Topic: Solution_ Deployment strategies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Implementation Step  

Content:
If I do a kubectl get deployment, we can see zero to frontend v1, and five to frontend v2.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 106_Solution_ Deployment strategies
- File: 106_Solution_ Deployment strategies.txt
- Topic: Solution_ Deployment strategies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Implementation Step  

Content:
Now delete the deployment called frontend completely.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 106_Solution_ Deployment strategies
- File: 106_Solution_ Deployment strategies.txt
- Topic: Solution_ Deployment strategies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Best Practice  

Content:
So I'll do a kubectl delete deployment frontend, and when we do a get deployment, we should see only frontend v2.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 106_Solution_ Deployment strategies
- File: 106_Solution_ Deployment strategies.txt
- Topic: Solution_ Deployment strategies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Best Practice  

Content:
And now if we reload the web app tab, we should see that only version two of the app exists.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 106_Solution_ Deployment strategies
- File: 106_Solution_ Deployment strategies.txt
- Topic: Solution_ Deployment strategies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
So I'm gonna refresh, version two, version two, version two, it's always gonna be version two.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 106_Solution_ Deployment strategies
- File: 106_Solution_ Deployment strategies.txt
- Topic: Solution_ Deployment strategies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Implementation Step  

Content:
And so that's going to wrap up the deployment strategy lab.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 106_Solution_ Deployment strategies
- File: 106_Solution_ Deployment strategies.txt
- Topic: Solution_ Deployment strategies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
