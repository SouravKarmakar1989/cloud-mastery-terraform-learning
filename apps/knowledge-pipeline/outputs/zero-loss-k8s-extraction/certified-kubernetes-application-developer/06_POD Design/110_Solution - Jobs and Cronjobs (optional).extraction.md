# Extraction: certified-kubernetes-application-developer / 06_POD Design / 110_Solution - Jobs and Cronjobs (optional)

---

## Entry 1
Type: Concept  

Content:
-: In this video, I'm gonna take you through the solutions for the Kubernetes Jobs lab.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
For question one, it states that a pod definition file named, throw-dice-pod.yaml, was given, and what this image is going to do, is it's going to randomly return a value between one and six.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Troubleshooting  

Content:
Six is considered a success, and all others are considered a failure.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Implementation Step  

Content:
And so, what it is asking us to do, is deploy a pod using this image, and then, view the pod logs to see what number the image generated.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
If I type in, ls, this is going to show us the throw-dice-pod.yaml.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
So, I'm gonna, cat, so we can see the contents of this file, and we can see all it's doing is, it's creating a container using that throw-dice image.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Implementation Step  

Content:
So, I'm gonna deploy this, we'll do a, kubectl apply -f, and we'll call the name of that file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Implementation Step  

Content:
So, that's going to create the pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Implementation Step  

Content:
And then, what we can do is do a, kubectl get pod, so we can see what status that the pod is in.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Troubleshooting  

Content:
And, we can see that it is currently in an error status.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
So, it looks like, it returned a value that wasn't a six.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Implementation Step  

Content:
So, if we do a, kubectl logs, we can actually take a look at the logs to see what number was deployed.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
And, we can see it returns a value of four, so it returned a value of four.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Implementation Step  

Content:
So, we'll go ahead and do a validation and go to, Next.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Implementation Step  

Content:
The next question is asking us to create a job using this pod definition file, or from the imperative command, and look at how many attempts does it take to get a six.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
And, it's telling us to provide the following specifications.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Implementation Step  

Content:
So, we've got the job name, which is gonna be throw-dice-job, and then the image has to be that same image.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Warning/Pitfall  

Content:
And so, what I recommend you do is, if you don't remember how to create a job, I recommend you go to the Kubernetes documentation, and under, Concepts, Workloads, and then, Workload Resources, there's one for jobs, and it's gonna give us an example.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
And so, we could just use this as a template for creating a job.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
And, that's what I'm actually gonna do.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Implementation Step  

Content:
I'm gonna copy this, go back to the lab, and I'm gonna create a file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Implementation Step  

Content:
So, I'll do a VI, and then, we'll say, throw-dice-job.yaml.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
And, I'm just gonna paste this in here, and we're gonna update a few things.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Implementation Step  

Content:
So, first of all, we have to change the name of the job, gotta match up for validation purposes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
So, this is gonna be, throw-dice-job, the name, I can just call this whatever.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
We'll just say, throw-dice.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Implementation Step  

Content:
And then, the image has to be that throw-dice image.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
And, there isn't gonna be any other commands.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
Now, the back-off limit, just because we are going to want to see if we can get a six, so, it could take up to more than six attempts.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
So, I'm just gonna put this at an artificially high number, just so that we can actually get a success.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
So, I'm just gonna say it's a 25.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
That means, it'll attempt 25 times to get a six.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Implementation Step  

Content:
And then, we can do a, kubectl apply -f, and then, we'll call the throw-dice-job.yaml.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Implementation Step  

Content:
So, that's been created, and if I do a, kubectl get job, we can see our job.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
So, far it hasn't completed, and if I do a, kubectl describe job throw-dice-job, we can see one active, zero succeeded, three failed.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Implementation Step  

Content:
And so, we can see all the pods that it created.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
So, let's just keep hitting the up arrow and see what happens.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
And so, it looks like we finally got one that was completed.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
And so, now, we can see one was successful, so this is the one that registered as six.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
If I hit check, it's gonna run the validation that was successful.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Implementation Step  

Content:
Okay, then it's just telling us, monitor and wait for the job to succeed.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Implementation Step  

Content:
And then, it's just letting us know, you know, it's best to bump up the back-off limit, which we already did, so that the job doesn't close up before it's successful.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
We'll run the validation again because we already waited for it to complete.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
So, I'll just hit check.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
And, this is gonna ask us, how many attempts did it take to complete the job?

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
So, we have one succeeded, three failed.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
So, that's four total attempts.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Implementation Step  

Content:
The next thing that we need to do is update the job, so that it runs until we have three successful sixes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
So, I'm going to delete the current job.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Concept  

