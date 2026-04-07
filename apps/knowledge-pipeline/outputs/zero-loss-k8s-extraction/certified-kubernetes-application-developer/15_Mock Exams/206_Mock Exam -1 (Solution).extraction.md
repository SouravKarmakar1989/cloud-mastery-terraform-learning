# Extraction: certified-kubernetes-application-developer / 15_Mock Exams / 206_Mock Exam -1 (Solution)

---

## Entry 1
Type: Exam Tip  

Content:
-: In this video, I'm gonna walk you through these solutions for the mock exam one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
For the first question, we have to deploy a pod with this specific name using the Nginx Alpine image.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Implementation Step  

Content:
But to do that we'll do a kubectl run, and then we'll provide the name which is gonna be Nginx, and then we'll pass in the image flag.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
So, we'll set this to Nginx Alpine.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Implementation Step  

Content:
Next question is asking us to create a namespace with this following name.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
So, I'm gonna copy this.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Implementation Step  

Content:
Now, I do a kubectl, create namespace.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Implementation Step  

Content:
Next question is asking for a new deployment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Implementation Step  

Content:
Create a new deployment named httpd-frontend with three replicas using the following image.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Implementation Step  

Content:
So, do the kubectl, create command and we'll create a deployment, and we'll call this httpd-frontend as per the question.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Implementation Step  

Content:
And then we'll pass in the dash, dash image flag which is gonna be httpd:2.4-alpine.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Implementation Step  

Content:
And then finally we can specify the replicas which is gonna be set to three.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Implementation Step  

Content:
For the next question, we have to deploy messaging pod using the redis alpine image with the label set to tier equals message or MSG.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
So, I'll say kubectl run messaging, we're gonna specify the image which is gonna be redis alpine.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Implementation Step  

Content:
And then to set a label, you pass in the dash L flag and you say tier equals MSG.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Troubleshooting  

Content:
A replica set with the name of rs-d333393 is created, how are the pods are not coming up, identify and fix this issue, and ensure that the replica set has four in a ready state.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
So, I'm gonna do a kubectl, get replica set.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Implementation Step  

Content:
We can see the replica set in question, we can see desired current, and then ready is zero.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Implementation Step  

Content:
So, let's take a look at what could be wrong with this by doing a kubectl, describe, replica set, and then we'll pass in the name.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Warning/Pitfall  

Content:
And so if we just take a look events wise, I don't think we see anything interesting here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
Everything looks fine.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
The name, configuration all seems to be look good.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
However when we get down to the container section, we can see that the image, it looks like there was a typo on the image because it's set to busybox x x x x.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Best Practice  

Content:
So, this should just be busybox.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Troubleshooting  

Content:
So, this is most likely what's causing this issue.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Implementation Step  

Content:
So, what we're gonna do is, I'm gonna do a kubectl, edit, replica set, and then the name of the replica set so we can modify the configuration, and I'm gonna change the image, we'll remove the extra Xs.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Implementation Step  

Content:
And after that's been edited, we have to then go in and delete the old, misconfigured pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
So if I do a kubectl, get pod, we can see the four old pods, so we're gonna delete all of these.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Implementation Step  

Content:
I can go one by one and just do a kubectl, delete pod, and then provide the name but I wanna just delete all of them all at once.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
So, what I'm gonna do is I'm gonna see if all of them have a label.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
So, I'm gonna do kubectl, describe pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
And if we take a look at the pod, it looks like they all have a label of name equals busybox dash pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
So, I'm gonna copy this, I'm gonna say delete pod, and I'm gonna pass in the dash L flag, so we're gonna delete all the pods with this label.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Best Practice  

Content:
And this should be a kubectl, and it's gonna delete the four pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Best Practice  

Content:
And now if I do a kubectl, get replica set, we should see that the replica set now has four and ready state.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Implementation Step  

Content:
The next question's asking us to create a service called messaging-service to expose the redis deployment in the marketing name phase within the cluster on port 6379.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Implementation Step  

Content:
And so the way we do that is kubectl, and then we'll say expose deployment and then we'll call the redis deployment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Implementation Step  

Content:
And then for the port, all right, we wanna use port 6379.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
And the name, I'm gonna call this messaging-service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Implementation Step  

Content:
And then for the namespace, this is gonna be marketing.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Implementation Step  

