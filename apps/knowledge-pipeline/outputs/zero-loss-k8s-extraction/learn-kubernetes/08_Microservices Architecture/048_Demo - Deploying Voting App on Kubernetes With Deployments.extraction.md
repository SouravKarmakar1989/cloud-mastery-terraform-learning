# Extraction: learn-kubernetes / 08_Microservices Architecture / 048_Demo - Deploying Voting App on Kubernetes With Deployments

---

## Entry 1
Type: Implementation Step  

Content:
So in the previous demo, we walked through the steps that we needed to perform to properly deploy our voting application onto our Kubernetes cluster.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
So we deployed all of the pod specifications, as well as the specifications for the different services, so that they can all communicate with one another.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
And the voting application and the result application were exposed to the outside world using the Nodeport service.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Implementation Step  

Content:
Now, since we deployed pods directly, I want you guys to be aware that there are some limitations when you deploy pods directly.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
One there isn't a way to easily scale up the number of pods, so if we wanted instead of one instance of the voting app, we wanted five.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
It doesn't provide us a mechanism to easily scale up and scale down.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Implementation Step  

Content:
On top of that, if one of our applications goes down, there's nothing watching over it to restart it or deploy a new instance.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Warning/Pitfall  

Content:
You don't get that functionality with just pods.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
And on top of that, there's no simple way to upgrade your application.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
So if you want version two of the voting or result app, you would have to delete the old one.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Implementation Step  

Content:
Deploy a brand new pod spec with the new version, and this could lead to user impact as your service would be down during that time.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Implementation Step  

Content:
So instead of deploying pods directly, what we want to do is we want to make use of other Kubernetes primitives like replica sets and deployments.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Implementation Step  

Content:
More specifically, we're going to be focusing on using deployments because deployments help address a lot of these concerns.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Implementation Step  

Content:
So instead of deploying each one of these components as a pod, we're going to deploy it as a deployment.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
This is going to give us a lot of extra benefits.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
Like it's very easy to scale up and scale down.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
It's going to give us the ability to monitor and watch our pods.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Implementation Step  

Content:
So if one pod goes down, the deployment will create a new one, and you'll see that it's very easy to deploy new versions of your application as it has built in rolling update functionality so your users aren't impacted.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Implementation Step  

Content:
And we're going to be using deployments because instead of replica sets, deployments actually use replica sets under the hood.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Implementation Step  

Content:
So we're going to be using deployments which are an abstraction over pods and replica sets themselves.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
All right.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 22
Type: Implementation Step  

Content:
So the first thing that we're going to do is we're going to delete everything we deployed.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
So I'm going to do a cube CTL delete dash F.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
And I'm going to just delete all of those resources.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Implementation Step  

Content:
And then what I want to do is I'm going to just kind of organize this.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
So I'm going to say this is the pod configuration.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
So for the pod demo and I'm just going to move them into there.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Implementation Step  

Content:
And we will create a separate folder for this new deployment configuration using Kubernetes deployments.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Implementation Step  

Content:
So the great part is when we configure these deployments it's going to be very simple.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
So I'm going to have a close all of these.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
And what I'm going to do is I'm going to open up the voting app pod spec here.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Implementation Step  

Content:
And then in deployments I'm going to create the new one, which is going to be called vote dash deployment dot YAML.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Implementation Step  

Content:
So this is going to be the deployment configuration.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
And what I'm going to do is I'm going to split screen it so that it's a little bit easier to see.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Implementation Step  

Content:
And you guys can understand just how easy it is to copy the pod configuration to the deployment.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Implementation Step  

Content:
And we're going to set the deployment over here.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Implementation Step  

Content:
And so to create a deployment we're going to do we're first going to specify the API version.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
It's going to be apps slash v1.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Implementation Step  

Content:
We're going to set the kind to be deployment.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Implementation Step  

Content:
And then we'll set the metadata.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Implementation Step  

Content:
So let's give the deployment a name.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
We can just call this vote again.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Implementation Step  

Content:
And then labels we can give the deployment label.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
This is technically optional.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
So it's not going to really change things unless you want to use it for some other reason.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Implementation Step  

Content:
And then under spec this is where we have to provide these specifications.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Implementation Step  

Content:
And the first spec that we're going to provide is the template.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Implementation Step  

Content:
So this is basically telling your deployment how do I create the pod or what pod are you interested in.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
And so under template all you have to do is just go to the voting app pod, which we have here.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Implementation Step  

Content:
And you just copy under metadata and then you go under template and you paste, and obviously some of the formatting will get messed up.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
And instead of doing that, I think it's going to be a little bit easier just to I'm going to just paste it here.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Comparison  

Content:
What I can do is especially if you're using VS code, I could just hit tab tab.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Concept  

Content:
Okay.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 54
Type: Implementation Step  

Content:
So this is basically telling the deployment how do we create a new pod when it needs to.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Implementation Step  

