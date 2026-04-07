# Extraction: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)

---

## Entry 1
Type: Concept  

Content:
-: Okay, so let's go through the lab on persistent volumes and persistent volume claims.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 2
Type: Implementation Step  

Content:
So, we have deployed a pod, inspect the pod, and wait for it to start running.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
Let's do that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 4
Type: Concept  

Content:
We have the web app pod and it's in running state.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 5
Type: Concept  

Content:
The application stores logs at location logapp.log/log/app.log.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
So, view the logs.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Implementation Step  

Content:
So, for this, in order to view a file within the pod we'll do kubectl exec, and provide the pod name, and then the command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
So, cat log app.log.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
Okay, so we're able to view the logs and we see that some of the events that are logged by the application.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
Now, if the pod was to get deleted now, would you be able to view the logs?

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
So, let's check out where those logs are.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
So, describe pod web app?

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
And.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 14
Type: Implementation Step  

Content:
So, there are no other volumes configured.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
So, you have the kube-api-access, which is the default volume, but there are no other volumes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
So, anything that's stored in the log app.log is stored within the container within the pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
So, if the pod gets deleted, the logs get deleted as well.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
Right, so, we're able to view the logs.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
Now, are we're not going be able to view the logs.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Implementation Step  

Content:
Now, configure a volume to store these logs at this path on the host.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
So, currently all the logs are stored at /log/app.log within the pod or within the container.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
Now, we would like to store those.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
We would like to use a volume to store those logs at var/log/webapp.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
So, that's var/log/webapp on the host.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
So, currently there's nothing here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
So, let's try and set up a volume.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
Okay, so we're going to edit the pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
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
So, we'll do kubectl edit on web app.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
And there are, there's a lot of information.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 30
Type: Architecture  

Content:
So, here we have the volume mount, which is the default volume mount for accessing the the kube-api server.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
And below we have the volumes, which is again, the default volume used for that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
So, we're just gonna add our own volume here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
So, we'll add, we'll call the the volume, log volume, because we're gonna use this to store the logs.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
And this is going to be a host path.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 35
Type: Concept  

Content:
And the path is going to be whatever path is given here, to var/log/webapp, var/log/webapp.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
Okay, So we have the volume.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Implementation Step  

Content:
So, basically what's happening, what's gonna happen is when this part is recreated, and it's going to mount this directory.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
And we have to specify where it's gonna be mounted to.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Implementation Step  

Content:
It is gonna create a volume out of that directory.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Implementation Step  

Content:
And then we have to specify where it's going to mount to it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
So, we're gonna add a volume mount.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
And we'll call the mount path as it is above.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
And that would be a log.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 44
Type: Implementation Step  

Content:
And then we will have a name for the volume.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
And the name of the volume is, log volume.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
Okay?

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 47
Type: Implementation Step  

Content:
So, what's gonna happen is when the pod is recreated, it's going to create a volume which will store all data in this path on the host.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
And we call this log volume.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Implementation Step  

Content:
And then we can mount this volume within any container on this pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 50
Type: Concept  

Content:
So, here, there's only one container.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
So, under volume mounts we have the mount path and we're gonna specify the name of the volume and it's gonna mount that here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Concept  

Content:
So, basically this is going to be mount to this path within the container.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Concept  

Content:
Okay, so, let's try and save that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Concept  

Content:
It's a pod, it's not gonna allow us to save that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Concept  

Content:
So, we're gonna do a kubectl replace force.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
Okay.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
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
Support is now recreated.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 58
Type: Concept  

Content:
So, now let's check the path, at var/log/webapp.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Concept  

Content:
Okay, and we can see that the file, the storage logs called app.log is in this path.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Concept  

Content:
We're gonna do app.log.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
We see the logs of the pod are indeed here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Concept  

Content:
So, the logs of the pod are now available on the host at this particular path.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Concept  

Content:
That indicates that that's working.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Implementation Step  

Content:
Okay, so, the next task is to create a persistent volume with the given specification.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Concept  

Content:
Let's go to the kubernetes documentation pages and find persistent volume, and go to persistent volumes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Concept  

Content:
And so, here, we have a template for a pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Concept  

Content:
Persistent volume claim.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Concept  

Content:
Persistent volume.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Concept  

Content:
But, this doesn't have enough information, so, I'm just gonna keep looking.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Concept  

Content:
Okay, so this is a persistent volume.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 71
Type: Implementation Step  

Content:
So, I'm going to get copy this much for your home and I'm going create a file called pv.yaml for persistent volume.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Concept  

Content:
Okay.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 73
Type: Implementation Step  

Content:
Then here we have pv-log.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Concept  

Content:
That's the persistent volume name.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Implementation Step  

Content:
Then we have storage.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 76
Type: Concept  

Content:
So, there's a 100 maybe, bytes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Implementation Step  

Content:
And then we have volume modes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 78
Type: Warning/Pitfall  

Content:
We don't need volume mode.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Concept  

Content:
We have access mode.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Concept  

Content:
And the access mode is read, write.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 81
Type: Concept  

Content:
Many.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Concept  

