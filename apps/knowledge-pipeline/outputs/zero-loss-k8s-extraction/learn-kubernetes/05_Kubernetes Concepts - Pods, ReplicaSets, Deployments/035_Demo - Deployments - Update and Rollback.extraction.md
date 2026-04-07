# Extraction: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 035_Demo - Deployments - Update and Rollback

---

## Entry 1
Type: Implementation Step  

Content:
In this demo, we're going to look at updates and rollbacks in deployments.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
I'm on the Kubernetes master node and I'm going to create a deployment using the kube control create command.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Implementation Step  

Content:
First I'm going to see if there's anything existing by running the kube control get all command.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
And as you can see there's nothing running except for the default Kubernetes service.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
So that is fine.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Implementation Step  

Content:
I'm now going to create a new deployment by running the kube control create deployment command.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Implementation Step  

Content:
As soon as I run the create command I could run a kube control rollout status command to see the status of the rollout.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Implementation Step  

Content:
As we discussed in the lecture, whenever a new Kubernetes deployment is created or an existing deployment is upgraded, it creates a new rollout, and a rollout is the process of deploying the containers in the back end.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Implementation Step  

Content:
As you can see, it deploys one at a time.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
So you have, as you can see, two of six, three of six, four of six, etc..

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Implementation Step  

Content:
And finally, when it deploys all the six of six, the deployment is considered to be successful.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Implementation Step  

Content:
We also discussed that whenever a new rollout is created, a new deployment revision is created.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
So if you run the kube control rollout history command.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
So I'm going to modify my previous command and change status to history.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Implementation Step  

Content:
You can see that it's created one revision.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
That's the revision number one.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Warning/Pitfall  

Content:
But I do not actually see a change cause that's that's the second column in the output.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
It says none.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
And that's because I did not ask Kubernetes to record the change that I made in this case.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Implementation Step  

Content:
It doesn't really matter because it's the first revision is usually created when we create the deployment initially.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Implementation Step  

Content:
So what I'm going to do is I'm going to quickly delete the deployment by running the cube control delete deployment command just to do that again, but this time by asking Kubernetes to record the change.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
And as you can see, I'm just going to wait for all the objects to be deleted.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Implementation Step  

Content:
When you run the cube control delete command, it deletes all the, uh, the deployment, the associated replica set, and the pods that were created as part of the deployment.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
So when I now run the kube control, get all command, you can see that it's all terminated and it's no longer seen.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
So that is good.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
Everything is clean.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Implementation Step  

Content:
And I can now recreate my deployment.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Implementation Step  

Content:
So I'm going to run the same command cube control create to create a new deployment.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
But this time I'm going to add a new flag called record dash dash record.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Implementation Step  

Content:
And what this really does is we're just going to first see the status of the rollout by running the cube CTL rollout status command.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Implementation Step  

Content:
And as you can see, it's deploying one pod at a time.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Implementation Step  

Content:
Uh, we will wait for all the six pods to be deployed.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
Okay.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 34
Type: Implementation Step  

Content:
So the deployment is successful.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
Now I'm going to run the history command to see the revisions.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
And now, as you can see, there's a revision one as earlier.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Implementation Step  

Content:
But you can actually see the change course, which is the same command that I ran to create the deployment, uh, by using the deployment definition file.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
Okay.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 39
Type: Implementation Step  

Content:
So now I'm going to make a small change to my deployment.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
If you look at the, uh, Docker file or the Docker Hub page for my nginx image, you can see that the versions.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
So here I'm using the image nginx, which means that I haven't really specified a tag or a version of the image, so by default it assumes it to be latest, and in this case the latest version is 1.3.9.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
So we are actually at the latest version.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Implementation Step  

Content:
Um, we need to simulate an upgrade or downgrade of the deployment or just a change in our application.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
So what we're going to do is we're going to, uh, use a new version or a different version of the image.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
In this case, I'm going to go with one dot 1212, which is actually the previous version of the image.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
Now I just need to simulate a change in the image.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
It could be an upgrade or downgrade you're doing.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
We'll just assume that it's an upgrade.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Warning/Pitfall  

Content:
But since we're already at the latest version, we do not have a newer image.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Concept  

