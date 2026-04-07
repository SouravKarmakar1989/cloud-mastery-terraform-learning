# Extraction: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2

---

## Entry 1
Type: Concept  

Content:
-: In this video, I'm gonna walk you through the solutions for Lightning Lab 2.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
So for the first question, a couple of pods have been deployed in the cluster across several different namespaces.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Troubleshooting  

Content:
We have to inspect them and identify which pod is not in a ready state and then troubleshoot and fix that issue for the first part of the question.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Troubleshooting  

Content:
And then for the second part, for that same pod that has this issue, we want to add a check to restart the container on the same pod if the command LS slash var slash WWW slash HTML slash file underscore check fails.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Implementation Step  

Content:
So first of all, let's figure out which pod is impacted at the moment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
So I'm gonna do a kubectl get pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
And remember we wanna check all namespaces so we can do a dash dash all dash namespaces.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
And so if we take a look, there's one pod that's not in a running state or ready state and that's gonna be this engine X-1-4-0-1.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
And that's in this specific namespace.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Troubleshooting  

Content:
To troubleshoot this, I'm gonna start off by doing kubectl describe pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
And if we take a look at the events, it's already giving us some useful information.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
It says the readiness probe failed.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Troubleshooting  

Content:
So there's some sort of issue surrounding that, whether it's a misconfiguration on the probe itself or something else that's to be determined.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
So what we're gonna do is, I'm gonna clear this and I'm actually going to do a get pod now and I'm gonna pipe this out to a YAML config file so I can take a look at the configs and see if I can spot something off.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
So I'll say dash O yaml.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Implementation Step  

Content:
And then if I take a look at the YAML configuration.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
And let's take a look at the readiness probe.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
So it looks like it's sending a request to the root URL on port 8080.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
And right there I already notice something a little unusual because in the config above, it's saying the container port is on 9-0-8-0.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Best Practice  

Content:
So I suspect that this is actually a typo and this should be 9-0-8-0.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Troubleshooting  

Content:
So let's actually try changing that and see if that fixes the issue.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Troubleshooting  

Content:
Okay, so we changed the port, and while we're at it, let's go ahead and knock out this second task, which is, we want to add a check to restart the container on the same pod if this specific command fails.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
So for this, we actually need a liveness probe.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
So we already have a readiness probe.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
Let's add a liveness probe.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
So I'm gonna go and add this here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
So we'll do liveness and this is gonna be an HTTP, or actually, sorry not, this is gonna be an exec if we wanna run a command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Implementation Step  

Content:
And the command is going to be dash LS and then slash var slash www HTML file underscore check.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Implementation Step  

Content:
And then we wanna start this check after a delay of 10 seconds.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
So that's going to be initial delay.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
We wanna set that to 10 seconds.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Implementation Step  

Content:
And then we want this to run every 60 seconds so that's gonna be period seconds.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Implementation Step  

Content:
And then we can do a kubectl apply dash F and actually we can change this cuz we're gonna have to delete the old pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Implementation Step  

Content:
So I'm gonna do a replace so it'll automatically delete it for us and then we'll do a dash dash force.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
And that's been successfully replaced.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Troubleshooting  

Content:
And let's do a kubectl get one one more time just to make sure that there's no issues.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
So I'm gonna get all the pods and we can see that it is now in a ready state.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Implementation Step  

Content:
Let's move on to the next question.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Implementation Step  

Content:
For the next question, we have to create a CronJob called Dice that runs every one minute and it's giving us a pod template to take a look at under slash route slash throw a dice.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Troubleshooting  

Content:
The image throw dash dice randomly returns a value between one and six, and the result of a six is considered a success and all others are a failure.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Best Practice  

Content:
And so a couple of other configurations that we have to provide the job should be run non-parallel, so in series, so one by one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Implementation Step  

Content:
And then we want to complete the task only once and we wanna use a back off limit of 25.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Best Practice  

Content:
And if the task is not completed within 20 seconds, the job should fail and pod should be terminated.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Implementation Step  

Content:
So first of all, to create a CronJob, I wanna take a look at the Kubernetes documentation.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
So under CronJob, we have a template right here so we could just copy this.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
I'm gonna do a V-I, I'll just call this dice job dot yaml and we can paste that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Implementation Step  

Content:
And actually before we do that, I'm gonna save this and let's actually go to that directory and then take a look at throw a dice.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
So we can see that the image that we need to use is code cloud slash throw dash dice.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
So I'm gonna change the image here and I'm just gonna change the name to dice.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Concept  