Content:
Then there's a couple of other properties that we need to have which is replicas.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
So how many instances of the voting application do you want.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Concept  

Content:
We'll just say one.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Implementation Step  

Content:
And then we also have to provide a selector.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Implementation Step  

Content:
So you have to tell the deployment that after it creates the pod in this template, how does it know which pods to watch over.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Concept  

Content:
And so we just say match labels and you specify whatever label you gave the pod.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Implementation Step  

Content:
So this is basically telling your deployment, hey anytime you see a pod with the label of app vote, then you need to watch over it.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Concept  

Content:
And you need to make sure that there's exactly one and only one.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Concept  

Content:
Nothing less, nothing more.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Concept  

Content:
So now let's do the result applications.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Implementation Step  

Content:
We'll say result dash deployment dot YAML.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Concept  

Content:
And I'm going to also open up the result app pod here.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Implementation Step  

Content:
And actually what I'm going to do is I'm going to go to the vote deployment.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Concept  

Content:
I'm going to copy this and paste it in here.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Implementation Step  

Content:
And then we're also going to on this tab open up the result application here.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Concept  

Content:
All right.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 71
Type: Concept  

Content:
So what we're going to do is we're going to change the name.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Concept  

Content:
This is going to be result.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Concept  

Content:
We'll change the label as well.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Implementation Step  

Content:
And then for the template I'm just going to delete this.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Concept  

Content:
And we're going to just copy from here.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Troubleshooting  

Content:
And we'll fix the spacing.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Implementation Step  

Content:
And then the last thing we have to change is the selector.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Best Practice  

Content:
So this should be whatever label you put here.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Concept  

Content:
So this will be result.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Implementation Step  

Content:
Let's now create one for the Redis instance.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 81
Type: Implementation Step  

Content:
So I'll do redist deployment.yaml.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Implementation Step  

Content:
And then um on here on this tab I'm going to open up the readers.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Concept  

Content:
App latest pod.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 84
Type: Concept  

Content:
Here we go.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 85
Type: Implementation Step  

Content:
And I'm also going to copy the result deployment.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 86
Type: Concept  

Content:
So I'm going to do a Ctrl a Ctrl C.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 87
Type: Concept  

Content:
Paste it in there.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 88
Type: Implementation Step  

Content:
And then let's update the value.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 89
Type: Implementation Step  

Content:
So first of all let's um change the name to be readers.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 90
Type: Concept  

Content:
Change the label to be readers as well.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 91
Type: Implementation Step  

Content:
And then we'll update the template.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 92
Type: Implementation Step  

Content:
And then we also need to make sure that the selector is pointing to the right label.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 93
Type: Concept  

Content:
So this is going to be readers or whatever we specify here.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 94
Type: Implementation Step  

Content:
So now we'll do the DB dash deployment.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 95
Type: Concept  

Content:
And I'm going to copy the reader's config.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 96
Type: Implementation Step  

Content:
And then let's open up the DB pod here and just go through the same steps.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 97
Type: Implementation Step  

Content:
So we're going to rename the name to be DB the label for the deployment to be db.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 98
Type: Implementation Step  

Content:
And then the template will change that to be whatever this is.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 99
Type: Implementation Step  

Content:
And then we have to make sure we update the selector.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 100
Type: Concept  

Content:
So this is going to be whatever label you use on the pod.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 101
Type: Implementation Step  

Content:
And last but not the least we're going to create the worker deployment.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 102
Type: Implementation Step  

Content:
And here I'm going to open up the worker pod here and let's copy the reader's deployment.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 103
Type: Concept  

Content:
And let's update the values.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 104
Type: Concept  

Content:
So there's going to be worker.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 105
Type: Concept  

Content:
This will be worker as well.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 106
Type: Concept  

Content:
The template we can remove that and grab.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 107
Type: Concept  

Content:
This here.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 108
Type: Implementation Step  

Content:
And then we want to make sure that we update the label to be worker as well for the selector.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 109
Type: Concept  

Content:
All right.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 110
Type: Concept  

Content:
So that's everything that we need.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 111
Type: Concept  

Content:
Now the services uh nothing changes with the services.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 112
Type: Warning/Pitfall  

Content:
So you don't have to change anything with the service.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 113
Type: Concept  

Content:
So I'm actually going to just copy the service and paste it here.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 114
Type: Implementation Step  

Content:
So when you move from a pod to a deployment, it doesn't matter as long as the labels are okay.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 115
Type: Best Practice  

Content:
Everything should be good.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 116
Type: Concept  

Content:
Okay, so we now have everything.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 117
Type: Concept  

Content:
Let's open up the terminal.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 118
Type: Implementation Step  

Content:
Let's just quickly verify that there's nothing been deployed.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 119
Type: Implementation Step  

Content:
And I'm going to change into the deployments directory and let's deploy it.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 120
Type: Troubleshooting  

Content:
And hopefully there's no errors.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 121
Type: Implementation Step  