Content:
For the next question.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
We have to update the environment variable on the pod webapp-color to use the green background.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
So if we do a kubectl, get pod, let's take a look at that pod real quick.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
We can see under environment variables.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
Right now it's set to app_color pink.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
So, we just have to change this environment variable to be green.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Implementation Step  

Content:
And so what I'm gonna do is I'm gonna do a kubectl, get pod and then pass the name of the pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
I do dash O.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
Yeah, so we can get the configuration, I'm gonna pipe this to...

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Concept  

Content:
We'll call this webapp-color.yaml, and we'll go into this configuration and we're gonna just change the environment variable.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
So, I'll see, I'll just search for E and V, and we go and we can just change the value to be green here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Implementation Step  

Content:
And so after we make that change, we now have to redeploy this, so we can delete it and then reapply it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Implementation Step  

Content:
So I can do a kubectl, delete pod, you know, blah, and then do a kubectl, apply.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Implementation Step  

Content:
But instead of doing that, what I can do is because the configuration is going to have the same name, the pod is going to have the same exact name, What I can do instead is I can say kubectl, replace-f, and then provide the name of the file, and I can say --4.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Concept  

Content:
So, this is going to replace the preexisting pod with the new one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Implementation Step  

Content:
So, you can see it's deleting it and then it's eventually going to create the new one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Implementation Step  

Content:
All right, and then we can see that it was replaced.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Concept  

Content:
Perfect.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 59
Type: Implementation Step  

Content:
So, let's go to the next question.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Implementation Step  

Content:
Now we have to create a new config map named cm3392845, and we have to provide the following specs.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Warning/Pitfall  

Content:
So we'll do a kubectl, create, config map, and I'm just gonna copy the name, so I don't mistype anything.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Implementation Step  

Content:
And then we have to provide these three key value pairs.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Implementation Step  

Content:
So I'm gonna say dash, dash from dash literal equals and we'll copy this and then we'll pass in the dash, dash from dash literal flag again, and then copy the second one, and we'll do the last one as well.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Best Practice  

Content:
And if we do a kubectl, describe, config map, we should see all of the key value pairs in there.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Implementation Step  

Content:
For the next one, we have to create a new secret name db-secret with the data given below.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Implementation Step  

Content:
So, do a kubectl, create, secret generic and then we'll provide the name here, and we'll do the dash, dash from dash literal, and we'll call this again.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Implementation Step  

Content:
And then one last time for the last one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Implementation Step  

Content:
So, the next question we have to update this pod so that it runs as a root user with the CS underscore time capability.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Concept  

Content:
So, let's get the information on that pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Concept  

Content:
We have appsec, kff, 3, 4, 4, 5.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Concept  

Content:
I'm gonna do a kubectl , get pod, and so right now I'm just getting the configuration.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Concept  

Content:
So, we'll get the YAML config.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Implementation Step  

Content:
I'm just gonna pipe it to a file, I'll call this app-sec.yaml, and then we'll go into the file now and we'll make the necessary changes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Concept  

Content:
So, to make this operate as the root user, we wanna go under spec.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Concept  

Content:
So, I'm gonna search for spec.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Concept  

Content:
So, under spec, I'm gonna pass security context.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Concept  

Content:
And actually I realize it's probably already in there.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Concept  

Content:
Let's see if I can find it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Concept  

Content:
Here we go, security context.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Implementation Step  

Content:
And then in here we wanna do run as user and then set that to zero.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 81
Type: Implementation Step  

Content:
So, that's going to get the first requirement of running this as a root user.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Implementation Step  

Content:
And the next time, the next thing we wanna do is give the cs time capability.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Concept  

Content:
And so that's going to be under the actual container, so we'll go under this specific container here and you can put this wherever you'd like.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 84
Type: Concept  

Content:
So, I'm just gonna put it right here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 85
Type: Best Practice  

Content:
And we'll say security context, and then capabilities, and we'll say add cs underscore time, and that should be all that we have to do.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 86
Type: Concept  

Content:
And so now we can do two things.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 87
Type: Implementation Step  

Content:
Once again, we can do a kubectl, delete, and then we'll delete this pod and then reapply this one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 88
Type: Concept  

Content:
Or we can do the kubectl, replace command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 89
Type: Concept  

Content:
So I'll do a kubectl, replace, appsec dash, dash force.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 90
Type: Implementation Step  

