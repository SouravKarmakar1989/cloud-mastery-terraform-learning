# Extraction: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1

---

## Entry 1
Type: Concept  

Content:
-: In this video, I'm gonna walk you through these solutions for the Lightning Lab 1.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
The first question, it's asking us to create a PersistentVolume called log-volume.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Best Practice  

Content:
And it's saying that this should make use of a StorageClass name manual, it should use RWX as the access mode and have a size of 1 Gi, and the volume should use the host path /opt/volume/nginx.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Implementation Step  

Content:
So let's get started with the first task.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Implementation Step  

Content:
And so what I'm gonna do is I'm gonna just create a new file and we'll just call this log-volume.yaml.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Implementation Step  

Content:
And if you want, at this point, you can pull up the Kubernetes documentation to get a baseline template of how to configure a PersistentVolume.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Implementation Step  

Content:
So if you go to the PersistentVolume section, I'm just gonna copy this right here, and then we can paste that right in.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Implementation Step  

Content:
So first thing, we're gonna change the name, this is gonna be log-volume.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
StorageClass name, this is gonna be set to manual.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
Let's add the capacity.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
So this is gonna be 1 Gi.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
And let's set the access mode.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
And this is gonna be ReadWriteMany, that's what that RWX is.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
And finally, let's set the host path, so that be /opt/volume/nginx.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
And that's all we need to do for the PersistentVolume.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Implementation Step  

Content:
We can now apply this configuration.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Implementation Step  

Content:
I'll do a kubectl apply.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Best Practice  

Content:
And now, if I do a kubectl get pv, we should see it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Implementation Step  

Content:
Now the next step, we have to create a PersistentVolumeClaim called log claim with the following specs, so let's go ahead and create a new file vi, and I'll call this a log-claim.yaml.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Warning/Pitfall  

Content:
And once again, we can go back to the documentation and find an example of a PersistentVolumeClaim, so we don't have to hand write everything out.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
And so here's one, and I'm just gonna grab everything from here up.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
And so let's change the name.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
The access mode, this is once again gonna be ReadWriteMany.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
I'm gonna delete the volume mode section.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Best Practice  

Content:
Then, for storage, it's saying that this should request a minimum of 200.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Best Practice  

Content:
And StorageClass name should be manual as well.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
And that's going to wrap up the configuration for the PVC.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Implementation Step  

Content:
So now, we can do kubectl apply again on this guy.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
And if I do a kubectl get PVC, you see that we've got one PVC.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Implementation Step  

Content:
And the final task for the first question is that we have to mount this in a Pod called logger at the location /var/www/nginx.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Best Practice  

Content:
And the Pod should be running an NGINX Alpine image.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
So I'm gonna do a kubectl run, and this is gonna be called logger.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Implementation Step  

Content:
And we'll set the image to be NGINX Alpine, and then we'll do a dry run.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Implementation Step  

Content:
And then I'm gonna pipe this to a file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
We'll call this logger.yaml.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Implementation Step  

Content:
And so to mount this, I'm gonna create a volume section, and we've got one volume, I'm just gonna call this log.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Implementation Step  

Content:
And then here, we'll provide the PersistentVolume claim.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
Claim name is gonna be log-claim.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Implementation Step  

Content:
And then under the container, I'll do volume mounts.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
And the mount path, this is going to be this path right here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Implementation Step  

Content:
And then we can do a kubectl apply -f.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
And it looks like I made a typo, and that's right here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Implementation Step  

Content:
So this needs an S, so persistent, and we'll try that again, and it looks like it was successfully created.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Implementation Step  

Content:
So let's go onto the next question.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Implementation Step  

Content:
But the next question, a new Pod called secure pod and a service called secure service has been deployed.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Troubleshooting  

Content:
And it looks like incoming and outgoing connections to this Pod is currently not working, so we have to troubleshoot why this is happening.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
And after we make the necessary changes, we have to make sure that incoming connections from the Pod webapp-color are successful.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Best Practice  

Content:
So traffic from webapp-color to the secure pod using the secure service should be successful.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
So let's do a kubectl get pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Concept  

Content:
Now we've got the web app color and the secure pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Best Practice  

Content:
And if I do a kubectl get service, we should see the secure service that the secure Pod is using.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Troubleshooting  

Content:
So let's first confirm the issue.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Concept  

Content:
So what I'm going to do is I'm going to go into the webapp-color pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Concept  

Content:
So I'm gonna do a kubectl exec-it, webapp-color--sh.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Concept  

