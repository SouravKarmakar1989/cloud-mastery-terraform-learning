# Extraction: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional)

---

## Entry 1
Type: Troubleshooting  

Content:
-: Okay, so in this video we're going to work on troubleshooting control plane failure.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
So the first question is, the cluster is broken.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Troubleshooting  

Content:
We tried deploying an application, but it's not working troubleshoot and fix the issue.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Warning/Pitfall  

Content:
So before we begin, a quick tip if you don't have the alias set already on your prompt so you could do a alias, k equals kubectl.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Warning/Pitfall  

Content:
And also if you don't have auto completion then one thing you could do is you could go to the Kubernetes documentation pages search for kubectl cheat sheet and then the first thing that comes here is the kubectl completion bash.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
So let's copy and let's run that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
And this basically gives you auto completion.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Implementation Step  

Content:
So you do a kubectl get and then it automatically gives you the options.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Best Practice  

Content:
The other thing is, so if you're setting an alias you should do this as well to get the alias for the short form for kubectl.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Implementation Step  

Content:
So I'm gonna set this as well, that way I can just do kubectl get and then yeah, order completion for the short form.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
Okay, so we're gonna look at the status of the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
So let's do a kubectl, get nodes and we see that the nodes seems to be in a ready state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
So that's good.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 14
Type: Implementation Step  

Content:
There is, it says there are deployments.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Implementation Step  

Content:
So let's take a look at the deployments.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Implementation Step  

Content:
And we see that there is a app deployed, but it's not ready.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Implementation Step  

Content:
So there is one container or one pod in the deployment but that pod is not ready.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
So let's take a look at it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Implementation Step  

Content:
Let's do a describe, so you describe deployment app and we see that it's one desired, zero available, so there's, that's one unavailable and there isn't anything here that's really helpful.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
So here it says scale that replica set to one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
So let's take a look at the replica set, get rs, we have one replica set.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
Let's take a look at that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 23
Type: Concept  

Content:
Describe replica set app.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
And we see that the desired is one, but it's still waiting.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
And here you have the events and it says creating pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Implementation Step  

Content:
So let's take a look at the pod and we see that there is a pod created, but it's in a pending state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
Let's take a closer look at that pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
And we see the events have not started yet but everything else seems okay but it's in a pending state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
So when a pod is in a pending state, it's most likely, that indicates that it has not been assigned a node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
So if you look at the node here, it's set to none.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Architecture  

Content:
That means the pod has not been assigned to a node and the job of assigning a pod to a node is scheduler's job, right?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Architecture  

Content:
So we have to look at the status of the scheduler.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Architecture  

Content:
So let's do a, and we know that scheduler runs as a pod in the kube system name space.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Architecture  

Content:
And here you have the scheduler and it has control plane at the end.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
So that means it's a static pod and its status is crash loop back off.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Architecture  

Content:
So let's take a look at the pod in more detail in the kube system name space and we're looking at the kube-scheduler.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
Okay, so we see at the bottom here that seems to be restarting quite often.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Troubleshooting  

Content:
And then it says fail to start container kube-scheduler error response from daemon, OCI runtime create failed, starting container process kube-scheduler, executable file not found.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
So it says this executable is not found obviously it looks like it's not, right.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
So let's take a look at the options or the command that are used to run this pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
So here we can see that there is an incorrect command that's wrong and that's the reason.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Architecture  

Content:
So we know that the kube-scheduler is a static pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Architecture  

Content:
So the file is in TTC Kubernetes manifests and we have the kube-scheduler.yaml file here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Architecture  

Content:
So this is the manifest file for kube-scheduler and within that there's a wrong command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Implementation Step  

Content:
So let's go and edit that file and then remove the extra characters.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Troubleshooting  

Content:
And we're gonna save that and we'll see if we have we'll see the status of the pod and its in a creating container config error state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
Yep, it's now in a running state and we'll just watch until, we just watch until it's ready.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
So let's give it a few seconds.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
Still not ready.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Concept  

Content:
Let's take a look at the logs.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
Okay, okay, so it's finally in ready state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Concept  

Content:
And let's take a look at the pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Concept  

Content:
And we have the pod is now in ready stage.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Implementation Step  

