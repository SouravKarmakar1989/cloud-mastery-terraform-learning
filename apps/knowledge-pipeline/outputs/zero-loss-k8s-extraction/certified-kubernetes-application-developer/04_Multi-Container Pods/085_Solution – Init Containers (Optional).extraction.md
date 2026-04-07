# Extraction: certified-kubernetes-application-developer / 04_Multi-Container Pods / 085_Solution – Init Containers (Optional)

---

## Entry 1
Type: Concept  

Content:
-: In this video, I'm gonna walk you through these solutions for the Init container lab.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
For the first question, it's asking us to identify the pod that has an Init container configured.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Best Practice  

Content:
So if I do a Kubectl get pods, we should see that we have three different pods, red, green, blue.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
And to see which one has an Init container, we're gonna have to do a Kubectl describe.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Implementation Step  

Content:
So I'm gonna do Kubectl describe, and then pod and then this is going to describe all the pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
And we're just gonna go through each one of these three outputs and figure out which one has an Init container.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
So I'll start it all the way at the top.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Implementation Step  

Content:
The first container, which is gonna be the red.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
The red pod we can see that there is a container in there called red container, but there's no Init container section.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
So it's not that one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
We'll go down to the green pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
And in the green pod we have a green container but no Init container.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Implementation Step  

Content:
And then finally, if we get down to the blue pod, we do in fact see that there's an Init container for the blue pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
So the answer is going to be blue.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
What is the image used by the Init container on the blue pod?

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Warning/Pitfall  

Content:
Well, we don't have to run any other commands.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
We can just see under the image it's going to be set to a Busybox image.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
So I'll select Busybox.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
What is the state of Init container on the pod blue?

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
Well, if we go down, we could see that there's a state section here, and we could see that it's set to terminated.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
So I'll select terminated.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Implementation Step  

Content:
The next question is asking why is the Init container in a terminated state?

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
What is the reason?

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
Well, the reason for that is right below that, and we can see that it's 'cause it was completed.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
So I'll select process completed successfully.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Implementation Step  

Content:
So a new app named purple was created, and we have to figure out how many Init containers does it have.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
So I do Kubectl describe pod purple.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Implementation Step  

Content:
And if we go to the Init container section, which is right here, we can see that there's one called warmup one, and then there's another one called warmup two.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Implementation Step  

Content:
And then after that, that's all.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
So there's two Init containers and they're gonna go in that order.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Implementation Step  

Content:
So we'll have warmup one first, then warmup two.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
So it's like two.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
What is the state of the pod?

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
To get the state of the pod, just take a look at the output of the described pod command, and you can see there's a status section right here and that's going to be pending.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
So I'll select pending, and it's asking how long after the creation of the pod will the application come up and be available to users.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
So to answer this question, we have to take a look at the Init containers because the application is hosted on purple container, the main container, but we've got two Init containers.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Implementation Step  

Content:
So this container will not get deployed until the Init container's complete.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Implementation Step  

Content:
So the first Init container is going to deploy a Busybox image, and all it's going to do is it's going to run a sleep command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Implementation Step  

Content:
So what this command tells it to do is just sit there and wait 600 seconds and then close when it's done.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
So 600 seconds I believe is about 10 minutes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Implementation Step  

Content:
And then after this container's done, then we'll go to the next Init container and you can see it's the same image with the same command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
Except this time, it's 1,200 seconds which is 20 minutes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Implementation Step  

Content:
So this is gonna wait 20 minutes and then close.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
So that's 10 plus 20, that's 30 minutes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Implementation Step  

Content:
And then after that's complete, we can then finally run the purple container.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
So the answer's gonna be 30 minutes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Implementation Step  

Content:
The next question is asking us to update the pod red to use an Init container that uses the Busybox image and sleeps for 20 seconds.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
So it's basically telling us to do the same thing this purple pod is doing where we have an Init container that's going to sleep for instead of 1,200 seconds, it's just gonna be 20 seconds.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Implementation Step  

Content:
So I'm gonna do a Kubectl get pod, and then we're gonna grab the red pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Implementation Step  

Content:
I'm gonna do dash O yaml, and then save this to a file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
I'll just call this red.yaml.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Implementation Step  

Content:
So we've got the configs, and then I'm gonna do a Kubectl destroy, or sorry, delete pod red.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Concept  

Content:
That's gonna delete the current instance.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Concept  

Content:
And once that's complete, let's open up our red.yaml.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Concept  

Content:
And if we take a look at this, you can see that we've got a container but no Init container so we have to add an Init container section.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
So I'll go under these spec, and I'll add an Init containers.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Concept  

Content:
And here I'm gonna add a image.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Implementation Step  

Content:
This is gonna be Busybox, and then we'll give this container a name, and I'm gonna call this red-Init container.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Concept  

Content:
And the command that's gonna run is going to be the same command that we saw before.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Concept  

Content:
So it's gonna be sleep.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Implementation Step  

Content:
And then we wanna sleep 20 seconds as per the instructions.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Best Practice  

Content:
And that should be all that we have to change.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Implementation Step  

Content:
So this Init container's gonna run first sleep for 20 seconds, and then the main container's gonna run.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Implementation Step  

Content:
Let's do a Kubectl apply-F red.yaml.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Implementation Step  

Content:
And after that's been created, we're gonna run the validation and we can see that everything was successful.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Implementation Step  

Content:
And we'll go to the next question.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Troubleshooting  

Content:
And it's saying that there's a new application orange that was deployed and there's something wrong with it, identify and fix the issue.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Concept  

Content:
So if I do a Kubectl get pods, we can see that we have this orange pod that's stuck in an Init crash loop back off status.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Concept  

Content:
So I'm gonna do a Kubectl describe pod orange, and let's take a look at what could be going wrong.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Warning/Pitfall  

Content:
So under events, I don't really see anything interesting other than we can see that it's restarting.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Concept  

Content:
Let's take a look at the configurations.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Implementation Step  

Content:
So we've got the container, the orange container, and this is just running Busybox, and then it's just gonna run a command where it's saying the app is running and then it's gonna sleep for 3,600 seconds.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Troubleshooting  

Content:
So no issue there.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Troubleshooting  

Content:
However, if we go up to the Init container, I do see one minor issue.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Concept  

Content:
If we take a look at the command that's running on the Busybox image, we could see that there was a typo and sleep has a couple too many Es.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Concept  

Content:
So that's probably what's causing it to crash.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Troubleshooting  

Content:
So let's update this configuration and see if that fixes it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Concept  

Content:
I'm gonna do a Kubectl get pod orange.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Concept  

Content:
We're gonna copy the config to an orange.yaml.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Implementation Step  

Content:
And then I'm gonna do a Kubectl delete pod orange.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 81
Type: Troubleshooting  

Content:
Then we'll go into the orange.yaml, and let's fix up the command so that there isn't too many Es.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Implementation Step  

Content:
And then let's do a Kubectl apply-F orange.yaml.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Implementation Step  

Content:
And we can see it was successfully created.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 84
Type: Troubleshooting  

Content:
Then let's run the validation just to see if the issue is fixed, and it looks like we're successful.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 85
Type: Concept  

Content:
And that's going to wrap up the Init container Lab.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 085_Solution – Init Containers (Optional)
- File: 085_Solution – Init Containers (Optional).txt
- Topic: Solution – Init Containers (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
