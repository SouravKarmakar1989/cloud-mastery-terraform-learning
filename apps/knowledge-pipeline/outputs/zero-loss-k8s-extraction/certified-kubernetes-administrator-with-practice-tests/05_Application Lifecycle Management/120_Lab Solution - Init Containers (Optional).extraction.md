# Extraction: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 120_Lab Solution - Init Containers (Optional)

---

## Entry 1
Type: Concept  

Content:
-: Okay, so in this video we're going to go through the lab on Init containers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
So first let's identify the pod that has an Init container configured.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
So let's look at the pods that are available.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
And we see that there are three pods, red, green, and blue.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
And we need to identify the one that has an Init container available.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
So from the looks of it from here, it looks like this is the green is the one that has two containers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
But let's look at all of the pods in more detail.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
So let's do a describe, You cut describe pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Warning/Pitfall  

Content:
And if you don't specify any pod name, it's going to list the description of all the pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
So if you look at red to begin with, it has containers it has red container.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
And if you look at green, it has two containers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
So this is a green container 1 and a green container 2.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
But none of these are Init containers, right?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
So in Init containers will be in a separate section called Init containers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
But these, these are not Init containers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
And if you look at blue here we have an Init container section and we have a container section.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Implementation Step  

Content:
So it is blue that has an Init container configured.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
So if you look at the output of the get pause command remember that it does not show up the detail of Init container here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
This does not account for the Init container it only accounts for the actual containers for that pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
So the answer to this is blue.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
Now what is the image used by the Init container on the blue pod, is still describe and let's see, the Init container it has a container called Init service and the image is busy box.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
So busy box is the answer.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
Now what is the state of the Init container on pod blue?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
So if you look at the state, it says terminated, so terminated is the state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
And why is the Init container terminated?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
And what is the reason?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
So if you look at the line below, it says the reason is completed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
So if you look at this, the way that the Init container is set up, it has an image called busy box, it has a command and it's just a command that runs asleep in a shelf, so it just runs sleep for five seconds.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Implementation Step  

Content:
So whenever this pod is created, when this pod was created, this Init container kicks in it just sleeps for five seconds and it just terminates that container and then the actual containers are spun up.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
So it's a simple setup for this, and that's the reason since this sleep command completed successfully the exit code is zero and that's why the reason is completed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Warning/Pitfall  

Content:
So the process do not crash, the process cannot start, now the process completed successfully and that's why it has exit code zero here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Implementation Step  

Content:
Okay, now we just created a new app named Purple so, let's look at this and how many Init container does it have?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
So let's look at this odd in a bit more detail.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
And here you see that you have the Init container section.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
You have one container here, and you have another one here, so there are two, so that's one, one and one of two and so that's two, two is the answer to the question.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
Now, what is the state of the pod?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
So if you look at the state of the pod here, under get pod under the output of get pod, it's Init02.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
And over here under status you can see that it's in a pending state so the, the state is pending.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
Now how long after the creation of the pod will the application come up and be available to users?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
So let's take a look at how this pod is set up.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
So this pod has a purple container, which is the app right here but it has two Init containers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
So you have the warmup 1 and warmup 2 Init containers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Implementation Step  

Content:
And the first one has a command set to sleep for 600 seconds.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Implementation Step  

Content:
And the second Init container has a command set to sleep for 1200 seconds so this is gonna run first and then this is gonna run after.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Exam Tip  

Content:
So you can have multiple Init containers change like this if required.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
So this is going to be 10 minutes and this is 20 minutes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
So in total, before this actually comes up the Init containers are going to just sleep for 30 minutes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
So only after 30 minutes will this come up.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Exam Tip  

Content:
So yeah, it's a silly use case but it's just a very simple example to help you understand how the Init containers work.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Concept  

Content:
So that's 30 minutes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
Now this could be, you know, anything in real life, and this could be things that, you know, prepare a database or prepare some startup scripts, stuff like that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Concept  

Content:
And that is, that has to be run before the actual application comes up.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Implementation Step  

Content:
Okay so, update the next question is to update the pod red to use an Init container.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Concept  

Content:
So there is a pod red, it has one container and it's in the running state and we need to update it to use an image container that uses a busy box image and sleeps for 20 seconds.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Implementation Step  

Content:
So let's do an edit pod red and we have the in container section here, so we're gonna add a section called Init containers and then here we have the image, so the image is busy box, and then we have the names so this could be any name, let just say busy box and as a command, so the command is to sleep for 20 seconds.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
Okay so that's it, let's save that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Implementation Step  

Content:
And of course it didn't allow us to save so we're just gonna quit, we're gonna do a replace force, and this and let's just wait for the pod to terminate and recreate.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Concept  

Content:
Okay, so that's done.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
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
Let's check, let's go next.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Troubleshooting  

Content:
Now a new application orange is deployed, there is something wrong with it, identify and fix the issue and once fixed, wait for the application to run before checking the solution.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
So let's check the application called Pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Concept  

Content:
And it has one container and it's in a Init CrashLoopBackOff.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Concept  

Content:
So let's take a closer look at why it's failing.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Concept  

Content:
So if you look at this pod, we see that it has Init containers, there's one Init container called Init my service, and there's a container called Orange container and it's just a simple app.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Concept  

Content:
And here, if you look at this, it says back off, restarting failed container.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Concept  

Content:
So one of the containers seems to be, you know failing and restarting.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Concept  

Content:
And if you look at it here, it says Init crashed so back off indicates that it is Init container that's failing and that's what is being restarted.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Concept  

Content:
So one of the thing that we could look at when that happens is the logs.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Concept  

Content:
So you could look at the logs of a pod using the kubectl locks command and we're gonna specify orange as the pod, but we're not gonna have but just running logs is just always going to fetch logs from the orange container.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Concept  

Content:
But the orange container in the orange pod is just waiting to be restarted, waiting to start because it's actually in an initializing state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Concept  

Content:
So let's find out what's happening with the let's look at the logs of the container, which is the Init container.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Implementation Step  

Content:
So for that you specify that C and then give the container name, which is Init my service, and here you see that it says sleep not found.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Concept  

Content:
So the, it seems to be a typo in the sleep command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Implementation Step  

Content:
So if you look at how that Init container is configured you see that there's a command section and you have the sleep command, but it has a typo in it and that's basically the reason it's filling.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Troubleshooting  

Content:
And you see that the state is terminated, but this time the reason is error as opposed to completed as it is before.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Implementation Step  

Content:
And then the exit code is is 127, right?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Troubleshooting  

Content:
So, and it's just, it just keeps restarting until you know, until it's fixed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Troubleshooting  

Content:
So let's go ahead and fix that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 79
Type: Troubleshooting  

Content:
Let's do a kubectl edit or Orange and go to Init containers, we're going to fix this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Troubleshooting  

Content:
Just fix the typo and we'll save that and surprise, surprise and save that so we're going to just do a kubectl replace, force -f with this file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 81
Type: Concept  

Content:
Okay, so that's replaced.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Concept  

Content:
Let's check, the status now.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Concept  

Content:
And we see that the Init container has a command which is now correct and it's already terminated and it's completed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 84
Type: Concept  

Content:
Exit code is now zero.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 85
Type: Concept  

Content:
Check the status of the pod, it's now in a running state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 86
Type: Concept  

Content:
Let's check, check it now.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 87
Type: Concept  

Content:
Okay, so that's done.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 88
Type: Implementation Step  

Content:
Well, that's the end of this lab and I'll see you in the next one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 120_Lab Solution - Init Containers (Optional)
- File: 120_Lab Solution - Init Containers (Optional).txt
- Topic: Lab Solution - Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
