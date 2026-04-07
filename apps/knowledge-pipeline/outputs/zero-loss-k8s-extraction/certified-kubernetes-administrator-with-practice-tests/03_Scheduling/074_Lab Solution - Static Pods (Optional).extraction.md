# Extraction: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 074_Lab Solution - Static Pods (Optional)

---

## Entry 1
Type: Concept  

Content:
-: Okay, so in this video we're going to go over this lab on static pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
So the first question is, how many static pods exist in the cluster in all of the named spaces?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
So let's go, let's do get pods dash a to list the pods in all named spaces.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
Now one way to figure out, or you know differentiate a static pod from the other pods is to look at its name and at the end you'll have the node name appended to it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Implementation Step  

Content:
So this one, this one, this this is a static pod created on control plane.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
All of all of these three are, and as well as this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Implementation Step  

Content:
So there are four static pods and then there are no others with a visible node name to the end of it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
So that's one way to look at it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
Another way to be sure is to look at one of the pod in a bit more detail.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Exam Tip  

Content:
So let's say for example, this one let's do you could get pod and then we do we provide the name space, which is the system.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
And, but this is just going to list the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
It's not gonna give us the information that we need.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
We need to look at the YAML format of the, of the pod So we're gonna do a dash O and YAML So this is gonna give us a lot of information but from this, what we need to do is we need to look at the owner reference section.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
So if you scroll down there's this section called owner references.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
And under this you'll see the owner of this pod is the node the kind is node, and the name is control plane.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
So that's one way to be sure if a a pod is a static pod or not.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
And if you look at the screen, and if you look at the same for another pod that is not a static pod cube system to YAML output.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
And if we look at the owner reference for this right here we see that the owner of this is a replica set right?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
So, so this is not a static pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
So that's one way to figure that out.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 21
Type: Concept  

Content:
There are ways that you can do this for all of the pods like using filters and selectors.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Best Practice  

Content:
We should be able to kind of go through this, traverse this this file and then look at the owner reference.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
But we haven't learned about filters and you know, advanced kubectl commands yet So we'll skip that for now.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
But this is an easy way There are two ways to find out if a pod is static or not and one of that is to look for no names at the end of it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
And to be sure you can use the the command that I just shared.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
So we know that there are four static pods and they're all on control plane now, as of now.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
So let's run the command again.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Implementation Step  

Content:
The question is, which of the below components is not deployed as a static pod?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Architecture  

Content:
So if you look at this, we have the ETCD it's a control plane, ETCD is a static pod, cube PPA server is a static pod cube control manager is a static pod and cube scheduler is a static pod So not Core DNS Core DNS does not seem to be a static pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
So let's select that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 31
Type: Implementation Step  

Content:
Okay, which of the below components is not deployed?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
It's a static pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
Again, we know that all of these are except for the queue proxy.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
So the queue proxy is not a static pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Implementation Step  

Content:
On which notes are the static pods created currently.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
So all of these, as we just saw, are on control planes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
So control plane is answered to this question.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
Now what is the path of the directory holding the static pod and the definition files?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
So one way to figure that out is to look at the the cubelet conf.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Implementation Step  

Content:
So, so our lib cubelet and then we have the config dot yaml And if you look into this file, so this is the cubelet configuration and we have learned that it is the cubelet that creates the pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
And there is this specification here that says static pod path.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
And it is currently said to the ETC Kubernetes Manifest directory.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Implementation Step  

Content:
So let's look at that directory and we see that this is there are the files that are used to create the static pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
So that is slash etc slash kubernetes slash manifests That's the correct answer to this question.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
And also remember that this is the path to check the static pod configuration, the static pod path configuration on any given node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
Okay, so how many pod definition files are present in the manifest folder?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
So that's 1, 2, 3, 4 4.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
And that is equal to the number of static pods that we have here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Implementation Step  

Content:
And what is the Docker image used to deploy the cube APA server as a static pod as a static pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Concept  

Content:
So if you look at cube APA server Here, so this followed by this and if we look into the image we see that it's kh dot gcr dot io slash cube APA server version 1 point 2 0 0.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Best Practice  

Content:
So as of this recording this is the version you should make sure that whatever the version needs that you are working on make sure you choose that as the answer.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Concept  

Content:
Okay?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 53
Type: Implementation Step  

Content:
So the next question is to create a static pod named static pod static busy box that uses the busy box image and the command sleep.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Implementation Step  

Content:
So we know that the command to create a pod is run and the name is static busy box, the image is busy box, okay And the command is sleep 1000.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Warning/Pitfall  

Content:
Now what we need to do is we don't want to create this I said we just wanna get the pod definition file and place it in the static pod path for this node, right?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
So we're going to do a dry run for this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Concept  

Content:
So dry run here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Concept  

Content:
Now when you, when you use the command option always remember not to place any option that is for the kubectl command after this, right?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Concept  

Content:
So anything that you put after this especially after the two dashes here is going to be considered as an option for this command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Warning/Pitfall  

Content:
So do not place anything.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Best Practice  

Content:
So the, the command should always be at the end.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Concept  

