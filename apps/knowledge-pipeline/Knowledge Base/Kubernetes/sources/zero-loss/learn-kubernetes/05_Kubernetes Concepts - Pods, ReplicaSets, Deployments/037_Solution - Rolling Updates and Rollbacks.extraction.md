# Extraction: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 037_Solution - Rolling Updates and Rollbacks

---

## Entry 1
Type: Concept  

Content:
Okay.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 2
Type: Concept  

Content:
So in this lab, we're going to look at rolling updates and rollbacks.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
So rolling updates mainly.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 4
Type: Concept  

Content:
So I'm going forward.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
I'm going to try and use the alias K for kubectl.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
So I've already set an alias.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Command  

Command:
```bash
K for for cube cuddle.
```

Explanation:
- Command preserved exactly as transcript evidence.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
So I'm going to try and use that going forward.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Implementation Step  

Content:
So we have deployed a simple web application inspect the pods and services.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 10
Type: Concept  

Content:
So let's do.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
Get pod.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 12
Type: Concept  

Content:
So there seems to be a front end, a set of front end pods.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 13
Type: Implementation Step  

Content:
Most likely there is a deployment.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 14
Type: Implementation Step  

Content:
So there's a front end deployment which deploys for pods.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Implementation Step  

Content:
Then wait for the application to fully deploy and view the application using the link called WebApp Portal.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
So there is a link here.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
You can click to view the application and it opens it up in a new window.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
It's called.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
It just says hello.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
Front end.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
Moment.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
Okay.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 23
Type: Concept  

Content:
So.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 24
Type: Implementation Step  

Content:
Let's let's look at the first or second question.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
So what is the current color of the Web application?

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
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
So if you look here, it is blue in color.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 27
Type: Concept  

Content:
So it's blue.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 28
Type: Exam Tip  

Content:
Now run the script named Test to send multiple requests to the Web application.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
So we have a test here, so I'm going to run that.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
And as you can see, all it does is it paints the application and returns the color.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
So the color is blue and it just keeps running that for a few seconds.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 32
Type: Concept  

Content:
So that's that's done.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Exam Tip  

Content:
So we're going to use this script to run tests on to kind of simulate accessing the web application by either multiple users, so or sending multiple requests to the web application.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Implementation Step  

Content:
So we'll use that to basically just do a small round of tests on the on the application now, inspect the deployment and identify the number of pods deployed by it.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Implementation Step  

Content:
So we just looked at that and we saw that it creates four pods.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
So it's four.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 37
Type: Concept  

Content:
That's the answer here.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 38
Type: Implementation Step  

Content:
Now what container image is used to deploy the application.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
So let's look at.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Implementation Step  

Content:
The deployment in more detail.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
And.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 42
Type: Concept  

Content:
Content.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
And here we have the pod template.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 44
Type: Concept  

Content:
We have containers.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
Image.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
The image is code cloud, web app color V1.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
So it's this one right here.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 48
Type: Implementation Step  

Content:
That's the image we've used to deploy the application.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
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
Now inspect the deployment and identify the current strategy.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 50
Type: Concept  

Content:
So if you look at this, we have the the strategy type given here and that is rolling update.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
So that's that's the rolling update is the current strategy.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Implementation Step  

Content:
Now, if you were to deploy or if you were to upgrade the application now, what would happen?

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Concept  

Content:
So we know that the rolling update.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Concept  

Content:
Takes down one part at a time and brings up the new part.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Concept  

Content:
So it does not wait.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
It does not take all of it down and bring the new ones up.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Concept  

Content:
So answer here is all parts are taken down before upgrading.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Concept  

Content:
No, that's not the correct one.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 59
Type: Concept  

Content:
Parts are upgraded a few at a time, so that's the correct one.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Implementation Step  

Content:
Now let us try that upgrade the application by setting the image on the deployment to code Cloud web App color V2.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
So we're going to update the image.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 62
Type: Implementation Step  

Content:
Now, one way to do that is you could do a cube cuddle, edit and deployment.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Concept  

Content:
And front end.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Implementation Step  

Content:
And then go here and change.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Concept  

Content:
The image.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Concept  

Content:
Another way to do that is just using the kubectl set command so you could do a set image.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Concept  

Content:
Let's run the help to find that out.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Concept  

Content:
So that's kubectl set image.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Implementation Step  

Content:
You can you can say deployment, deployment name and then the container name and the image.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Concept  

Content:
Right.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 71
Type: Concept  

Content:
So let's try that.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 72
Type: Concept  

Content:
So that's the cuddle set image.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Implementation Step  

Content:
For the deployment.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Implementation Step  

Content:
The deployment name is Front end.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Concept  

Content:
And the container name.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Concept  

Content:
We need to find out the container name.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
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
So let's do a.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Concept  

Content:
It by.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Concept  

Content:
Contain the container name is simple web app.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Concept  

Content:
So let's do that again.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 81
Type: Command  

Command:
```bash
Kubectl set.
```

Explanation:
- Command preserved exactly as transcript evidence.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Concept  

Content:
Image.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Implementation Step  

Content:
Deploy.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 84
Type: Concept  

Content:
Front end.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 85
Type: Concept  