Content:
And so now we're in this Pod right now, and what I'm gonna do is I'm gonna just test the connection, so this service is gonna be using port 80.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
So let's test that, see if we can reach port 80.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Implementation Step  

Content:
So I'll do a nc-v-z-w, time out of two seconds, and then we're gonna try to reach the secure-service, and it's gonna be on port 80.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Concept  

Content:
So let's see what happens.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Concept  

Content:
And it looks like operation timed up.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Troubleshooting  

Content:
So this does confirm, in fact, there is some sort of connection issue, so we are unable to reach that specific pod using the service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
So let me exit outta here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Concept  

Content:
And what I'm gonna do is I'm gonna check the network policy.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Concept  

Content:
So I'll do a kubectl get netpol.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Concept  

Content:
So we've got one policy here, and I'm gonna do a kubectl describe, and let's take a look.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Concept  

Content:
And so it looks like, for this default deny policy for allowing ingress traffic, you can see that it's set to none, so no traffic is allowed in.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Troubleshooting  

Content:
So this is most likely the issue.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Implementation Step  

Content:
So let's create a new network policy that's going to allow this traffic.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Implementation Step  

Content:
So first thing first, I'm gonna do a kubectl get pod--show labels 'cause we are going to have to reference these pods using their labels.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Concept  

Content:
So if we wanna reference the secure pod, we can pass the label run =secure pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Concept  

Content:
And if we wanna reference the webapp-color pod, we can reference this label here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Implementation Step  

Content:
And so what I'm gonna do is I'm gonna do a kubectl get netpol, and then I'm gonna do a kubectl get netpol default-deny.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Concept  

Content:
And I'm gonna pipe this to a YAML config, so we can just modify this one so we have a baseline starting config.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Concept  

Content:
Let's move into here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Concept  

Content:
And so I'm gonna change a couple things.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Implementation Step  

Content:
First of all, we're gonna change the name.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Warning/Pitfall  

Content:
And the instructions don't give a name, So we can just call this whatever you want, I'm just gonna call this network-policy.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Best Practice  

Content:
Then under spec, we have to select a pod, so what rule should this apply to, and this is going to be for the secure pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Implementation Step  

Content:
And so I'm gonna delete this, and then we're gonna go under here, and we gotta say, "matchLabels," and then we have to provide the label to match the secure Pod, 'cause we want this policy for the secure pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Concept  

Content:
So I'm gonna exit outta here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Implementation Step  

Content:
And then if we just take a look to access the secure pod we can use run=secure pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 81
Type: Concept  

Content:
So I'm just gonna copy this and we can just paste that in here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Implementation Step  

Content:
Under policy types, we just want an ingress policy, and then we can define the ingress policy below.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Implementation Step  

Content:
So traffic from where, so I'll say, "-from." And then here, we're gonna do a Pod selector.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 84
Type: Concept  

Content:
And once again, this is gonna be matchLabels, so we have to provide the label to match the web app-color pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 85
Type: Concept  

Content:
And so the label for that is going to be name webapp-color.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 86
Type: Best Practice  

Content:
So this policy, what it's saying is traffic coming from this Pod or any Pod with this specific label should be allowed to go to the Pod with the this specific label.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 87
Type: Best Practice  

Content:
So traffic coming from webapp-color should be able to reach the secure pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 88
Type: Concept  

Content:
But we wanna be a little bit more specific.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 89
Type: Concept  

Content:
We wanna also specify what specific ports it can use.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 90
Type: Concept  

Content:
So I'll say, "Ports," and we'll do a protocol.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 91
Type: Concept  

Content:
So this is gonna be TCP and we want port 80, 'cause that's what the port that the secure service uses, and you can get that information by doing a kubectl get service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 92
Type: Implementation Step  

Content:
Okay, and so now we can do a kubectl apply -f netpol.yaml, and looks like there's a typo.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 93
Type: Implementation Step  

Content:
So we'll go up to here and then just change this.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 94
Type: Concept  

Content:
And it's the label that I used right here, so I'm gonna just change this.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 95
Type: Concept  

Content:
It's gonna be run secure pod, not run =secure pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 96
Type: Implementation Step  

Content:
Let's apply that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 97
Type: Concept  

Content:
All right, so it looks like it's successful.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 98
Type: Concept  

Content:
And so what we can do is we can go back into that container again using that exec command and I can try running that nc command, so nc-v-z-w.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 99
Type: Best Practice  

Content:
And this should work this time, and we can see that the connection's open now.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 100
Type: Concept  

Content:
Perfect.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 101
Type: Implementation Step  