Content:
So in this case I'm gonna put the dry run before the command option.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Best Practice  

Content:
So any, any option for the kubectl utility should be before the command option.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Implementation Step  

Content:
So dry run equals find and then dash O yaml So I get this and okay so I'm going to redirect that to a file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Implementation Step  

Content:
So for now I'm going to put it to static busy box dot yaml Then I'm going to move this to a C Kubernetes manifest folder.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Implementation Step  

Content:
And let's see if pod is created Okay, so the pod is now created static busy box control plane and it's in a running state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Implementation Step  

Content:
Okay, so let's go next.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Concept  

Content:
Now edit the image on the static pod to use the busy box 1 point 2 8 point 4 image So to make any changes to a static pod you could simply edit the file and save it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Implementation Step  

Content:
So let's just go to edit the file in EDC Kubernetes manifest add pod and then just change this right here busy boxy 1.284 and just save that And if we look at the pod now it's pending.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Concept  

Content:
Let's watch the status.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Troubleshooting  

Content:
Okay, there's a issue.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Concept  

Content:
Okay, got it wrong.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Concept  

Content:
Sorry about that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 74
Type: Concept  

Content:
Change that now.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Best Practice  

Content:
So that's why you should always verify after you do anything, especially in the exam it's possible that we might make typos different places.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Concept  

Content:
So you always verify your work after you're done.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Concept  

Content:
Okay, so that's done.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 78
Type: Implementation Step  

Content:
Let's wait for the next question.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Implementation Step  

Content:
Okay, so we just created a new static pod named Static Green Box, find it and delete it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Concept  

Content:
So let's see to get pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 81
Type: Concept  

Content:
And we see that there is indeed a static green box and we've, we have got to delete it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Implementation Step  

Content:
Now if we just try to delete the pod like this, okay it says it's deleted, but if you look at it it's gonna be recreated because we know that it's a pod that the cubelet manages so there's it's not possible to delete a static pod just using the delete command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Implementation Step  

Content:
It would delete it, but it would be created again, right?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 84
Type: Concept  

Content:
So we need to find the manifest file for that static pod and delete it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 85
Type: Concept  

Content:
So if you look at, if you look at the the EDC Kubernetes manifest directory, we'll see that there's none for the green box.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 86
Type: Implementation Step  

Content:
And that's basically because if you look at the name of, of the static pod you see that it's created on node zero one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 87
Type: Concept  

Content:
So we've got to go, go to the node on node zero one and delete it from there.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 88
Type: Concept  

Content:
So let's find out how to go to node zero one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 89
Type: Concept  

Content:
So let's look, got a node node command and we see that we have a indeed a control plane and a node zero one node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 90
Type: Concept  

Content:
If we do a dashboard wide we'll see that it has an IP address.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 91
Type: Concept  

Content:
So the control plane is at 10, dot 38 dot 1 oh 2 dot 6 And node zero one is at 10 dot 38, 1 oh 2 dot 8 So let's the stage to node zero one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 92
Type: Concept  

Content:
Okay?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 93
Type: Implementation Step  

Content:
And, and sometimes if you just depending on how the DS is configured, if you just do SSS to just node zero one, that might work too.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 94
Type: Best Practice  

Content:
But if that isn't working, then you should always look up at the internal IP address following this command and sss do that node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 95
Type: Concept  

Content:
So now we are on node zero one and all we need to do is find the the static file manifest path.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 96
Type: Concept  

Content:
So let's go to, let's see, EDC Kubernetes manifest directory And as you see it, it doesn't exist, right?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 97
Type: Concept  

Content:
So there is no static green box path here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 98
Type: Concept  

Content:
So we'll need to see why that is.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 99
Type: Implementation Step  

Content:
So let's see, let's go back and see the the cubelet configuration and find out what's wrong with the path to the static pod So the, the file is at slash war lib cubelet and then you have config dot yaml And if you look at this file you have the static pod path, and as you can see it's not at war, it's not at EDC Kubernetes manifest It's actually changed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 100
Type: Concept  

Content:
It is at EDC just to mess with you.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 101
Type: Concept  

Content:
Right?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 102
Type: Concept  

Content:
So that's a change we made just to get you to think a little bit.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 103
Type: Concept  

Content:
So, yep.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 104
Type: Concept  

Content:
And there indeed, we have the green box dot yaml So all they need to do is just remove this file from here okay?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 105
Type: Concept  

Content:
And make sure it's removed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 106
Type: Concept  

Content:
And let's exit and go back to the control plane and list, list the notes and let's watch and wait for it to be terminated.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 107
Type: Concept  

Content:
Okay?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 108
Type: Concept  

Content:
So the the pod is now being terminated and that's gone.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 109
Type: Concept  

Content:
Okay?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 110
Type: Concept  

Content:
So that's, that's that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 111
Type: Concept  

Content:
And that's the end of this lab.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 074_Lab Solution - Static Pods (Optional)
- File: 074_Lab Solution - Static Pods (Optional).txt
- Topic: Lab Solution - Static Pods (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---