Content:
So we're just going to use another version which is 1.12, and assume that we're upgrading the, uh, my application.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Implementation Step  

Content:
So now I've made a change to my image And I'm going to apply that change by running the kube control apply command with the deployment definition file.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Implementation Step  

Content:
And as you can see it says deployment Myapp deployment configured which is good.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Concept  

Content:
And I'm now going to run the kube control rollout status command to see the status of my rollout.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Concept  

Content:
As I said, an upgrade also initiates a rollout.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Concept  

Content:
Since we have updated the image of our application, it has to go out and update the image on all the replica set.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Implementation Step  

Content:
Okay, so the deployment is successful.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Concept  

Content:
As you can see, I now have six nodes, uh, that are up to date and I can see all the pods.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Implementation Step  

Content:
And if I do a describe deployment command to see the details, um, I can actually see the detailed image name or the new image which is nginx X 1.12.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Concept  

Content:
If you look at the events down below, you can actually see the events as it occurred.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Concept  

Content:
You can see that there are two replica sets mentioned here, of which one is one, which is the older one is scaled down one at a time, and at the same time the new replica set with the newer image is scaled up one at a time.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
So you can actually see the events.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Concept  

Content:
Okay.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 63
Type: Implementation Step  

Content:
And now I'm going to see the new revision that was created by running the cube control rollout history command.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Concept  

Content:
And that tells me that there's a new revision which is revision two.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Implementation Step  

Content:
And the command that I ran to create the new revision was kube control apply, which is a command that I ran to upgrade the images of my nginx containers.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Concept  

Content:
So that is good.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Concept  

Content:
And now I'm going to make the same change using another command, which is the set image command, and this is an alternate way of upgrading your nginx containers or your application.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Concept  

Content:
And um, so you specify.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Concept  

Content:
So you run the set image command and you specify the new version of your application by using a name and value format.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Concept  

Content:
So the name is the nginx container.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Concept  

Content:
And the new version that I'm going to upgrade to is 1.12 Dash Perl.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Concept  

Content:
So that's just another version of nginx container.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Concept  

Content:
Okay.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 74
Type: Concept  

Content:
And as soon as I run the command, I'm now going to run the rollout status to see the status of my upgrade.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Concept  

Content:
Okay.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 76
Type: Concept  

Content:
So the rollout is now successful.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Concept  

Content:
I'm now going to see the history by running the kube control rollout history command.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Concept  

Content:
And I can now see that there is a new revision, which is revision three.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Implementation Step  

Content:
And the revision was created by running the cube control set image command.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Concept  

Content:
So I now have three versions of my application.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 81
Type: Implementation Step  

Content:
The first one was simply nginx.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Implementation Step  

Content:
The second one was created when I ran the nginx 1.1 image, and the third revision was created when I changed my application to nginx.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Concept  

Content:
1.1 to Perl.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 84
Type: Implementation Step  

Content:
When I run the cube control describe deployments command, I can now see the image of my application containers updated to nginx 1.1 to Perl.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 85
Type: Troubleshooting  

Content:
Okay, so let's pretend that there was an issue with the last change.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 86
Type: Concept  

Content:
Let's pretend that our application doesn't really work well.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 87
Type: Troubleshooting  

Content:
When I use the 1.12 Perl image and users are reporting issues.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 88
Type: Concept  

Content:
So you're asked to roll back the last change that you made.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 89
Type: Implementation Step  

Content:
So you can actually do that by running the cube control rollout undo command and specifying the name of your deployment.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 90
Type: Concept  

Content:
And when you do that, of course, you can actually see the rollout status again, because that also kicks off a rollout.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 91
Type: Concept  

Content:
The rollout is now successful.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 92
Type: Concept  

Content:
And when I now run the history command to see the status of my revisions, you can now see that there is a new revision, which is revision four, but you cannot actually see number two.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 93
Type: Concept  

Content:
Now, this is because when we did a rollback of our upgrade, it rolled back to revision number two because we were at revision number three.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 94
Type: Implementation Step  

Content:
And it actually created a new revision, which is revision number four, and applied the same command that we used to create revision number two and also used the same definition file that we used at that time.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 95
Type: Operational Insight  

Content:
So Kubernetes keeps a record of this internally.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 96
Type: Concept  