Content:
And the persistent volume reclaim policy, we're going to be retained.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Concept  

Content:
Okay.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 84
Type: Implementation Step  

Content:
And then the type is going to be host path.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 85
Type: Implementation Step  

Content:
So, we're gonna, host path, and then specify the path, and that's going to be /pv/log.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 86
Type: Concept  

Content:
So, that's the path, Okay.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 87
Type: Implementation Step  

Content:
So, let's create the file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 88
Type: Implementation Step  

Content:
Okay, so let's create it, let's check it out.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 89
Type: Concept  

Content:
We have the pv log, 100, and my capacity, read, write, many.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 90
Type: Concept  

Content:
So, this indicates read, write many, and the reclaim policy is retained.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 91
Type: Concept  

Content:
Check our work.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 92
Type: Concept  

Content:
Okay, now let us claim some of that storage for our application.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 93
Type: Implementation Step  

Content:
So, create a persistent volume claim with a given specification.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 94
Type: Concept  

Content:
So, let's find a persistent volume claim template.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 95
Type: Concept  

Content:
So, we had one here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 96
Type: Concept  

Content:
Yeah, so right here we have persistent volume claims and we'll use this template.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 97
Type: Warning/Pitfall  

Content:
So, we don't need the advanced selectors.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 98
Type: Concept  

Content:
Our use case is simple.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
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
So, we are just going to copy this much.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 100
Type: Concept  

Content:
So, let's do a pvc.yamal.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 101
Type: Concept  

Content:
If a persistent volume claim, the name is going to be claim-log-one, and access mode is going to be read, write.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 102
Type: Concept  

Content:
Once.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 103
Type: Warning/Pitfall  

Content:
We don't need a volume mode, and the storage is gonna be 50 Mi.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 104
Type: Implementation Step  

Content:
Okay, now we're gonna do a kubectl create minus half bc.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 105
Type: Concept  

Content:
Let's check out the status.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 106
Type: Implementation Step  

Content:
Okay, so that's created.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 107
Type: Implementation Step  

Content:
Let's go Next.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 108
Type: Concept  

Content:
So, what is the state of the persistent volume claim?

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 109
Type: Concept  

Content:
If you look at the state, it is in a pending state.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 110
Type: Concept  

Content:
So, that's that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 111
Type: Concept  

Content:
Now, what is the state of the persistent volume, or the state of the persistent volume?

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 112
Type: Concept  

Content:
It is available.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 113
Type: Concept  

Content:
So, let's check, try it now, again.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 114
Type: Concept  

Content:
So, it's in an available state.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 115
Type: Concept  

Content:
So, why is the claim not bound to the available persistent volume?

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 116
Type: Concept  

Content:
So, we have a persistent volume which has a 100 megabytes of capacity.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 117
Type: Implementation Step  

Content:
And then, we have the PVC, which requested about 50, but it's still in a pending state.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 118
Type: Concept  

Content:
So, why is that?

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 119
Type: Implementation Step  

Content:
So, if you look at it, it's not a capacity mismatch because we know that when you create a persistent volume claim, if there's a volume that has higher capacity it's gonna bind that volume to that persistent volume claim.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 120
Type: Concept  

Content:
So, that's not the case here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 121
Type: Concept  

Content:
We have the recurring policy set.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 122
Type: Concept  

Content:
The name of these policies, the PV and PVC, does not really matter.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 123
Type: Concept  

Content:
The only other thing that it looks at is the access mode, right?

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 124
Type: Implementation Step  

Content:
So, if you look at the PV that we created, it had an access mode of rewrite many, and if you look at the PVC, it has rewrite once.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 125
Type: Concept  

Content:
So, we're going to, and that's the reason.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 126
Type: Concept  

Content:
So, access mode mismatch is the reason.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 127
Type: Implementation Step  

Content:
Now, the next question is, update the access mode on the claim to bind it to the PV.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 128
Type: Concept  

Content:
So, we're going to do an update on the claim.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 129
Type: Concept  

Content:
So, we wanna change it to... ... so we wanna change the access mode on the PVC to read, write, many, which is on the PV.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 130
Type: Concept  

Content:
Right, so, that's what is requested here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 131
Type: Concept  

Content:
Okay.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
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
So, now we're going to do a replace force -f pvc.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 133
Type: Concept  

Content:
Okay, now you requested for 50 megabytes, how much capacity is now available to the PVC?

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 134
Type: Concept  

Content:
So, let's look at that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 135
Type: Concept  

Content:
Lets do a kubectl get pv.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 136
Type: Command  

Command:
```bash
Kubectl get pvc.
```

Explanation:
- Command preserved exactly as transcript evidence.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 137
Type: Concept  

Content:
And, if you look at the PVC, the capacity that it has is 100 megabytes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 138
Type: Concept  

Content:
Now, update the web app part to use the persistent volume claim as it's storage.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 139
Type: Concept  

Content:
So, what we are gonna do now is we're gonna replace host path with the persistent volume claim to use the persistent volume claim.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 140
Type: Implementation Step  

Content:
Okay, so, but, before that we've created the PV to store the logs to use the host path at lspv/log.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 141
Type: Concept  