Content:
I'm gonna change the name of my CronJob to be dice as well.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Best Practice  

Content:
From a schedule perspective, it's saying that this should run every one minute.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Concept  

Content:
So to change this to run every one minute, we just do slash one here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Implementation Step  

Content:
Then under spec, we wanna specify the completions now.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Best Practice  

Content:
And this should be one and the back off limit should be set to 25.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Best Practice  

Content:
And for this last requirement here, if the task is not completed within 20 seconds, the job should fail and the pod should be terminated.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
The configuration that we want is called active dead line seconds.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Concept  

Content:
And that's gonna be 20.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Warning/Pitfall  

Content:
And we'll delete the command config here; we don't need that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Implementation Step  

Content:
And then last thing is, I'm gonna set up a restart policy to be never.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Implementation Step  

Content:
And now we can do a kubectl apply.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
And let me change the API version here to be V one beta one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Concept  

Content:
There we go.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Implementation Step  

Content:
Okay, so let's move on to the next question.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Implementation Step  

Content:
The next question, we have to create a pod called My Busy Box in this following namespace using the busy box image.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Best Practice  

Content:
And the container should be called secret and should sleep for 3,600 seconds.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Concept  

Content:
And there's a few other requirements.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Implementation Step  

Content:
We'll start off by knocking out the first one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Implementation Step  

Content:
So first of all, let's do a kubectl get namespace.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Concept  

Content:
Let's just make sure that this namespace does in fact exist.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Implementation Step  

Content:
And then we can do a kubectl run my dash busy box dash dash image and we'll set this equal to busy box.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Implementation Step  

Content:
And then we can pipe this out to a file and I'll just call this my busy box dot yaml.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Concept  

Content:
We'll open this up and let's make the necessary changes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Implementation Step  

Content:
So the first thing that we're gonna have to do is set the namespace.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Concept  

Content:
So here I'll do namespace and this is going to be this namespace provided.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Best Practice  

Content:
The next thing that we want to do is we have to change the command because it should sleep for 3,600 seconds.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Implementation Step  

Content:
So we'll go to the image or the container and then change the command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Implementation Step  

Content:
So this is gonna be sleep and the next one is going to be 3,600.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Concept  

Content:
And it says that we need to name the container secret.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Implementation Step  

Content:
Okay, and so that covers all of the first requirements.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Best Practice  

Content:
The next thing that we have to do is the container should mount a read only secret volume called secret dash volume at the path of slash etc slash secret volume.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 81
Type: Implementation Step  

Content:
And it looks like the secret that's being mounted has already been created and is called dot file dash secret.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Concept  

Content:
So let's define our volumes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Implementation Step  

Content:
So we're gonna do name and we'll call this secret dash volume and then the secret that we're gonna reference, which is dot file dash secret.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 84
Type: Implementation Step  

Content:
And then we can go under the container and define our volume mount.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 85
Type: Best Practice  

Content:
And it should be secret dash volume.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 86
Type: Concept  

Content:
It says that it needs to be a read only so we'll say read only.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 87
Type: Concept  

Content:
This is gonna be set to true.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 88
Type: Implementation Step  

Content:
And then finally, the mount path.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 89
Type: Concept  

Content:
I'm gonna set this to be slash etc slash secret dash volume.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 90
Type: Concept  

Content:
And the final requirement is that we have to make sure this pod is scheduled on the control plane and no other node in the cluster.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 91
Type: Concept  

Content:
And so we can go up here and I'm gonna set the node name property to be control plane.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 92
Type: Implementation Step  

Content:
All right, and then we can do a kubectl apply dash F my busy box and we can go to the next question.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 93
Type: Implementation Step  

Content:
The next question, we have to create a single ingress resource called ingress dash VH dash routing.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 94
Type: Best Practice  

Content:
And this resource should route HTB traffic to multiple host names as specified below.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 95
Type: Best Practice  

Content:
So for the service video dash service, this should be accessible on the following URL.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 96
Type: Best Practice  

Content:
And then for the apparel service, this should be available on the following URL.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 97
Type: Exam Tip  

Content:
And so if you want, you can take a look at the Kubernetes documentation to get an example configuration.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 98
Type: Exam Tip  

Content:
So if you go to the ingress page, I'm just gonna copy this example config, and I'm just gonna create a file called ingress dot yaml and we can paste this here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 99
Type: Implementation Step  