Content:
And so it takes us back to the version of container that we used in revision number two.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 97
Type: Concept  

Content:
If I now run the cube control describe command I can now see that the image is now back to 1.12, which was actually revision revision two.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 98
Type: Concept  

Content:
Okay.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 99
Type: Troubleshooting  

Content:
Now let's take a look at another scenario where we have an error.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 100
Type: Troubleshooting  

Content:
So we will simulate an error by providing the name of an nginx image that doesn't really exist.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 101
Type: Concept  

Content:
So we'll make up a name.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 102
Type: Troubleshooting  

Content:
We'll call it 1.5 error.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 103
Type: Troubleshooting  

Content:
We know that this image does not exist, but our intention is to create it to simulate an error in deployment.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 104
Type: Implementation Step  

Content:
So we've now updated our deployment definition file.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 105
Type: Implementation Step  

Content:
And we're going to apply that changes using the kube control apply command and specifying the deployment definition file as input.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 106
Type: Concept  

Content:
We'll also add the record parameter.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 107
Type: Concept  

Content:
Now when I run the kube control rollout status command to monitor the status of rollout, you'll see that it's actually stuck at that point where it says three out of six new replicas have been updated.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 108
Type: Concept  

Content:
So we know that at this point in the back end, it's actually trying to bring down the old replicas and bring up new replicas, but it's actually stuck at three out of six.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 109
Type: Concept  

Content:
Now let's try and see what's happening.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 110
Type: Implementation Step  

Content:
If you run the kube control get deployment command, you can see that our deployment is in a different state as to normal.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 111
Type: Concept  

Content:
The desired number of replicas is six.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 112
Type: Concept  

Content:
However, the current number of replicas is eight and up to date is only three.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 113
Type: Concept  

Content:
Now, if desired, is six.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 114
Type: Concept  

Content:
We would expect the current to be six and up to date to also be six and available to be to also be six.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 115
Type: Concept  

Content:
But the recent change that we made is to update to an image that is not actually available.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 116
Type: Concept  

Content:
So if you run the kube control get pods command to see the status of pods, you will notice that five of the old versions, which is the actual working versions, is available, and the new version which is not actually available.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 117
Type: Implementation Step  

Content:
There are only three pods created for that.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 118
Type: Implementation Step  

Content:
So what's happened here is, as always, this is considered to be an upgrade, and the deployment object tried to terminate one instance of from the old working version.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 119
Type: Concept  

Content:
So thereby bringing the total number of running parts to five.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 120
Type: Implementation Step  

Content:
And it tried to create three parts of the new version.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 121
Type: Concept  

Content:
However, the new version, as you know, is not right, and that's why you can see that the status is image pull back off.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 122
Type: Implementation Step  

Content:
That basically means that the deployment is unable to pull the image from Docker Hub, and since it's unable to deploy any of the three images, any of the three pods, Kubernetes proactively stopped proceeding with the upgrade, and it proactively stopped terminating the old replica set because it knew that if it did terminate all of the old replica set and tried to deploy all new replicas, then the users would be impacted because the new image does not exist.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 123
Type: Concept  

Content:
So it proactively stopped the upgrade and it's now waiting for the new image to be available.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 124
Type: Implementation Step  

Content:
If I now look at the rollout history command, I can now see that there is a new revision created, which is revision five, and that was created by running the following command.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 125
Type: Concept  

Content:
I'm now going to.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 126
Type: Troubleshooting  

Content:
I now know that there is an error with the image that I'm trying to download, so I'm going to undo that recent change by running the cube control rollout undo command.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 127
Type: Implementation Step  

Content:
And when I now look at the revision history, I can see that a new revision is created, which is revision six.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 128
Type: Concept  

Content:
And it is going to revert to my fourth revision, which is actually now pulled out from the list of revisions.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 129
Type: Concept  

Content:
If you look at the image now, it is back to 1.12.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 130
Type: Concept  

Content:
And if I look at the pods, I can now see that I have six pods that are all in running state.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 131
Type: Implementation Step  

Content:
Well, that's it for this demo and I will see you in the next lecture.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 035_Demo - Deployments - Update and Rollback
- File: 035_Demo - Deployments - Update and Rollback.txt
- Topic: Demo - Deployments - Update and Rollback
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
