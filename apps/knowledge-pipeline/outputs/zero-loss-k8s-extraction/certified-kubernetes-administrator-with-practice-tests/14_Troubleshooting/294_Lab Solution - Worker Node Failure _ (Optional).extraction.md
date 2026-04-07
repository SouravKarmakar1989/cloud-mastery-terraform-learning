# Extraction: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional)

---

## Entry 1
Type: Troubleshooting  

Content:
-: Okay, so in this lab we're going to practice troubleshooting worker node failures.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
So we'll wait for the lab environment to be ready and we'll get started.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
While we wait, I'm going to set the alias for kubectl.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Troubleshooting  

Content:
Okay, so the first question is to fix the broken cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
So let's run up a get nodes and we see that indeed there is something broken.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
So node zero one is in a Not Ready State.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
So let's see why that is.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
Let's do a describe node, node zero one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
And here we see a set of events.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Architecture  

Content:
So all of these seem to be normal so they're starting the kubelet.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
All of these are good statuses and the node itself is ready.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
There's something missing.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
So let's go to that node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
Let's just say node zero one, and we'll check the status.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Architecture  

Content:
So the first thing that we wanna check on a worker node is the kubelet, because we know the kubelet is the controller of a node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Architecture  

Content:
And the kubelet is what helps in communication between a worker node and the master or the control plane node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Architecture  

Content:
So let's do a check the service of the kubelet.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Architecture  

Content:
So service kubelet status.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Warning/Pitfall  

Content:
And we see that it's loaded, but it's in an inactive state so we don't know why it's in an inactive state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
So we're going to just try and start it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Architecture  

Content:
So let's do a service kubelet start and let's check the status again.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
And we see that it's now in an active and running state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Architecture  

Content:
Let's go back to the control plane and let's do a quick kubelet get node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
Okay.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 25
Type: Concept  

Content:
And we see that both are in a ready state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Troubleshooting  

Content:
So I think that should fix that question.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Implementation Step  

Content:
Okay, let's go to the next one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 28
Type: Concept  

Content:
Okay, so the cluster is broken again.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Troubleshooting  

Content:
Investigate and fix the issue.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
So let's check the status again.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
And we see that it's again, in an not ready state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
So let's check the status of the node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
Oh, zero one and go to full screen.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
We see that all of these, all of these events are normal.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
So that's, that's okay and there's nothing here either.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Architecture  

Content:
So let's go to the node and check the status of the kubelet again, service kubelets status.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
And we see that it's in an activating state and it looks like there is an exit code and it's exited.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
The status is 255.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
So that means it's not.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
There is something wrong in the process.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
It's is not able to start.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Architecture  

Content:
So even if you do a service kubelet start, it's not actually going to start the service because there seems to be something wrong.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
So let's check the status of the service again and it's in an activating state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Architecture  

Content:
So to look at the logs of a service, do a journalctl-u and kubelet and let's check the status.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
So these are the logs, and let's look for the latest of the most recent logs.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
Okay, so we are here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
Let's go up.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Troubleshooting  

Content:
So all of these seem to be an error from a previous error.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Troubleshooting  

Content:
All these seem to be an error message.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Troubleshooting  

Content:
And here you can see that there's an error that says unable to load clientcfile/etckubernetes picking wrong ca file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
There seems to be a wrong file, so let's try and find that out.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Architecture  

Content:
So the, the kubelet configuration files are one in the edc kubernetes kubelet.com.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Concept  

Content:
So that's one file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Architecture  

Content:
But this is basically the kube config file used by the kubelet.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Architecture  

Content:
So here you have the certificate, the contacts and everything that the kubelet uses to connect to the kubelet pa server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Troubleshooting  

Content:
So this is not the place where there's an issue.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Architecture  

Content:
It's basically the kubelet service itself, right?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Architecture  

Content:
So the kubelets service picks the options from a file located var/lib/kubelet.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Concept  

