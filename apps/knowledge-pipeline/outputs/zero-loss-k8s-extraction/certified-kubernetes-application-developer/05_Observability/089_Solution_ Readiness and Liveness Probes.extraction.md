# Extraction: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes

---

## Entry 1
Type: Concept  

Content:
-: In this video, I'm gonna walk you through these solutions for the Readiness Probe Lab.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
So for the first question, it's just letting us know that an application has been deployed and to go ahead and inspect the pods and services.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
So if we do a kubectl get pod, we can see that there's one pod called simple-webapp-1.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
And if I do a kubectl get service, we can see that there's two different services.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Implementation Step  

Content:
The next question is just letting us know that if we click on the web portal icon it's going to open up the application in a new tab.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
And so that's going to be our web app right there.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
I'll hit Okay, we'll move on to the third question.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
And so there's been a test script provided.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
That's going to send requests to our web application.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Implementation Step  

Content:
And you can access this script by doing a ./ and then calling curl-test.sh.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
And so you can see the response that's coming from the web server.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Implementation Step  

Content:
For this next question, a new pod has been added to help scale up the application.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
And it's telling us to go ahead and run the script again just to see if we notice anything that's been changed.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
So if I do a kubectl get pod, we can see that now there's two pods, Pod 1, Pod 2.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Implementation Step  

Content:
And then if I run the same script again, which is by running ./curl-test.sh, okay, so everything looks the same.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Troubleshooting  

Content:
But then now you can see that there's a couple of failures.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
I'm gonna stop this, I'm gonna hit Okay.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Troubleshooting  

Content:
Next question is just telling us to notice the fact that, you know, there have been some failures.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
So if you actually take a look at the output, it looks like anytime the request goes to webapp-1 everything is working.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
But when things go to webapp-2 for some reason it's failing.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Warning/Pitfall  

Content:
And so to address this, the next question is telling us to set up a readiness probe for webapp two so that we don't send a request to it when it's not ready.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
And so the requirements are we have to keep the same pod name, same image name.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
But we have to send a HTTP GET readiness probe to this /ready path on port 8080.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
So let's get that done.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
What I'm gonna do is I'm gonna do a kubectl get pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Implementation Step  

Content:
And then I'm gonna do a kubectl get pod simple-webapp-2.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
I'm gonna do -o dash YAML.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
So this is going to get the configurations currently so that we can use the same configs.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
I'm just gonna pipe it to a file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
And I'll call this webapp2.yaml.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Implementation Step  

Content:
And then I'm gonna do a kubectl delete pod simple-webapp-2 'cause we're gonna redeploy it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Implementation Step  

Content:
And once that's deleted I'm gonna open up that new YAML file that we created.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Implementation Step  

Content:
And we wanna go under Spec and then Containers.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Implementation Step  

Content:
And then we can add the configuration anywhere there.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
I'm just gonna put this under Ports.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
It doesn't actually matter where as long as it's under the container.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
And we wanna add a readiness probe.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
And it's gonna be an HTTP GET.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
The path is gonna be /ready, and the port is gonna be 8080.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Best Practice  

Content:
And that should be all that we have to do for the readiness probe.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
So I'll save that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Implementation Step  

Content:
And we're going to then deploy this by doing a kubectl apply -f and then webapp2.yaml.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Implementation Step  

Content:
And so after that's been deployed we'll run the validation.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
And it looks like it's successful.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Implementation Step  

Content:
So we'll go to the next question.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Implementation Step  

Content:
The next question is just telling us to run the script again.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
So I'm gonna run the curl-test.sh.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
And we can see that the script is working.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
But all requests are going to the same exact pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Concept  

Content:
We can see all of them are going to webapp-1.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Implementation Step  

Content:
We'll hit Okay, we'll go to the next question.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Concept  

Content:
And so the reason why all the requests are going to webapp-1 is because the pod isn't ready.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Concept  

Content:
Pod 2 isn't ready, so let's wait for Pod 2 to get ready.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Implementation Step  

Content:
And then we're gonna run the script again.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Best Practice  

Content:
And we should see that traffic should be load balanced between the two pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
All right, and so now we can see that traffic is successfully getting load balanced between the two pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Implementation Step  

Content:
The next question provides us a script that's going to crash one of our pods so that we can take a look and see what happens when one of our pods crashes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Concept  

Content:
So we can run the script by doing a ./crash-app.sh.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Concept  