Content:
Let's take a look at the deployment and we have one of one ready.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Concept  

Content:
Okay, okay, so that's, that's good.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Implementation Step  

Content:
Let's go to the next one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 57
Type: Implementation Step  

Content:
Now it says scale the deployment app to two parts.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Concept  

Content:
Let's do a kubectl.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Implementation Step  

Content:
So let's get the deploy.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Implementation Step  

Content:
And we have app with one pod, let's scale it up, kubectl scale deployment app and replicas is two, there's two pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Troubleshooting  

Content:
Okay, even though the deployment was scaled to two the number of pods does not seem to increase investigate and fix the issue.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Implementation Step  

Content:
So let's check the status of pods and we see that it's still just one, but we have the deployment here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Concept  

Content:
It says one of two, ready.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Implementation Step  

Content:
So let's take a look at the deployment.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Command  

Command:
```bash
Kubectl describe deploy app, and we see the image set we see scale that replica set to one, but we don't see it the deployment, scaling up the replica set to two.
```

Explanation:
- Command preserved exactly as transcript evidence.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Concept  

Content:
However, here we see the number of replicas to be two.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Concept  

Content:
Two is the desired state and only one is available.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Architecture  

Content:
So the job of updating a deployment the job of updating a replica set or scaling up a replica set is the controller managers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Architecture  

Content:
So it's the deployment controller and all the controllers that as, as we know the deployment controller, the replica set controller they're all controlled by the controller manager.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Architecture  

Content:
So let's take a look at the status of the controller manager.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Architecture  

Content:
So we're gonna do a kube system and we see that the kube controller manager is in a crash loop back of state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Architecture  

Content:
So let's take a look at the kube controller manager.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Concept  

Content:
So within the new system we're going to describe this particular pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Concept  

Content:
And we see that says back off, restarting fill container.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Warning/Pitfall  

Content:
We don't see anything useful here in the events.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Concept  

Content:
Let's take a look at it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 77
Type: Troubleshooting  

Content:
So here it says crash loop back off terminated error.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Concept  

Content:
The exit code is one and the command seems to be correct.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Concept  

Content:
There's isn't anything at there.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Concept  

Content:
So let's take a look at the logs.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 81
Type: Concept  

Content:
So let's do a kubectl logs this one in the kube system name space.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Concept  

Content:
Okay, so here it says this particular file there's no such file or directory.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Concept  

Content:
So this file is not found.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 84
Type: Concept  

Content:
Let's check if that file exists.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 85
Type: Concept  

Content:
Of course that file does not exist because there seems to be something wrong with it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 86
Type: Architecture  

Content:
So let's check, let's check where this file is specified in the kube controller manager.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 87
Type: Architecture  

Content:
So we know that the cube controller manager is also a static pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 88
Type: Concept  

Content:
So that means it must be in the slash ADC Kubernetes manifests directory.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 89
Type: Architecture  

Content:
And then we have controller manager there.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 90
Type: Concept  

Content:
So let's see, let's just grab for XXX cause that's what we saw.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 91
Type: Concept  

Content:
And here we have it specified.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 92
Type: Implementation Step  

Content:
So the kube config file is configured to this location but let's see where the actual kube config file is, right?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 93
Type: Architecture  

Content:
So the actual kube config file for the controller manager is at atckubernetescontrollermanager.com.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 94
Type: Architecture  

Content:
Let's just verify the contents of that file, let's do controller manager and we see that this is indeed a keep config file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 95
Type: Concept  

Content:
Okay so that's the problem.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 96
Type: Troubleshooting  

Content:
So we're going to edit the controller manager manifest file to fix that issue.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 97
Type: Concept  

Content:
So we're going to remove this XXXX that is not required.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 98
Type: Concept  

Content:
We're gonna save that and we'll check the pod system.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 99
Type: Concept  

Content:
It's in pending state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 100
Type: Architecture  

Content:
So we're going to watch that and we'll give you some time for the kube controller manager to be ready.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 101
Type: Concept  

Content:
Okay, so it's now in a running state and it's also ready.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 102
Type: Concept  

Content:
So let's take a look at the pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 103
Type: Concept  

Content:
And we see that there are now two pods indeed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 104
Type: Implementation Step  