Content:
So, right now there is nothing in there.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 142
Type: Concept  

Content:
So, let's go ahead and edit the pod web app.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 143
Type: Concept  

Content:
And what we're gonna do is, so, this is okay, the mount path, we're gonna leave it as is.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 144
Type: Concept  

Content:
We're gonna go down and we're gonna change this from host path to persistent.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 145
Type: Concept  

Content:
Let's see what that is.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 146
Type: Concept  

Content:
So, if you look here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 147
Type: Best Practice  

Content:
Should be able to see how to use a persistent volume in a pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 148
Type: Concept  

Content:
So, you have claim as volumes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 149
Type: Concept  

Content:
So, within volumes you use a persistent volume claims.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 150
Type: Concept  

Content:
So, that's what we're looking for.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 151
Type: Concept  

Content:
Okay.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
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
And we have claim name.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 153
Type: Warning/Pitfall  

Content:
So, we don't need these lines.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 154
Type: Implementation Step  

Content:
And then, the claim name is going to be claim log one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 155
Type: Concept  

Content:
So, we have persistent log claim, claim name, and log one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 156
Type: Best Practice  

Content:
So, that should be it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 157
Type: Concept  

Content:
Let's replace the file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 158
Type: Concept  

Content:
Let's replace the pod forcefully.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 159
Type: Concept  

Content:
Okay, so that is done.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 160
Type: Concept  

Content:
Let's check our work.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 161
Type: Concept  

Content:
All right, so now let's see, if you look at /pv/log, you see the logs there and you look at log app.log, you can see the logs of the application there.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 162
Type: Implementation Step  

Content:
So, now, the PV is using a host path as the location for storing data, but then the PV is then claimed by the PVC, and then the PVC is configured as a volume for the pod, and then that's how it is mounted to the pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 163
Type: Concept  

Content:
So, that's how this is working right now.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 164
Type: Implementation Step  

Content:
Okay, so, the next question is what is the reclaim policy set on the persistent volume pv-log?

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 165
Type: Concept  

Content:
So, let's see, kubectl get pv pv-log.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 166
Type: Concept  

Content:
And we can see that it is retained.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 167
Type: Concept  

Content:
So, retain is the answer.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 168
Type: Concept  

Content:
Now, what would happen to the PV if the PVC was destroyed?

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 169
Type: Concept  

Content:
So, we know that with the reclaim policy set to retain, the PV is going to be retained.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 170
Type: Concept  

Content:
So, it's not going to be deleted along with the PVC.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 171
Type: Concept  

Content:
So, the PV is deleted as well.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 172
Type: Concept  

Content:
Now, the PV is made available again, No, it's not made available again, that would be recycling the PV scrub.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 173
Type: Concept  

Content:
Now, the PV is not deleted, but not available.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 174
Type: Concept  

Content:
So, it's not deleted, but it's not available either.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 175
Type: Concept  

Content:
So, that's the status.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 176
Type: Concept  

Content:
Now, try deleting the PVC and notice what happens.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 177
Type: Concept  

Content:
Let's do that. kubectl pvc delete pvc claim log one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 178
Type: Concept  

Content:
So, let's wait for that to be deleted.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 179
Type: Concept  

Content:
Okay, so, it's not going to get deleted because it's actually going to be stuck.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 180
Type: Concept  

Content:
Let's, let's look at the status in a new terminal.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 181
Type: Concept  

Content:
So, let's do a kubectl get pvc.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 182
Type: Concept  

Content:
And we see that it's in a terminating state, so, it's stuck in a terminating state.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 183
Type: Concept  

Content:
So, let's do a describe.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 184
Type: Concept  

Content:
And yeah, so you see it's stuck in terminating state for the last 30 seconds or so.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 185
Type: Concept  

Content:
So, why is the PVC stuck in a terminating state?

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 186
Type: Concept  

Content:
So, that's obviously because it is associated as a volume with a pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 187
Type: Concept  

Content:
So, it is being used by a pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 188
Type: Concept  

Content:
That's the reason it's stuck in a terminating state.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 189
Type: Concept  

Content:
Now, let's now delete the web app pod and let's go ahead and do that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 190
Type: Concept  

Content:
Do that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 191
Type: Concept  

Content:
So, let's delete pod web app, and let's see what happens.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 192
Type: Concept  

Content:
Okay, so, that was deleted and we see we're now unstuck and the PV was deleted as well.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 193
Type: Concept  

Content:
Check that out.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 194
Type: Concept  

Content:
Yep.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 195
Type: Concept  

Content:
So, the pod was deleted and the PVC was deleted as well.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 196
Type: Concept  

Content:
So, what is the state of the PVC now?

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 197
Type: Concept  

Content:
It is deleted.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 198
Type: Concept  

Content:
And what is state of the PV now.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 199
Type: Concept  

Content:
Let's try that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 200
Type: Concept  

Content:
We see that it is in a released state.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 201
Type: Concept  

Content:
Okay, so, yeah, that's the end of this lab.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional)
- File: 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Topic: Solution - Persistent Volume and Persistent Volume Claims (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