Content:
So, that's gonna delete the old one and then replace it with the new one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 91
Type: Concept  

Content:
Okay, for this, we have to export the logs of this specific pod to this file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 92
Type: Concept  

Content:
So, all we have to do is kubectl, logs, grab the name of the pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 93
Type: Concept  

Content:
All right, and it looks, like, this is actually in a different namespace.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 94
Type: Concept  

Content:
We have to identify the namespace.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 95
Type: Implementation Step  

Content:
So, let's see, let's first do kubectl, get pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 96
Type: Concept  

Content:
Is it in this namespace?

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 97
Type: Concept  

Content:
Does not look like it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 98
Type: Concept  

Content:
Let's do a kubectl, get namespace.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 99
Type: Concept  

Content:
Let's check e-commerce, just because it has that name in there.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 100
Type: Concept  

Content:
So kubectl, get.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 101
Type: Concept  

Content:
Okay, so it looks like it's in there.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 102
Type: Concept  

Content:
So, we know what namespace it is.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 103
Type: Implementation Step  

Content:
And so now we can do a kubectl, logs, and then namespace equals e-commerce.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 104
Type: Implementation Step  

Content:
And then we wanna redirect this to a file, and we're gonna redirect it to this specific path.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 105
Type: Implementation Step  

Content:
And we'll go to the next question.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 106
Type: Implementation Step  

Content:
And for this, we have to create a persistent volume with the following requirements.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 107
Type: Concept  

Content:
And for this, instead of writing everything out by hand, I'm gonna go pull up the documentation for persistent volumes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 108
Type: Exam Tip  

Content:
So, there's gonna be a section here under storage persistent volume, which gonna give us an example.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 109
Type: Concept  

Content:
So, I'm just gonna copy this just up to here, I only need that much.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 110
Type: Implementation Step  

Content:
And then I'm gonna create a file, also say, I'll call this vip.yaml, and I'm just gonna paste this in here, and so let's make the necessary changes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 111
Type: Implementation Step  

Content:
So, the first thing is we're gonna have to change the name.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 112
Type: Concept  

Content:
And this is gonna be pv-analytics.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 113
Type: Concept  

Content:
For capacity, this is going to be 100.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 114
Type: Concept  

Content:
And for access mode, this is going to be read, write many.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 115
Type: Concept  

Content:
And the last thing that we need to do is add the host path, and the path is going to be /pv/data-analytics.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 116
Type: Implementation Step  

Content:
And then we can do a kubectl, apply-fpv.yaml.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 117
Type: Implementation Step  

Content:
And we'll go to the next question.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 118
Type: Implementation Step  

Content:
And so for this question, we have to create a redis deployment using the image redis alpine with one replica and a label of app equals redis.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 119
Type: Implementation Step  

Content:
And then there's a couple other steps, We have to then expose it via cluster IP service called redis on port 6379.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 120
Type: Implementation Step  

Content:
And then we have to create an English type network policy called redis access which allows only the pod with the labeler to access the deployment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 121
Type: Implementation Step  

Content:
So, first we're gonna do the first step which is creating a redis deployment with this following spec.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 122
Type: Implementation Step  

Content:
We'll do a kubectl, create deployment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 123
Type: Concept  

Content:
We'll call it redis--image which equals to reads alpine.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 124
Type: Implementation Step  

Content:
And then we're gonna set the replicas to one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 125
Type: Implementation Step  

Content:
So, that's the first step.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 126
Type: Implementation Step  

Content:
Then, we have to expose that part via cluster IP.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 127
Type: Implementation Step  

Content:
So, I'll do a kubectl, expose deployment, and then we'll call that redis deployment that we just created.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 128
Type: Concept  

Content:
And this name is going to be redis as well.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 129
Type: Concept  

Content:
We're gonna call this service redis.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 130
Type: Implementation Step  

Content:
And then we're gonna provide the port which is gonna be 6379, and then the target port equals 6379.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 131
Type: Implementation Step  

Content:
And so now that service is created.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 132
Type: Implementation Step  

Content:
And the last step that we have to do is create that English type network policy.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 133
Type: Implementation Step  

Content:
And so to do that, I'm gonna create a new file, and I'm gonna call this networkpolicy.yaml.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 134
Type: Concept  