Content:
In the next question, we have to create a Pod called time-check in the following namespace.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 102
Type: Best Practice  

Content:
And this Pod should run a container called time-check that uses the BusyBox image.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 103
Type: Best Practice  

Content:
We also have to create a config map called time-config with the following key value pair, and the container itself should run the following command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 104
Type: Best Practice  

Content:
And notice how this is going to make use of an environment variable that's going to reference the config map we created in the previous step and we have to write the result out to the following location here, and the path/opt/time on the Pod should mount a volume that lasts the lifetime of this Pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 105
Type: Implementation Step  

Content:
So to get started, first of all, let's take a look and see if that namespace exists, and we can see it doesn't, So I'll do a kubectl create namespace and then we'll just copy that name.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 106
Type: Implementation Step  

Content:
The next thing that we need to do is let's go ahead and create the config map while we're at it, so I'll do a kubectl create cm, and that's going to be time-config.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 107
Type: Concept  

Content:
The namespace is going to be the same namespace, and it's gonna be --from-literal which =time_freak=10.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 108
Type: Implementation Step  

Content:
And then if we do a kubectl get config map, we can see our config map there.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 109
Type: Best Practice  

Content:
And so the next thing that we have to do is create our Pod spec, so I'm gonna do a kubectl run and our Pod should be called time-check, and it should use an image that is a BusyBox image.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 110
Type: Implementation Step  

Content:
And then I'm gonna do dry-run=client.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 111
Type: Concept  

Content:
And let's open that config, and let's take a look at what other changes we have to make.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 112
Type: Implementation Step  

Content:
So first of all, let's define our environment variable because, as I mentioned, the command here is going to make use of an environment variable.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 113
Type: Concept  

Content:
I'll say, "env," and the name of this has to be time_freak, and this is going to be a value from...

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 114
Type: Concept  

Content:
ConfigMapKeyRef.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 115
Type: Concept  

Content:
And the key is going to be time_break.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 116
Type: Concept  

Content:
Now let's specify the command that the container's gonna use.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 117
Type: Concept  

Content:
So I'll say, "Command." And so this is gonna be /bin/sh, it's gonna be -C.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 118
Type: Implementation Step  

Content:
And then the final command is going to be...

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 119
Type: Concept  

Content:
We're just gonna copy this and paste that in there.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 120
Type: Concept  

Content:
Okay, so now let's mount the volumes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 121
Type: Implementation Step  

Content:
So I'm gonna define the volumes first, so we'll do volumes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 122
Type: Implementation Step  

Content:
Name is gonna be called log-volume, and then we'll do emptydir.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 123
Type: Concept  

Content:
And this will be volume mount.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 124
Type: Best Practice  

Content:
The name of this is gonna be log-volume, and the mount path should be /opt/time.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 125
Type: Concept  

Content:
And I forgot one last thing, we actually have to modify the command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 126
Type: Concept  

Content:
So remember, we want to write the result to the location that's provided here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 127
Type: Concept  

Content:
So I'll just redirect this output to that specific location.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 128
Type: Concept  

Content:
And that's not what I wanted.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 129
Type: Concept  

Content:
I want just the path that it's gonna be /opt/time/time-check.log.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 130
Type: Implementation Step  

Content:
And then we'll do a kubectl apply -f time-check and we'll do a kubectl get pod -n.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 131
Type: Troubleshooting  

Content:
And I realized we made one issue, so I'm gonna go back in to that file and we forgot to change the namespace, so we wanna make sure it runs in that new namespace.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 132
Type: Concept  

Content:
So let me delete the old pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 133
Type: Implementation Step  

Content:
And then now we can do a kubectl apply -f, and we can see that it's in a running state now.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 134
Type: Implementation Step  

Content:
So let's move on to the next question.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 135
Type: Best Practice  

Content:
The next question we have to create a new deployment called nginx-deploy which is going to deploy one single container called NGINX using the following image, and it should have full replicas.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 136
Type: Best Practice  

Content:
And the deployment should use a rolling update strategy with the maxSurge of one and a maxUnavailable of two.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 137
Type: Implementation Step  

Content:
And before we move on to the other test, this actually gets started in creating that deployment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 138
Type: Implementation Step  

Content:
So I'm going to do a kubectl create deploy, and this is gonna be called nginx-deploy.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 139
Type: Best Practice  

Content:
The image should be set to nginx 1.16 and the replicas should be set to four.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 140
Type: Concept  

Content:
And I'll just do a --dry run.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 141
Type: Concept  