Content:
And so this is going to crash simple-webapp-2.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Concept  

Content:
And if we run the same curl-test.sh command, you could see traffic is getting load balanced to one at the moment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
And if I do a kubectl get pod, you can see that it did in fact restart web app two.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Concept  

Content:
And we're just waiting for this application to be in a ready state.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Concept  

Content:
So because it crashed we're automatically going to restart it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Concept  

Content:
So the answer to this question is the container inside the pod was restarted.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Implementation Step  

Content:
And the next question is just telling us that, you know, when the application has gone down, web app two specifically, all the traffic is gonna be redirected to web app one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Concept  

Content:
And we saw that when we ran the script all the requests go to web app one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Implementation Step  

Content:
The next question is telling us to run a freeze-app.sh script, which is actually going to cause one of the pods to freeze so that we can inspect and see what happens.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Concept  

Content:
So I'm gonna do a ./freeze-app.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Concept  

Content:
This is going to freeze one of the pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Implementation Step  

Content:
And then we're gonna run the same curl script.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Concept  

Content:
So let's see what happens.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Troubleshooting  

Content:
And so we can see that there's several failures as well as a couple of successes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Concept  

Content:
So once again, it looks like we froze Pod 2.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Concept  

Content:
And any of the requests that go to Pod 1 is okay.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Concept  

Content:
But anything that goes to Pod 2 is gonna fail.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Concept  

Content:
So the correct answer is gonna be new users are in fact impacted.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Implementation Step  

Content:
For the next question, we need to update both pods to include a liveness probe in the scenarios where one of them freezes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Implementation Step  

Content:
So let's first get the configuration for both pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Concept  

Content:
And I'm gonna do a kubectl get pod -o yaml.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Concept  

Content:
And I'll call this webapp.yaml.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 81
Type: Implementation Step  

Content:
And then I'm gonna do a kubectl delete pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Concept  

Content:
Instead of going one by one, I'm just gonna do a --all.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Concept  

Content:
And after those are deleted we'll open up the webapp.yaml file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 84
Type: Concept  

Content:
And now what we wanna do is we wanna add a liveness probe.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 85
Type: Concept  

Content:
So we're under web app one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 86
Type: Concept  

Content:
And so I'm gonna go just find a place under the container section.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 87
Type: Concept  

Content:
And I'm gonna add a liveness probe.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 88
Type: Concept  

Content:
And this is going to be an HTTP GET.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 89
Type: Concept  

Content:
And the path is gonna be /live.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 90
Type: Concept  

Content:
And the port is gonna be 8080.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 91
Type: Implementation Step  

Content:
Then we're gonna set the period seconds to be one and the initial delay seconds to be 80.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 92
Type: Concept  

Content:
And what I'm gonna do is I'm just gonna copy that for now.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 93
Type: Concept  

Content:
And we can paste this into web app two as well.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 94
Type: Concept  

Content:
So we'll scroll down to web app two.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 95
Type: Concept  

Content:
So here we're at web app two.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 96
Type: Concept  

Content:
And we're gonna go under Container.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 97
Type: Concept  

Content:
And I'm gonna just put this in the same section, so under Ports.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 98
Type: Concept  

Content:
And so we've got that added in there.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 99
Type: Concept  

Content:
And so now I'll save this.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 100
Type: Concept  

Content:
Okay, we've got no pods running.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 101
Type: Implementation Step  

Content:
And I'm gonna do a kubectl apply -f webapp.yaml.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 102
Type: Concept  

Content:
And so let's run the validation now.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 103
Type: Implementation Step  

Content:
And everything passed, so we'll go to the next question.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 104
Type: Comparison  

Content:
For the next question it's telling us to run the freeze script so we can freeze one of the pods and then run the curl test again to see if there's any difference in impact.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 105
Type: Concept  

Content:
I'm gonna run the freeze script again.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 106
Type: Concept  

Content:
So this is gonna freeze one of the pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 107
Type: Concept  

Content:
And so if we do a kubectl get pod now, we can see that simple web app two was in fact restarted.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 108
Type: Concept  

Content:
We see one restart that happened 93 seconds ago.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 109
Type: Concept  

Content:
And now if I run the curl script you see that there's no loss.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 110
Type: Concept  

Content:
And so that's going to wrap up the Readiness Probe Lab.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 089_Solution_ Readiness and Liveness Probes
- File: 089_Solution_ Readiness and Liveness Probes.txt
- Topic: Solution_ Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