Content:
And we can see it went ahead and created everything.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 122
Type: Implementation Step  

Content:
And let's see exactly what it created.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 123
Type: Concept  

Content:
So if I do a cube CTL let's do get services.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 124
Type: Concept  

Content:
You know we've already seen this.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 125
Type: Concept  

Content:
This is just the same services that we saw before.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 126
Type: Concept  

Content:
The interesting stuff happens.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 127
Type: Implementation Step  

Content:
If I do a cube CTL get deployment.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 128
Type: Implementation Step  

Content:
So you can see that we have a deployment for each of our applications.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 129
Type: Concept  

Content:
We can see that we have one of one ready.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 130
Type: Concept  

Content:
We can see one is up to date and one is available.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 131
Type: Concept  

Content:
So that's what you want.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 132
Type: Concept  

Content:
You want everything to be ready up to date.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 133
Type: Concept  

Content:
Which means you know you're running the latest version and it's available to process traffic.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 134
Type: Concept  

Content:
We can see everything is good to go in that case.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 135
Type: Concept  

Content:
Under the hood.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 136
Type: Implementation Step  

Content:
Deployments use replica sets.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 137
Type: Implementation Step  

Content:
So if I do replica sets, you can see that there's going to be a replica set for each one of these deployments.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 138
Type: Concept  

Content:
We can see desired current ready.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 139
Type: Implementation Step  

Content:
And then you can see the pods that were created under the hood.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 140
Type: Implementation Step  

Content:
And if you want, you could always do a kubectl get all that's going to show you everything that's going to show you pods, services, deployments and replica sets.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 141
Type: Implementation Step  

Content:
So with everything deployed let's go ahead and try to access the application.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 142
Type: Concept  

Content:
So I'm going to do git service.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 143
Type: Concept  

Content:
And kubectl get pod o wide so I can get the sorry not o kubectl get node dash o wide.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 144
Type: Concept  

Content:
So this is the IP address of our node.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 145
Type: Concept  

Content:
Let's go to that IP address.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 146
Type: Implementation Step  

Content:
And then let's access the vote service.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 147
Type: Concept  

Content:
And we can see the vote service.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 148
Type: Concept  

Content:
And what's really cool is the application is actually going to show us.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 149
Type: Concept  

Content:
And maybe you guys can't see this.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 150
Type: Concept  

Content:
So let me zoom in for you guys.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 151
Type: Concept  

Content:
It'll even show us which container is processing that request.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 152
Type: Concept  

Content:
So you can see this one ends in NF F.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 153
Type: Concept  

Content:
So if I do kubectl get pod for the vote service we can see nf w f processing it so we can vote.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 154
Type: Concept  

Content:
I think everything's probably working.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 155
Type: Concept  

Content:
If we want to check the result service we can see 100% perfect.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 156
Type: Concept  

Content:
And I'm going to go back to the vote service.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 157
Type: Implementation Step  

Content:
And now what we're going to do is I'm going to show you guys how we can scale the number of pods for a deployment.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 158
Type: Implementation Step  

Content:
So we've got all of these deployments.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 159
Type: Concept  

Content:
Let's say we want the vote service to have five instances.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 160
Type: Implementation Step  

Content:
So to do that we could do kubectl scale deployment.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 161
Type: Implementation Step  

Content:
You provide the name of the deployment to which is going to be scale deployment.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 162
Type: Implementation Step  

Content:
And then we say replicas equals and then however many you want.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 163
Type: Implementation Step  

Content:
So if you say five, that's going to create five pods for the vote deployment.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 164
Type: Concept  

Content:
And so you see we can see it scaled.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 165
Type: Implementation Step  

Content:
So if I do a git deployment you can see there's vote.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 166
Type: Concept  

Content:
We can see right now at the moment there's 4 or 5 that are ready five up to date four available.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 167
Type: Concept  

Content:
Let's run this one more time.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 168
Type: Concept  

Content:
And now we can see all five have been upgraded to the latest configuration.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 169
Type: Concept  

Content:
And so in this case we now have five pods.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 170
Type: Concept  

Content:
If you want to verify that we can do kubectl get pod.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 171
Type: Concept  

Content:
And you can see that there's five pods all with a different unique name.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 172
Type: Concept  

Content:
And so now if we go back to the application you'll see that every time I hit refresh you're going to get a new container that's processing our request.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 173
Type: Concept  

Content:
So now it's GB v nine.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 174
Type: Concept  

Content:
You can see that GB v9.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 175
Type: Implementation Step  

Content:
And so that's how easy it is to scale our application using deployments.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 176
Type: Implementation Step  

Content:
And that's going to wrap up this demo on how to create and deploy the voting applications using deployment.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 048_Demo - Deploying Voting App on Kubernetes With Deployments
- File: 048_Demo - Deploying Voting App on Kubernetes With Deployments.txt
- Topic: Demo - Deploying Voting App on Kubernetes With Deployments
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