Content:
So there's something to remember.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Concept  

Content:
And here you have a file called config.yamo.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Architecture  

Content:
So var/libkubeletconfig.yamo.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Architecture  

Content:
And within this file there are some properties that are passed through to the kubelet.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Concept  

Content:
And here you can see there is this zero one C file right here and that's the client ca file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Best Practice  

Content:
So it should be the correct file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Concept  

Content:
So let's find what the correct file is.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Concept  

Content:
And there's the ca.cert file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Best Practice  

Content:
So that's what it should be ca.cert instead of the wrong ca file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Concept  

Content:
So let's edit that and put the correct ca cert, save that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Architecture  

Content:
And now we're going to restart the kubelet service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Concept  

Content:
And let's just check the status of the service now.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Concept  

Content:
And we see that it's in an active running state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Concept  

Content:
Let's go back, let's go back to the control plane node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Concept  

Content:
And let's check the status of the nodes and we see that they're in a ready state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Implementation Step  

Content:
Okay, so let's go to the next one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 75
Type: Concept  

Content:
Okay, so now the cluster is broken again.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Concept  

Content:
So let's check and we see that yes, it is indeed broken and node zero one is not ready.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Architecture  

Content:
So let's go to node zero one and let's check the status of the kubelet.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Concept  

Content:
And we see that, we see that it's active and it's in a running state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Architecture  

Content:
Okay, so let's check the logs journalctc-ukubelet, and let's go all the way to the end and let's work our way backwards.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Concept  

Content:
Okay?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 81
Type: Concept  

Content:
And let's see if there's something useful here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Concept  

Content:
So here you can see unable to register node and you can see the control plane and dial TCP 10 54, 132, 6553 connection refused.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Troubleshooting  

Content:
So this seems to be the error that's causing the remaining errors.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 84
Type: Concept  

Content:
And if you look at it, it says connection refused to this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 85
Type: Concept  

Content:
And this is basically for the control plane that we have.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 86
Type: Concept  

Content:
And it looks like this port number is incorrect because we know that the control plane port number is 6443 and not 6553.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 87
Type: Troubleshooting  

Content:
So that that could be the error.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 88
Type: Architecture  

Content:
So let's take a look at the kube config file used by the kubelet.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 89
Type: Architecture  

Content:
So we saw that the cube config file used by the kubelet is etc kubernetes and kubet.com.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 90
Type: Concept  

Content:
So let's take a look at the contents of the file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 91
Type: Concept  

Content:
So here if you look at this, you see that right here the control plane port number is incorrect.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 92
Type: Concept  

Content:
So let's get that corrected.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 93
Type: Architecture  

Content:
And we'll set to 6443, and we're going to do a service kubelet restart, and service kubelet status.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 94
Type: Concept  

Content:
You see that it's not in an active state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 95
Type: Concept  

Content:
Let's check the logs as well.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 96
Type: Troubleshooting  

Content:
And we no longer see those errors and it seems to be good.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 97
Type: Concept  

Content:
Let's go back and let's check the status of the nodes and we see that it's now ready.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 98
Type: Concept  

Content:
Let's check our work.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 99
Type: Concept  

Content:
Okay, so that's the end of this lab.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 100
Type: Troubleshooting  

Content:
So when it comes to troubleshooting worker nodes always first check the status from here, from the control plane.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 101
Type: Concept  

Content:
And check whatever you can find from here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 102
Type: Troubleshooting  

Content:
And then go to each of the worker node that has the issue and start with checking the kubelet service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 103
Type: Architecture  

Content:
If the kubelet service is good, check the logs of the kubelet service and continue your way from there.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 104
Type: Concept  

Content:
Well, that's all for this lab.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 105
Type: Concept  

Content:
Thank you.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 14_Troubleshooting
- Lecture: 294_Lab Solution - Worker Node Failure _ (Optional)
- File: 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Topic: Lab Solution - Worker Node Failure _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---