Content:
Container name is simple web app.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 86
Type: Concept  

Content:
He calls.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 87
Type: Concept  

Content:
Test the image.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 88
Type: Concept  

Content:
And let's update it.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 89
Type: Concept  

Content:
Let's make sure it's updated.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 90
Type: Concept  

Content:
Let's run the describe command again.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 91
Type: Concept  

Content:
And we see that the image is set to V2.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 92
Type: Concept  

Content:
Okay.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 93
Type: Concept  

Content:
The success.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 94
Type: Concept  

Content:
So let's run the curl test again and see what we're seeing.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 95
Type: Concept  

Content:
So we're still seeing blue, but we see green occasionally.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 96
Type: Concept  

Content:
So we're so there's a lot of blue and there's there's some green.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 97
Type: Implementation Step  

Content:
So green is the new version that we have deployed.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 98
Type: Concept  

Content:
And blue.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 99
Type: Concept  

Content:
Blue is the older version.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 100
Type: Concept  

Content:
And now we have a lot of green, right?

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 101
Type: Implementation Step  

Content:
So if you look at this, there was a lot of blue at first and then there's some green.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 102
Type: Implementation Step  

Content:
And then there's green and blue.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 103
Type: Concept  

Content:
At one point of time.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 104
Type: Implementation Step  

Content:
And then we just have green.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 105
Type: Concept  

Content:
So that's how it's updated.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 106
Type: Implementation Step  

Content:
The application deployment.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 107
Type: Concept  

Content:
So that's the the, the rolling update.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 108
Type: Concept  

Content:
Now after how many pods can be down for a grade at a time.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 109
Type: Concept  

Content:
Consider the current strategy settings.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 110
Type: Concept  

Content:
So if you look at this, the strategy type is rolling update, which we have already seen.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 111
Type: Concept  

Content:
There is rolling update strategy.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 112
Type: Concept  

Content:
The additional details here.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 113
Type: Concept  

Content:
So 25% max unavailable.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 114
Type: Concept  

Content:
So that means it's going to take down only 25% of the pods at a time.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 115
Type: Concept  

Content:
Before bringing the new ones up.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 116
Type: Concept  

Content:
So you have four replicas and 25% of that is is just one.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 117
Type: Concept  

Content:
So let's select one.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 118
Type: Implementation Step  

Content:
Now change the deployment strategy to recreate and delete and recreate the deployment if necessary.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 119
Type: Concept  

Content:
So.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 120
Type: Implementation Step  

Content:
Let's go ahead and try and change the deployment strategy.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 121
Type: Concept  

Content:
So let's do a cube cuddle.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 122
Type: Concept  

Content:
Edit.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 123
Type: Implementation Step  

Content:
Deployment.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 124
Type: Concept  

Content:
Content.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 125
Type: Concept  

Content:
And we'll just go here and.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 126
Type: Concept  

Content:
We'll just change this strategy type.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 127
Type: Implementation Step  

Content:
To recreate.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 128
Type: Implementation Step  

Content:
And the recreate does not require the rolling update parameter.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 129
Type: Concept  

Content:
So we're just going to.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 130
Type: Concept  

Content:
Get rid of this.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 131
Type: Concept  

Content:
Okay.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 132
Type: Concept  

Content:
And let's verify.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 133
Type: Implementation Step  

Content:
And we see the strategy is changed to recreate.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 134
Type: Concept  

Content:
Okay.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 135
Type: Implementation Step  

Content:
Now the next one is to upgrade the application by setting the image on the deployment to V three.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 136
Type: Concept  

Content:
So currently we have V two and we have got to change it to V three.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 137
Type: Implementation Step  

Content:
And let's use the same command, the cube cuddle, set, image, deploy command, and we'll just change this to three.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 138
Type: Concept  

Content:
Okay.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 139
Type: Concept  

Content:
So that's updated.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 140
Type: Concept  

Content:
And.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 141
Type: Implementation Step  

Content:
Next.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 142
Type: Concept  

Content:
Let's run the whole test again.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 143
Type: Troubleshooting  

Content:
And when we run this this time, unlike the previous time, we see a lot of failures.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 144
Type: Concept  

Content:
So some of the requests are failing.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 145
Type: Concept  

Content:
And this is because it took down, um.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 146
Type: Concept  

Content:
It took down some of the.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 147
Type: Implementation Step  

Content:
The pods as part of the upgrade because we are doing a recreate.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 148
Type: Concept  

Content:
So let's just give it some time.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 149
Type: Concept  

Content:
If you look at the application here, it says.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 150
Type: Concept  

Content:
Uh, bad gateway.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 151
Type: Concept  

Content:
Okay.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 152
Type: Concept  

Content:
And now we can see it started to respond.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 153
Type: Concept  

Content:
We have.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 154
Type: Concept  

Content:
The red color is coming up.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 155
Type: Concept  

Content:
And when we refresh this, we see that we have application V three and the red colors are coming up.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 156
Type: Concept  

Content:
Okay, so that's the end of this lab.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 037_Solution - Rolling Updates and Rollbacks
- File: 037_Solution - Rolling Updates and Rollbacks.txt
- Topic: Solution - Rolling Updates and Rollbacks
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---