Content:
And in here, if we take a look at what we need to change, we have to add in the rolling update.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 142
Type: Concept  

Content:
So under strategy, do rolling update, maxSurge is one, and the maxUnavailable is gonna be set to two.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 143
Type: Implementation Step  

Content:
All right, and then we'll save the config I'll do a kubectl apply -f, nginx deploy, that's going to get created.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 144
Type: Implementation Step  

Content:
And if we do a kubectl get deploy, let's wait 'til we have all four available.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 145
Type: Concept  

Content:
Okay, so now we have four available.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 146
Type: Best Practice  

Content:
Now, the next step is that we have to upgrade the deployment to a version of 1.17, So we could do a kubectl set image deployment, nginx-deploy, and we'll say nginx = nginx 1.17, So this should change the image to be a 1.17, it should be updated.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 147
Type: Implementation Step  

Content:
And then if I do a kubectl get pod, you can see it's terminating the old containers or the old pods, and it's creating new pods with the new images.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 148
Type: Implementation Step  

Content:
Let's do kubectl get deploy.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 149
Type: Concept  

Content:
So we can see that we have four available now.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 150
Type: Concept  

Content:
Perfect.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 151
Type: Implementation Step  

Content:
And then finally, once all pods are updated, undo the update and go back to the previous version.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 152
Type: Implementation Step  

Content:
And so to do that we do a kubectl rollout, undo deployment, nginx-deploy.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 153
Type: Implementation Step  

Content:
And that's all we need to do for this question, so we'll go to the next question.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 154
Type: Implementation Step  

Content:
For the last question, we have to create a Redis deployment with the following parameters.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 155
Type: Best Practice  

Content:
And so the deployment name should be Redis, using this following image, and it should have one replica.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 156
Type: Best Practice  

Content:
And the container should use a .2 CPU.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 157
Type: Best Practice  

Content:
It should use a label of app=redis, and then we should also mount these two volumes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 158
Type: Implementation Step  

Content:
So I'm gonna do a kubectl create deployment, and the name of the deployment's gonna be Redis with an image, which is gonna be Redis Alpine, and then the replicas is going to be set to one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 159
Type: Concept  

Content:
All right, and couple of things now.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 160
Type: Implementation Step  

Content:
So first of all, we already got the replica set, we've already got the name set, and we've already got the image set.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 161
Type: Concept  

Content:
So let's change the CPU resources.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 162
Type: Concept  

Content:
So under the container, we'll go under resources and I'll say, "Requests," and the CPU is gonna be 0.2.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 163
Type: Implementation Step  

Content:
Now the next thing that we have to do is we have to specify the volumes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 164
Type: Concept  

Content:
So we're gonna have two volumes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 165
Type: Implementation Step  

Content:
The first one is going to be called data and the second one is gonna be called redis-config.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 166
Type: Concept  

Content:
And this is going to use a config map.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 167
Type: Concept  

Content:
And the name of the config map is going to be redis-config.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 168
Type: Implementation Step  

Content:
And then after we define those, we can then add it to the container.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 169
Type: Concept  

Content:
So we'll do volume mount.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 170
Type: Implementation Step  

Content:
The first one is gonna be the data, and the volume mount...

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 171
Type: Concept  

Content:
Sorry, not the volume mount, the mount path.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 172
Type: Concept  

Content:
This is going to be /redis master data.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 173
Type: Concept  

Content:
And the other one is going to be redis-config.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 174
Type: Concept  

Content:
And this is gonna be in /redis-master.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 175
Type: Warning/Pitfall  

Content:
And for the last requirement, the container should expose port 6379, and it's just letting us know also that the config map that we're referencing here has already been created, so we don't have to create that ourselves.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 176
Type: Concept  

Content:
So for ports, we'll do container port and the port is 6379, 6379.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 177
Type: Concept  

Content:
I think that matches all of the requirements.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 178
Type: Implementation Step  

Content:
So now we can just do a kubectl apply -f redis.yaml and it was successfully created.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 179
Type: Concept  

Content:
So that's gonna be the last question.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 180
Type: Exam Tip  

Content:
And so now we can then go ahead and end the exam, and run the validation.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 181
Type: Concept  

Content:
And so that's going to wrap up the solutions for the Lightning Lab 1.

Source:
- Course: certified-kubernetes-application-developer
- Module: 14_Lightning Labs
- Lecture: 202_Solution_ Lightning Lab1
- File: 202_Solution_ Lightning Lab1.txt
- Topic: Solution_ Lightning Lab1
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