Content:
So first of all, let's change the name to be ingress dash VH dash routing.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 100
Type: Implementation Step  

Content:
And now let's knock off the first service, which is gonna be the video service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 101
Type: Concept  

Content:
And so here I'm gonna do dash and I'm gonna just delete the configs here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 102
Type: Concept  

Content:
So we're gonna specify the host.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 103
Type: Implementation Step  

Content:
So the first one is going to be watch dot eCommerce slash video.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 104
Type: Concept  

Content:
And I'm just gonna copy this; it doesn't let me copy just the text that I want.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 105
Type: Concept  

Content:
And so I'm going to just delete all of this.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 106
Type: Implementation Step  

Content:
So just get the base URL and this is gonna be HTTP and then we'll configure our paths.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 107
Type: Troubleshooting  

Content:
And so this is gonna be path type prefix the path, this one's going to be slash video.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 108
Type: Implementation Step  

Content:
And then we'll do back end.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 109
Type: Concept  

Content:
We'll grab the service and the name.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 110
Type: Implementation Step  

Content:
And then here we're gonna pass in the name of the service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 111
Type: Implementation Step  

Content:
So this is gonna use the video service and then the port.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 112
Type: Concept  

Content:
So here we're gonna specify the port that that service lists it on.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 113
Type: Concept  

Content:
And I know it's 8080, but just to show you guys, just in case we'll do a kubectl get SVC.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 114
Type: Concept  

Content:
So we got video service running on 8080 and we have apparel service running on 8080.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 115
Type: Concept  

Content:
So that's why I chose that port.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 116
Type: Implementation Step  

Content:
So that's gonna cover the first service and then now we have to do the second one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 117
Type: Concept  

Content:
So I'm going to copy all of this and I can change this to apparels.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 118
Type: Concept  

Content:
And the path is going to be apparel, or sorry, where, and the service is gonna be called apparels.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 119
Type: Warning/Pitfall  

Content:
And also we wanna make sure we remove the port numbers from here; we don't need those.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 120
Type: Concept  

Content:
All right, and so just to summarize once again, any request going to this specific host name or this domain name with the slash video path is going to get redirected or sent or forwarded to the service called video service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 121
Type: Implementation Step  

Content:
And then anything going to here with a slash where path is going to get sent to the apparel service on port 8080.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 122
Type: Concept  

Content:
So let's save this.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 123
Type: Implementation Step  

Content:
Let's do a kubectl apply dash F ingress dot yaml.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 124
Type: Best Practice  

Content:
And if I do a kubectl get ingress, we should now see our ingress.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 125
Type: Implementation Step  

Content:
Okay, so let's go to the next question.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 126
Type: Implementation Step  

Content:
The next question, a pod with this following name has been deployed in the default namespace.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 127
Type: Warning/Pitfall  

Content:
Inspect the logs for the container called log dash X and redirect the warnings to the following file on the control plane node.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 128
Type: Concept  

Content:
So if I do kubectl get pods, we can see the pod in question.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 129
Type: Concept  

Content:
And so we wanna do kubectl logs and we'll grab that name and it's specifically asking for the container called log dash X.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 130
Type: Implementation Step  

Content:
So you do dash C and then the name of the container.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 131
Type: Concept  

Content:
And let's take a look at the logs.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 132
Type: Concept  

Content:
And so you can see, it's just standard type logging.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 133
Type: Warning/Pitfall  

Content:
So we've got different levels, informational warning, and it's saying we want to redirect all of the warnings to this specific file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 134
Type: Concept  

Content:
So how do we do that?

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
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
Well, first of all, we're gonna have to grip for that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 136
Type: Warning/Pitfall  

Content:
We'll do grip and then we wanna grip for warning, keep in mind it is case sensitive.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 137
Type: Implementation Step  

Content:
And then we want to redirect to a file and that's gonna be slash opt slash D-I-N-D.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 138
Type: Concept  

Content:
And actually I'm just gonna copy that name.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 139
Type: Implementation Step  

Content:
And so now if I do a CAT and then we can go to that same location, we can see we have all of the logs there.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 140
Type: Concept  

Content:
And so that's going to wrap up the Lightning Lab 2.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 204_Solution_ Lightning Lab - 2
- File: 204_Solution_ Lightning Lab - 2.txt
- Topic: Solution_ Lightning Lab - 2
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