Content:
So, I'll say, kubectl delete -f throw-dice-job.yaml.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
That's gonna delete it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Implementation Step  

Content:
Then I'm gonna open up that file, and what we wanna do is we want to add the completions property, and set this to be three.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Concept  

Content:
Right, because we wanna see three successful sixes, so we need this to complete three times.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Concept  

Content:
And, you know, this could potentially take up to more than 25 attempts.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Concept  

Content:
So if you wanted to, we could just change this to maybe like 35, just in case, so, it doesn't exit out before we get three completions.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Implementation Step  

Content:
And then, I'll do a, kubectl apply -f, and I'm gonna do a, kubectl describe job.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Troubleshooting  

Content:
And so, right now, we've had one success, one failure, and, now, we have two successes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Concept  

Content:
So, oh, there we go.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Concept  

Content:
So, now, we got three successes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Concept  

Content:
So, fairly quickly, it might take a little longer for you guys, just, you know, it's just a matter of luck.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Implementation Step  

Content:
So, just wait it out, once it's done, go ahead and hit check, and we can move on to the next question.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Concept  

Content:
How many attempts did it take to complete this job this time?

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Troubleshooting  

Content:
So, we had three successful ones, and one failure.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Concept  

Content:
So, that's gonna be four.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Implementation Step  

Content:
All right, so, for the next question, it's telling us to run these jobs in parallel instead of doing this one by one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Implementation Step  

Content:
So, once again, we're gonna delete our current job, and then, we're gonna modify the file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Concept  

Content:
And, to make them run in parallel, we just have to provide one property.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Concept  

Content:
And so, we need to add the parallelism property, so I'll say, parallelism, and we want three to be able to run in parallel.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Concept  

Content:
So, I'll set that to three.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Implementation Step  

Content:
And then, we can do a, kubectl apply -f.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Implementation Step  

Content:
If we do a kubectl apply, oh, sorry, not apply, kubectl get jobs, actually, we'll do a describe job.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Concept  

Content:
And so, we've got two succeeded, three failed.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Concept  

Content:
And so, I'm just gonna wait for this to get three successes but we can see that they're running in parallel now, so it's a little bit quicker.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Concept  

Content:
And there we go, we have had three successes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Implementation Step  

Content:
So, I will run a check, go to the next question.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Concept  

Content:
Notice how quickly that finished over.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Comparison  

Content:
Obviously, if you're gonna run your jobs in parallel, they're gonna finish a little bit quicker, versus doing them in series.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Implementation Step  

Content:
Now, the final question, is asking us to create a CronJob that will run the job at 2130 hours every single day.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Concept  

Content:
And so, these are gonna be the specs for the CronJob.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Implementation Step  

Content:
This is gonna be the name, this is gonna be the image, and then, if you wanna configure the schedule, it's gonna be 30-21.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 81
Type: Implementation Step  

Content:
So, the first one's for the half an hour, the first one's for the hour, so, this is the minutes, basically, and then, this is the hour.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Implementation Step  

Content:
And then, the stars, or the asterisks on the other ones, is basically saying, I want this to happen every day.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Exam Tip  

Content:
And, if you wanna take a look at the logs, we can just search for CronJob, and we can probably get an example one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 84
Type: Exam Tip  

Content:
And, so this is an example one, so I'm just gonna copy this.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 85
Type: Implementation Step  

Content:
And, I'm gonna create a new file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 86
Type: Concept  

Content:
And, I'm going to paste this now, and we can delete the command stuff, and I'm gonna update the image to be the image that we want.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 87
Type: Concept  

Content:
So, we want, code cloud throw-dice, and I'll just call this, throw-dice.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 88
Type: Implementation Step  

Content:
And, we wanna update the schedule to be this, so I'm just gonna copy this, and then paste it in there.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 89
Type: Implementation Step  

Content:
And then, we'll update the name as well, so this is gonna be, throw-dice-cron-job.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 90
Type: Implementation Step  

Content:
And then, we wanna change the restart policy to be, Never.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 91
Type: Implementation Step  

Content:
And then, again, it's been created.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 92
Type: Implementation Step  

Content:
I'll then run a check to see if it was successfully created, and, looks like everything's good to go.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 93
Type: Concept  

Content:
And, that's going to wrap up the Kubernetes Jobs and Cron Jobs lab.

Source:
- Course: certified-kubernetes-application-developer
- Module: 06_POD Design
- Lecture: 110_Solution - Jobs and Cronjobs (optional)
- File: 110_Solution - Jobs and Cronjobs (optional).txt
- Topic: Solution - Jobs and Cronjobs (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