Content:
Let's take a look at the deployments and we see that there are two deployments.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 105
Type: Concept  

Content:
Okay, let's check the status.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 106
Type: Concept  

Content:
Okay, so we're breaking something now.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 107
Type: Implementation Step  

Content:
Okay, so something is wrong with scaling again, we just tried scaling the deployment to three replicas, but it's not happening.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 108
Type: Concept  

Content:
So let's take a look at that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 109
Type: Concept  

Content:
Let's do a get pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 110
Type: Implementation Step  

Content:
It's only two, let's do a get deployment.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 111
Type: Concept  

Content:
And it's two of three, so it looks like it's gone to three.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 112
Type: Implementation Step  

Content:
So let's check, let's look at the deployment.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 113
Type: Implementation Step  

Content:
And we see that here we have scale of the replica set to one, then two, which we did earlier but it has not been scaled up to three.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 114
Type: Architecture  

Content:
So in the previous one we have learned that if the scaling up isn't happening, if the changes that we have applied on the deployment aren't, isn't going into effect then the culprit is usually the controller manager because it's the controller manager that is responsible for this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 115
Type: Architecture  

Content:
So let's take a look at the controller manager again.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 116
Type: Architecture  

Content:
Okay, so we're going to look at the logs of this pod controller manager.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 117
Type: Architecture  

Content:
So we're gonna do a kubectl logs, oh this is the control plane controller manager the kube system name space, and we see that it says unable to load client ca file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 118
Type: Concept  

Content:
So the ATC Kubernetes PTICS cert is not available.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 119
Type: Concept  

Content:
So let's try and find this file locally and we see that we do have this file locally.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 120
Type: Architecture  

Content:
So yes, this file seems to be here but it says it's not able to load it, there's no such file or directory within the kube controller manager.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 121
Type: Concept  

Content:
So we know that the way that the cube control manager or any other control plane component is set up is that the certificate files are on the control plane on the host.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 122
Type: Architecture  

Content:
And then we use volumes to mount these directories within the same directory within the controller manager, right?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 123
Type: Concept  

Content:
So that's set up in the manifest file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 124
Type: Architecture  

Content:
So let's take a look at the manifest file and we're gonna look at your controller manager.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 125
Type: Implementation Step  

Content:
And we see that all of these all of these that are configured here so ATC Kubernetes, ATC Kubernetes PKI these are all in fact on the host, but they're mapped as a volume through to these containers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 126
Type: Concept  

Content:
And the way that's done is through volume mounts.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 127
Type: Exam Tip  

Content:
So we look at volume mounts here and we can see there are multiple volume mounts.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 128
Type: Concept  

Content:
So you have the CSSL certs, the CS certs but what we want is the coordinate PKI volume.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 129
Type: Concept  

Content:
This is what we are concerned about because this is what it claims that is not available.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 130
Type: Concept  

Content:
So here the mounting looks good but the volume that is mounted is called K eight certs.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 131
Type: Concept  

Content:
So let's take a look at the K eight certs volume.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 132
Type: Implementation Step  

Content:
So these are the volumes that are configured here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 133
Type: Concept  

Content:
And here we have the K eight certs volume and this is the section for that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 134
Type: Concept  

Content:
And within this we have the path which is given at the top.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 135
Type: Concept  

Content:
And here you can see that there's an incorrect path given.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 136
Type: Concept  

Content:
So it says wrong PKI directory.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 137
Type: Concept  

Content:
So we're gonna have to get rid of that and add the right PKI directory which is just PKI and just going to save that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 138
Type: Concept  

Content:
Let's take a look at the pod status now.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 139
Type: Concept  

Content:
Okay, it seems to be in a running state and so let's watch it and wait until it is back up and running.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 140
Type: Concept  

Content:
Okay, so it's now in a running state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 141
Type: Concept  

Content:
Let's take a look at the status of pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 142
Type: Concept  

Content:
And we see that we have three pods indeed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 143
Type: Implementation Step  

Content:
And if we take a look at the status of the deployment we see that we have three out of three ready.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 144
Type: Concept  

Content:
Okay, So that's the end of this lab.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 291_Lab Solution - Control Plane Failure _ (Optional)
- File: 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Topic: Lab Solution - Control Plane Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---