Content:
And instead of writing this out by scratch, I'm gonna pull up the documentation again.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 135
Type: Exam Tip  

Content:
And we're gonna take a look at an example and just copy this.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 136
Type: Concept  

Content:
So, if you go under service load balancing and networking, there's a network policy section.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 137
Type: Exam Tip  

Content:
And here we have an example config.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 138
Type: Implementation Step  

Content:
So, I'm just gonna copy this whole thing and then paste it into here and then just change what we need to change.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 139
Type: Implementation Step  

Content:
Okay, so the specs that it has to meet is let's see, created network called redis access, so let's change the name.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 140
Type: Concept  

Content:
It's gotta be called redis access.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 141
Type: Implementation Step  

Content:
And then for pod selector, we have to specify the label that we gave the pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 142
Type: Concept  

Content:
So, that's going to be app equals redis.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 143
Type: Concept  

Content:
So for the pod selector, it's gonna be app redis.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 144
Type: Best Practice  

Content:
And the requirement says we should only allow traffic that comes from pods with the label of access equals redis.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 145
Type: Concept  

Content:
So, under ingress, under from...

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 146
Type: Concept  

Content:
We wanna delete everything except for the pod selector.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 147
Type: Concept  

Content:
So, we just wanna define a pod selector.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 148
Type: Concept  

Content:
I'm gonna delete the rest of this.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 149
Type: Concept  

Content:
And so what we're saying here is we wanna match labels of access equals redis only.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 150
Type: Concept  

Content:
And for the ports it's already set to the correct value ports.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 151
Type: Implementation Step  

Content:
We wanna do protocol TCP, and then the port is gonna be 6379, the redis port. and then we can delete everything under egress.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 152
Type: Concept  

Content:
And since we no longer have egress, I'm gonna delete the policy type there.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 153
Type: Concept  

Content:
So it's just ingress.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 154
Type: Implementation Step  

Content:
We have the policy, I'm gonna do a kubectl, apply-f network policy.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 155
Type: Concept  

Content:
That's great.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 156
Type: Implementation Step  

Content:
We'll go to the next step.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 157
Type: Implementation Step  

Content:
And so now we have to create a pod called sega with two containers, one that's called tails with the image of busybox with this command, and the second is we called sonic with an image of Nginx and an environment variable of Nginx export with the value of 8080.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 158
Type: Implementation Step  

Content:
So, let's create a new file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 159
Type: Implementation Step  

Content:
So, I'm gonna say vi and I'll call this sega.yaml And so I'll just set the API version to be V1 kind to be pod, and then the metadata is gonna be sega.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 160
Type: Implementation Step  

Content:
And then now let's configure our containers under spec.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 161
Type: Concept  

Content:
So, there's gonna be two containers.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 162
Type: Implementation Step  

Content:
The first one is gonna have a name of tails and it's gonna have an image of busybox.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 163
Type: Concept  

Content:
And the command that's gonna run is sleep and it's gonna sleep for 3,600 seconds.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 164
Type: Implementation Step  

Content:
The next container is gonna be sonic and the image is gonna be Nginx, and the environment variables that we have to specify.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 165
Type: Implementation Step  

Content:
The first one is gonna have a name of nginx_port and the value is gonna have a value of 8008.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 166
Type: Best Practice  

Content:
And that should be all that we need, We'll do a kubectl, apply-f, sega.yaml and it's successfully created.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 167
Type: Concept  

Content:
And so that's going to wrap up the final question.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 168
Type: Concept  

Content:
Let's go ahead and run the results.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 169
Type: Concept  

Content:
And it looks like I made a mistake.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 170
Type: Concept  

Content:
So, I'm gonna just open up this last question and I realize I just...

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 171
Type: Best Practice  

Content:
This should be 8080, not 8008, so I'll change that to 8080.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 172
Type: Concept  

Content:
So, here we're just gonna change this to be busybox not busyboxy.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 173
Type: Implementation Step  

Content:
And then I'm gonna run that same replace command as well.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 174
Type: Concept  

Content:
Okay, and now let's test again.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 175
Type: Exam Tip  

Content:
And that's going to wrap up the mock exam one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 15_Mock Exams
- Lecture: 206_Mock Exam -1 (Solution)
- File: 206_Mock Exam -1 (Solution).txt
- Topic: Mock Exam -1 (Solution)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
